/*
 * This source file was generated by the Gradle 'init' task
 */

#include <iostream>
#include <stdlib.h>
#include "app.h"

std::string demo_cpp::Greeter::greeting() {
    return std::string("Hello, World!2");
}

int main () {
    demo_cpp::Greeter greeter;
    std::cout << greeter.greeting() << std::endl;
    return 0;
}
