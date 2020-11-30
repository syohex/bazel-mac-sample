load("@rules_cc//cc:defs.bzl", "objc_library")
load(
  "@build_bazel_rules_apple//apple:macos.bzl",
  "macos_command_line_application",
)

package(default_visibility = ["//visibility:public"])

licenses(["notice"])

macos_command_line_application(
  name = "macapp",
  binary_type = "executable",
  minimum_os_version = "10.10",
  deps = [":cli_sources"],
)

objc_library(
  name = "cli_sources",
  srcs = ["cli/main.mm"],
  includes = ["."],
  deps = [":maclib_lib"],
)

apple_static_library(
  name = "maclib_staticlib",
  minimum_os_version = "10.10",
  platform_type = "macos",
  deps = [":maclib_lib"],
)

objc_library(
  name = "maclib_lib",
  srcs = [
    "maclib/maclib.mm"
  ],
  hdrs = [
    "maclib/maclib.h"
  ],
)
