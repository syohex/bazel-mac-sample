#pragma once

#include <string>

namespace maclib {

std::string GetEnv(const std::string &name, const std::string &default_value = "");

} // namespace maclib
