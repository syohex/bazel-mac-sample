#include <iostream>

#include "maclib/maclib.h"

int main() {
    std::string editor = maclib::GetEnv("EDITOR", "vim");
    std::cout << "Env EDITOR: " << editor << std::endl;
    return 0;
}
