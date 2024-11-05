#include <opencv2/opencv.hpp>
#include <opencv2/videoio.hpp>
#include <iostream>
#include <websocketpp/config/asio_no_tls.hpp>
#include <websocketpp/server.hpp>
#include <thread>
#include <chrono>

typedef websocketpp::server<websocketpp::config::asio> Server;
using namespace cv;
using namespace std;
using websocketpp::connection_hdl;

class VideoServer {
public:
    VideoServer() {
        // Configurazione del server WebSocket
        server.init_asio();
        server.set_access_channels(websocketpp::log::alevel::none);
        server.clear_access_channels(websocketpp::log::alevel::all);

        // Handlers
        server.set_open_handler(bind(&VideoServer::on_open, this, ::_1));
        server.set_close_handler(bind(&VideoServer::on_close, this, ::_1));

        // Avvia il thread per lo streaming video
        videoThread = std::thread(&VideoServer::stream_video, this);
    }

    void on_open(connection_hdl hdl) {
        std::lock_guard<std::mutex> lock(connectionsMutex);
        connections.insert(hdl);
        std::cout << "Client connesso. Totale clients: " << connections.size() << std::endl;
    }

    void on_close(connection_hdl hdl) {
        std::lock_guard<std::mutex> lock(connectionsMutex);
        connections.erase(hdl);
        std::cout << "Client disconnesso. Totale clients: " << connections.size() << std::endl;
    }

    void run(uint16_t port) {
        server.listen(port);
        server.start_accept();

        try {
            server.run();
        } catch (const std::exception& e) {
            std::cerr << "Errore nel server: " << e.what() << std::endl;
        }
    }

    void stop() {
        running = false;
        if (videoThread.joinable()) {
            videoThread.join();
        }
        server.stop();
    }

private:
    void stream_video() {
        VideoCapture cap("./video/video.mp4");
        if (!cap.isOpened()) {
            std::cerr << "Errore nell'apertura del video" << std::endl;
            return;
        }

        double fps = cap.get(CAP_PROP_FPS);
        int delay = 1000 / fps;  // Delay in millisecondi

        Mat frame;
        vector<uchar> buffer;
        running = true;

        while (running) {
            cap >> frame;
            if (frame.empty()) {
                // Riavvia il video quando finisce
                cap.set(CAP_PROP_POS_FRAMES, 0);
                continue;
            }

            // Ridimensiona il frame per ridurre la larghezza di banda
            resize(frame, frame, Size(), 0.5, 0.5);

            // Compressione JPEG con qualità ridotta
            vector<int> params = {IMWRITE_JPEG_QUALITY, 60};
            imencode(".jpg", frame, buffer, params);

            // Invia il frame a tutti i client connessi
            std::lock_guard<std::mutex> lock(connectionsMutex);
            for (auto& hdl : connections) {
                try {
                    server.send(hdl, buffer.data(), buffer.size(), websocketpp::frame::opcode::binary);
                } catch (const websocketpp::exception& e) {
                    std::cerr << "Errore nell'invio: " << e.what() << std::endl;
                }
            }

            // Mantieni il frame rate originale
            std::this_thread::sleep_for(std::chrono::milliseconds(delay));
        }

        cap.release();
    }

    Server server;
    std::set<connection_hdl, std::owner_less<connection_hdl>> connections;
    std::mutex connectionsMutex;
    std::thread videoThread;
    bool running;
};

int main() {
    VideoServer server;

    try {
        std::cout << "Server video avviato sulla porta 5555" << std::endl;
        server.run(5555);
    } catch (const std::exception& e) {
        std::cerr << "Errore: " << e.what() << std::endl;
    }

    return 0;
}