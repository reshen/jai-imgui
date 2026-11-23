set ignore-comments := true
[macos]
[windows]
set shell := ["nu", "--experimental-options", "pipefail=true", "--no-newline", "-c"]
jai := if os() == 'linux' { 'jai-linux' } else if os() == 'windows' { 'jai.exe' } else { 'jai-macos'}

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

[linux]
clean:
    rm -rf linux/*
    rm -rf backends/linux/*

common-build:
    {{jai}} generate.jai - -compile -debug
    {{jai}} generate.jai - -backend_sdl3_only_platform -debug
    {{jai}} generate.jai - -compile
    {{jai}} generate.jai - -backend_sdl3_only_platform
    sed -i 's/0xffffffff8000000f/0x8000000f/' **/*.jai
    sed -i 's/^IO :: struct {/IO :: struct #type_info_none {/' **/*.jai
    sed -i 's/^ImGuiContext :: struct {/ImGuiContext :: struct #type_info_none {/' **/*.jai
    sed -i 's/^ImDrawList :: struct {/ImDrawList :: struct #type_info_none {/' **/*.jai
    sed -i 's/ImStableVector(ImFontBaked, 32) = 32/ImStableVector(ImFontBaked, 32)/' **/*.jai
    sed -i 's/-xx Key.NamedKey_BEGIN/-Key.NamedKey_BEGIN.(s32)/' **/*.jai
    sed -i 's/ImSmallStack_(ImDrawFlags, 3) = 3;/ImSmallStack_(ImDrawFlags, 3, ImU16);/' **/*.jai
    sed -i 's/ImSmallStack_ :: struct(T: Type, Capacity: s32, SZ_T: Type = xx ImU16)/ImSmallStack_ :: struct(T: Type, Capacity: s32, SZ_T: Type)/' **/*.jai
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

[linux]
build: common-build
    rm -rf ../../forge/modules/imgui/linux/
    mkdir ../../forge/modules/imgui/linux/
    cp -r ./linux ../../forge/modules/imgui/
    cp -r ./backends/linux/* ../../forge/modules/imgui/linux/

update-imgui:
    git submodule update --init --recursive --remote
    cp src/include/implot/implot*.cpp src/imgui/
    cp src/include/implot/implot*.h src/imgui/
    cp src/imgui_club/imgui_threaded_rendering/imgui_threaded_rendering.h src/imgui/
    @echo "\n\n------------------------\n"
    @echo "1. Make sure your src/imgui submodule is looking at the correct commit, e.g., git -C src/imgui co v1.92.7-docking\n"
    @echo "2. Run just build\n\n"
