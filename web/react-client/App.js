import React, { useEffect, useRef, useState } from 'react';

function App() {
    const wsRef = useRef(null);
    const canvasRef = useRef(null);
    const [isConnected, setIsConnected] = useState(false);

    useEffect(() => {
        let reconnectTimer;

        const connectWebSocket = () => {
            try {
                wsRef.current = new WebSocket('ws://localhost:5555');

                wsRef.current.onopen = () => {
                    console.log('Connected to video server');
                    setIsConnected(true);
                    if (reconnectTimer) {
                        clearTimeout(reconnectTimer);
                    }
                };

                wsRef.current.onclose = () => {
                    console.log('Disconnected from video server');
                    setIsConnected(false);
                    reconnectTimer = setTimeout(connectWebSocket, 3000);
                };

                wsRef.current.onerror = (error) => {
                    console.error('WebSocket error:', error);
                    setIsConnected(false);
                };

                wsRef.current.onmessage = (event) => {
                    // Converte il blob ricevuto in un URL dell'immagine
                    const blob = new Blob([event.data], { type: 'image/jpeg' });
                    const imageUrl = URL.createObjectURL(blob);

                    // Carica l'immagine e la disegna sul canvas
                    const img = new Image();
                    img.onload = () => {
                        const canvas = canvasRef.current;
                        if (canvas) {
                            const ctx = canvas.getContext('2d');
                            // Imposta le dimensioni del canvas alla prima ricezione
                            if (canvas.width !== img.width) {
                                canvas.width = img.width;
                                canvas.height = img.height;
                            }
                            ctx.drawImage(img, 0, 0);
                            URL.revokeObjectURL(imageUrl); // Libera la memoria
                        }
                    };
                    img.src = imageUrl;
                };

            } catch (error) {
                console.error('WebSocket connection error:', error);
                setIsConnected(false);
                reconnectTimer = setTimeout(connectWebSocket, 3000);
            }
        };

        connectWebSocket();

        return () => {
            if (wsRef.current) {
                wsRef.current.close();
            }
            if (reconnectTimer) {
                clearTimeout(reconnectTimer);
            }
        };
    }, []);

    return (
        <div className="p-4">
            <div className="mb-4">
                <div className={`inline-block px-4 py-2 rounded ${
                    isConnected ? 'bg-green-500' : 'bg-red-500'
                } text-white`}>
                    {isConnected ? 'Connected to video stream' : 'Disconnected'}
                </div>
            </div>

            <div className="border rounded p-4">
                <canvas
                    ref={canvasRef}
                    className="w-full"
                    style={{ maxWidth: '100%', height: 'auto' }}
                />
            </div>
        </div>
    );
}

export default App;