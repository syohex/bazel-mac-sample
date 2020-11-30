#include "maclib.h"

#include <cstdlib>

namespace maclib {

std::string GetEnv(const std::string &name, const std::string &default_value) {
    char *v = std::getenv(name.c_str());
    if (v == nullptr) {
        return default_value;
    }

    return v;
}

} // namespace maclib
