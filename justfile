set ignore-comments := true
set shell := ["nu", "--experimental-options", "pipefail=true", "--no-newline", "-c"]
jai := if os() == 'windows' { 'jai.exe' } else { 'jai-macos'}

alias b := build

build:
    {{jai}} generate.jai - -compile
    {{jai}} generate.jai - -backend_sdl3_only_platform
    @echo "\n\n------------------------\n"
    @echo "1. Copy platform subdir you just built to forge/modules/imgui/, e.g. ./macos/ -> forge/modules/imgui/macos\n"
    @echo "2. Copy backends platform subdir you just built to forge/modules/imgui_backends/, e.g. ./backends/macos/ -> forge/modules/imgui_backends/\n"
    @echo "3. Copy ./unix.jai and ./module.jai to forge/modules/imgui/\n\n"

update-imgui:
    git submodule update --init --recursive --remote
    @echo "\n\n------------------------\n"
    @echo "1. Make sure your src/imgui submodule is looking at the correct commit, e.g., git -C src/imgui co v1.92.7-docking\n"
    @echo "2. Run just build\n\n"
