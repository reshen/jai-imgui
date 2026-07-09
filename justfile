set ignore-comments := true
set shell := ["nu", "--experimental-options", "pipefail=true", "--no-newline", "-c"]
jai := if os() == 'windows' { 'jai.exe' } else { 'jai-macos'}

alias b := build
alias rb := rebuild

rebuild: clean build

[windows]
clean:
    rm -rf windows/*
    rm -rf backends/windows/*

[macos]
clean:
    rm -rf macos/*
    rm -rf backends/macos/*

common-build:
    {{jai}} generate.jai - -compile -debug
    {{jai}} generate.jai - -backend_sdl3_only_platform -debug
    {{jai}} generate.jai - -compile
    {{jai}} generate.jai - -backend_sdl3_only_platform
    sed -i 's/0xffffffff8000000f/0x8000000f/' **/*.jai
    cp ./module.jai ../../forge/modules/imgui/

[windows]
build: common-build
    rm -rf ../../forge/modules/imgui/windows/
    mkdir ../../forge/modules/imgui/windows/
    cp -r ./windows ../../forge/modules/imgui/
    cp -r ./backends/windows/* ../../forge/modules/imgui/windows/

[macos]
build: common-build
    rm -rf ../../forge/modules/imgui/macos/
    mkdir ../../forge/modules/imgui/macos/
    # copy universal binaries only
    cp ./macos/ImGui.a ../../forge/modules/imgui/macos/
    cp ./backends/macos/ImGui_sdl3.a ../../forge/modules/imgui/macos/
    cp ./backends/unix_sdl3.jai ../../forge/modules/imgui/
    cp ./unix.jai ../../forge/modules/imgui/

update-imgui:
    git submodule update --init --recursive --remote
    @echo "\n\n------------------------\n"
    @echo "1. Make sure your src/imgui submodule is looking at the correct commit, e.g., git -C src/imgui co v1.92.7-docking\n"
    @echo "2. Run just build\n\n"
