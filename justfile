set ignore-comments := true
set shell := ["nu", "--login", "--experimental-options", "pipefail=true", "--no-newline", "-c"]

alias b := build

build:
    jai generate.jai - -compile
    jai generate.jai - -backend_sdl3_gpu3
    @echo "------------------------"
    @echo "1. Copy platform subdir you just built to forge/modules/imgui/, e.g. ./macos/ -> forge/modules/imgui/macos"
    @echo "2. Copy backends platform subdir you just built to forge/modules/imgui_backends/, e.g. ./backends/macos/ -> forge/modules/imgui_backends/"
    @echo "3. Copy ./unix.jai and ./module.jai to forge/modules/imgui/"

update-imgui:
    git submodule update --init --recursive --remote
    @echo "------------------------"
    @echo "1. Make sure your src/imgui submodule is looking at the correct commit, e.g., git -C src/imgui co v1.92.7-docking"
    @echo "2. Run just build"
