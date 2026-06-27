//
// This file was auto-generated using the following command:
//
// jai generate.jai - -compile
//



IMGUI_VERSION :: "1.92.8";
IMGUI_VERSION_NUM :: 19280;

ImTextureID_Invalid :: cast(ImTextureID) 0;

IMGUI_PAYLOAD_TYPE_COLOR_3F :: "_COL3F";
IMGUI_PAYLOAD_TYPE_COLOR_4F :: "_COL4F";

IM_UNICODE_CODEPOINT_INVALID :: 0xFFFD;

IM_UNICODE_CODEPOINT_MAX :: 0xFFFF;

IM_COL32_R_SHIFT :: 0;
IM_COL32_G_SHIFT :: 8;
IM_COL32_B_SHIFT :: 16;
IM_COL32_A_SHIFT :: 24;
IM_COL32_A_MASK :: 0xFF000000;

IM_DRAWLIST_TEX_LINES_WIDTH_MAX :: 32;

ImFontAtlasRectId_Invalid :: -1;

IMPLOT_VERSION :: "1.0";

IMPLOT_VERSION_NUM :: 10000;

IMGUI_PAYLOAD_TYPE_WINDOW :: "_IMWINDOW";

IM_PI :: 3.14159265358979323846;

IM_NEWLINE :: "\r\n";

IM_TABSIZE :: 4;

IM_PRId64 :: "lld";
IM_PRIu64 :: "llu";
IM_PRIX64 :: "llX";

IM_DRAWLIST_CIRCLE_AUTO_SEGMENT_MIN :: 4;
IM_DRAWLIST_CIRCLE_AUTO_SEGMENT_MAX :: 512;

IM_DRAWLIST_ARCFAST_TABLE_SIZE :: 48;

IM_DRAWLIST_ARCFAST_SAMPLE_MAX :: IM_DRAWLIST_ARCFAST_TABLE_SIZE;

IMSTB_TEXTEDIT_STRING :: InputTextState;

IMSTB_TEXTEDIT_GETWIDTH_NEWLINE :: -1.0;
IMSTB_TEXTEDIT_UNDOSTATECOUNT :: 99;
IMSTB_TEXTEDIT_UNDOCHARCOUNT :: 999;

Key_LegacyNativeKey_BEGIN :: 0;
Key_LegacyNativeKey_END :: 512;

KeyOwner_Any :: cast(ID) 0;
KeyOwner_NoOwner :: cast,trunc(ID) -1;

SelectionUserData_Invalid :: cast,trunc(SelectionUserData) -1;

DOCKING_HOST_DRAW_CHANNEL_BG :: 0;
DOCKING_HOST_DRAW_CHANNEL_FG :: 1;

IMGUI_WINDOW_HARD_MIN_SIZE :: 4.0;

IMGUI_TABLE_MAX_COLUMNS :: 512;

IMGUI_FONT_SIZE_MAX :: 512.0;
IMGUI_FONT_SIZE_THRESHOLD_FOR_LOADADVANCEXONLYMODE :: 128.0;

ImFontAtlasRectId_IndexMask_ :: 0x0007FFFF;
ImFontAtlasRectId_GenerationMask_ :: 0x3FF00000;
ImFontAtlasRectId_GenerationShift_ :: 20;

// Scalar data types
ID :: u32;
ImS8 :: s8;
ImU8 :: u8;
ImS16 :: s16;
ImU16 :: u16;
ImS32 :: s32;
ImU32 :: u32;
ImS64 :: s64;
ImU64 :: u64;

// Enumerations
// - We don't use strongly typed enums much because they add constraints (can't extend in private code, can't store typed in bit fields, extra casting on iteration)
// - Tip: Use your programming IDE navigation facilities on the names in the _central column_ below to find the actual flags/enum lists!
//   - In Visual Studio: Ctrl+Comma ("Edit.GoToAll") can follow symbols inside comments, whereas Ctrl+F12 ("Edit.GoToImplementation") cannot.
//   - In Visual Studio w/ Visual Assist installed: Alt+G ("VAssistX.GoToImplementation") can also follow symbols inside comments.
//   - In VS Code, CLion, etc.: Ctrl+Click can follow symbols inside comments.
Dir :: enum s32 {
    None  :: -1;
    Left  :: 0;
    Right :: 1;
    Up    :: 2;
    Down  :: 3;
    COUNT :: 4;

    ImGuiDir_None  :: None;
    ImGuiDir_Left  :: Left;
    ImGuiDir_Right :: Right;
    ImGuiDir_Up    :: Up;
    ImGuiDir_Down  :: Down;
    ImGuiDir_COUNT :: COUNT;
}

// A key identifier (ImGuiKey_XXX or ImGuiMod_XXX value): can represent Keyboard, Mouse and Gamepad values.
// All our named keys are >= 512. Keys value 0 to 511 are left unused and were legacy native/opaque key values (< 1.87).
// Support for legacy keys was completely removed in 1.91.5.
// Read details about the 1.87+ transition : https://github.com/ocornut/imgui/issues/4921
// Note that "Keys" related to physical keys and are not the same concept as input "Characters", the latter are submitted via io.AddInputCharacter().
// The keyboard key enum values are named after the keys on a standard US keyboard, and on other keyboard types the keys reported may not match the keycaps.
Key :: enum s32 {
    None                :: 0;
    NamedKey_BEGIN      :: 512;

    Tab                 :: 512;
    LeftArrow           :: 513;
    RightArrow          :: 514;
    UpArrow             :: 515;
    DownArrow           :: 516;
    PageUp              :: 517;
    PageDown            :: 518;
    Home                :: 519;
    End                 :: 520;
    Insert              :: 521;
    Delete              :: 522;
    Backspace           :: 523;
    Space               :: 524;
    Enter               :: 525;
    Escape              :: 526;
    LeftCtrl            :: 527;
    LeftShift           :: 528;
    LeftAlt             :: 529;
    LeftSuper           :: 530;
    RightCtrl           :: 531;
    RightShift          :: 532;
    RightAlt            :: 533;
    RightSuper          :: 534;
    Menu                :: 535;
    _0                  :: 536;
    _1                  :: 537;
    _2                  :: 538;
    _3                  :: 539;
    _4                  :: 540;
    _5                  :: 541;
    _6                  :: 542;
    _7                  :: 543;
    _8                  :: 544;
    _9                  :: 545;
    A                   :: 546;
    B                   :: 547;
    C                   :: 548;
    D                   :: 549;
    E                   :: 550;
    F                   :: 551;
    G                   :: 552;
    H                   :: 553;
    I                   :: 554;
    J                   :: 555;
    K                   :: 556;
    L                   :: 557;
    M                   :: 558;
    N                   :: 559;
    O                   :: 560;
    P                   :: 561;
    Q                   :: 562;
    R                   :: 563;
    S                   :: 564;
    T                   :: 565;
    U                   :: 566;
    V                   :: 567;
    W                   :: 568;
    X                   :: 569;
    Y                   :: 570;
    Z                   :: 571;
    F1                  :: 572;
    F2                  :: 573;
    F3                  :: 574;
    F4                  :: 575;
    F5                  :: 576;
    F6                  :: 577;
    F7                  :: 578;
    F8                  :: 579;
    F9                  :: 580;
    F10                 :: 581;
    F11                 :: 582;
    F12                 :: 583;
    F13                 :: 584;
    F14                 :: 585;
    F15                 :: 586;
    F16                 :: 587;
    F17                 :: 588;
    F18                 :: 589;
    F19                 :: 590;
    F20                 :: 591;
    F21                 :: 592;
    F22                 :: 593;
    F23                 :: 594;
    F24                 :: 595;
    Apostrophe          :: 596;
    Comma               :: 597;
    Minus               :: 598;
    Period              :: 599;
    Slash               :: 600;
    Semicolon           :: 601;
    Equal               :: 602;
    LeftBracket         :: 603;
    Backslash           :: 604;
    RightBracket        :: 605;
    GraveAccent         :: 606;
    CapsLock            :: 607;
    ScrollLock          :: 608;
    NumLock             :: 609;
    PrintScreen         :: 610;
    Pause               :: 611;
    Keypad0             :: 612;
    Keypad1             :: 613;
    Keypad2             :: 614;
    Keypad3             :: 615;
    Keypad4             :: 616;
    Keypad5             :: 617;
    Keypad6             :: 618;
    Keypad7             :: 619;
    Keypad8             :: 620;
    Keypad9             :: 621;
    KeypadDecimal       :: 622;
    KeypadDivide        :: 623;
    KeypadMultiply      :: 624;
    KeypadSubtract      :: 625;
    KeypadAdd           :: 626;
    KeypadEnter         :: 627;
    KeypadEqual         :: 628;
    AppBack             :: 629;
    AppForward          :: 630;
    Oem102              :: 631;

    GamepadStart        :: 632;
    GamepadBack         :: 633;
    GamepadFaceLeft     :: 634;
    GamepadFaceRight    :: 635;
    GamepadFaceUp       :: 636;
    GamepadFaceDown     :: 637;
    GamepadDpadLeft     :: 638;
    GamepadDpadRight    :: 639;
    GamepadDpadUp       :: 640;
    GamepadDpadDown     :: 641;
    GamepadL1           :: 642;
    GamepadR1           :: 643;
    GamepadL2           :: 644;
    GamepadR2           :: 645;
    GamepadL3           :: 646;
    GamepadR3           :: 647;
    GamepadLStickLeft   :: 648;
    GamepadLStickRight  :: 649;
    GamepadLStickUp     :: 650;
    GamepadLStickDown   :: 651;
    GamepadRStickLeft   :: 652;
    GamepadRStickRight  :: 653;
    GamepadRStickUp     :: 654;
    GamepadRStickDown   :: 655;

    MouseLeft           :: 656;
    MouseRight          :: 657;
    MouseMiddle         :: 658;
    MouseX1             :: 659;
    MouseX2             :: 660;
    MouseWheelX         :: 661;
    MouseWheelY         :: 662;

    ReservedForModCtrl  :: 663;
    ReservedForModShift :: 664;
    ReservedForModAlt   :: 665;
    ReservedForModSuper :: 666;

    NamedKey_END        :: 667;
    NamedKey_COUNT      :: 155;

    Mod_None            :: 0;
    Mod_Ctrl            :: 4096;
    Mod_Shift           :: 8192;
    Mod_Alt             :: 16384;
    Mod_Super           :: 32768;
    Mod_Mask_           :: 61440;

    COUNT               :: 667;
    Mod_Shortcut        :: 4096;

    ImGuiKey_None                :: None;
    ImGuiKey_NamedKey_BEGIN      :: NamedKey_BEGIN;

    ImGuiKey_Tab                 :: Tab;
    ImGuiKey_LeftArrow           :: LeftArrow;
    ImGuiKey_RightArrow          :: RightArrow;
    ImGuiKey_UpArrow             :: UpArrow;
    ImGuiKey_DownArrow           :: DownArrow;
    ImGuiKey_PageUp              :: PageUp;
    ImGuiKey_PageDown            :: PageDown;
    ImGuiKey_Home                :: Home;
    ImGuiKey_End                 :: End;
    ImGuiKey_Insert              :: Insert;
    ImGuiKey_Delete              :: Delete;
    ImGuiKey_Backspace           :: Backspace;
    ImGuiKey_Space               :: Space;
    ImGuiKey_Enter               :: Enter;
    ImGuiKey_Escape              :: Escape;
    ImGuiKey_LeftCtrl            :: LeftCtrl;
    ImGuiKey_LeftShift           :: LeftShift;
    ImGuiKey_LeftAlt             :: LeftAlt;
    ImGuiKey_LeftSuper           :: LeftSuper;
    ImGuiKey_RightCtrl           :: RightCtrl;
    ImGuiKey_RightShift          :: RightShift;
    ImGuiKey_RightAlt            :: RightAlt;
    ImGuiKey_RightSuper          :: RightSuper;
    ImGuiKey_Menu                :: Menu;
    ImGuiKey_0                   :: _0;
    ImGuiKey_1                   :: _1;
    ImGuiKey_2                   :: _2;
    ImGuiKey_3                   :: _3;
    ImGuiKey_4                   :: _4;
    ImGuiKey_5                   :: _5;
    ImGuiKey_6                   :: _6;
    ImGuiKey_7                   :: _7;
    ImGuiKey_8                   :: _8;
    ImGuiKey_9                   :: _9;
    ImGuiKey_A                   :: A;
    ImGuiKey_B                   :: B;
    ImGuiKey_C                   :: C;
    ImGuiKey_D                   :: D;
    ImGuiKey_E                   :: E;
    ImGuiKey_F                   :: F;
    ImGuiKey_G                   :: G;
    ImGuiKey_H                   :: H;
    ImGuiKey_I                   :: I;
    ImGuiKey_J                   :: J;
    ImGuiKey_K                   :: K;
    ImGuiKey_L                   :: L;
    ImGuiKey_M                   :: M;
    ImGuiKey_N                   :: N;
    ImGuiKey_O                   :: O;
    ImGuiKey_P                   :: P;
    ImGuiKey_Q                   :: Q;
    ImGuiKey_R                   :: R;
    ImGuiKey_S                   :: S;
    ImGuiKey_T                   :: T;
    ImGuiKey_U                   :: U;
    ImGuiKey_V                   :: V;
    ImGuiKey_W                   :: W;
    ImGuiKey_X                   :: X;
    ImGuiKey_Y                   :: Y;
    ImGuiKey_Z                   :: Z;
    ImGuiKey_F1                  :: F1;
    ImGuiKey_F2                  :: F2;
    ImGuiKey_F3                  :: F3;
    ImGuiKey_F4                  :: F4;
    ImGuiKey_F5                  :: F5;
    ImGuiKey_F6                  :: F6;
    ImGuiKey_F7                  :: F7;
    ImGuiKey_F8                  :: F8;
    ImGuiKey_F9                  :: F9;
    ImGuiKey_F10                 :: F10;
    ImGuiKey_F11                 :: F11;
    ImGuiKey_F12                 :: F12;
    ImGuiKey_F13                 :: F13;
    ImGuiKey_F14                 :: F14;
    ImGuiKey_F15                 :: F15;
    ImGuiKey_F16                 :: F16;
    ImGuiKey_F17                 :: F17;
    ImGuiKey_F18                 :: F18;
    ImGuiKey_F19                 :: F19;
    ImGuiKey_F20                 :: F20;
    ImGuiKey_F21                 :: F21;
    ImGuiKey_F22                 :: F22;
    ImGuiKey_F23                 :: F23;
    ImGuiKey_F24                 :: F24;
    ImGuiKey_Apostrophe          :: Apostrophe;
    ImGuiKey_Comma               :: Comma;
    ImGuiKey_Minus               :: Minus;
    ImGuiKey_Period              :: Period;
    ImGuiKey_Slash               :: Slash;
    ImGuiKey_Semicolon           :: Semicolon;
    ImGuiKey_Equal               :: Equal;
    ImGuiKey_LeftBracket         :: LeftBracket;
    ImGuiKey_Backslash           :: Backslash;
    ImGuiKey_RightBracket        :: RightBracket;
    ImGuiKey_GraveAccent         :: GraveAccent;
    ImGuiKey_CapsLock            :: CapsLock;
    ImGuiKey_ScrollLock          :: ScrollLock;
    ImGuiKey_NumLock             :: NumLock;
    ImGuiKey_PrintScreen         :: PrintScreen;
    ImGuiKey_Pause               :: Pause;
    ImGuiKey_Keypad0             :: Keypad0;
    ImGuiKey_Keypad1             :: Keypad1;
    ImGuiKey_Keypad2             :: Keypad2;
    ImGuiKey_Keypad3             :: Keypad3;
    ImGuiKey_Keypad4             :: Keypad4;
    ImGuiKey_Keypad5             :: Keypad5;
    ImGuiKey_Keypad6             :: Keypad6;
    ImGuiKey_Keypad7             :: Keypad7;
    ImGuiKey_Keypad8             :: Keypad8;
    ImGuiKey_Keypad9             :: Keypad9;
    ImGuiKey_KeypadDecimal       :: KeypadDecimal;
    ImGuiKey_KeypadDivide        :: KeypadDivide;
    ImGuiKey_KeypadMultiply      :: KeypadMultiply;
    ImGuiKey_KeypadSubtract      :: KeypadSubtract;
    ImGuiKey_KeypadAdd           :: KeypadAdd;
    ImGuiKey_KeypadEnter         :: KeypadEnter;
    ImGuiKey_KeypadEqual         :: KeypadEqual;
    ImGuiKey_AppBack             :: AppBack;
    ImGuiKey_AppForward          :: AppForward;
    ImGuiKey_Oem102              :: Oem102;

    ImGuiKey_GamepadStart        :: GamepadStart;
    ImGuiKey_GamepadBack         :: GamepadBack;
    ImGuiKey_GamepadFaceLeft     :: GamepadFaceLeft;
    ImGuiKey_GamepadFaceRight    :: GamepadFaceRight;
    ImGuiKey_GamepadFaceUp       :: GamepadFaceUp;
    ImGuiKey_GamepadFaceDown     :: GamepadFaceDown;
    ImGuiKey_GamepadDpadLeft     :: GamepadDpadLeft;
    ImGuiKey_GamepadDpadRight    :: GamepadDpadRight;
    ImGuiKey_GamepadDpadUp       :: GamepadDpadUp;
    ImGuiKey_GamepadDpadDown     :: GamepadDpadDown;
    ImGuiKey_GamepadL1           :: GamepadL1;
    ImGuiKey_GamepadR1           :: GamepadR1;
    ImGuiKey_GamepadL2           :: GamepadL2;
    ImGuiKey_GamepadR2           :: GamepadR2;
    ImGuiKey_GamepadL3           :: GamepadL3;
    ImGuiKey_GamepadR3           :: GamepadR3;
    ImGuiKey_GamepadLStickLeft   :: GamepadLStickLeft;
    ImGuiKey_GamepadLStickRight  :: GamepadLStickRight;
    ImGuiKey_GamepadLStickUp     :: GamepadLStickUp;
    ImGuiKey_GamepadLStickDown   :: GamepadLStickDown;
    ImGuiKey_GamepadRStickLeft   :: GamepadRStickLeft;
    ImGuiKey_GamepadRStickRight  :: GamepadRStickRight;
    ImGuiKey_GamepadRStickUp     :: GamepadRStickUp;
    ImGuiKey_GamepadRStickDown   :: GamepadRStickDown;

    ImGuiKey_MouseLeft           :: MouseLeft;
    ImGuiKey_MouseRight          :: MouseRight;
    ImGuiKey_MouseMiddle         :: MouseMiddle;
    ImGuiKey_MouseX1             :: MouseX1;
    ImGuiKey_MouseX2             :: MouseX2;
    ImGuiKey_MouseWheelX         :: MouseWheelX;
    ImGuiKey_MouseWheelY         :: MouseWheelY;

    ImGuiKey_ReservedForModCtrl  :: ReservedForModCtrl;
    ImGuiKey_ReservedForModShift :: ReservedForModShift;
    ImGuiKey_ReservedForModAlt   :: ReservedForModAlt;
    ImGuiKey_ReservedForModSuper :: ReservedForModSuper;

    ImGuiKey_NamedKey_END        :: NamedKey_END;
    ImGuiKey_NamedKey_COUNT      :: NamedKey_COUNT;

    ImGuiMod_None                :: Mod_None;
    ImGuiMod_Ctrl                :: Mod_Ctrl;
    ImGuiMod_Shift               :: Mod_Shift;
    ImGuiMod_Alt                 :: Mod_Alt;
    ImGuiMod_Super               :: Mod_Super;
    ImGuiMod_Mask_               :: Mod_Mask_;

    ImGuiKey_COUNT               :: COUNT;
    ImGuiMod_Shortcut            :: Mod_Shortcut;
}

// Enumeration for AddMouseSourceEvent() actual source of Mouse Input data.
// Historically we use "Mouse" terminology everywhere to indicate pointer data, e.g. MousePos, IsMousePressed(), io.AddMousePosEvent()
// But that "Mouse" data can come from different source which occasionally may be useful for application to know about.
// You can submit a change of pointer type using io.AddMouseSourceEvent().
MouseSource :: enum s32 {
    Mouse       :: 0;
    TouchScreen :: 1;
    Pen         :: 2;
    COUNT       :: 3;

    ImGuiMouseSource_Mouse       :: Mouse;
    ImGuiMouseSource_TouchScreen :: TouchScreen;
    ImGuiMouseSource_Pen         :: Pen;
    ImGuiMouseSource_COUNT       :: COUNT;
}

// A sorting direction
SortDirection :: enum ImU8 {
    None       :: 0;
    Ascending  :: 1;
    Descending :: 2;

    ImGuiSortDirection_None       :: None;
    ImGuiSortDirection_Ascending  :: Ascending;
    ImGuiSortDirection_Descending :: Descending;
}

KeyChord :: s32;

// Character types
// (we generally use UTF-8 encoded string in the API. This is storage specifically for a decoded character used for keyboard input and display)
ImWchar32 :: u32;
ImWchar16 :: u16;

ImWchar :: ImWchar16;

// Multi-Selection item index or identifier when using BeginMultiSelect()
// - Used by SetNextItemSelectionUserData() + and inside ImGuiMultiSelectIO structure.
// - Most users are likely to use this store an item INDEX but this may be used to store a POINTER/ID as well. Read comments near ImGuiMultiSelectIO for details.
SelectionUserData :: ImS64;

// Callback and functions types
InputTextCallback :: #type (data: *InputTextCallbackData) -> s32 #c_call;
SizeCallback :: #type (data: *SizeCallbackData) -> void #c_call;
MemAllocFunc :: #type (sz: u64, user_data: *void) -> *void #c_call;
MemFreeFunc :: #type (ptr: *void, user_data: *void) -> void #c_call;

ImTextureID :: ImU64;

// ImTextureRef = higher-level identifier for a texture. Store a ImTextureID _or_ a ImTextureData*.
// The identifier is valid even before the texture has been uploaded to the GPU/graphics system.
// This is what gets passed to functions such as `ImGui::Image()`, `ImDrawList::AddImage()`.
// This is what gets stored in draw commands (`ImDrawCmd`) to identify a texture during rendering.
// - When a texture is created by user code (e.g. custom images), we directly store the low-level ImTextureID.
//   Because of this, when displaying your own texture you are likely to ever only manage ImTextureID values on your side.
// - When a texture is created by the backend, we stores a ImTextureData* which becomes an indirection
//   to extract the ImTextureID value during rendering, after texture upload has happened.
// - To create a ImTextureRef from a ImTextureData you can use ImTextureData::GetTexRef().
//   We intentionally do not provide an ImTextureRef constructor for this: we don't expect this
//   to be frequently useful to the end-user, and it would be erroneously called by many legacy code.
// - If you want to bind the current atlas when using custom rectangle, you can use io.Fonts->TexRef.
// - Binding generators for languages such as C (which don't have constructors), should provide a helper, e.g.
//      inline ImTextureRef ImTextureRefFromID(ImTextureID tex_id) { ImTextureRef tex_ref = { ._TexData = NULL, .TexID = tex_id }; return tex_ref; }
// In 1.92 we changed most drawing functions using ImTextureID to use ImTextureRef.
// We intentionally do not provide an implicit ImTextureRef -> ImTextureID cast operator because it is technically lossy to convert ImTextureRef to ImTextureID before rendering.
ImTextureRef :: struct {
    _TexData: *ImTextureData; //      A texture, generally owned by a ImFontAtlas. Will convert to ImTextureID during render loop, after texture has been uploaded.
    _TexID:   ImTextureID; // _OR_ Low-level backend texture identifier, if already uploaded or created by user/app. Generally provided to e.g. ImGui::Image() calls.
}

// Context creation and access
// - Each context create its own ImFontAtlas by default. You may instance one yourself and pass it to CreateContext() to share a font atlas between contexts.
// - DLL users: heaps and globals are not shared across DLL boundaries! You will need to call SetCurrentContext() + SetAllocatorFunctions()
//   for each static/DLL boundary you are calling from. Read "Context and Memory Allocators" section of imgui.cpp for details.
CreateContext :: (shared_font_atlas: *ImFontAtlas = null) -> *ImGuiContext #foreign imgui "?CreateContext@ImGui@@YAPEAUImGuiContext@@PEAUImFontAtlas@@@Z";
DestroyContext :: (ctx: *ImGuiContext = null) -> void #foreign imgui "?DestroyContext@ImGui@@YAXPEAUImGuiContext@@@Z";
GetCurrentContext :: () -> *ImGuiContext #foreign imgui "?GetCurrentContext@ImGui@@YAPEAUImGuiContext@@XZ";
SetCurrentContext :: (ctx: *ImGuiContext) -> void #foreign imgui "?SetCurrentContext@ImGui@@YAXPEAUImGuiContext@@@Z";

// Main
GetIO :: () -> *IO #foreign imgui "?GetIO@ImGui@@YAAEAUImGuiIO@@XZ";
GetPlatformIO :: () -> *PlatformIO #foreign imgui "?GetPlatformIO@ImGui@@YAAEAUImGuiPlatformIO@@XZ";
GetStyle :: () -> *Style #foreign imgui "?GetStyle@ImGui@@YAAEAUImGuiStyle@@XZ";
NewFrame :: () -> void #foreign imgui "?NewFrame@ImGui@@YAXXZ";
EndFrame :: () -> void #foreign imgui "?EndFrame@ImGui@@YAXXZ";
Render :: () -> void #foreign imgui "?Render@ImGui@@YAXXZ";
GetDrawData :: () -> *ImDrawData #foreign imgui "?GetDrawData@ImGui@@YAPEAUImDrawData@@XZ";

// Demo, Debug, Information
ShowDemoWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowDemoWindow@ImGui@@YAXPEA_N@Z";
ShowMetricsWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowMetricsWindow@ImGui@@YAXPEA_N@Z";
ShowDebugLogWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowDebugLogWindow@ImGui@@YAXPEA_N@Z";
ShowIDStackToolWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowIDStackToolWindow@ImGui@@YAXPEA_N@Z";
ShowAboutWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowAboutWindow@ImGui@@YAXPEA_N@Z";
ShowStyleEditor :: (ref: *Style = null) -> void #foreign imgui "?ShowStyleEditor@ImGui@@YAXPEAUImGuiStyle@@@Z";
ShowStyleSelector :: (label: *u8) -> bool #foreign imgui "?ShowStyleSelector@ImGui@@YA_NPEBD@Z";
ShowFontSelector :: (label: *u8) -> void #foreign imgui "?ShowFontSelector@ImGui@@YAXPEBD@Z";
ShowUserGuide :: () -> void #foreign imgui "?ShowUserGuide@ImGui@@YAXXZ";
GetVersion :: () -> *u8 #foreign imgui "?GetVersion@ImGui@@YAPEBDXZ";

// Styles
StyleColorsDark :: (dst: *Style = null) -> void #foreign imgui "?StyleColorsDark@ImGui@@YAXPEAUImGuiStyle@@@Z";
StyleColorsLight :: (dst: *Style = null) -> void #foreign imgui "?StyleColorsLight@ImGui@@YAXPEAUImGuiStyle@@@Z";
StyleColorsClassic :: (dst: *Style = null) -> void #foreign imgui "?StyleColorsClassic@ImGui@@YAXPEAUImGuiStyle@@@Z";

// Windows
// - Begin() = push window to the stack and start appending to it. End() = pop window from the stack.
// - Passing 'bool* p_open != NULL' shows a window-closing widget in the upper-right corner of the window,
//   which clicking will set the boolean to false when clicked.
// - You may append multiple times to the same window during the same frame by calling Begin()/End() pairs multiple times.
//   Some information such as 'flags' or 'p_open' will only be considered by the first call to Begin().
// - Begin() return false to indicate the window is collapsed or fully clipped, so you may early out and omit submitting
//   anything to the window. Always call a matching End() for each Begin() call, regardless of its return value!
//   [Important: due to legacy reason, Begin/End and BeginChild/EndChild are inconsistent with all other functions
//    such as BeginMenu/EndMenu, BeginPopup/EndPopup, etc. where the EndXXX call should only be called if the corresponding
//    BeginXXX function returned true. Begin and BeginChild are the only odd ones out. Will be fixed in a future update.]
// - Note that the bottom of window stack always contains a window called "Debug".
Begin :: (name: *u8, p_open: *bool = null, flags: WindowFlags = .None) -> bool #foreign imgui "?Begin@ImGui@@YA_NPEBDPEA_NH@Z";
End :: () -> void #foreign imgui "?End@ImGui@@YAXXZ";

// Child Windows
// - Use child windows to begin into a self-contained independent scrolling/clipping regions within a host window. Child windows can embed their own child.
// - Before 1.90 (November 2023), the "ImGuiChildFlags child_flags = 0" parameter was "bool border = false".
//   This API is backward compatible with old code, as we guarantee that ImGuiChildFlags_Borders == true.
//   Consider updating your old code:
//      BeginChild("Name", size, false)   -> Begin("Name", size, 0); or Begin("Name", size, ImGuiChildFlags_None);
//      BeginChild("Name", size, true)    -> Begin("Name", size, ImGuiChildFlags_Borders);
// - Manual sizing (each axis can use a different setting e.g. ImVec2(0.0f, 400.0f)):
//     == 0.0f: use remaining parent window size for this axis.
//      > 0.0f: use specified size for this axis.
//      < 0.0f: right/bottom-align to specified distance from available content boundaries.
// - Specifying ImGuiChildFlags_AutoResizeX or ImGuiChildFlags_AutoResizeY makes the sizing automatic based on child contents.
//   Combining both ImGuiChildFlags_AutoResizeX _and_ ImGuiChildFlags_AutoResizeY defeats purpose of a scrolling region and is NOT recommended.
// - BeginChild() returns false to indicate the window is collapsed or fully clipped, so you may early out and omit submitting
//   anything to the window. Always call a matching EndChild() for each BeginChild() call, regardless of its return value.
//   [Important: due to legacy reason, Begin/End and BeginChild/EndChild are inconsistent with all other functions
//    such as BeginMenu/EndMenu, BeginPopup/EndPopup, etc. where the EndXXX call should only be called if the corresponding
//    BeginXXX function returned true. Begin and BeginChild are the only odd ones out. Will be fixed in a future update.]
BeginChild :: (str_id: *u8, size: *ImVec2, child_flags: ChildFlags = .None, window_flags: WindowFlags = .None) -> bool #foreign imgui "?BeginChild@ImGui@@YA_NPEBDAEBUImVec2@@HH@Z";
BeginChild :: (str_id: *u8, size: ImVec2 = ImVec2.{0, 0}, child_flags: ChildFlags = .None, window_flags: WindowFlags = .None) -> bool #no_context {
    return BeginChild(str_id, *size, child_flags, window_flags);
}
BeginChild :: (id: ID, size: *ImVec2, child_flags: ChildFlags = .None, window_flags: WindowFlags = .None) -> bool #foreign imgui "?BeginChild@ImGui@@YA_NIAEBUImVec2@@HH@Z";
BeginChild :: (id: ID, size: ImVec2 = ImVec2.{0, 0}, child_flags: ChildFlags = .None, window_flags: WindowFlags = .None) -> bool #no_context {
    return BeginChild(id, *size, child_flags, window_flags);
}
EndChild :: () -> void #foreign imgui "?EndChild@ImGui@@YAXXZ";

// Windows Utilities
// - 'current window' = the window we are appending into while inside a Begin()/End() block. 'next window' = next window we will Begin() into.
IsWindowAppearing :: () -> bool #foreign imgui "?IsWindowAppearing@ImGui@@YA_NXZ";
IsWindowCollapsed :: () -> bool #foreign imgui "?IsWindowCollapsed@ImGui@@YA_NXZ";
IsWindowFocused :: (flags: FocusedFlags = .None) -> bool #foreign imgui "?IsWindowFocused@ImGui@@YA_NH@Z";
IsWindowHovered :: (flags: HoveredFlags = .None) -> bool #foreign imgui "?IsWindowHovered@ImGui@@YA_NH@Z";
GetWindowDrawList :: () -> *ImDrawList #foreign imgui "?GetWindowDrawList@ImGui@@YAPEAUImDrawList@@XZ";
GetWindowDpiScale :: () -> float #foreign imgui "?GetWindowDpiScale@ImGui@@YAMXZ";
GetWindowPos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetWindowPos@ImGui@@YA?AUImVec2@@XZ";
GetWindowSize :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetWindowSize@ImGui@@YA?AUImVec2@@XZ";
GetWindowWidth :: () -> float #foreign imgui "?GetWindowWidth@ImGui@@YAMXZ";
GetWindowHeight :: () -> float #foreign imgui "?GetWindowHeight@ImGui@@YAMXZ";
GetWindowViewport :: () -> *Viewport #foreign imgui "?GetWindowViewport@ImGui@@YAPEAUImGuiViewport@@XZ";

// Window manipulation
// - Prefer using SetNextXXX functions (before Begin) rather that SetXXX functions (after Begin).
SetNextWindowPos :: (pos: *ImVec2, cond: Cond = .None, pivot: *ImVec2) -> void #foreign imgui "?SetNextWindowPos@ImGui@@YAXAEBUImVec2@@H0@Z";
SetNextWindowPos :: (pos: ImVec2, cond: Cond = .None, pivot: ImVec2 = ImVec2.{0, 0}) #no_context {
    SetNextWindowPos(*pos, cond, *pivot);
}
SetNextWindowSize :: (size: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetNextWindowSize@ImGui@@YAXAEBUImVec2@@H@Z";
SetNextWindowSize :: (size: ImVec2, cond: Cond = .None) #no_context {
    SetNextWindowSize(*size, cond);
}
SetNextWindowSizeConstraints :: (size_min: *ImVec2, size_max: *ImVec2, custom_callback: SizeCallback = null, custom_callback_data: *void = null) -> void #foreign imgui "?SetNextWindowSizeConstraints@ImGui@@YAXAEBUImVec2@@0P6AXPEAUImGuiSizeCallbackData@@@ZPEAX@Z";
SetNextWindowSizeConstraints :: (size_min: ImVec2, size_max: ImVec2, custom_callback: SizeCallback = null, custom_callback_data: *void = null) #no_context {
    SetNextWindowSizeConstraints(*size_min, *size_max, custom_callback, custom_callback_data);
}
SetNextWindowContentSize :: (size: *ImVec2) -> void #foreign imgui "?SetNextWindowContentSize@ImGui@@YAXAEBUImVec2@@@Z";
SetNextWindowContentSize :: (size: ImVec2) #no_context {
    SetNextWindowContentSize(*size);
}
SetNextWindowCollapsed :: (collapsed: bool, cond: Cond = .None) -> void #foreign imgui "?SetNextWindowCollapsed@ImGui@@YAX_NH@Z";
SetNextWindowFocus :: () -> void #foreign imgui "?SetNextWindowFocus@ImGui@@YAXXZ";
SetNextWindowScroll :: (scroll: *ImVec2) -> void #foreign imgui "?SetNextWindowScroll@ImGui@@YAXAEBUImVec2@@@Z";
SetNextWindowScroll :: (scroll: ImVec2) #no_context {
    SetNextWindowScroll(*scroll);
}
SetNextWindowBgAlpha :: (alpha: float) -> void #foreign imgui "?SetNextWindowBgAlpha@ImGui@@YAXM@Z";
SetNextWindowViewport :: (viewport_id: ID) -> void #foreign imgui "?SetNextWindowViewport@ImGui@@YAXI@Z";
SetWindowPos :: (pos: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowPos@ImGui@@YAXAEBUImVec2@@H@Z";
SetWindowPos :: (pos: ImVec2, cond: Cond = .None) #no_context {
    SetWindowPos(*pos, cond);
}
SetWindowSize :: (size: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowSize@ImGui@@YAXAEBUImVec2@@H@Z";
SetWindowSize :: (size: ImVec2, cond: Cond = .None) #no_context {
    SetWindowSize(*size, cond);
}
SetWindowCollapsed :: (collapsed: bool, cond: Cond = .None) -> void #foreign imgui "?SetWindowCollapsed@ImGui@@YAX_NH@Z";
SetWindowFocus :: () -> void #foreign imgui "?SetWindowFocus@ImGui@@YAXXZ";
SetWindowPos :: (name: *u8, pos: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowPos@ImGui@@YAXPEBDAEBUImVec2@@H@Z";
SetWindowPos :: (name: *u8, pos: ImVec2, cond: Cond = .None) #no_context {
    SetWindowPos(name, *pos, cond);
}
SetWindowSize :: (name: *u8, size: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowSize@ImGui@@YAXPEBDAEBUImVec2@@H@Z";
SetWindowSize :: (name: *u8, size: ImVec2, cond: Cond = .None) #no_context {
    SetWindowSize(name, *size, cond);
}
SetWindowCollapsed :: (name: *u8, collapsed: bool, cond: Cond = .None) -> void #foreign imgui "?SetWindowCollapsed@ImGui@@YAXPEBD_NH@Z";
SetWindowFocus :: (name: *u8) -> void #foreign imgui "?SetWindowFocus@ImGui@@YAXPEBD@Z";

// Windows Scrolling
// - Any change of Scroll will be applied at the beginning of next frame in the first call to Begin().
// - You may instead use SetNextWindowScroll() prior to calling Begin() to avoid this delay, as an alternative to using SetScrollX()/SetScrollY().
GetScrollX :: () -> float #foreign imgui "?GetScrollX@ImGui@@YAMXZ";
GetScrollY :: () -> float #foreign imgui "?GetScrollY@ImGui@@YAMXZ";
SetScrollX :: (scroll_x: float) -> void #foreign imgui "?SetScrollX@ImGui@@YAXM@Z";
SetScrollY :: (scroll_y: float) -> void #foreign imgui "?SetScrollY@ImGui@@YAXM@Z";
GetScrollMaxX :: () -> float #foreign imgui "?GetScrollMaxX@ImGui@@YAMXZ";
GetScrollMaxY :: () -> float #foreign imgui "?GetScrollMaxY@ImGui@@YAMXZ";
SetScrollHereX :: (center_x_ratio: float = 0.5) -> void #foreign imgui "?SetScrollHereX@ImGui@@YAXM@Z";
SetScrollHereY :: (center_y_ratio: float = 0.5) -> void #foreign imgui "?SetScrollHereY@ImGui@@YAXM@Z";
SetScrollFromPosX :: (local_x: float, center_x_ratio: float = 0.5) -> void #foreign imgui "?SetScrollFromPosX@ImGui@@YAXMM@Z";
SetScrollFromPosY :: (local_y: float, center_y_ratio: float = 0.5) -> void #foreign imgui "?SetScrollFromPosY@ImGui@@YAXMM@Z";

// Parameters stacks (font)
//  - PushFont(font, 0.0f)                       // Change font and keep current size
//  - PushFont(NULL, 20.0f)                      // Keep font and change current size
//  - PushFont(font, 20.0f)                      // Change font and set size to 20.0f
//  - PushFont(font, style.FontSizeBase * 2.0f)  // Change font and set size to be twice bigger than current size.
//  - PushFont(font, font->LegacySize)           // Change font and set size to size passed to AddFontXXX() function. Same as pre-1.92 behavior.
// *IMPORTANT* before 1.92, fonts had a single size. They can now be dynamically be adjusted.
//  - In 1.92 we have REMOVED the single parameter version of PushFont() because it seems like the easiest way to provide an error-proof transition.
//  - PushFont(font) before 1.92 = PushFont(font, font->LegacySize) after 1.92          // Use default font size as passed to AddFontXXX() function.
// *IMPORTANT* global scale factors are applied over the provided size.
//  - Global scale factors are: 'style.FontScaleMain', 'style.FontScaleDpi' and maybe more.
// -  If you want to apply a factor to the _current_ font size:
//  - CORRECT:   PushFont(NULL, style.FontSizeBase)         // use current unscaled size    == does nothing
//  - CORRECT:   PushFont(NULL, style.FontSizeBase * 2.0f)  // use current unscaled size x2 == make text twice bigger
//  - INCORRECT: PushFont(NULL, GetFontSize())              // INCORRECT! using size after global factors already applied == GLOBAL SCALING FACTORS WILL APPLY TWICE!
//  - INCORRECT: PushFont(NULL, GetFontSize() * 2.0f)       // INCORRECT! using size after global factors already applied == GLOBAL SCALING FACTORS WILL APPLY TWICE!
PushFont :: (font: *ImFont, font_size_base_unscaled: float) -> void #foreign imgui "?PushFont@ImGui@@YAXPEAUImFont@@M@Z";
PopFont :: () -> void #foreign imgui "?PopFont@ImGui@@YAXXZ";
GetFont :: () -> *ImFont #foreign imgui "?GetFont@ImGui@@YAPEAUImFont@@XZ";
GetFontSize :: () -> float #foreign imgui "?GetFontSize@ImGui@@YAMXZ";
GetFontBaked :: () -> *ImFontBaked #foreign imgui "?GetFontBaked@ImGui@@YAPEAUImFontBaked@@XZ";

// Parameters stacks (shared)
PushStyleColor :: (idx: Col, col: ImU32) -> void #foreign imgui "?PushStyleColor@ImGui@@YAXHI@Z";
PushStyleColor :: (idx: Col, col: *ImVec4) -> void #foreign imgui "?PushStyleColor@ImGui@@YAXHAEBUImVec4@@@Z";
PushStyleColor :: (idx: Col, col: ImVec4) #no_context {
    PushStyleColor(idx, *col);
}
PopStyleColor :: (count: s32 = 1) -> void #foreign imgui "?PopStyleColor@ImGui@@YAXH@Z";
PushStyleVar :: (idx: StyleVar, val: float) -> void #foreign imgui "?PushStyleVar@ImGui@@YAXHM@Z";
PushStyleVar :: (idx: StyleVar, val: *ImVec2) -> void #foreign imgui "?PushStyleVar@ImGui@@YAXHAEBUImVec2@@@Z";
PushStyleVar :: (idx: StyleVar, val: ImVec2) #no_context {
    PushStyleVar(idx, *val);
}
PushStyleVarX :: (idx: StyleVar, val_x: float) -> void #foreign imgui "?PushStyleVarX@ImGui@@YAXHM@Z";
PushStyleVarY :: (idx: StyleVar, val_y: float) -> void #foreign imgui "?PushStyleVarY@ImGui@@YAXHM@Z";
PopStyleVar :: (count: s32 = 1) -> void #foreign imgui "?PopStyleVar@ImGui@@YAXH@Z";
PushItemFlag :: (option: ItemFlags, enabled: bool) -> void #foreign imgui "?PushItemFlag@ImGui@@YAXH_N@Z";
PopItemFlag :: () -> void #foreign imgui "?PopItemFlag@ImGui@@YAXXZ";

// Parameters stacks (current window)
PushItemWidth :: (item_width: float) -> void #foreign imgui "?PushItemWidth@ImGui@@YAXM@Z";
PopItemWidth :: () -> void #foreign imgui "?PopItemWidth@ImGui@@YAXXZ";
SetNextItemWidth :: (item_width: float) -> void #foreign imgui "?SetNextItemWidth@ImGui@@YAXM@Z";
CalcItemWidth :: () -> float #foreign imgui "?CalcItemWidth@ImGui@@YAMXZ";
PushTextWrapPos :: (wrap_local_pos_x: float = 0.0) -> void #foreign imgui "?PushTextWrapPos@ImGui@@YAXM@Z";
PopTextWrapPos :: () -> void #foreign imgui "?PopTextWrapPos@ImGui@@YAXXZ";

// Style read access
// - Use the ShowStyleEditor() function to interactively see/edit the colors.
GetFontTexUvWhitePixel :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetFontTexUvWhitePixel@ImGui@@YA?AUImVec2@@XZ";
GetColorU32 :: (idx: Col, alpha_mul: float = 1.0) -> ImU32 #foreign imgui "?GetColorU32@ImGui@@YAIHM@Z";
GetColorU32 :: (col: *ImVec4) -> ImU32 #foreign imgui "?GetColorU32@ImGui@@YAIAEBUImVec4@@@Z";
GetColorU32 :: (col: ImVec4) -> ImU32 #no_context {
    return GetColorU32(*col);
}
GetColorU32 :: (col: ImU32, alpha_mul: float = 1.0) -> ImU32 #foreign imgui "?GetColorU32@ImGui@@YAIIM@Z";
GetStyleColorVec4 :: (idx: Col) -> *ImVec4 #foreign imgui "?GetStyleColorVec4@ImGui@@YAAEBUImVec4@@H@Z";

// Layout cursor positioning
// - By "cursor" we mean the current output position.
// - The typical widget behavior is to output themselves at the current cursor position, then move the cursor one line down.
// - You can call SameLine() between widgets to undo the last carriage return and output at the right of the preceding widget.
// - YOU CAN DO 99% OF WHAT YOU NEED WITH ONLY GetCursorScreenPos() and GetContentRegionAvail().
// - Attention! We currently have inconsistencies between window-local and absolute positions we will aim to fix with future API:
//    - Absolute coordinate:        GetCursorScreenPos(), SetCursorScreenPos(), all ImDrawList:: functions. -> this is the preferred way forward.
//    - Window-local coordinates:   SameLine(offset), GetCursorPos(), SetCursorPos(), GetCursorStartPos(), PushTextWrapPos()
//    - Window-local coordinates:   GetContentRegionMax(), GetWindowContentRegionMin(), GetWindowContentRegionMax() --> all obsoleted. YOU DON'T NEED THEM.
// - GetCursorScreenPos() = GetCursorPos() + GetWindowPos(). GetWindowPos() is almost only ever useful to convert from window-local to absolute coordinates. Try not to use it.
GetCursorScreenPos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetCursorScreenPos@ImGui@@YA?AUImVec2@@XZ";
SetCursorScreenPos :: (pos: *ImVec2) -> void #foreign imgui "?SetCursorScreenPos@ImGui@@YAXAEBUImVec2@@@Z";
SetCursorScreenPos :: (pos: ImVec2) #no_context {
    SetCursorScreenPos(*pos);
}
GetContentRegionAvail :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetContentRegionAvail@ImGui@@YA?AUImVec2@@XZ";
GetCursorPos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetCursorPos@ImGui@@YA?AUImVec2@@XZ";
GetCursorPosX :: () -> float #foreign imgui "?GetCursorPosX@ImGui@@YAMXZ";
GetCursorPosY :: () -> float #foreign imgui "?GetCursorPosY@ImGui@@YAMXZ";
SetCursorPos :: (local_pos: *ImVec2) -> void #foreign imgui "?SetCursorPos@ImGui@@YAXAEBUImVec2@@@Z";
SetCursorPos :: (local_pos: ImVec2) #no_context {
    SetCursorPos(*local_pos);
}
SetCursorPosX :: (local_x: float) -> void #foreign imgui "?SetCursorPosX@ImGui@@YAXM@Z";
SetCursorPosY :: (local_y: float) -> void #foreign imgui "?SetCursorPosY@ImGui@@YAXM@Z";
GetCursorStartPos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetCursorStartPos@ImGui@@YA?AUImVec2@@XZ";

// Other layout functions
Separator :: () -> void #foreign imgui "?Separator@ImGui@@YAXXZ";
SameLine :: (offset_from_start_x: float = 0.0, spacing: float = -1.0) -> void #foreign imgui "?SameLine@ImGui@@YAXMM@Z";
NewLine :: () -> void #foreign imgui "?NewLine@ImGui@@YAXXZ";
Spacing :: () -> void #foreign imgui "?Spacing@ImGui@@YAXXZ";
Dummy :: (size: *ImVec2) -> void #foreign imgui "?Dummy@ImGui@@YAXAEBUImVec2@@@Z";
Dummy :: (size: ImVec2) #no_context {
    Dummy(*size);
}
Indent :: (indent_w: float = 0.0) -> void #foreign imgui "?Indent@ImGui@@YAXM@Z";
Unindent :: (indent_w: float = 0.0) -> void #foreign imgui "?Unindent@ImGui@@YAXM@Z";
BeginGroup :: () -> void #foreign imgui "?BeginGroup@ImGui@@YAXXZ";
EndGroup :: () -> void #foreign imgui "?EndGroup@ImGui@@YAXXZ";
AlignTextToFramePadding :: () -> void #foreign imgui "?AlignTextToFramePadding@ImGui@@YAXXZ";
GetTextLineHeight :: () -> float #foreign imgui "?GetTextLineHeight@ImGui@@YAMXZ";
GetTextLineHeightWithSpacing :: () -> float #foreign imgui "?GetTextLineHeightWithSpacing@ImGui@@YAMXZ";
GetFrameHeight :: () -> float #foreign imgui "?GetFrameHeight@ImGui@@YAMXZ";
GetFrameHeightWithSpacing :: () -> float #foreign imgui "?GetFrameHeightWithSpacing@ImGui@@YAMXZ";

// ID stack/scopes
// Read the FAQ (docs/FAQ.md or http://dearimgui.com/faq) for more details about how ID are handled in dear imgui.
// - Those questions are answered and impacted by understanding of the ID stack system:
//   - "Q: Why is my widget not reacting when I click on it?"
//   - "Q: How can I have widgets with an empty label?"
//   - "Q: How can I have multiple widgets with the same label?"
// - Short version: ID are hashes of the entire ID stack. If you are creating widgets in a loop you most likely
//   want to push a unique identifier (e.g. object pointer, loop index) to uniquely differentiate them.
// - You can also use the "Label##foobar" syntax within widget label to distinguish them from each others.
// - In this header file we use the "label"/"name" terminology to denote a string that will be displayed + used as an ID,
//   whereas "str_id" denote a string that is only used as an ID and not normally displayed.
PushID :: (str_id: *u8) -> void #foreign imgui "?PushID@ImGui@@YAXPEBD@Z";
PushID :: (str_id_begin: *u8, str_id_end: *u8) -> void #foreign imgui "?PushID@ImGui@@YAXPEBD0@Z";
PushID :: (str_id: string) #no_context {
    PushID(str_id.data, str_id.data + str_id.count);
}
PushID :: (ptr_id: *void) -> void #foreign imgui "?PushID@ImGui@@YAXPEBX@Z";
PushID :: (int_id: s32) -> void #foreign imgui "?PushID@ImGui@@YAXH@Z";
PopID :: () -> void #foreign imgui "?PopID@ImGui@@YAXXZ";
GetID :: (str_id: *u8) -> ID #foreign imgui "?GetID@ImGui@@YAIPEBD@Z";
GetID :: (str_id_begin: *u8, str_id_end: *u8) -> ID #foreign imgui "?GetID@ImGui@@YAIPEBD0@Z";
GetID :: (str_id: string) -> ID #no_context {
    return GetID(str_id.data, str_id.data + str_id.count);
}
GetID :: (ptr_id: *void) -> ID #foreign imgui "?GetID@ImGui@@YAIPEBX@Z";
GetID :: (int_id: s32) -> ID #foreign imgui "?GetID@ImGui@@YAIH@Z";

// Widgets: Text
TextUnformatted :: (text: *u8, text_end: *u8 = null) -> void #foreign imgui "?TextUnformatted@ImGui@@YAXPEBD0@Z";
TextUnformatted :: (text: string) #no_context {
    TextUnformatted(text.data, text.data + text.count);
}
Text_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?Text@ImGui@@YAXPEBDZZ";
Text :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    Text_CFormat("%s", formatted_text.data);
} @PrintLike

TextColored_CFormat :: (col: *ImVec4, fmt: *u8, __args: ..Any) -> void #foreign imgui "?TextColored@ImGui@@YAXAEBUImVec4@@PEBDZZ";
TextColored :: (col: ImVec4, fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    TextColored_CFormat(*col, "%s", formatted_text.data);
} @PrintLike

TextDisabled_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?TextDisabled@ImGui@@YAXPEBDZZ";
TextDisabled :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    TextDisabled_CFormat("%s", formatted_text.data);
} @PrintLike

TextWrapped_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?TextWrapped@ImGui@@YAXPEBDZZ";
TextWrapped :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    TextWrapped_CFormat("%s", formatted_text.data);
} @PrintLike

LabelText_CFormat :: (label: *u8, fmt: *u8, __args: ..Any) -> void #foreign imgui "?LabelText@ImGui@@YAXPEBD0ZZ";
LabelText :: (label: *u8, fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    LabelText_CFormat(label, "%s", formatted_text.data);
} @PrintLike

BulletText_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?BulletText@ImGui@@YAXPEBDZZ";
BulletText :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    BulletText_CFormat("%s", formatted_text.data);
} @PrintLike

SeparatorText :: (label: *u8) -> void #foreign imgui "?SeparatorText@ImGui@@YAXPEBD@Z";

// Widgets: Main
// - Most widgets return true when the value has been changed or when pressed/selected
// - You may also use one of the many IsItemXXX functions (e.g. IsItemActive, IsItemHovered, etc.) to query widget state.
Button :: (label: *u8, size: *ImVec2) -> bool #foreign imgui "?Button@ImGui@@YA_NPEBDAEBUImVec2@@@Z";
Button :: (label: *u8, size: ImVec2 = ImVec2.{0, 0}) -> bool #no_context {
    return Button(label, *size);
}
SmallButton :: (label: *u8) -> bool #foreign imgui "?SmallButton@ImGui@@YA_NPEBD@Z";
InvisibleButton :: (str_id: *u8, size: *ImVec2, flags: ButtonFlags = .None) -> bool #foreign imgui "?InvisibleButton@ImGui@@YA_NPEBDAEBUImVec2@@H@Z";
InvisibleButton :: (str_id: *u8, size: ImVec2, flags: ButtonFlags = .None) -> bool #no_context {
    return InvisibleButton(str_id, *size, flags);
}
ArrowButton :: (str_id: *u8, dir: Dir) -> bool #foreign imgui "?ArrowButton@ImGui@@YA_NPEBDW4ImGuiDir@@@Z";
Checkbox :: (label: *u8, v: *bool) -> bool #foreign imgui "?Checkbox@ImGui@@YA_NPEBDPEA_N@Z";
CheckboxFlags :: (label: *u8, flags: *s32, flags_value: s32) -> bool #foreign imgui "?CheckboxFlags@ImGui@@YA_NPEBDPEAHH@Z";
CheckboxFlags :: (label: *u8, flags: *u32, flags_value: u32) -> bool #foreign imgui "?CheckboxFlags@ImGui@@YA_NPEBDPEAII@Z";
RadioButton :: (label: *u8, active: bool) -> bool #foreign imgui "?RadioButton@ImGui@@YA_NPEBD_N@Z";
RadioButton :: (label: *u8, v: *s32, v_button: s32) -> bool #foreign imgui "?RadioButton@ImGui@@YA_NPEBDPEAHH@Z";
ProgressBar :: (fraction: float, size_arg: *ImVec2, overlay: *u8 = null) -> void #foreign imgui "?ProgressBar@ImGui@@YAXMAEBUImVec2@@PEBD@Z";
ProgressBar :: (fraction: float, size_arg: ImVec2 = ImVec2.{-FLOAT32_MIN, 0}, overlay: *u8 = null) #no_context {
    ProgressBar(fraction, *size_arg, overlay);
}
Bullet :: () -> void #foreign imgui "?Bullet@ImGui@@YAXXZ";
TextLink :: (label: *u8) -> bool #foreign imgui "?TextLink@ImGui@@YA_NPEBD@Z";
TextLinkOpenURL :: (label: *u8, url: *u8 = null) -> bool #foreign imgui "?TextLinkOpenURL@ImGui@@YA_NPEBD0@Z";

// Widgets: Images
// - Read about ImTextureID/ImTextureRef  here: https://github.com/ocornut/imgui/wiki/Image-Loading-and-Displaying-Examples
// - 'uv0' and 'uv1' are texture coordinates. Read about them from the same link above.
// - Image() pads adds style.ImageBorderSize on each side, ImageButton() adds style.FramePadding on each side.
// - ImageButton() draws a background based on regular Button() color + optionally an inner background if specified.
// - An obsolete version of Image(), before 1.91.9 (March 2025), had a 'tint_col' parameter which is now supported by the ImageWithBg() function.
Image :: (tex_ref: ImTextureRef, image_size: *ImVec2, uv0: *ImVec2, uv1: *ImVec2) -> void #foreign imgui "?Image@ImGui@@YAXUImTextureRef@@AEBUImVec2@@11@Z";
Image :: (tex_ref: ImTextureRef, image_size: ImVec2, uv0: ImVec2 = ImVec2.{0, 0}, uv1: ImVec2 = ImVec2.{1, 1}) #no_context {
    Image(tex_ref, *image_size, *uv0, *uv1);
}
ImageWithBg :: (tex_ref: ImTextureRef, image_size: *ImVec2, uv0: *ImVec2, uv1: *ImVec2, bg_col: *ImVec4, tint_col: *ImVec4) -> void #foreign imgui "?ImageWithBg@ImGui@@YAXUImTextureRef@@AEBUImVec2@@11AEBUImVec4@@2@Z";
ImageWithBg :: (tex_ref: ImTextureRef, image_size: ImVec2, uv0: ImVec2 = ImVec2.{0, 0}, uv1: ImVec2 = ImVec2.{1, 1}, bg_col: ImVec4 = ImVec4.{0, 0, 0, 0}, tint_col: ImVec4 = ImVec4.{1, 1, 1, 1}) #no_context {
    ImageWithBg(tex_ref, *image_size, *uv0, *uv1, *bg_col, *tint_col);
}
ImageButton :: (str_id: *u8, tex_ref: ImTextureRef, image_size: *ImVec2, uv0: *ImVec2, uv1: *ImVec2, bg_col: *ImVec4, tint_col: *ImVec4) -> bool #foreign imgui "?ImageButton@ImGui@@YA_NPEBDUImTextureRef@@AEBUImVec2@@22AEBUImVec4@@3@Z";
ImageButton :: (str_id: *u8, tex_ref: ImTextureRef, image_size: ImVec2, uv0: ImVec2 = ImVec2.{0, 0}, uv1: ImVec2 = ImVec2.{1, 1}, bg_col: ImVec4 = ImVec4.{0, 0, 0, 0}, tint_col: ImVec4 = ImVec4.{1, 1, 1, 1}) -> bool #no_context {
    return ImageButton(str_id, tex_ref, *image_size, *uv0, *uv1, *bg_col, *tint_col);
}

// Widgets: Combo Box (Dropdown)
// - The BeginCombo()/EndCombo() api allows you to manage your contents and selection state however you want it, by creating e.g. Selectable() items.
// - The old Combo() api are helpers over BeginCombo()/EndCombo() which are kept available for convenience purpose. This is analogous to how ListBox are created.
BeginCombo :: (label: *u8, preview_value: *u8, flags: ComboFlags = .None) -> bool #foreign imgui "?BeginCombo@ImGui@@YA_NPEBD0H@Z";
EndCombo :: () -> void #foreign imgui "?EndCombo@ImGui@@YAXXZ";
Combo :: (label: *u8, current_item: *s32, items: **u8, items_count: s32, popup_max_height_in_items: s32 = -1) -> bool #foreign imgui "?Combo@ImGui@@YA_NPEBDPEAHQEBQEBDHH@Z";
Combo :: (label: *u8, current_item: *s32, items_separated_by_zeros: *u8, popup_max_height_in_items: s32 = -1) -> bool #foreign imgui "?Combo@ImGui@@YA_NPEBDPEAH0H@Z";
Combo :: (label: *u8, current_item: *s32, getter: #type (user_data: *void, idx: s32) -> *u8 #c_call, user_data: *void, items_count: s32, popup_max_height_in_items: s32 = -1) -> bool #foreign imgui "?Combo@ImGui@@YA_NPEBDPEAHP6APEBDPEAXH@Z2HH@Z";

// Widgets: Drag Sliders
// - Ctrl+Click on any drag box to turn them into an input box. Manually input values aren't clamped by default and can go off-bounds. Use ImGuiSliderFlags_AlwaysClamp to always clamp.
// - For all the Float2/Float3/Float4/Int2/Int3/Int4 versions of every function, note that a 'float v[X]' function argument is the same as 'float* v',
//   the array syntax is just a way to document the number of elements that are expected to be accessible. You can pass address of your first element out of a contiguous set, e.g. &myvector.x
// - Adjust format string to decorate the value with a prefix, a suffix, or adapt the editing and display precision e.g. "%.3f" -> 1.234; "%5.2f secs" -> 01.23 secs; "Biscuit: %.0f" -> Biscuit: 1; etc.
// - Format string may also be set to NULL or use the default format ("%f" or "%d").
// - Speed are per-pixel of mouse movement (v_speed=0.2f: mouse needs to move by 5 pixels to increase value by 1). For keyboard/gamepad navigation, minimum speed is Max(v_speed, minimum_step_at_given_precision).
// - Use v_min < v_max to clamp edits to given limits. Note that Ctrl+Click manual input can override those limits if ImGuiSliderFlags_AlwaysClamp is not used.
// - Use v_max = FLT_MAX / INT_MAX etc to avoid clamping to a maximum, same with v_min = -FLT_MAX / INT_MIN to avoid clamping to a minimum.
// - We use the same sets of flags for DragXXX() and SliderXXX() functions as the features are the same and it makes it easier to swap them.
// - Legacy: Pre-1.78 there are DragXXX() function signatures that take a final `float power=1.0f' argument instead of the `ImGuiSliderFlags flags=0' argument.
//   If you get a warning converting a float to ImGuiSliderFlags, read https://github.com/ocornut/imgui/issues/3361
DragFloat :: (label: *u8, v: *float, v_speed: float = 1.0, v_min: float = 0.0, v_max: float = 0.0, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?DragFloat@ImGui@@YA_NPEBDPEAMMMM0H@Z";
DragFloat2 :: (label: *u8, v: *[2] float, v_speed: float = 1.0, v_min: float = 0.0, v_max: float = 0.0, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?DragFloat2@ImGui@@YA_NPEBDQEAMMMM0H@Z";
DragFloat3 :: (label: *u8, v: *[3] float, v_speed: float = 1.0, v_min: float = 0.0, v_max: float = 0.0, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?DragFloat3@ImGui@@YA_NPEBDQEAMMMM0H@Z";
DragFloat4 :: (label: *u8, v: *[4] float, v_speed: float = 1.0, v_min: float = 0.0, v_max: float = 0.0, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?DragFloat4@ImGui@@YA_NPEBDQEAMMMM0H@Z";
DragFloatRange2 :: (label: *u8, v_current_min: *float, v_current_max: *float, v_speed: float = 1.0, v_min: float = 0.0, v_max: float = 0.0, format: *u8 = "%.3f", format_max: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?DragFloatRange2@ImGui@@YA_NPEBDPEAM1MMM00H@Z";
DragInt :: (label: *u8, v: *s32, v_speed: float = 1.0, v_min: s32 = 0, v_max: s32 = 0, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?DragInt@ImGui@@YA_NPEBDPEAHMHH0H@Z";
DragInt2 :: (label: *u8, v: *[2] s32, v_speed: float = 1.0, v_min: s32 = 0, v_max: s32 = 0, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?DragInt2@ImGui@@YA_NPEBDQEAHMHH0H@Z";
DragInt3 :: (label: *u8, v: *[3] s32, v_speed: float = 1.0, v_min: s32 = 0, v_max: s32 = 0, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?DragInt3@ImGui@@YA_NPEBDQEAHMHH0H@Z";
DragInt4 :: (label: *u8, v: *[4] s32, v_speed: float = 1.0, v_min: s32 = 0, v_max: s32 = 0, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?DragInt4@ImGui@@YA_NPEBDQEAHMHH0H@Z";
DragIntRange2 :: (label: *u8, v_current_min: *s32, v_current_max: *s32, v_speed: float = 1.0, v_min: s32 = 0, v_max: s32 = 0, format: *u8 = "%d", format_max: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?DragIntRange2@ImGui@@YA_NPEBDPEAH1MHH00H@Z";
DragScalar :: (label: *u8, data_type: DataType, p_data: *void, v_speed: float = 1.0, p_min: *void = null, p_max: *void = null, format: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?DragScalar@ImGui@@YA_NPEBDHPEAXMPEBX20H@Z";
DragScalarN :: (label: *u8, data_type: DataType, p_data: *void, components: s32, v_speed: float = 1.0, p_min: *void = null, p_max: *void = null, format: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?DragScalarN@ImGui@@YA_NPEBDHPEAXHMPEBX20H@Z";

// Widgets: Regular Sliders
// - Ctrl+Click on any slider to turn them into an input box. Manually input values aren't clamped by default and can go off-bounds. Use ImGuiSliderFlags_AlwaysClamp to always clamp.
// - Adjust format string to decorate the value with a prefix, a suffix, or adapt the editing and display precision e.g. "%.3f" -> 1.234; "%5.2f secs" -> 01.23 secs; "Biscuit: %.0f" -> Biscuit: 1; etc.
// - Format string may also be set to NULL or use the default format ("%f" or "%d").
// - Legacy: Pre-1.78 there are SliderXXX() function signatures that take a final `float power=1.0f' argument instead of the `ImGuiSliderFlags flags=0' argument.
//   If you get a warning converting a float to ImGuiSliderFlags, read https://github.com/ocornut/imgui/issues/3361
SliderFloat :: (label: *u8, v: *float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderFloat@ImGui@@YA_NPEBDPEAMMM0H@Z";
SliderFloat2 :: (label: *u8, v: *[2] float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderFloat2@ImGui@@YA_NPEBDQEAMMM0H@Z";
SliderFloat3 :: (label: *u8, v: *[3] float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderFloat3@ImGui@@YA_NPEBDQEAMMM0H@Z";
SliderFloat4 :: (label: *u8, v: *[4] float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderFloat4@ImGui@@YA_NPEBDQEAMMM0H@Z";
SliderAngle :: (label: *u8, v_rad: *float, v_degrees_min: float = -360.0, v_degrees_max: float = +360.0, format: *u8 = "%.0f deg", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderAngle@ImGui@@YA_NPEBDPEAMMM0H@Z";
SliderInt :: (label: *u8, v: *s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderInt@ImGui@@YA_NPEBDPEAHHH0H@Z";
SliderInt2 :: (label: *u8, v: *[2] s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderInt2@ImGui@@YA_NPEBDQEAHHH0H@Z";
SliderInt3 :: (label: *u8, v: *[3] s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderInt3@ImGui@@YA_NPEBDQEAHHH0H@Z";
SliderInt4 :: (label: *u8, v: *[4] s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?SliderInt4@ImGui@@YA_NPEBDQEAHHH0H@Z";
SliderScalar :: (label: *u8, data_type: DataType, p_data: *void, p_min: *void, p_max: *void, format: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?SliderScalar@ImGui@@YA_NPEBDHPEAXPEBX20H@Z";
SliderScalarN :: (label: *u8, data_type: DataType, p_data: *void, components: s32, p_min: *void, p_max: *void, format: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?SliderScalarN@ImGui@@YA_NPEBDHPEAXHPEBX20H@Z";
VSliderFloat :: (label: *u8, size: *ImVec2, v: *float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #foreign imgui "?VSliderFloat@ImGui@@YA_NPEBDAEBUImVec2@@PEAMMM0H@Z";
VSliderFloat :: (label: *u8, size: ImVec2, v: *float, v_min: float, v_max: float, format: *u8 = "%.3f", flags: SliderFlags = .None) -> bool #no_context {
    return VSliderFloat(label, *size, v, v_min, v_max, format, flags);
}
VSliderInt :: (label: *u8, size: *ImVec2, v: *s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #foreign imgui "?VSliderInt@ImGui@@YA_NPEBDAEBUImVec2@@PEAHHH0H@Z";
VSliderInt :: (label: *u8, size: ImVec2, v: *s32, v_min: s32, v_max: s32, format: *u8 = "%d", flags: SliderFlags = .None) -> bool #no_context {
    return VSliderInt(label, *size, v, v_min, v_max, format, flags);
}
VSliderScalar :: (label: *u8, size: *ImVec2, data_type: DataType, p_data: *void, p_min: *void, p_max: *void, format: *u8 = null, flags: SliderFlags = .None) -> bool #foreign imgui "?VSliderScalar@ImGui@@YA_NPEBDAEBUImVec2@@HPEAXPEBX30H@Z";
VSliderScalar :: (label: *u8, size: ImVec2, data_type: DataType, p_data: *void, p_min: *void, p_max: *void, format: *u8 = null, flags: SliderFlags = .None) -> bool #no_context {
    return VSliderScalar(label, *size, data_type, p_data, p_min, p_max, format, flags);
}

// Widgets: Input with Keyboard
// - If you want to use InputText() with std::string or any custom dynamic string type, use the wrapper in misc/cpp/imgui_stdlib.h/.cpp!
// - Most of the ImGuiInputTextFlags flags are only useful for InputText() and not for InputFloatX, InputIntX, InputDouble etc.
InputText :: (label: *u8, buf: *u8, buf_size: u64, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #foreign imgui "?InputText@ImGui@@YA_NPEBDPEAD_KHP6AHPEAUImGuiInputTextCallbackData@@@ZPEAX@Z";
InputTextMultiline :: (label: *u8, buf: *u8, buf_size: u64, size: *ImVec2, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #foreign imgui "?InputTextMultiline@ImGui@@YA_NPEBDPEAD_KAEBUImVec2@@HP6AHPEAUImGuiInputTextCallbackData@@@ZPEAX@Z";
InputTextMultiline :: (label: *u8, buf: *u8, buf_size: u64, size: ImVec2 = ImVec2.{0, 0}, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #no_context {
    return InputTextMultiline(label, buf, buf_size, *size, flags, callback, user_data);
}
InputTextWithHint :: (label: *u8, hint: *u8, buf: *u8, buf_size: u64, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #foreign imgui "?InputTextWithHint@ImGui@@YA_NPEBD0PEAD_KHP6AHPEAUImGuiInputTextCallbackData@@@ZPEAX@Z";
InputFloat :: (label: *u8, v: *float, step: float = 0.0, step_fast: float = 0.0, format: *u8 = "%.3f", flags: InputTextFlags = .None) -> bool #foreign imgui "?InputFloat@ImGui@@YA_NPEBDPEAMMM0H@Z";
InputFloat2 :: (label: *u8, v: *[2] float, format: *u8 = "%.3f", flags: InputTextFlags = .None) -> bool #foreign imgui "?InputFloat2@ImGui@@YA_NPEBDQEAM0H@Z";
InputFloat3 :: (label: *u8, v: *[3] float, format: *u8 = "%.3f", flags: InputTextFlags = .None) -> bool #foreign imgui "?InputFloat3@ImGui@@YA_NPEBDQEAM0H@Z";
InputFloat4 :: (label: *u8, v: *[4] float, format: *u8 = "%.3f", flags: InputTextFlags = .None) -> bool #foreign imgui "?InputFloat4@ImGui@@YA_NPEBDQEAM0H@Z";
InputInt :: (label: *u8, v: *s32, step: s32 = 1, step_fast: s32 = 100, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputInt@ImGui@@YA_NPEBDPEAHHHH@Z";
InputInt2 :: (label: *u8, v: *[2] s32, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputInt2@ImGui@@YA_NPEBDQEAHH@Z";
InputInt3 :: (label: *u8, v: *[3] s32, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputInt3@ImGui@@YA_NPEBDQEAHH@Z";
InputInt4 :: (label: *u8, v: *[4] s32, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputInt4@ImGui@@YA_NPEBDQEAHH@Z";
InputDouble :: (label: *u8, v: *float64, step: float64 = 0.0, step_fast: float64 = 0.0, format: *u8 = "%.6f", flags: InputTextFlags = .None) -> bool #foreign imgui "?InputDouble@ImGui@@YA_NPEBDPEANNN0H@Z";
InputScalar :: (label: *u8, data_type: DataType, p_data: *void, p_step: *void = null, p_step_fast: *void = null, format: *u8 = null, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputScalar@ImGui@@YA_NPEBDHPEAXPEBX20H@Z";
InputScalarN :: (label: *u8, data_type: DataType, p_data: *void, components: s32, p_step: *void = null, p_step_fast: *void = null, format: *u8 = null, flags: InputTextFlags = .None) -> bool #foreign imgui "?InputScalarN@ImGui@@YA_NPEBDHPEAXHPEBX20H@Z";

// Widgets: Color Editor/Picker (tip: the ColorEdit* functions have a little color square that can be left-clicked to open a picker, and right-clicked to open an option menu.)
// - Note that in C++ a 'float v[X]' function argument is the _same_ as 'float* v', the array syntax is just a way to document the number of elements that are expected to be accessible.
// - You can pass the address of a first float element out of a contiguous structure, e.g. &myvector.x
ColorEdit3 :: (label: *u8, col: *[3] float, flags: ColorEditFlags = .None) -> bool #foreign imgui "?ColorEdit3@ImGui@@YA_NPEBDQEAMH@Z";
ColorEdit4 :: (label: *u8, col: *[4] float, flags: ColorEditFlags = .None) -> bool #foreign imgui "?ColorEdit4@ImGui@@YA_NPEBDQEAMH@Z";
ColorPicker3 :: (label: *u8, col: *[3] float, flags: ColorEditFlags = .None) -> bool #foreign imgui "?ColorPicker3@ImGui@@YA_NPEBDQEAMH@Z";
ColorPicker4 :: (label: *u8, col: *[4] float, flags: ColorEditFlags = .None, ref_col: *float = null) -> bool #foreign imgui "?ColorPicker4@ImGui@@YA_NPEBDQEAMHPEBM@Z";
ColorButton :: (desc_id: *u8, col: *ImVec4, flags: ColorEditFlags = .None, size: *ImVec2) -> bool #foreign imgui "?ColorButton@ImGui@@YA_NPEBDAEBUImVec4@@HAEBUImVec2@@@Z";
ColorButton :: (desc_id: *u8, col: ImVec4, flags: ColorEditFlags = .None, size: ImVec2 = ImVec2.{0, 0}) -> bool #no_context {
    return ColorButton(desc_id, *col, flags, *size);
}
SetColorEditOptions :: (flags: ColorEditFlags) -> void #foreign imgui "?SetColorEditOptions@ImGui@@YAXH@Z";

// Widgets: Trees
// - TreeNode functions return true when the node is open, in which case you need to also call TreePop() when you are finished displaying the tree node contents.
TreeNode :: (label: *u8) -> bool #foreign imgui "?TreeNode@ImGui@@YA_NPEBD@Z";
TreeNode_CFormat :: (str_id: *u8, fmt: *u8, __args: ..Any) -> bool #foreign imgui "?TreeNode@ImGui@@YA_NPEBD0ZZ";
TreeNode :: (str_id: *u8, fmt: string, __args: ..Any) -> bool {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return TreeNode_CFormat(str_id, "%s", formatted_text.data);
} @PrintLike
TreeNode_CFormat :: (ptr_id: *void, fmt: *u8, __args: ..Any) -> bool #foreign imgui "?TreeNode@ImGui@@YA_NPEBXPEBDZZ";
TreeNode :: (ptr_id: *void, fmt: string, __args: ..Any) -> bool {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return TreeNode_CFormat(ptr_id, "%s", formatted_text.data);
} @PrintLike

TreeNodeEx :: (label: *u8, flags: TreeNodeFlags = .None) -> bool #foreign imgui "?TreeNodeEx@ImGui@@YA_NPEBDH@Z";
TreeNodeEx_CFormat :: (str_id: *u8, flags: TreeNodeFlags, fmt: *u8, __args: ..Any) -> bool #foreign imgui "?TreeNodeEx@ImGui@@YA_NPEBDH0ZZ";
TreeNodeEx :: (str_id: *u8, flags: TreeNodeFlags, fmt: string, __args: ..Any) -> bool {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return TreeNodeEx_CFormat(str_id, flags, "%s", formatted_text.data);
} @PrintLike
TreeNodeEx_CFormat :: (ptr_id: *void, flags: TreeNodeFlags, fmt: *u8, __args: ..Any) -> bool #foreign imgui "?TreeNodeEx@ImGui@@YA_NPEBXHPEBDZZ";
TreeNodeEx :: (ptr_id: *void, flags: TreeNodeFlags, fmt: string, __args: ..Any) -> bool {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return TreeNodeEx_CFormat(ptr_id, flags, "%s", formatted_text.data);
} @PrintLike

TreePush :: (str_id: *u8) -> void #foreign imgui "?TreePush@ImGui@@YAXPEBD@Z";
TreePush :: (ptr_id: *void) -> void #foreign imgui "?TreePush@ImGui@@YAXPEBX@Z";
TreePop :: () -> void #foreign imgui "?TreePop@ImGui@@YAXXZ";
GetTreeNodeToLabelSpacing :: () -> float #foreign imgui "?GetTreeNodeToLabelSpacing@ImGui@@YAMXZ";
CollapsingHeader :: (label: *u8, flags: TreeNodeFlags = .None) -> bool #foreign imgui "?CollapsingHeader@ImGui@@YA_NPEBDH@Z";
CollapsingHeader :: (label: *u8, p_visible: *bool, flags: TreeNodeFlags = .None) -> bool #foreign imgui "?CollapsingHeader@ImGui@@YA_NPEBDPEA_NH@Z";
SetNextItemOpen :: (is_open: bool, cond: Cond = .None) -> void #foreign imgui "?SetNextItemOpen@ImGui@@YAX_NH@Z";
SetNextItemStorageID :: (storage_id: ID) -> void #foreign imgui "?SetNextItemStorageID@ImGui@@YAXI@Z";
TreeNodeGetOpen :: (storage_id: ID) -> bool #foreign imgui "?TreeNodeGetOpen@ImGui@@YA_NI@Z";

// Widgets: Selectables
// - A selectable highlights when hovered, and can display another color when selected.
// - Neighbors selectable extend their highlight bounds in order to leave no gap between them. This is so a series of selected Selectable appear contiguous.
Selectable :: (label: *u8, selected := false, flags: SelectableFlags = .None, size: *ImVec2) -> bool #foreign imgui "?Selectable@ImGui@@YA_NPEBD_NHAEBUImVec2@@@Z";
Selectable :: (label: *u8, selected := false, flags: SelectableFlags = .None, size: ImVec2 = ImVec2.{0, 0}) -> bool #no_context {
    return Selectable(label, selected, flags, *size);
}
Selectable :: (label: *u8, p_selected: *bool, flags: SelectableFlags = .None, size: *ImVec2) -> bool #foreign imgui "?Selectable@ImGui@@YA_NPEBDPEA_NHAEBUImVec2@@@Z";
Selectable :: (label: *u8, p_selected: *bool, flags: SelectableFlags = .None, size: ImVec2 = ImVec2.{0, 0}) -> bool #no_context {
    return Selectable(label, p_selected, flags, *size);
}

// Multi-selection system for Selectable(), Checkbox(), TreeNode() functions [BETA]
// - This enables standard multi-selection/range-selection idioms (Ctrl+Mouse/Keyboard, Shift+Mouse/Keyboard, etc.) in a way that also allow a clipper to be used.
// - ImGuiSelectionUserData is often used to store your item index within the current view (but may store something else).
// - Read comments near ImGuiMultiSelectIO for instructions/details and see 'Demo->Widgets->Selection State & Multi-Select' for demo.
// - TreeNode() is technically supported but... using this correctly is more complicated. You need some sort of linear/random access to your tree,
//   which is suited to advanced trees setups already implementing filters and clipper. We will work simplifying the current demo.
// - 'selection_size' and 'items_count' parameters are optional and used by a few features. If they are costly for you to compute, you may avoid them.
BeginMultiSelect :: (flags: MultiSelectFlags, selection_size: s32 = -1, items_count: s32 = -1) -> *MultiSelectIO #foreign imgui "?BeginMultiSelect@ImGui@@YAPEAUImGuiMultiSelectIO@@HHH@Z";
EndMultiSelect :: () -> *MultiSelectIO #foreign imgui "?EndMultiSelect@ImGui@@YAPEAUImGuiMultiSelectIO@@XZ";
SetNextItemSelectionUserData :: (selection_user_data: SelectionUserData) -> void #foreign imgui "?SetNextItemSelectionUserData@ImGui@@YAX_J@Z";
IsItemToggledSelection :: () -> bool #foreign imgui "?IsItemToggledSelection@ImGui@@YA_NXZ";

// Widgets: List Boxes
// - This is essentially a thin wrapper to using BeginChild/EndChild with the ImGuiChildFlags_FrameStyle flag for stylistic changes + displaying a label.
// - If you don't need a label you can probably simply use BeginChild() with the ImGuiChildFlags_FrameStyle flag for the same result.
// - You can submit contents and manage your selection state however you want it, by creating e.g. Selectable() or any other items.
// - The simplified/old ListBox() api are helpers over BeginListBox()/EndListBox() which are kept available for convenience purpose. This is analogous to how Combos are created.
// - Choose frame width:   size.x > 0.0f: custom  /  size.x < 0.0f or -FLT_MIN: right-align   /  size.x = 0.0f (default): use current ItemWidth
// - Choose frame height:  size.y > 0.0f: custom  /  size.y < 0.0f or -FLT_MIN: bottom-align  /  size.y = 0.0f (default): arbitrary default height which can fit ~7 items
BeginListBox :: (label: *u8, size: *ImVec2) -> bool #foreign imgui "?BeginListBox@ImGui@@YA_NPEBDAEBUImVec2@@@Z";
BeginListBox :: (label: *u8, size: ImVec2 = ImVec2.{0, 0}) -> bool #no_context {
    return BeginListBox(label, *size);
}
EndListBox :: () -> void #foreign imgui "?EndListBox@ImGui@@YAXXZ";
ListBox :: (label: *u8, current_item: *s32, items: **u8, items_count: s32, height_in_items: s32 = -1) -> bool #foreign imgui "?ListBox@ImGui@@YA_NPEBDPEAHQEBQEBDHH@Z";
ListBox :: (label: *u8, current_item: *s32, getter: #type (user_data: *void, idx: s32) -> *u8 #c_call, user_data: *void, items_count: s32, height_in_items: s32 = -1) -> bool #foreign imgui "?ListBox@ImGui@@YA_NPEBDPEAHP6APEBDPEAXH@Z2HH@Z";

// Widgets: Data Plotting
// - Consider using ImPlot (https://github.com/epezent/implot) which is much better!
PlotLines :: (label: *u8, values: *float, values_count: s32, values_offset: s32 = 0, overlay_text: *u8 = null, scale_min: float = FLOAT32_MAX, scale_max: float = FLOAT32_MAX, graph_size: ImVec2 = .{0, 0}, stride: s32 = 4) -> void #foreign imgui "?PlotLines@ImGui@@YAXPEBDPEBMHH0MMUImVec2@@H@Z";
PlotLines :: (label: *u8, values_getter: #type (data: *void, idx: s32) -> float #c_call, data: *void, values_count: s32, values_offset: s32 = 0, overlay_text: *u8 = null, scale_min: float = FLOAT32_MAX, scale_max: float = FLOAT32_MAX, graph_size: ImVec2 = .{0, 0}) -> void #foreign imgui "?PlotLines@ImGui@@YAXPEBDP6AMPEAXH@Z1HH0MMUImVec2@@@Z";
PlotHistogram :: (label: *u8, values: *float, values_count: s32, values_offset: s32 = 0, overlay_text: *u8 = null, scale_min: float = FLOAT32_MAX, scale_max: float = FLOAT32_MAX, graph_size: ImVec2 = .{0, 0}, stride: s32 = 4) -> void #foreign imgui "?PlotHistogram@ImGui@@YAXPEBDPEBMHH0MMUImVec2@@H@Z";
PlotHistogram :: (label: *u8, values_getter: #type (data: *void, idx: s32) -> float #c_call, data: *void, values_count: s32, values_offset: s32 = 0, overlay_text: *u8 = null, scale_min: float = FLOAT32_MAX, scale_max: float = FLOAT32_MAX, graph_size: ImVec2 = .{0, 0}) -> void #foreign imgui "?PlotHistogram@ImGui@@YAXPEBDP6AMPEAXH@Z1HH0MMUImVec2@@@Z";

// Widgets: Value() Helpers.
// - Those are merely shortcut to calling Text() with a format string. Output single value in "name: value" format (tip: freely declare more in your code to handle your types. you can add functions to the ImGui namespace)
Value :: (prefix: *u8, b: bool) -> void #foreign imgui "?Value@ImGui@@YAXPEBD_N@Z";
Value :: (prefix: *u8, v: s32) -> void #foreign imgui "?Value@ImGui@@YAXPEBDH@Z";
Value :: (prefix: *u8, v: u32) -> void #foreign imgui "?Value@ImGui@@YAXPEBDI@Z";
Value :: (prefix: *u8, v: float, float_format: *u8 = null) -> void #foreign imgui "?Value@ImGui@@YAXPEBDM0@Z";

// Widgets: Menus
// - Use BeginMenuBar() on a window ImGuiWindowFlags_MenuBar to append to its menu bar.
// - Use BeginMainMenuBar() to create a menu bar at the top of the screen and append to it.
// - Use BeginMenu() to create a menu. You can call BeginMenu() multiple time with the same identifier to append more items to it.
// - Not that MenuItem() keyboardshortcuts are displayed as a convenience but _not processed_ by Dear ImGui at the moment.
BeginMenuBar :: () -> bool #foreign imgui "?BeginMenuBar@ImGui@@YA_NXZ";
EndMenuBar :: () -> void #foreign imgui "?EndMenuBar@ImGui@@YAXXZ";
BeginMainMenuBar :: () -> bool #foreign imgui "?BeginMainMenuBar@ImGui@@YA_NXZ";
EndMainMenuBar :: () -> void #foreign imgui "?EndMainMenuBar@ImGui@@YAXXZ";
BeginMenu :: (label: *u8, enabled := true) -> bool #foreign imgui "?BeginMenu@ImGui@@YA_NPEBD_N@Z";
EndMenu :: () -> void #foreign imgui "?EndMenu@ImGui@@YAXXZ";
MenuItem :: (label: *u8, shortcut: *u8 = null, selected := false, enabled := true) -> bool #foreign imgui "?MenuItem@ImGui@@YA_NPEBD0_N1@Z";
MenuItem :: (label: *u8, shortcut: *u8, p_selected: *bool, enabled := true) -> bool #foreign imgui "?MenuItem@ImGui@@YA_NPEBD0PEA_N_N@Z";

// Tooltips
// - Tooltips are windows following the mouse. They do not take focus away.
// - A tooltip window can contain items of any types.
// - SetTooltip() is more or less a shortcut for the 'if (BeginTooltip()) { Text(...); EndTooltip(); }' idiom (with a subtlety that it discard any previously submitted tooltip)
BeginTooltip :: () -> bool #foreign imgui "?BeginTooltip@ImGui@@YA_NXZ";
EndTooltip :: () -> void #foreign imgui "?EndTooltip@ImGui@@YAXXZ";
SetTooltip_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?SetTooltip@ImGui@@YAXPEBDZZ";
SetTooltip :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    SetTooltip_CFormat("%s", formatted_text.data);
} @PrintLike

// Tooltips: helpers for showing a tooltip when hovering an item
// - BeginItemTooltip() is a shortcut for the 'if (IsItemHovered(ImGuiHoveredFlags_ForTooltip) && BeginTooltip())' idiom.
// - SetItemTooltip() is a shortcut for the 'if (IsItemHovered(ImGuiHoveredFlags_ForTooltip)) { SetTooltip(...); }' idiom.
// - Where 'ImGuiHoveredFlags_ForTooltip' itself is a shortcut to use 'style.HoverFlagsForTooltipMouse' or 'style.HoverFlagsForTooltipNav' depending on active input type. For mouse it defaults to 'ImGuiHoveredFlags_Stationary | ImGuiHoveredFlags_DelayShort'.
BeginItemTooltip :: () -> bool #foreign imgui "?BeginItemTooltip@ImGui@@YA_NXZ";
SetItemTooltip_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?SetItemTooltip@ImGui@@YAXPEBDZZ";
SetItemTooltip :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    SetItemTooltip_CFormat("%s", formatted_text.data);
} @PrintLike

// Popups, Modals
//  - They block normal mouse hovering detection (and therefore most mouse interactions) behind them.
//  - If not modal: they can be closed by clicking anywhere outside them, or by pressing ESCAPE.
//  - Their visibility state (~bool) is held internally instead of being held by the programmer as we are used to with regular Begin*() calls.
//  - The 3 properties above are related: we need to retain popup visibility state in the library because popups may be closed as any time.
//  - You can bypass the hovering restriction by using ImGuiHoveredFlags_AllowWhenBlockedByPopup when calling IsItemHovered() or IsWindowHovered().
//  - IMPORTANT: Popup identifiers are relative to the current ID stack, so OpenPopup and BeginPopup generally needs to be at the same level of the stack.
//    This is sometimes leading to confusing mistakes. May rework this in the future.
//  - BeginPopup(): query popup state, if open start appending into the window. Call EndPopup() afterwards if returned true. ImGuiWindowFlags are forwarded to the window.
//  - BeginPopupModal(): block every interaction behind the window, cannot be closed by user, add a dimming background, has a title bar.
BeginPopup :: (str_id: *u8, flags: WindowFlags = .None) -> bool #foreign imgui "?BeginPopup@ImGui@@YA_NPEBDH@Z";
BeginPopupModal :: (name: *u8, p_open: *bool = null, flags: WindowFlags = .None) -> bool #foreign imgui "?BeginPopupModal@ImGui@@YA_NPEBDPEA_NH@Z";
EndPopup :: () -> void #foreign imgui "?EndPopup@ImGui@@YAXXZ";

// Popups: open/close functions
//  - OpenPopup(): set popup state to open. ImGuiPopupFlags are available for opening options.
//  - If not modal: they can be closed by clicking anywhere outside them, or by pressing ESCAPE.
//  - CloseCurrentPopup(): use inside the BeginPopup()/EndPopup() scope to close manually.
//  - CloseCurrentPopup() is called by default by Selectable()/MenuItem() when activated (FIXME: need some options).
//  - Use ImGuiPopupFlags_NoOpenOverExistingPopup to avoid opening a popup if there's already one at the same level. This is equivalent to e.g. testing for !IsAnyPopupOpen() prior to OpenPopup().
//  - Use IsWindowAppearing() after BeginPopup() to tell if a window just opened.
OpenPopup :: (str_id: *u8, popup_flags: PopupFlags = .None) -> void #foreign imgui "?OpenPopup@ImGui@@YAXPEBDH@Z";
OpenPopup :: (id: ID, popup_flags: PopupFlags = .None) -> void #foreign imgui "?OpenPopup@ImGui@@YAXIH@Z";
OpenPopupOnItemClick :: (str_id: *u8 = null, popup_flags: PopupFlags = .None) -> void #foreign imgui "?OpenPopupOnItemClick@ImGui@@YAXPEBDH@Z";
CloseCurrentPopup :: () -> void #foreign imgui "?CloseCurrentPopup@ImGui@@YAXXZ";

// Popups: Open+Begin popup combined functions helpers to create context menus.
//  - Helpers to do OpenPopup+BeginPopup where the Open action is triggered by e.g. hovering an item and right-clicking.
//  - IMPORTANT: Notice that BeginPopupContextXXX takes ImGuiPopupFlags just like OpenPopup() and unlike BeginPopup(). For full consistency, we may add ImGuiWindowFlags to the BeginPopupContextXXX functions in the future.
//  - IMPORTANT: If you ever used the left mouse button with BeginPopupContextXXX() helpers before 1.92.6:
//    - Before this version, OpenPopupOnItemClick(), BeginPopupContextItem(), BeginPopupContextWindow(), BeginPopupContextVoid() had 'a ImGuiPopupFlags popup_flags = 1' default value in their function signature.
//    - Before: Explicitly passing a literal 0 meant ImGuiPopupFlags_MouseButtonLeft. The default = 1 meant ImGuiPopupFlags_MouseButtonRight.
//    - After: The default = 0 means ImGuiPopupFlags_MouseButtonRight. Explicitly passing a literal 1 also means ImGuiPopupFlags_MouseButtonRight (if legacy behavior are enabled) or will assert (if legacy behavior are disabled).
//    - TL;DR: if you don't want to use right mouse button for popups, always specify it explicitly using a named ImGuiPopupFlags_MouseButtonXXXX value.
//    - Read "API BREAKING CHANGES" 2026/01/07 (1.92.6) entry in imgui.cpp or GitHub topic #9157 for all details.
BeginPopupContextItem :: (str_id: *u8 = null, popup_flags: PopupFlags = .None) -> bool #foreign imgui "?BeginPopupContextItem@ImGui@@YA_NPEBDH@Z";
BeginPopupContextWindow :: (str_id: *u8 = null, popup_flags: PopupFlags = .None) -> bool #foreign imgui "?BeginPopupContextWindow@ImGui@@YA_NPEBDH@Z";
BeginPopupContextVoid :: (str_id: *u8 = null, popup_flags: PopupFlags = .None) -> bool #foreign imgui "?BeginPopupContextVoid@ImGui@@YA_NPEBDH@Z";

// Popups: query functions
//  - IsPopupOpen(): return true if the popup is open at the current BeginPopup() level of the popup stack.
//  - IsPopupOpen() with ImGuiPopupFlags_AnyPopupId: return true if any popup is open at the current BeginPopup() level of the popup stack.
//  - IsPopupOpen() with ImGuiPopupFlags_AnyPopupId + ImGuiPopupFlags_AnyPopupLevel: return true if any popup is open.
IsPopupOpen :: (str_id: *u8, flags: PopupFlags = .None) -> bool #foreign imgui "?IsPopupOpen@ImGui@@YA_NPEBDH@Z";

// Tables
// - Full-featured replacement for old Columns API.
// - See Demo->Tables for demo code. See top of imgui_tables.cpp for general commentary.
// - See ImGuiTableFlags_ and ImGuiTableColumnFlags_ enums for a description of available flags.
// The typical call flow is:
// - 1. Call BeginTable(), early out if returning false.
// - 2. Optionally call TableSetupColumn() to submit column name/flags/defaults.
// - 3. Optionally call TableSetupScrollFreeze() to request scroll freezing of columns/rows.
// - 4. Optionally call TableHeadersRow() to submit a header row. Names are pulled from TableSetupColumn() data.
// - 5. Populate contents:
//    - In most situations you can use TableNextRow() + TableSetColumnIndex(N) to start appending into a column.
//    - If you are using tables as a sort of grid, where every column is holding the same type of contents,
//      you may prefer using TableNextColumn() instead of TableNextRow() + TableSetColumnIndex().
//      TableNextColumn() will automatically wrap-around into the next row if needed.
//    - IMPORTANT: Comparatively to the old Columns() API, we need to call TableNextColumn() for the first column!
//    - Summary of possible call flow:
//        - TableNextRow() -> TableSetColumnIndex(0) -> Text("Hello 0") -> TableSetColumnIndex(1) -> Text("Hello 1")  // OK
//        - TableNextRow() -> TableNextColumn()      -> Text("Hello 0") -> TableNextColumn()      -> Text("Hello 1")  // OK
//        -                   TableNextColumn()      -> Text("Hello 0") -> TableNextColumn()      -> Text("Hello 1")  // OK: TableNextColumn() automatically gets to next row!
//        - TableNextRow()                           -> Text("Hello 0")                                               // Not OK! Missing TableSetColumnIndex() or TableNextColumn()! Text will not appear!
// - 5. Call EndTable()
BeginTable :: (str_id: *u8, columns: s32, flags: TableFlags = .None, outer_size: *ImVec2, inner_width: float = 0.0) -> bool #foreign imgui "?BeginTable@ImGui@@YA_NPEBDHHAEBUImVec2@@M@Z";
BeginTable :: (str_id: *u8, columns: s32, flags: TableFlags = .None, outer_size: ImVec2 = ImVec2.{0.0, 0.0}, inner_width: float = 0.0) -> bool #no_context {
    return BeginTable(str_id, columns, flags, *outer_size, inner_width);
}
EndTable :: () -> void #foreign imgui "?EndTable@ImGui@@YAXXZ";
TableNextRow :: (row_flags: TableRowFlags = .None, min_row_height: float = 0.0) -> void #foreign imgui "?TableNextRow@ImGui@@YAXHM@Z";
TableNextColumn :: () -> bool #foreign imgui "?TableNextColumn@ImGui@@YA_NXZ";
TableSetColumnIndex :: (column_n: s32) -> bool #foreign imgui "?TableSetColumnIndex@ImGui@@YA_NH@Z";

// Tables: Headers & Columns declaration
// - Use TableSetupColumn() to specify label, resizing policy, default width/weight, id, various other flags etc.
// - Use TableHeadersRow() to create a header row and automatically submit a TableHeader() for each column.
//   Headers are required to perform: reordering, sorting, and opening the context menu.
//   The context menu can also be made available in columns body using ImGuiTableFlags_ContextMenuInBody.
// - You may manually submit headers using TableNextRow() + TableHeader() calls, but this is only useful in
//   some advanced use cases (e.g. adding custom widgets in header row).
// - Use TableSetupScrollFreeze() to lock columns/rows so they stay visible when scrolled. When freezing columns you would usually also use ImGuiTableColumnFlags_NoHide on them.
TableSetupColumn :: (label: *u8, flags: TableColumnFlags = .None, init_width_or_weight: float = 0.0, user_id: ID = 0) -> void #foreign imgui "?TableSetupColumn@ImGui@@YAXPEBDHMI@Z";
TableSetupScrollFreeze :: (cols: s32, rows: s32) -> void #foreign imgui "?TableSetupScrollFreeze@ImGui@@YAXHH@Z";
TableHeader :: (label: *u8) -> void #foreign imgui "?TableHeader@ImGui@@YAXPEBD@Z";
TableHeadersRow :: () -> void #foreign imgui "?TableHeadersRow@ImGui@@YAXXZ";
TableAngledHeadersRow :: () -> void #foreign imgui "?TableAngledHeadersRow@ImGui@@YAXXZ";

// Tables: Sorting & Miscellaneous functions
// - Sorting: call TableGetSortSpecs() to retrieve latest sort specs for the table. NULL when not sorting.
//   When 'sort_specs->SpecsDirty == true' you should sort your data. It will be true when sorting specs have
//   changed since last call, or the first time. Make sure to set 'SpecsDirty = false' after sorting,
//   else you may wastefully sort your data every frame!
// - Functions args 'int column_n' treat the default value of -1 as the same as passing the current column index.
TableGetSortSpecs :: () -> *TableSortSpecs #foreign imgui "?TableGetSortSpecs@ImGui@@YAPEAUImGuiTableSortSpecs@@XZ";
TableGetColumnCount :: () -> s32 #foreign imgui "?TableGetColumnCount@ImGui@@YAHXZ";
TableGetColumnIndex :: () -> s32 #foreign imgui "?TableGetColumnIndex@ImGui@@YAHXZ";
TableGetRowIndex :: () -> s32 #foreign imgui "?TableGetRowIndex@ImGui@@YAHXZ";
TableGetColumnName :: (column_n: s32 = -1) -> *u8 #foreign imgui "?TableGetColumnName@ImGui@@YAPEBDH@Z";
TableGetColumnFlags :: (column_n: s32 = -1) -> TableColumnFlags #foreign imgui "?TableGetColumnFlags@ImGui@@YAHH@Z";
TableSetColumnEnabled :: (column_n: s32, v: bool) -> void #foreign imgui "?TableSetColumnEnabled@ImGui@@YAXH_N@Z";
TableGetHoveredColumn :: () -> s32 #foreign imgui "?TableGetHoveredColumn@ImGui@@YAHXZ";
TableSetBgColor :: (target: TableBgTarget, color: ImU32, column_n: s32 = -1) -> void #foreign imgui "?TableSetBgColor@ImGui@@YAXHIH@Z";

// Legacy Columns API (prefer using Tables!)
// - You can also use SameLine(pos_x) to mimic simplified columns.
Columns :: (count: s32 = 1, id: *u8 = null, borders := true) -> void #foreign imgui "?Columns@ImGui@@YAXHPEBD_N@Z";
NextColumn :: () -> void #foreign imgui "?NextColumn@ImGui@@YAXXZ";
GetColumnIndex :: () -> s32 #foreign imgui "?GetColumnIndex@ImGui@@YAHXZ";
GetColumnWidth :: (column_index: s32 = -1) -> float #foreign imgui "?GetColumnWidth@ImGui@@YAMH@Z";
SetColumnWidth :: (column_index: s32, width: float) -> void #foreign imgui "?SetColumnWidth@ImGui@@YAXHM@Z";
GetColumnOffset :: (column_index: s32 = -1) -> float #foreign imgui "?GetColumnOffset@ImGui@@YAMH@Z";
SetColumnOffset :: (column_index: s32, offset_x: float) -> void #foreign imgui "?SetColumnOffset@ImGui@@YAXHM@Z";
GetColumnsCount :: () -> s32 #foreign imgui "?GetColumnsCount@ImGui@@YAHXZ";

// Tab Bars, Tabs
// - Note: Tabs are automatically created by the docking system (when in 'docking' branch). Use this to create tab bars/tabs yourself.
BeginTabBar :: (str_id: *u8, flags: TabBarFlags = .None) -> bool #foreign imgui "?BeginTabBar@ImGui@@YA_NPEBDH@Z";
EndTabBar :: () -> void #foreign imgui "?EndTabBar@ImGui@@YAXXZ";
BeginTabItem :: (label: *u8, p_open: *bool = null, flags: TabItemFlags = .None) -> bool #foreign imgui "?BeginTabItem@ImGui@@YA_NPEBDPEA_NH@Z";
EndTabItem :: () -> void #foreign imgui "?EndTabItem@ImGui@@YAXXZ";
TabItemButton :: (label: *u8, flags: TabItemFlags = .None) -> bool #foreign imgui "?TabItemButton@ImGui@@YA_NPEBDH@Z";
SetTabItemClosed :: (tab_or_docked_window_label: *u8) -> void #foreign imgui "?SetTabItemClosed@ImGui@@YAXPEBD@Z";

// Docking
// - Read https://github.com/ocornut/imgui/wiki/Docking for details.
// - Enable with io.ConfigFlags |= ImGuiConfigFlags_DockingEnable.
// - You can use many Docking facilities without calling any API.
//   - Drag from window title bar or their tab to dock/undock. Hold SHIFT to disable docking.
//   - Drag from window menu button (upper-left button) to undock an entire node (all windows).
//   - When io.ConfigDockingWithShift == true, you instead need to hold SHIFT to enable docking.
// - DockSpaceOverViewport:
//   - This is a helper to create an invisible window covering a viewport, then submit a DockSpace() into it.
//   - Most applications can simply call DockSpaceOverViewport() once to allow docking windows into e.g. the edge of your screen.
//     e.g. ImGui::NewFrame(); ImGui::DockSpaceOverViewport();                                                   // Create a dockspace in main viewport.
//      or: ImGui::NewFrame(); ImGui::DockSpaceOverViewport(0, nullptr, ImGuiDockNodeFlags_PassthruCentralNode); // Create a dockspace in main viewport, central node is transparent.
// - Dockspaces:
//   - A dockspace is an explicit dock node within an existing window.
//   - IMPORTANT: Dockspaces need to be submitted _before_ any window they can host. Submit them early in your frame!
//   - IMPORTANT: Dockspaces need to be kept alive if hidden, otherwise windows docked into it will be undocked.
//     If you have e.g. multiple tabs with a dockspace inside each tab: submit the non-visible dockspaces with ImGuiDockNodeFlags_KeepAliveOnly.
//   - See 'Demo->Examples->Dockspace' or 'Demo->Examples->Documents' for more detailed demos.
// - Programmatic docking:
//   - There is no public API yet other than the very limited SetNextWindowDockID() function. Sorry for that!
//   - Read https://github.com/ocornut/imgui/wiki/Docking for examples of how to use current internal API.
DockSpace :: (dockspace_id: ID, size: *ImVec2, flags: DockNodeFlags = .None, window_class: *WindowClass = null) -> ID #foreign imgui "?DockSpace@ImGui@@YAIIAEBUImVec2@@HPEBUImGuiWindowClass@@@Z";
DockSpace :: (dockspace_id: ID, size: ImVec2 = ImVec2.{0, 0}, flags: DockNodeFlags = .None, window_class: *WindowClass = null) -> ID #no_context {
    return DockSpace(dockspace_id, *size, flags, window_class);
}
DockSpaceOverViewport :: (dockspace_id: ID = 0, viewport: *Viewport = null, flags: DockNodeFlags = .None, window_class: *WindowClass = null) -> ID #foreign imgui "?DockSpaceOverViewport@ImGui@@YAIIPEBUImGuiViewport@@HPEBUImGuiWindowClass@@@Z";
SetNextWindowDockID :: (dock_id: ID, cond: Cond = .None) -> void #foreign imgui "?SetNextWindowDockID@ImGui@@YAXIH@Z";
SetNextWindowClass :: (window_class: *WindowClass) -> void #foreign imgui "?SetNextWindowClass@ImGui@@YAXPEBUImGuiWindowClass@@@Z";
GetWindowDockID :: () -> ID #foreign imgui "?GetWindowDockID@ImGui@@YAIXZ";
IsWindowDocked :: () -> bool #foreign imgui "?IsWindowDocked@ImGui@@YA_NXZ";

// Logging/Capture
// - All text output from the interface can be captured into tty/file/clipboard. By default, tree nodes are automatically opened during logging.
LogToTTY :: (auto_open_depth: s32 = -1) -> void #foreign imgui "?LogToTTY@ImGui@@YAXH@Z";
LogToFile :: (auto_open_depth: s32 = -1, filename: *u8 = null) -> void #foreign imgui "?LogToFile@ImGui@@YAXHPEBD@Z";
LogToClipboard :: (auto_open_depth: s32 = -1) -> void #foreign imgui "?LogToClipboard@ImGui@@YAXH@Z";
LogFinish :: () -> void #foreign imgui "?LogFinish@ImGui@@YAXXZ";
LogButtons :: () -> void #foreign imgui "?LogButtons@ImGui@@YAXXZ";
LogText_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?LogText@ImGui@@YAXPEBDZZ";
LogText :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    LogText_CFormat("%s", formatted_text.data);
} @PrintLike

// Drag and Drop
// - On source items, call BeginDragDropSource(), if it returns true also call SetDragDropPayload() + EndDragDropSource().
// - On target candidates, call BeginDragDropTarget(), if it returns true also call AcceptDragDropPayload() + EndDragDropTarget().
// - If you stop calling BeginDragDropSource() the payload is preserved however it won't have a preview tooltip (we currently display a fallback "..." tooltip, see #1725)
// - An item can be both drag source and drop target.
BeginDragDropSource :: (flags: DragDropFlags = .None) -> bool #foreign imgui "?BeginDragDropSource@ImGui@@YA_NH@Z";
SetDragDropPayload :: (type: *u8, data: *void, sz: u64, cond: Cond = .None) -> bool #foreign imgui "?SetDragDropPayload@ImGui@@YA_NPEBDPEBX_KH@Z";
EndDragDropSource :: () -> void #foreign imgui "?EndDragDropSource@ImGui@@YAXXZ";
BeginDragDropTarget :: () -> bool #foreign imgui "?BeginDragDropTarget@ImGui@@YA_NXZ";
AcceptDragDropPayload :: (type: *u8, flags: DragDropFlags = .None) -> *Payload #foreign imgui "?AcceptDragDropPayload@ImGui@@YAPEBUImGuiPayload@@PEBDH@Z";
EndDragDropTarget :: () -> void #foreign imgui "?EndDragDropTarget@ImGui@@YAXXZ";
GetDragDropPayload :: () -> *Payload #foreign imgui "?GetDragDropPayload@ImGui@@YAPEBUImGuiPayload@@XZ";

// Disabling [BETA API]
// - Disable all user interactions and dim items visuals (applying style.DisabledAlpha over current colors)
// - Those can be nested but it cannot be used to enable an already disabled section (a single BeginDisabled(true) in the stack is enough to keep everything disabled)
// - Tooltips windows are automatically opted out of disabling. Note that IsItemHovered() by default returns false on disabled items, unless using ImGuiHoveredFlags_AllowWhenDisabled.
// - BeginDisabled(false)/EndDisabled() essentially does nothing but is provided to facilitate use of boolean expressions (as a micro-optimization: if you have tens of thousands of BeginDisabled(false)/EndDisabled() pairs, you might want to reformulate your code to avoid making those calls)
BeginDisabled :: (disabled := true) -> void #foreign imgui "?BeginDisabled@ImGui@@YAX_N@Z";
EndDisabled :: () -> void #foreign imgui "?EndDisabled@ImGui@@YAXXZ";

// Clipping
// - Mouse hovering is affected by ImGui::PushClipRect() calls, unlike direct calls to ImDrawList::PushClipRect() which are render only.
PushClipRect :: (clip_rect_min: *ImVec2, clip_rect_max: *ImVec2, intersect_with_current_clip_rect: bool) -> void #foreign imgui "?PushClipRect@ImGui@@YAXAEBUImVec2@@0_N@Z";
PushClipRect :: (clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) #no_context {
    PushClipRect(*clip_rect_min, *clip_rect_max, intersect_with_current_clip_rect);
}
PopClipRect :: () -> void #foreign imgui "?PopClipRect@ImGui@@YAXXZ";

// Focus, Activation
SetItemDefaultFocus :: () -> void #foreign imgui "?SetItemDefaultFocus@ImGui@@YAXXZ";
SetKeyboardFocusHere :: (offset: s32 = 0) -> void #foreign imgui "?SetKeyboardFocusHere@ImGui@@YAXH@Z";

// Keyboard/Gamepad Navigation
SetNavCursorVisible :: (visible: bool) -> void #foreign imgui "?SetNavCursorVisible@ImGui@@YAX_N@Z";

// Overlapping mode
SetNextItemAllowOverlap :: () -> void #foreign imgui "?SetNextItemAllowOverlap@ImGui@@YAXXZ";

// Item/Widgets Utilities and Query Functions
// - Most of the functions are referring to the previous Item that has been submitted.
// - See Demo Window under "Widgets->Querying Status" for an interactive visualization of most of those functions.
IsItemHovered :: (flags: HoveredFlags = .None) -> bool #foreign imgui "?IsItemHovered@ImGui@@YA_NH@Z";
IsItemActive :: () -> bool #foreign imgui "?IsItemActive@ImGui@@YA_NXZ";
IsItemFocused :: () -> bool #foreign imgui "?IsItemFocused@ImGui@@YA_NXZ";
IsItemClicked :: (mouse_button: MouseButton = .Left) -> bool #foreign imgui "?IsItemClicked@ImGui@@YA_NH@Z";
IsItemVisible :: () -> bool #foreign imgui "?IsItemVisible@ImGui@@YA_NXZ";
IsItemEdited :: () -> bool #foreign imgui "?IsItemEdited@ImGui@@YA_NXZ";
IsItemActivated :: () -> bool #foreign imgui "?IsItemActivated@ImGui@@YA_NXZ";
IsItemDeactivated :: () -> bool #foreign imgui "?IsItemDeactivated@ImGui@@YA_NXZ";
IsItemDeactivatedAfterEdit :: () -> bool #foreign imgui "?IsItemDeactivatedAfterEdit@ImGui@@YA_NXZ";
IsItemToggledOpen :: () -> bool #foreign imgui "?IsItemToggledOpen@ImGui@@YA_NXZ";
IsAnyItemHovered :: () -> bool #foreign imgui "?IsAnyItemHovered@ImGui@@YA_NXZ";
IsAnyItemActive :: () -> bool #foreign imgui "?IsAnyItemActive@ImGui@@YA_NXZ";
IsAnyItemFocused :: () -> bool #foreign imgui "?IsAnyItemFocused@ImGui@@YA_NXZ";
GetItemID :: () -> ID #foreign imgui "?GetItemID@ImGui@@YAIXZ";
GetItemRectMin :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetItemRectMin@ImGui@@YA?AUImVec2@@XZ";
GetItemRectMax :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetItemRectMax@ImGui@@YA?AUImVec2@@XZ";
GetItemRectSize :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetItemRectSize@ImGui@@YA?AUImVec2@@XZ";
GetItemFlags :: () -> ItemFlags #foreign imgui "?GetItemFlags@ImGui@@YAHXZ";

// Viewports
// - Currently represents the Platform Window created by the application which is hosting our Dear ImGui windows.
// - In 'docking' branch with multi-viewport enabled, we extend this concept to have multiple active viewports.
// - In the future we will extend this concept further to also represent Platform Monitor and support a "no main platform window" operation mode.
GetMainViewport :: () -> *Viewport #foreign imgui "?GetMainViewport@ImGui@@YAPEAUImGuiViewport@@XZ";

// Background/Foreground Draw Lists
GetBackgroundDrawList :: (viewport: *Viewport = null) -> *ImDrawList #foreign imgui "?GetBackgroundDrawList@ImGui@@YAPEAUImDrawList@@PEAUImGuiViewport@@@Z";
GetForegroundDrawList :: (viewport: *Viewport = null) -> *ImDrawList #foreign imgui "?GetForegroundDrawList@ImGui@@YAPEAUImDrawList@@PEAUImGuiViewport@@@Z";

// Miscellaneous Utilities
IsRectVisible :: (size: *ImVec2) -> bool #foreign imgui "?IsRectVisible@ImGui@@YA_NAEBUImVec2@@@Z";
IsRectVisible :: (size: ImVec2) -> bool #no_context {
    return IsRectVisible(*size);
}
IsRectVisible :: (rect_min: *ImVec2, rect_max: *ImVec2) -> bool #foreign imgui "?IsRectVisible@ImGui@@YA_NAEBUImVec2@@0@Z";
IsRectVisible :: (rect_min: ImVec2, rect_max: ImVec2) -> bool #no_context {
    return IsRectVisible(*rect_min, *rect_max);
}
GetTime :: () -> float64 #foreign imgui "?GetTime@ImGui@@YANXZ";
GetFrameCount :: () -> s32 #foreign imgui "?GetFrameCount@ImGui@@YAHXZ";
GetDrawListSharedData :: () -> *ImDrawListSharedData #foreign imgui "?GetDrawListSharedData@ImGui@@YAPEAUImDrawListSharedData@@XZ";
GetStyleColorName :: (idx: Col) -> *u8 #foreign imgui "?GetStyleColorName@ImGui@@YAPEBDH@Z";
SetStateStorage :: (storage: *Storage) -> void #foreign imgui "?SetStateStorage@ImGui@@YAXPEAUImGuiStorage@@@Z";
GetStateStorage :: () -> *Storage #foreign imgui "?GetStateStorage@ImGui@@YAPEAUImGuiStorage@@XZ";

// Text Utilities
CalcTextSize :: (text: *u8, text_end: *u8 = null, hide_text_after_double_hash := false, wrap_width: float = -1.0) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?CalcTextSize@ImGui@@YA?AUImVec2@@PEBD0_NM@Z";
CalcTextSize :: (text: string, hide_text_after_double_hash := false, wrap_width: float = -1.0) -> ImVec2 #no_context {
    return CalcTextSize(text.data, text.data + text.count, hide_text_after_double_hash, wrap_width);
}

// Color Utilities
ColorConvertU32ToFloat4 :: (in: ImU32) -> ImVec4 #cpp_return_type_is_non_pod #foreign imgui "?ColorConvertU32ToFloat4@ImGui@@YA?AUImVec4@@I@Z";
ColorConvertFloat4ToU32 :: (in: *ImVec4) -> ImU32 #foreign imgui "?ColorConvertFloat4ToU32@ImGui@@YAIAEBUImVec4@@@Z";
ColorConvertFloat4ToU32 :: (in: ImVec4) -> ImU32 #no_context {
    return ColorConvertFloat4ToU32(*in);
}
ColorConvertRGBtoHSV :: (r: float, g: float, b: float, out_h: *float, out_s: *float, out_v: *float) -> void #foreign imgui "?ColorConvertRGBtoHSV@ImGui@@YAXMMMAEAM00@Z";
ColorConvertHSVtoRGB :: (h: float, s: float, v: float, out_r: *float, out_g: *float, out_b: *float) -> void #foreign imgui "?ColorConvertHSVtoRGB@ImGui@@YAXMMMAEAM00@Z";

// Inputs Utilities: Raw Keyboard/Mouse/Gamepad Access
// - Consider using the Shortcut() function instead of IsKeyPressed()/IsKeyChordPressed()! Shortcut() is easier to use and better featured (can do focus routing check).
// - the ImGuiKey enum contains all possible keyboard, mouse and gamepad inputs (e.g. ImGuiKey_A, ImGuiKey_MouseLeft, ImGuiKey_GamepadDpadUp...).
// - (legacy: before v1.87 (2022-02), we used ImGuiKey < 512 values to carry native/user indices as defined by each backends. This was obsoleted in 1.87 (2022-02) and completely removed in 1.91.5 (2024-11). See https://github.com/ocornut/imgui/issues/4921)
IsKeyDown :: (key: Key) -> bool #foreign imgui "?IsKeyDown@ImGui@@YA_NW4ImGuiKey@@@Z";
IsKeyPressed :: (key: Key, repeat := true) -> bool #foreign imgui "?IsKeyPressed@ImGui@@YA_NW4ImGuiKey@@_N@Z";
IsKeyReleased :: (key: Key) -> bool #foreign imgui "?IsKeyReleased@ImGui@@YA_NW4ImGuiKey@@@Z";
IsKeyChordPressed :: (key_chord: KeyChord) -> bool #foreign imgui "?IsKeyChordPressed@ImGui@@YA_NH@Z";
GetKeyPressedAmount :: (key: Key, repeat_delay: float, rate: float) -> s32 #foreign imgui "?GetKeyPressedAmount@ImGui@@YAHW4ImGuiKey@@MM@Z";
GetKeyName :: (key: Key) -> *u8 #foreign imgui "?GetKeyName@ImGui@@YAPEBDW4ImGuiKey@@@Z";
SetNextFrameWantCaptureKeyboard :: (want_capture_keyboard: bool) -> void #foreign imgui "?SetNextFrameWantCaptureKeyboard@ImGui@@YAX_N@Z";

// Inputs Utilities: Shortcut Testing & Routing
// - Typical use is e.g.: 'if (ImGui::Shortcut(ImGuiMod_Ctrl | ImGuiKey_S)) { ... }'.
// - Flags: Default route use ImGuiInputFlags_RouteFocused, but see ImGuiInputFlags_RouteGlobal and other options in ImGuiInputFlags_!
// - Flags: Use ImGuiInputFlags_Repeat to support repeat.
// - ImGuiKeyChord = a ImGuiKey + optional ImGuiMod_Alt/ImGuiMod_Ctrl/ImGuiMod_Shift/ImGuiMod_Super.
//       ImGuiKey_C                          // Accepted by functions taking ImGuiKey or ImGuiKeyChord arguments
//       ImGuiMod_Ctrl | ImGuiKey_C          // Accepted by functions taking ImGuiKeyChord arguments
//   only ImGuiMod_XXX values are legal to combine with an ImGuiKey. You CANNOT combine two ImGuiKey values.
// - The general idea is that several callers may register interest in a shortcut, and only one owner gets it.
//      Parent   -> call Shortcut(Ctrl+S)    // When Parent is focused, Parent gets the shortcut.
//        Child1 -> call Shortcut(Ctrl+S)    // When Child1 is focused, Child1 gets the shortcut (Child1 overrides Parent shortcuts)
//        Child2 -> no call                  // When Child2 is focused, Parent gets the shortcut.
//   The whole system is order independent, so if Child1 makes its calls before Parent, results will be identical.
//   This is an important property as it facilitate working with foreign code or larger codebase.
// - To understand the difference:
//   - IsKeyChordPressed() compares mods and call IsKeyPressed()
//     -> the function has no side-effect.
//   - Shortcut() submits a route, routes are resolved, if it currently can be routed it calls IsKeyChordPressed()
//     -> the function has (desirable) side-effects as it can prevents another call from getting the route.
// - Visualize registered routes in 'Metrics/Debugger->Inputs'.
Shortcut :: (key_chord: KeyChord, flags: InputFlags = .None) -> bool #foreign imgui "?Shortcut@ImGui@@YA_NHH@Z";
SetNextItemShortcut :: (key_chord: KeyChord, flags: InputFlags = .None) -> void #foreign imgui "?SetNextItemShortcut@ImGui@@YAXHH@Z";

// Inputs Utilities: Key/Input Ownership [BETA]
// - One common use case would be to allow your items to disable standard inputs behaviors such
//   as Tab or Alt key handling, Mouse Wheel scrolling, etc.
//   e.g. `Button(...); if (SetItemKeyOwner(ImGuiKey_MouseWheelY)) { ... }` to make hovering/activating a button disable wheel for scrolling.
// - Reminder ImGuiKey enum include access to mouse buttons and gamepad, so key ownership can apply to them.
// - The return value of SetItemKeyOwner() says if ownership has been requested for the item, which is a shortcut to calling yet non-public TestKeyOwner() function.
// - Many related features are still in imgui_internal.h. For instance, most IsKeyXXX()/IsMouseXXX() functions have an owner-id-aware version.
SetItemKeyOwner :: (key: Key) -> bool #foreign imgui "?SetItemKeyOwner@ImGui@@YA_NW4ImGuiKey@@@Z";

// Inputs Utilities: Mouse
// - To refer to a mouse button, you may use named enums in your code e.g. ImGuiMouseButton_Left, ImGuiMouseButton_Right.
// - You can also use regular integer: it is forever guaranteed that 0=Left, 1=Right, 2=Middle.
// - Dragging operations are only reported after mouse has moved a certain distance away from the initial clicking position (see 'lock_threshold' and 'io.MouseDraggingThreshold')
IsMouseDown :: (button: MouseButton) -> bool #foreign imgui "?IsMouseDown@ImGui@@YA_NH@Z";
IsMouseClicked :: (button: MouseButton, repeat := false) -> bool #foreign imgui "?IsMouseClicked@ImGui@@YA_NH_N@Z";
IsMouseReleased :: (button: MouseButton) -> bool #foreign imgui "?IsMouseReleased@ImGui@@YA_NH@Z";
IsMouseDoubleClicked :: (button: MouseButton) -> bool #foreign imgui "?IsMouseDoubleClicked@ImGui@@YA_NH@Z";
IsMouseReleasedWithDelay :: (button: MouseButton, delay: float) -> bool #foreign imgui "?IsMouseReleasedWithDelay@ImGui@@YA_NHM@Z";
GetMouseClickedCount :: (button: MouseButton) -> s32 #foreign imgui "?GetMouseClickedCount@ImGui@@YAHH@Z";
IsMouseHoveringRect :: (r_min: *ImVec2, r_max: *ImVec2, clip := true) -> bool #foreign imgui "?IsMouseHoveringRect@ImGui@@YA_NAEBUImVec2@@0_N@Z";
IsMouseHoveringRect :: (r_min: ImVec2, r_max: ImVec2, clip := true) -> bool #no_context {
    return IsMouseHoveringRect(*r_min, *r_max, clip);
}
IsMousePosValid :: (mouse_pos: *ImVec2 = null) -> bool #foreign imgui "?IsMousePosValid@ImGui@@YA_NPEBUImVec2@@@Z";
IsAnyMouseDown :: () -> bool #foreign imgui "?IsAnyMouseDown@ImGui@@YA_NXZ";
GetMousePos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetMousePos@ImGui@@YA?AUImVec2@@XZ";
GetMousePosOnOpeningCurrentPopup :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetMousePosOnOpeningCurrentPopup@ImGui@@YA?AUImVec2@@XZ";
IsMouseDragging :: (button: MouseButton, lock_threshold: float = -1.0) -> bool #foreign imgui "?IsMouseDragging@ImGui@@YA_NHM@Z";
GetMouseDragDelta :: (button: MouseButton = .Left, lock_threshold: float = -1.0) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetMouseDragDelta@ImGui@@YA?AUImVec2@@HM@Z";
ResetMouseDragDelta :: (button: MouseButton = .Left) -> void #foreign imgui "?ResetMouseDragDelta@ImGui@@YAXH@Z";
GetMouseCursor :: () -> MouseCursor #foreign imgui "?GetMouseCursor@ImGui@@YAHXZ";
SetMouseCursor :: (cursor_type: MouseCursor) -> void #foreign imgui "?SetMouseCursor@ImGui@@YAXH@Z";
SetNextFrameWantCaptureMouse :: (want_capture_mouse: bool) -> void #foreign imgui "?SetNextFrameWantCaptureMouse@ImGui@@YAX_N@Z";

// Clipboard Utilities
// - Also see the LogToClipboard() function to capture GUI into clipboard, or easily output text data to the clipboard.
GetClipboardText :: () -> *u8 #foreign imgui "?GetClipboardText@ImGui@@YAPEBDXZ";
SetClipboardText :: (text: *u8) -> void #foreign imgui "?SetClipboardText@ImGui@@YAXPEBD@Z";

// Settings/.Ini Utilities
// - The disk functions are automatically called if io.IniFilename != NULL (default is "imgui.ini").
// - Set io.IniFilename to NULL to load/save manually. Read io.WantSaveIniSettings description about handling .ini saving manually.
// - Important: default value "imgui.ini" is relative to current working dir! Most apps will want to lock this to an absolute path (e.g. same path as executables).
LoadIniSettingsFromDisk :: (ini_filename: *u8) -> void #foreign imgui "?LoadIniSettingsFromDisk@ImGui@@YAXPEBD@Z";
LoadIniSettingsFromMemory :: (ini_data: *u8, ini_size: u64 = 0) -> void #foreign imgui "?LoadIniSettingsFromMemory@ImGui@@YAXPEBD_K@Z";
SaveIniSettingsToDisk :: (ini_filename: *u8) -> void #foreign imgui "?SaveIniSettingsToDisk@ImGui@@YAXPEBD@Z";
SaveIniSettingsToMemory :: (out_ini_size: *u64 = null) -> *u8 #foreign imgui "?SaveIniSettingsToMemory@ImGui@@YAPEBDPEA_K@Z";

// Debug Utilities
// - Your main debugging friend is the ShowMetricsWindow() function.
// - Interactive tools are all accessible from the 'Dear ImGui Demo->Tools' menu.
// - Read https://github.com/ocornut/imgui/wiki/Debug-Tools for a description of all available debug tools.
DebugTextEncoding :: (text: *u8) -> void #foreign imgui "?DebugTextEncoding@ImGui@@YAXPEBD@Z";
DebugFlashStyleColor :: (idx: Col) -> void #foreign imgui "?DebugFlashStyleColor@ImGui@@YAXH@Z";
DebugStartItemPicker :: () -> void #foreign imgui "?DebugStartItemPicker@ImGui@@YAXXZ";
DebugCheckVersionAndDataLayout :: (version_str: *u8, sz_io: u64, sz_style: u64, sz_vec2: u64, sz_vec4: u64, sz_drawvert: u64, sz_drawidx: u64) -> bool #foreign imgui "?DebugCheckVersionAndDataLayout@ImGui@@YA_NPEBD_K11111@Z";

DebugLog_CFormat :: (fmt: *u8, __args: ..Any) -> void #foreign imgui "?DebugLog@ImGui@@YAXPEBDZZ";
DebugLog :: (fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    DebugLog_CFormat("%s", formatted_text.data);
} @PrintLike

// Memory Allocators
// - Those functions are not reliant on the current context.
// - DLL users: heaps and globals are not shared across DLL boundaries! You will need to call SetCurrentContext() + SetAllocatorFunctions()
//   for each static/DLL boundary you are calling from. Read "Context and Memory Allocators" section of imgui.cpp for more details.
SetAllocatorFunctions :: (alloc_func: MemAllocFunc, free_func: MemFreeFunc, user_data: *void = null) -> void #foreign imgui "?SetAllocatorFunctions@ImGui@@YAXP6APEAX_KPEAX@ZP6AX11@Z1@Z";
GetAllocatorFunctions :: (p_alloc_func: *MemAllocFunc, p_free_func: *MemFreeFunc, p_user_data: **void) -> void #foreign imgui "?GetAllocatorFunctions@ImGui@@YAXPEAP6APEAX_KPEAX@ZPEAP6AX11@ZPEAPEAX@Z";
MemAlloc :: (size: u64) -> *void #foreign imgui "?MemAlloc@ImGui@@YAPEAX_K@Z";
MemFree :: (ptr: *void) -> void #foreign imgui "?MemFree@ImGui@@YAXPEAX@Z";

// (Optional) Platform/OS interface for multi-viewport support
// Read comments around the ImGuiPlatformIO structure for more details.
// Note: You may use GetWindowViewport() to get the current viewport of the current window.
UpdatePlatformWindows :: () -> void #foreign imgui "?UpdatePlatformWindows@ImGui@@YAXXZ";
RenderPlatformWindowsDefault :: (platform_render_arg: *void = null, renderer_render_arg: *void = null) -> void #foreign imgui "?RenderPlatformWindowsDefault@ImGui@@YAXPEAX0@Z";
DestroyPlatformWindows :: () -> void #foreign imgui "?DestroyPlatformWindows@ImGui@@YAXXZ";
FindViewportByID :: (viewport_id: ID) -> *Viewport #foreign imgui "?FindViewportByID@ImGui@@YAPEAUImGuiViewport@@I@Z";
FindViewportByPlatformHandle :: (platform_handle: *void) -> *Viewport #foreign imgui "?FindViewportByPlatformHandle@ImGui@@YAPEAUImGuiViewport@@PEAX@Z";

SetWindowFontScale :: (scale: float) -> void #foreign imgui "?SetWindowFontScale@ImGui@@YAXM@Z";

// OBSOLETED in 1.91.9 (from February 2025)
Image :: (tex_ref: ImTextureRef, image_size: *ImVec2, uv0: *ImVec2, uv1: *ImVec2, tint_col: *ImVec4, border_col: *ImVec4) -> void #foreign imgui "?Image@ImGui@@YAXUImTextureRef@@AEBUImVec2@@11AEBUImVec4@@2@Z";
Image :: (tex_ref: ImTextureRef, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, border_col: ImVec4) #no_context {
    Image(tex_ref, *image_size, *uv0, *uv1, *tint_col, *border_col);
}

// You do not need those functions! See #7838 on GitHub for more info.
GetContentRegionMax :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetContentRegionMax@ImGui@@YA?AUImVec2@@XZ";
GetWindowContentRegionMin :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetWindowContentRegionMin@ImGui@@YA?AUImVec2@@XZ";
GetWindowContentRegionMax :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetWindowContentRegionMax@ImGui@@YA?AUImVec2@@XZ";

// Windows
// We should always have a CurrentWindow in the stack (there is an implicit "Debug" window)
// If this ever crashes because g.CurrentWindow is NULL, it means that either:
// - ImGui::NewFrame() has never been called, which is illegal.
// - You are calling ImGui functions after ImGui::EndFrame()/ImGui::Render() and before the next ImGui::NewFrame(), which is also illegal.
GetIO :: (ctx: *ImGuiContext) -> *IO #foreign imgui "?GetIO@ImGui@@YAAEAUImGuiIO@@PEAUImGuiContext@@@Z";
GetPlatformIO :: (ctx: *ImGuiContext) -> *PlatformIO #foreign imgui "?GetPlatformIO@ImGui@@YAAEAUImGuiPlatformIO@@PEAUImGuiContext@@@Z";

FindWindowByID :: (id: ID) -> *Window #foreign imgui "?FindWindowByID@ImGui@@YAPEAUImGuiWindow@@I@Z";
FindWindowByName :: (name: *u8) -> *Window #foreign imgui "?FindWindowByName@ImGui@@YAPEAUImGuiWindow@@PEBD@Z";
UpdateWindowParentAndRootLinks :: (window: *Window, flags: WindowFlags, parent_window: *Window) -> void #foreign imgui "?UpdateWindowParentAndRootLinks@ImGui@@YAXPEAUImGuiWindow@@H0@Z";
UpdateWindowSkipRefresh :: (window: *Window) -> void #foreign imgui "?UpdateWindowSkipRefresh@ImGui@@YAXPEAUImGuiWindow@@@Z";
CalcWindowNextAutoFitSize :: (window: *Window) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?CalcWindowNextAutoFitSize@ImGui@@YA?AUImVec2@@PEAUImGuiWindow@@@Z";
IsWindowChildOf :: (window: *Window, potential_parent: *Window, popup_hierarchy: bool, dock_hierarchy: bool) -> bool #foreign imgui "?IsWindowChildOf@ImGui@@YA_NPEAUImGuiWindow@@0_N1@Z";
IsWindowInBeginStack :: (window: *Window) -> bool #foreign imgui "?IsWindowInBeginStack@ImGui@@YA_NPEAUImGuiWindow@@@Z";
IsWindowWithinBeginStackOf :: (window: *Window, potential_parent: *Window) -> bool #foreign imgui "?IsWindowWithinBeginStackOf@ImGui@@YA_NPEAUImGuiWindow@@0@Z";
IsWindowAbove :: (potential_above: *Window, potential_below: *Window) -> bool #foreign imgui "?IsWindowAbove@ImGui@@YA_NPEAUImGuiWindow@@0@Z";
IsWindowNavFocusable :: (window: *Window) -> bool #foreign imgui "?IsWindowNavFocusable@ImGui@@YA_NPEAUImGuiWindow@@@Z";
SetWindowPos :: (window: *Window, pos: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowPos@ImGui@@YAXPEAUImGuiWindow@@AEBUImVec2@@H@Z";
SetWindowPos :: (window: *Window, pos: ImVec2, cond: Cond = .None) #no_context {
    SetWindowPos(window, *pos, cond);
}
SetWindowSize :: (window: *Window, size: *ImVec2, cond: Cond = .None) -> void #foreign imgui "?SetWindowSize@ImGui@@YAXPEAUImGuiWindow@@AEBUImVec2@@H@Z";
SetWindowSize :: (window: *Window, size: ImVec2, cond: Cond = .None) #no_context {
    SetWindowSize(window, *size, cond);
}
SetWindowCollapsed :: (window: *Window, collapsed: bool, cond: Cond = .None) -> void #foreign imgui "?SetWindowCollapsed@ImGui@@YAXPEAUImGuiWindow@@_NH@Z";
SetWindowHitTestHole :: (window: *Window, pos: *ImVec2, size: *ImVec2) -> void #foreign imgui "?SetWindowHitTestHole@ImGui@@YAXPEAUImGuiWindow@@AEBUImVec2@@1@Z";
SetWindowHitTestHole :: (window: *Window, pos: ImVec2, size: ImVec2) #no_context {
    SetWindowHitTestHole(window, *pos, *size);
}
SetWindowHiddenAndSkipItemsForCurrentFrame :: (window: *Window) -> void #foreign imgui "?SetWindowHiddenAndSkipItemsForCurrentFrame@ImGui@@YAXPEAUImGuiWindow@@@Z";

// Windows: Display Order and Focus Order
FocusWindow :: (window: *Window, flags: FocusRequestFlags = 0) -> void #foreign imgui "?FocusWindow@ImGui@@YAXPEAUImGuiWindow@@H@Z";
FocusTopMostWindowUnderOne :: (under_this_window: *Window, ignore_window: *Window, filter_viewport: *Viewport, flags: FocusRequestFlags) -> void #foreign imgui "?FocusTopMostWindowUnderOne@ImGui@@YAXPEAUImGuiWindow@@0PEAUImGuiViewport@@H@Z";
BringWindowToFocusFront :: (window: *Window) -> void #foreign imgui "?BringWindowToFocusFront@ImGui@@YAXPEAUImGuiWindow@@@Z";
BringWindowToDisplayFront :: (window: *Window) -> void #foreign imgui "?BringWindowToDisplayFront@ImGui@@YAXPEAUImGuiWindow@@@Z";
BringWindowToDisplayBack :: (window: *Window) -> void #foreign imgui "?BringWindowToDisplayBack@ImGui@@YAXPEAUImGuiWindow@@@Z";
BringWindowToDisplayBehind :: (window: *Window, above_window: *Window) -> void #foreign imgui "?BringWindowToDisplayBehind@ImGui@@YAXPEAUImGuiWindow@@0@Z";
FindWindowDisplayIndex :: (window: *Window) -> s32 #foreign imgui "?FindWindowDisplayIndex@ImGui@@YAHPEAUImGuiWindow@@@Z";
FindBottomMostVisibleWindowWithinBeginStack :: (window: *Window) -> *Window #foreign imgui "?FindBottomMostVisibleWindowWithinBeginStack@ImGui@@YAPEAUImGuiWindow@@PEAU2@@Z";

// Windows: Idle, Refresh Policies [EXPERIMENTAL]
SetNextWindowRefreshPolicy :: (flags: WindowRefreshFlags) -> void #foreign imgui "?SetNextWindowRefreshPolicy@ImGui@@YAXH@Z";

// Fonts, drawing
RegisterUserTexture :: (tex: *ImTextureData) -> void #foreign imgui "?RegisterUserTexture@ImGui@@YAXPEAUImTextureData@@@Z";
UnregisterUserTexture :: (tex: *ImTextureData) -> void #foreign imgui "?UnregisterUserTexture@ImGui@@YAXPEAUImTextureData@@@Z";
RegisterFontAtlas :: (atlas: *ImFontAtlas) -> void #foreign imgui "?RegisterFontAtlas@ImGui@@YAXPEAUImFontAtlas@@@Z";
UnregisterFontAtlas :: (atlas: *ImFontAtlas) -> void #foreign imgui "?UnregisterFontAtlas@ImGui@@YAXPEAUImFontAtlas@@@Z";
SetCurrentFont :: (font: *ImFont, font_size_before_scaling: float, font_size_after_scaling: float) -> void #foreign imgui "?SetCurrentFont@ImGui@@YAXPEAUImFont@@MM@Z";
UpdateCurrentFontSize :: (restore_font_size_after_scaling: float) -> void #foreign imgui "?UpdateCurrentFontSize@ImGui@@YAXM@Z";
SetFontRasterizerDensity :: (rasterizer_density: float) -> void #foreign imgui "?SetFontRasterizerDensity@ImGui@@YAXM@Z";

GetDefaultFont :: () -> *ImFont #foreign imgui "?GetDefaultFont@ImGui@@YAPEAUImFont@@XZ";
PushPasswordFont :: () -> void #foreign imgui "?PushPasswordFont@ImGui@@YAXXZ";
PopPasswordFont :: () -> void #foreign imgui "?PopPasswordFont@ImGui@@YAXXZ";

AddDrawListToDrawDataEx :: (draw_data: *ImDrawData, out_list: *ImVector(*ImDrawList), draw_list: *ImDrawList) -> void #foreign imgui "?AddDrawListToDrawDataEx@ImGui@@YAXPEAUImDrawData@@PEAU?$ImVector@PEAUImDrawList@@@@PEAUImDrawList@@@Z";

// Init
Initialize :: () -> void #foreign imgui "?Initialize@ImGui@@YAXXZ";
Shutdown :: () -> void #foreign imgui "?Shutdown@ImGui@@YAXXZ";

// Context name & generic context hooks
SetContextName :: (ctx: *ImGuiContext, name: *u8) -> void #foreign imgui "?SetContextName@ImGui@@YAXPEAUImGuiContext@@PEBD@Z";
AddContextHook :: (ctx: *ImGuiContext, hook: *ContextHook) -> ID #foreign imgui "?AddContextHook@ImGui@@YAIPEAUImGuiContext@@PEBUImGuiContextHook@@@Z";
RemoveContextHook :: (ctx: *ImGuiContext, hook_to_remove: ID) -> void #foreign imgui "?RemoveContextHook@ImGui@@YAXPEAUImGuiContext@@I@Z";
CallContextHooks :: (ctx: *ImGuiContext, type: ContextHookType) -> void #foreign imgui "?CallContextHooks@ImGui@@YAXPEAUImGuiContext@@W4ImGuiContextHookType@@@Z";

// NewFrame
UpdateInputEvents :: (trickle_fast_inputs: bool) -> void #foreign imgui "?UpdateInputEvents@ImGui@@YAX_N@Z";
UpdateHoveredWindowAndCaptureFlags :: (mouse_pos: *ImVec2) -> void #foreign imgui "?UpdateHoveredWindowAndCaptureFlags@ImGui@@YAXAEBUImVec2@@@Z";
UpdateHoveredWindowAndCaptureFlags :: (mouse_pos: ImVec2) #no_context {
    UpdateHoveredWindowAndCaptureFlags(*mouse_pos);
}
FindHoveredWindowEx :: (pos: *ImVec2, find_first_and_in_any_viewport: bool, out_hovered_window: **Window, out_hovered_window_under_moving_window: **Window) -> void #foreign imgui "?FindHoveredWindowEx@ImGui@@YAXAEBUImVec2@@_NPEAPEAUImGuiWindow@@2@Z";
FindHoveredWindowEx :: (pos: ImVec2, find_first_and_in_any_viewport: bool, out_hovered_window: **Window, out_hovered_window_under_moving_window: **Window) #no_context {
    FindHoveredWindowEx(*pos, find_first_and_in_any_viewport, out_hovered_window, out_hovered_window_under_moving_window);
}
StartMouseMovingWindow :: (window: *Window) -> void #foreign imgui "?StartMouseMovingWindow@ImGui@@YAXPEAUImGuiWindow@@@Z";
StartMouseMovingWindowOrNode :: (window: *Window, node: *DockNode, undock: bool) -> void #foreign imgui "?StartMouseMovingWindowOrNode@ImGui@@YAXPEAUImGuiWindow@@PEAUImGuiDockNode@@_N@Z";
StopMouseMovingWindow :: () -> void #foreign imgui "?StopMouseMovingWindow@ImGui@@YAXXZ";
UpdateMouseMovingWindowNewFrame :: () -> void #foreign imgui "?UpdateMouseMovingWindowNewFrame@ImGui@@YAXXZ";
UpdateMouseMovingWindowEndFrame :: () -> void #foreign imgui "?UpdateMouseMovingWindowEndFrame@ImGui@@YAXXZ";

// Viewports
TranslateWindowsInViewport :: (viewport: *ViewportP, old_pos: *ImVec2, new_pos: *ImVec2, old_size: *ImVec2, new_size: *ImVec2) -> void #foreign imgui "?TranslateWindowsInViewport@ImGui@@YAXPEAUImGuiViewportP@@AEBUImVec2@@111@Z";
TranslateWindowsInViewport :: (viewport: *ViewportP, old_pos: ImVec2, new_pos: ImVec2, old_size: ImVec2, new_size: ImVec2) #no_context {
    TranslateWindowsInViewport(viewport, *old_pos, *new_pos, *old_size, *new_size);
}
ScaleWindowsInViewport :: (viewport: *ViewportP, scale: float) -> void #foreign imgui "?ScaleWindowsInViewport@ImGui@@YAXPEAUImGuiViewportP@@M@Z";
DestroyPlatformWindow :: (viewport: *ViewportP) -> void #foreign imgui "?DestroyPlatformWindow@ImGui@@YAXPEAUImGuiViewportP@@@Z";
SetWindowViewport :: (window: *Window, viewport: *ViewportP) -> void #foreign imgui "?SetWindowViewport@ImGui@@YAXPEAUImGuiWindow@@PEAUImGuiViewportP@@@Z";
SetCurrentViewport :: (window: *Window, viewport: *ViewportP) -> void #foreign imgui "?SetCurrentViewport@ImGui@@YAXPEAUImGuiWindow@@PEAUImGuiViewportP@@@Z";
GetViewportPlatformMonitor :: (viewport: *Viewport) -> *PlatformMonitor #foreign imgui "?GetViewportPlatformMonitor@ImGui@@YAPEBUImGuiPlatformMonitor@@PEAUImGuiViewport@@@Z";
FindHoveredViewportFromPlatformWindowStack :: (mouse_platform_pos: *ImVec2) -> *ViewportP #foreign imgui "?FindHoveredViewportFromPlatformWindowStack@ImGui@@YAPEAUImGuiViewportP@@AEBUImVec2@@@Z";
FindHoveredViewportFromPlatformWindowStack :: (mouse_platform_pos: ImVec2) -> *ViewportP #no_context {
    return FindHoveredViewportFromPlatformWindowStack(*mouse_platform_pos);
}

// Settings
MarkIniSettingsDirty :: () -> void #foreign imgui "?MarkIniSettingsDirty@ImGui@@YAXXZ";
MarkIniSettingsDirty :: (window: *Window) -> void #foreign imgui "?MarkIniSettingsDirty@ImGui@@YAXPEAUImGuiWindow@@@Z";
ClearIniSettings :: () -> void #foreign imgui "?ClearIniSettings@ImGui@@YAXXZ";
AddSettingsHandler :: (handler: *SettingsHandler) -> void #foreign imgui "?AddSettingsHandler@ImGui@@YAXPEBUImGuiSettingsHandler@@@Z";
RemoveSettingsHandler :: (type_name: *u8) -> void #foreign imgui "?RemoveSettingsHandler@ImGui@@YAXPEBD@Z";
FindSettingsHandler :: (type_name: *u8) -> *SettingsHandler #foreign imgui "?FindSettingsHandler@ImGui@@YAPEAUImGuiSettingsHandler@@PEBD@Z";

// Settings - Windows
CreateNewWindowSettings :: (name: *u8) -> *WindowSettings #foreign imgui "?CreateNewWindowSettings@ImGui@@YAPEAUImGuiWindowSettings@@PEBD@Z";
FindWindowSettingsByID :: (id: ID) -> *WindowSettings #foreign imgui "?FindWindowSettingsByID@ImGui@@YAPEAUImGuiWindowSettings@@I@Z";
FindWindowSettingsByWindow :: (window: *Window) -> *WindowSettings #foreign imgui "?FindWindowSettingsByWindow@ImGui@@YAPEAUImGuiWindowSettings@@PEAUImGuiWindow@@@Z";
ClearWindowSettings :: (name: *u8) -> void #foreign imgui "?ClearWindowSettings@ImGui@@YAXPEBD@Z";

// Localization
LocalizeRegisterEntries :: (entries: *LocEntry, count: s32) -> void #foreign imgui "?LocalizeRegisterEntries@ImGui@@YAXPEBUImGuiLocEntry@@H@Z";

// Scrolling
SetScrollX :: (window: *Window, scroll_x: float) -> void #foreign imgui "?SetScrollX@ImGui@@YAXPEAUImGuiWindow@@M@Z";
SetScrollY :: (window: *Window, scroll_y: float) -> void #foreign imgui "?SetScrollY@ImGui@@YAXPEAUImGuiWindow@@M@Z";
SetScrollFromPosX :: (window: *Window, local_x: float, center_x_ratio: float) -> void #foreign imgui "?SetScrollFromPosX@ImGui@@YAXPEAUImGuiWindow@@MM@Z";
SetScrollFromPosY :: (window: *Window, local_y: float, center_y_ratio: float) -> void #foreign imgui "?SetScrollFromPosY@ImGui@@YAXPEAUImGuiWindow@@MM@Z";

// Early work-in-progress API (ScrollToItem() will become public)
ScrollToItem :: (flags: ScrollFlags = 0) -> void #foreign imgui "?ScrollToItem@ImGui@@YAXH@Z";
ScrollToRect :: (window: *Window, rect: *ImRect, flags: ScrollFlags = 0) -> void #foreign imgui "?ScrollToRect@ImGui@@YAXPEAUImGuiWindow@@AEBUImRect@@H@Z";
ScrollToRect :: (window: *Window, rect: ImRect, flags: ScrollFlags = 0) #no_context {
    ScrollToRect(window, *rect, flags);
}
ScrollToRectEx :: (window: *Window, rect: *ImRect, flags: ScrollFlags = 0) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ScrollToRectEx@ImGui@@YA?AUImVec2@@PEAUImGuiWindow@@AEBUImRect@@H@Z";
ScrollToRectEx :: (window: *Window, rect: ImRect, flags: ScrollFlags = 0) -> ImVec2 #no_context {
    return ScrollToRectEx(window, *rect, flags);
}

SetActiveID :: (id: ID, window: *Window) -> void #foreign imgui "?SetActiveID@ImGui@@YAXIPEAUImGuiWindow@@@Z";
SetFocusID :: (id: ID, window: *Window) -> void #foreign imgui "?SetFocusID@ImGui@@YAXIPEAUImGuiWindow@@@Z";
ClearActiveID :: () -> void #foreign imgui "?ClearActiveID@ImGui@@YAXXZ";
GetHoveredID :: () -> ID #foreign imgui "?GetHoveredID@ImGui@@YAIXZ";
SetHoveredID :: (id: ID) -> void #foreign imgui "?SetHoveredID@ImGui@@YAXI@Z";
KeepAliveID :: (id: ID) -> void #foreign imgui "?KeepAliveID@ImGui@@YAXI@Z";
MarkItemEdited :: (id: ID) -> void #foreign imgui "?MarkItemEdited@ImGui@@YAXI@Z";
PushOverrideID :: (id: ID) -> void #foreign imgui "?PushOverrideID@ImGui@@YAXI@Z";
GetIDWithSeed :: (str_id_begin: *u8, str_id_end: *u8, seed: ID) -> ID #foreign imgui "?GetIDWithSeed@ImGui@@YAIPEBD0I@Z";
GetIDWithSeed :: (str_id: string, seed: ID) -> ID #no_context {
    return GetIDWithSeed(str_id.data, str_id.data + str_id.count, seed);
}
GetIDWithSeed :: (n: s32, seed: ID) -> ID #foreign imgui "?GetIDWithSeed@ImGui@@YAIHI@Z";

// Basic Helpers for widget code
ItemSize :: (size: *ImVec2, text_baseline_y: float = -1.0) -> void #foreign imgui "?ItemSize@ImGui@@YAXAEBUImVec2@@M@Z";
ItemSize :: (size: ImVec2, text_baseline_y: float = -1.0) #no_context {
    ItemSize(*size, text_baseline_y);
}

ItemAdd :: (bb: *ImRect, id: ID, nav_bb: *ImRect = null, extra_flags: ItemFlags = .None) -> bool #foreign imgui "?ItemAdd@ImGui@@YA_NAEBUImRect@@IPEBU2@H@Z";
ItemAdd :: (bb: ImRect, id: ID, nav_bb: *ImRect = null, extra_flags: ItemFlags = .None) -> bool #no_context {
    return ItemAdd(*bb, id, nav_bb, extra_flags);
}
ItemHoverable :: (bb: *ImRect, id: ID, item_flags: ItemFlags) -> bool #foreign imgui "?ItemHoverable@ImGui@@YA_NAEBUImRect@@IH@Z";
ItemHoverable :: (bb: ImRect, id: ID, item_flags: ItemFlags) -> bool #no_context {
    return ItemHoverable(*bb, id, item_flags);
}
IsWindowContentHoverable :: (window: *Window, flags: HoveredFlags = .None) -> bool #foreign imgui "?IsWindowContentHoverable@ImGui@@YA_NPEAUImGuiWindow@@H@Z";
IsClippedEx :: (bb: *ImRect, id: ID) -> bool #foreign imgui "?IsClippedEx@ImGui@@YA_NAEBUImRect@@I@Z";
IsClippedEx :: (bb: ImRect, id: ID) -> bool #no_context {
    return IsClippedEx(*bb, id);
}
SetLastItemData :: (item_id: ID, item_flags: ItemFlags, status_flags: ItemStatusFlags, item_rect: *ImRect) -> void #foreign imgui "?SetLastItemData@ImGui@@YAXIHHAEBUImRect@@@Z";
SetLastItemData :: (item_id: ID, item_flags: ItemFlags, status_flags: ItemStatusFlags, item_rect: ImRect) #no_context {
    SetLastItemData(item_id, item_flags, status_flags, *item_rect);
}
CalcItemSize :: (size: ImVec2, default_w: float, default_h: float) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?CalcItemSize@ImGui@@YA?AUImVec2@@U2@MM@Z";
CalcWrapWidthForPos :: (pos: *ImVec2, wrap_pos_x: float) -> float #foreign imgui "?CalcWrapWidthForPos@ImGui@@YAMAEBUImVec2@@M@Z";
CalcWrapWidthForPos :: (pos: ImVec2, wrap_pos_x: float) -> float #no_context {
    return CalcWrapWidthForPos(*pos, wrap_pos_x);
}
PushMultiItemsWidths :: (components: s32, width_full: float) -> void #foreign imgui "?PushMultiItemsWidths@ImGui@@YAXHM@Z";
ShrinkWidths :: (items: *ShrinkWidthItem, count: s32, width_excess: float, width_min: float) -> void #foreign imgui "?ShrinkWidths@ImGui@@YAXPEAUImGuiShrinkWidthItem@@HMM@Z";
CalcClipRectVisibleItemsY :: (clip_rect: *ImRect, pos: *ImVec2, items_height: float, out_visible_start: *s32, out_visible_end: *s32) -> void #foreign imgui "?CalcClipRectVisibleItemsY@ImGui@@YAXAEBUImRect@@AEBUImVec2@@MPEAH2@Z";
CalcClipRectVisibleItemsY :: (clip_rect: ImRect, pos: ImVec2, items_height: float, out_visible_start: *s32, out_visible_end: *s32) #no_context {
    CalcClipRectVisibleItemsY(*clip_rect, *pos, items_height, out_visible_start, out_visible_end);
}

// Parameter stacks (shared)
GetStyleVarInfo :: (idx: StyleVar) -> *StyleVarInfo #foreign imgui "?GetStyleVarInfo@ImGui@@YAPEBUImGuiStyleVarInfo@@H@Z";
BeginDisabledOverrideReenable :: () -> void #foreign imgui "?BeginDisabledOverrideReenable@ImGui@@YAXXZ";
EndDisabledOverrideReenable :: () -> void #foreign imgui "?EndDisabledOverrideReenable@ImGui@@YAXXZ";

// Logging/Capture
LogBegin :: (flags: LogFlags, auto_open_depth: s32) -> void #foreign imgui "?LogBegin@ImGui@@YAXHH@Z";
LogToBuffer :: (auto_open_depth: s32 = -1) -> void #foreign imgui "?LogToBuffer@ImGui@@YAXH@Z";
LogRenderedText :: (ref_pos: *ImVec2, text: *u8, text_end: *u8 = null) -> void #foreign imgui "?LogRenderedText@ImGui@@YAXPEBUImVec2@@PEBD1@Z";
LogRenderedText :: (ref_pos: *ImVec2, text: string) #no_context {
    LogRenderedText(ref_pos, text.data, text.data + text.count);
}
LogSetNextTextDecoration :: (prefix: *u8, suffix: *u8) -> void #foreign imgui "?LogSetNextTextDecoration@ImGui@@YAXPEBD0@Z";

// Childs
BeginChildEx :: (name: *u8, id: ID, size_arg: *ImVec2, child_flags: ChildFlags, window_flags: WindowFlags) -> bool #foreign imgui "?BeginChildEx@ImGui@@YA_NPEBDIAEBUImVec2@@HH@Z";
BeginChildEx :: (name: *u8, id: ID, size_arg: ImVec2, child_flags: ChildFlags, window_flags: WindowFlags) -> bool #no_context {
    return BeginChildEx(name, id, *size_arg, child_flags, window_flags);
}
FindFrontMostVisibleChildWindow :: (window: *Window) -> *Window #foreign imgui "?FindFrontMostVisibleChildWindow@ImGui@@YAPEAUImGuiWindow@@PEAU2@@Z";

// Popups, Modals
BeginPopupEx :: (id: ID, extra_window_flags: WindowFlags) -> bool #foreign imgui "?BeginPopupEx@ImGui@@YA_NIH@Z";
BeginPopupMenuEx :: (id: ID, label: *u8, extra_window_flags: WindowFlags) -> bool #foreign imgui "?BeginPopupMenuEx@ImGui@@YA_NIPEBDH@Z";
OpenPopupEx :: (id: ID, popup_flags: PopupFlags = cast(PopupFlags).None) -> void #foreign imgui "?OpenPopupEx@ImGui@@YAXIH@Z";
ClosePopupToLevel :: (remaining: s32, restore_focus_to_window_under_popup: bool) -> void #foreign imgui "?ClosePopupToLevel@ImGui@@YAXH_N@Z";
ClosePopupsOverWindow :: (ref_window: *Window, restore_focus_to_window_under_popup: bool) -> void #foreign imgui "?ClosePopupsOverWindow@ImGui@@YAXPEAUImGuiWindow@@_N@Z";
ClosePopupsExceptModals :: () -> void #foreign imgui "?ClosePopupsExceptModals@ImGui@@YAXXZ";
IsPopupOpen :: (id: ID, popup_flags: PopupFlags) -> bool #foreign imgui "?IsPopupOpen@ImGui@@YA_NIH@Z";
GetPopupAllowedExtentRect :: (window: *Window) -> ImRect #cpp_return_type_is_non_pod #foreign imgui "?GetPopupAllowedExtentRect@ImGui@@YA?AUImRect@@PEAUImGuiWindow@@@Z";
GetTopMostPopupModal :: () -> *Window #foreign imgui "?GetTopMostPopupModal@ImGui@@YAPEAUImGuiWindow@@XZ";
GetTopMostAndVisiblePopupModal :: () -> *Window #foreign imgui "?GetTopMostAndVisiblePopupModal@ImGui@@YAPEAUImGuiWindow@@XZ";
FindBlockingModal :: (window: *Window) -> *Window #foreign imgui "?FindBlockingModal@ImGui@@YAPEAUImGuiWindow@@PEAU2@@Z";
FindBestWindowPosForPopup :: (window: *Window) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?FindBestWindowPosForPopup@ImGui@@YA?AUImVec2@@PEAUImGuiWindow@@@Z";
FindBestWindowPosForPopupEx :: (ref_pos: *ImVec2, size: *ImVec2, last_dir: *Dir, r_outer: *ImRect, r_avoid: *ImRect, policy: PopupPositionPolicy) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?FindBestWindowPosForPopupEx@ImGui@@YA?AUImVec2@@AEBU2@0PEAW4ImGuiDir@@AEBUImRect@@2W4ImGuiPopupPositionPolicy@@@Z";
FindBestWindowPosForPopupEx :: (ref_pos: ImVec2, size: ImVec2, last_dir: *Dir, r_outer: ImRect, r_avoid: ImRect, policy: PopupPositionPolicy) -> ImVec2 #no_context {
    return FindBestWindowPosForPopupEx(*ref_pos, *size, last_dir, *r_outer, *r_avoid, policy);
}
GetMouseButtonFromPopupFlags :: (flags: PopupFlags) -> MouseButton #foreign imgui "?GetMouseButtonFromPopupFlags@ImGui@@YAHH@Z";
IsPopupOpenRequestForItem :: (flags: PopupFlags, id: ID) -> bool #foreign imgui "?IsPopupOpenRequestForItem@ImGui@@YA_NHI@Z";
IsPopupOpenRequestForWindow :: (flags: PopupFlags) -> bool #foreign imgui "?IsPopupOpenRequestForWindow@ImGui@@YA_NH@Z";

// Tooltips
BeginTooltipEx :: (tooltip_flags: TooltipFlags, extra_window_flags: WindowFlags) -> bool #foreign imgui "?BeginTooltipEx@ImGui@@YA_NHH@Z";
BeginTooltipHidden :: () -> bool #foreign imgui "?BeginTooltipHidden@ImGui@@YA_NXZ";

// Menus
BeginViewportSideBar :: (name: *u8, viewport: *Viewport, dir: Dir, size: float, window_flags: WindowFlags) -> bool #foreign imgui "?BeginViewportSideBar@ImGui@@YA_NPEBDPEAUImGuiViewport@@W4ImGuiDir@@MH@Z";
BeginMenuEx :: (label: *u8, icon: *u8, enabled := true) -> bool #foreign imgui "?BeginMenuEx@ImGui@@YA_NPEBD0_N@Z";
MenuItemEx :: (label: *u8, icon: *u8, shortcut: *u8 = null, selected := false, enabled := true) -> bool #foreign imgui "?MenuItemEx@ImGui@@YA_NPEBD00_N1@Z";

// Combos
BeginComboPopup :: (popup_id: ID, bb: *ImRect, flags: ComboFlags) -> bool #foreign imgui "?BeginComboPopup@ImGui@@YA_NIAEBUImRect@@H@Z";
BeginComboPopup :: (popup_id: ID, bb: ImRect, flags: ComboFlags) -> bool #no_context {
    return BeginComboPopup(popup_id, *bb, flags);
}
BeginComboPreview :: () -> bool #foreign imgui "?BeginComboPreview@ImGui@@YA_NXZ";
EndComboPreview :: () -> void #foreign imgui "?EndComboPreview@ImGui@@YAXXZ";

// Keyboard/Gamepad Navigation
NavInitWindow :: (window: *Window, force_reinit: bool) -> void #foreign imgui "?NavInitWindow@ImGui@@YAXPEAUImGuiWindow@@_N@Z";
NavInitRequestApplyResult :: () -> void #foreign imgui "?NavInitRequestApplyResult@ImGui@@YAXXZ";
NavMoveRequestButNoResultYet :: () -> bool #foreign imgui "?NavMoveRequestButNoResultYet@ImGui@@YA_NXZ";
NavMoveRequestSubmit :: (move_dir: Dir, clip_dir: Dir, move_flags: NavMoveFlags, scroll_flags: ScrollFlags) -> void #foreign imgui "?NavMoveRequestSubmit@ImGui@@YAXW4ImGuiDir@@0HH@Z";
NavMoveRequestForward :: (move_dir: Dir, clip_dir: Dir, move_flags: NavMoveFlags, scroll_flags: ScrollFlags) -> void #foreign imgui "?NavMoveRequestForward@ImGui@@YAXW4ImGuiDir@@0HH@Z";
NavMoveRequestResolveWithLastItem :: (result: *NavItemData) -> void #foreign imgui "?NavMoveRequestResolveWithLastItem@ImGui@@YAXPEAUImGuiNavItemData@@@Z";
NavMoveRequestResolveWithPastTreeNode :: (result: *NavItemData, tree_node_data: *TreeNodeStackData) -> void #foreign imgui "?NavMoveRequestResolveWithPastTreeNode@ImGui@@YAXPEAUImGuiNavItemData@@PEBUImGuiTreeNodeStackData@@@Z";
NavMoveRequestCancel :: () -> void #foreign imgui "?NavMoveRequestCancel@ImGui@@YAXXZ";
NavMoveRequestApplyResult :: () -> void #foreign imgui "?NavMoveRequestApplyResult@ImGui@@YAXXZ";
NavMoveRequestTryWrapping :: (window: *Window, move_flags: NavMoveFlags) -> void #foreign imgui "?NavMoveRequestTryWrapping@ImGui@@YAXPEAUImGuiWindow@@H@Z";
NavHighlightActivated :: (id: ID) -> void #foreign imgui "?NavHighlightActivated@ImGui@@YAXI@Z";
NavClearPreferredPosForAxis :: (axis: Axis) -> void #foreign imgui "?NavClearPreferredPosForAxis@ImGui@@YAXW4ImGuiAxis@@@Z";
SetNavCursorVisibleAfterMove :: () -> void #foreign imgui "?SetNavCursorVisibleAfterMove@ImGui@@YAXXZ";
NavUpdateCurrentWindowIsScrollPushableX :: () -> void #foreign imgui "?NavUpdateCurrentWindowIsScrollPushableX@ImGui@@YAXXZ";
SetNavWindow :: (window: *Window) -> void #foreign imgui "?SetNavWindow@ImGui@@YAXPEAUImGuiWindow@@@Z";
SetNavID :: (id: ID, nav_layer: NavLayer, focus_scope_id: ID, rect_rel: *ImRect) -> void #foreign imgui "?SetNavID@ImGui@@YAXIW4ImGuiNavLayer@@IAEBUImRect@@@Z";
SetNavID :: (id: ID, nav_layer: NavLayer, focus_scope_id: ID, rect_rel: ImRect) #no_context {
    SetNavID(id, nav_layer, focus_scope_id, *rect_rel);
}
SetNavFocusScope :: (focus_scope_id: ID) -> void #foreign imgui "?SetNavFocusScope@ImGui@@YAXI@Z";

// Focus/Activation
// This should be part of a larger set of API: FocusItem(offset = -1), FocusItemByID(id), ActivateItem(offset = -1), ActivateItemByID(id) etc. which are
// much harder to design and implement than expected. I have a couple of private branches on this matter but it's not simple. For now implementing the easy ones.
FocusItem :: () -> void #foreign imgui "?FocusItem@ImGui@@YAXXZ";
ActivateItemByID :: (id: ID) -> void #foreign imgui "?ActivateItemByID@ImGui@@YAXI@Z";

FixupKeyChord :: (key_chord: KeyChord) -> KeyChord #foreign imgui "?FixupKeyChord@ImGui@@YAHH@Z";

GetKeyData :: (ctx: *ImGuiContext, key: Key) -> *KeyData #foreign imgui "?GetKeyData@ImGui@@YAPEAUImGuiKeyData@@PEAUImGuiContext@@W4ImGuiKey@@@Z";

GetKeyChordName :: (key_chord: KeyChord) -> *u8 #foreign imgui "?GetKeyChordName@ImGui@@YAPEBDH@Z";

IsMouseDragPastThreshold :: (button: MouseButton, lock_threshold: float = -1.0) -> bool #foreign imgui "?IsMouseDragPastThreshold@ImGui@@YA_NHM@Z";
GetKeyMagnitude2d :: (key_left: Key, key_right: Key, key_up: Key, key_down: Key) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetKeyMagnitude2d@ImGui@@YA?AUImVec2@@W4ImGuiKey@@000@Z";
GetNavTweakPressedAmount :: (axis: Axis) -> float #foreign imgui "?GetNavTweakPressedAmount@ImGui@@YAMW4ImGuiAxis@@@Z";
CalcTypematicRepeatAmount :: (t0: float, t1: float, repeat_delay: float, repeat_rate: float) -> s32 #foreign imgui "?CalcTypematicRepeatAmount@ImGui@@YAHMMMM@Z";
GetTypematicRepeatRate :: (flags: InputFlags, repeat_delay: *float, repeat_rate: *float) -> void #foreign imgui "?GetTypematicRepeatRate@ImGui@@YAXHPEAM0@Z";
TeleportMousePos :: (pos: *ImVec2) -> void #foreign imgui "?TeleportMousePos@ImGui@@YAXAEBUImVec2@@@Z";
TeleportMousePos :: (pos: ImVec2) #no_context {
    TeleportMousePos(*pos);
}
SetActiveIdUsingAllKeyboardKeys :: () -> void #foreign imgui "?SetActiveIdUsingAllKeyboardKeys@ImGui@@YAXXZ";

// [EXPERIMENTAL] Low-Level: Key/Input Ownership
// - The idea is that instead of "eating" a given input, we can link to an owner id.
// - Ownership is most often claimed as a result of reacting to a press/down event (but occasionally may be claimed ahead).
// - Input queries can then read input by specifying ImGuiKeyOwner_Any (== 0), ImGuiKeyOwner_NoOwner (== -1) or a custom ID.
// - Legacy input queries (without specifying an owner or _Any or _None) are equivalent to using ImGuiKeyOwner_Any (== 0).
// - Input ownership is automatically released on the frame after a key is released. Therefore:
//   - for ownership registration happening as a result of a down/press event, the SetKeyOwner() call may be done once (common case).
//   - for ownership registration happening ahead of a down/press event, the SetKeyOwner() call needs to be made every frame (happens if e.g. claiming ownership on hover).
// - SetItemKeyOwner() is a shortcut for common simple case. A custom widget will probably want to call SetKeyOwner() multiple times directly based on its interaction state.
// - This is marked experimental because not all widgets are fully honoring the Set/Test idioms. We will need to move forward step by step.
//   Please open a GitHub Issue to submit your usage scenario or if there's a use case you need solved.
GetKeyOwner :: (key: Key) -> ID #foreign imgui "?GetKeyOwner@ImGui@@YAIW4ImGuiKey@@@Z";
SetKeyOwner :: (key: Key, owner_id: ID, flags: InputFlags = .None) -> void #foreign imgui "?SetKeyOwner@ImGui@@YAXW4ImGuiKey@@IH@Z";
SetKeyOwnersForKeyChord :: (key: KeyChord, owner_id: ID, flags: InputFlags = .None) -> void #foreign imgui "?SetKeyOwnersForKeyChord@ImGui@@YAXHIH@Z";
SetItemKeyOwner :: (key: Key, flags: InputFlags) -> bool #foreign imgui "?SetItemKeyOwner@ImGui@@YA_NW4ImGuiKey@@H@Z";
TestKeyOwner :: (key: Key, owner_id: ID) -> bool #foreign imgui "?TestKeyOwner@ImGui@@YA_NW4ImGuiKey@@I@Z";

// [EXPERIMENTAL] High-Level: Input Access functions w/ support for Key/Input Ownership
// - Important: legacy IsKeyPressed(ImGuiKey, bool repeat=true) _DEFAULTS_ to repeat, new IsKeyPressed() requires _EXPLICIT_ ImGuiInputFlags_Repeat flag.
// - Expected to be later promoted to public API, the prototypes are designed to replace existing ones (since owner_id can default to Any == 0)
// - Specifying a value for 'ImGuiID owner' will test that EITHER the key is NOT owned (UNLESS locked), EITHER the key is owned by 'owner'.
//   Legacy functions use ImGuiKeyOwner_Any meaning that they typically ignore ownership, unless a call to SetKeyOwner() explicitly used ImGuiInputFlags_LockThisFrame or ImGuiInputFlags_LockUntilRelease.
// - Binding generators may want to ignore those for now, or suffix them with Ex() until we decide if this gets moved into public API.
IsKeyDown :: (key: Key, owner_id: ID) -> bool #foreign imgui "?IsKeyDown@ImGui@@YA_NW4ImGuiKey@@I@Z";
IsKeyPressed :: (key: Key, flags: InputFlags, owner_id: ID = 0) -> bool #foreign imgui "?IsKeyPressed@ImGui@@YA_NW4ImGuiKey@@HI@Z";
IsKeyReleased :: (key: Key, owner_id: ID) -> bool #foreign imgui "?IsKeyReleased@ImGui@@YA_NW4ImGuiKey@@I@Z";
IsKeyChordPressed :: (key_chord: KeyChord, flags: InputFlags, owner_id: ID = 0) -> bool #foreign imgui "?IsKeyChordPressed@ImGui@@YA_NHHI@Z";
IsMouseDown :: (button: MouseButton, owner_id: ID) -> bool #foreign imgui "?IsMouseDown@ImGui@@YA_NHI@Z";
IsMouseClicked :: (button: MouseButton, flags: InputFlags, owner_id: ID = 0) -> bool #foreign imgui "?IsMouseClicked@ImGui@@YA_NHHI@Z";
IsMouseReleased :: (button: MouseButton, owner_id: ID) -> bool #foreign imgui "?IsMouseReleased@ImGui@@YA_NHI@Z";
IsMouseDoubleClicked :: (button: MouseButton, owner_id: ID) -> bool #foreign imgui "?IsMouseDoubleClicked@ImGui@@YA_NHI@Z";

// Shortcut Testing & Routing
// - Set Shortcut() and SetNextItemShortcut() in imgui.h
// - When a policy (except for ImGuiInputFlags_RouteAlways *) is set, Shortcut() will register itself with SetShortcutRouting(),
//   allowing the system to decide where to route the input among other route-aware calls.
//   (* using ImGuiInputFlags_RouteAlways is roughly equivalent to calling IsKeyChordPressed(key) and bypassing route registration and check)
// - When using one of the routing option:
//   - The default route is ImGuiInputFlags_RouteFocused (accept inputs if window is in focus stack. Deep-most focused window takes inputs. ActiveId takes inputs over deep-most focused window.)
//   - Routes are requested given a chord (key + modifiers) and a routing policy.
//   - Routes are resolved during NewFrame(): if keyboard modifiers are matching current ones: SetKeyOwner() is called + route is granted for the frame.
//   - Each route may be granted to a single owner. When multiple requests are made we have policies to select the winning route (e.g. deep most window).
//   - Multiple read sites may use the same owner id can all access the granted route.
//   - When owner_id is 0 we use the current Focus Scope ID as a owner ID in order to identify our location.
// - You can chain two unrelated windows in the focus stack using SetWindowParentWindowForFocusRoute()
//   e.g. if you have a tool window associated to a document, and you want document shortcuts to run when the tool is focused.
Shortcut :: (key_chord: KeyChord, flags: InputFlags, owner_id: ID) -> bool #foreign imgui "?Shortcut@ImGui@@YA_NHHI@Z";
SetShortcutRouting :: (key_chord: KeyChord, flags: InputFlags, owner_id: ID) -> bool #foreign imgui "?SetShortcutRouting@ImGui@@YA_NHHI@Z";
TestShortcutRouting :: (key_chord: KeyChord, owner_id: ID) -> bool #foreign imgui "?TestShortcutRouting@ImGui@@YA_NHI@Z";
GetShortcutRoutingData :: (key_chord: KeyChord) -> *KeyRoutingData #foreign imgui "?GetShortcutRoutingData@ImGui@@YAPEAUImGuiKeyRoutingData@@H@Z";

// Docking
// (some functions are only declared in imgui.cpp, see Docking section)
DockContextInitialize :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextInitialize@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextShutdown :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextShutdown@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextClearNodes :: (ctx: *ImGuiContext, root_id: ID, clear_settings_refs: bool) -> void #foreign imgui "?DockContextClearNodes@ImGui@@YAXPEAUImGuiContext@@I_N@Z";
DockContextRebuildNodes :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextRebuildNodes@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextNewFrameUpdateUndocking :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextNewFrameUpdateUndocking@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextNewFrameUpdateDocking :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextNewFrameUpdateDocking@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextEndFrame :: (ctx: *ImGuiContext) -> void #foreign imgui "?DockContextEndFrame@ImGui@@YAXPEAUImGuiContext@@@Z";
DockContextGenNodeID :: (ctx: *ImGuiContext) -> ID #foreign imgui "?DockContextGenNodeID@ImGui@@YAIPEAUImGuiContext@@@Z";
DockContextQueueDock :: (ctx: *ImGuiContext, target: *Window, target_node: *DockNode, payload: *Window, split_dir: Dir, split_ratio: float, split_outer: bool) -> void #foreign imgui "?DockContextQueueDock@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiWindow@@PEAUImGuiDockNode@@1W4ImGuiDir@@M_N@Z";
DockContextQueueUndockWindow :: (ctx: *ImGuiContext, window: *Window) -> void #foreign imgui "?DockContextQueueUndockWindow@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiWindow@@@Z";
DockContextQueueUndockNode :: (ctx: *ImGuiContext, node: *DockNode) -> void #foreign imgui "?DockContextQueueUndockNode@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiDockNode@@@Z";
DockContextProcessUndockWindow :: (ctx: *ImGuiContext, window: *Window, clear_persistent_docking_ref := true) -> void #foreign imgui "?DockContextProcessUndockWindow@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiWindow@@_N@Z";
DockContextProcessUndockNode :: (ctx: *ImGuiContext, node: *DockNode) -> void #foreign imgui "?DockContextProcessUndockNode@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiDockNode@@@Z";
DockContextCalcDropPosForDocking :: (target: *Window, target_node: *DockNode, payload_window: *Window, payload_node: *DockNode, split_dir: Dir, split_outer: bool, out_pos: *ImVec2) -> bool #foreign imgui "?DockContextCalcDropPosForDocking@ImGui@@YA_NPEAUImGuiWindow@@PEAUImGuiDockNode@@01W4ImGuiDir@@_NPEAUImVec2@@@Z";
DockContextFindNodeByID :: (ctx: *ImGuiContext, id: ID) -> *DockNode #foreign imgui "?DockContextFindNodeByID@ImGui@@YAPEAUImGuiDockNode@@PEAUImGuiContext@@I@Z";
DockNodeWindowMenuHandler_Default :: (ctx: *ImGuiContext, node: *DockNode, tab_bar: *TabBar) -> void #foreign imgui "?DockNodeWindowMenuHandler_Default@ImGui@@YAXPEAUImGuiContext@@PEAUImGuiDockNode@@PEAUImGuiTabBar@@@Z";
DockNodeBeginAmendTabBar :: (node: *DockNode) -> bool #foreign imgui "?DockNodeBeginAmendTabBar@ImGui@@YA_NPEAUImGuiDockNode@@@Z";
DockNodeEndAmendTabBar :: () -> void #foreign imgui "?DockNodeEndAmendTabBar@ImGui@@YAXXZ";

GetWindowAlwaysWantOwnTabBar :: (window: *Window) -> bool #foreign imgui "?GetWindowAlwaysWantOwnTabBar@ImGui@@YA_NPEAUImGuiWindow@@@Z";
BeginDocked :: (window: *Window, p_open: *bool) -> void #foreign imgui "?BeginDocked@ImGui@@YAXPEAUImGuiWindow@@PEA_N@Z";
BeginDockableDragDropSource :: (window: *Window) -> void #foreign imgui "?BeginDockableDragDropSource@ImGui@@YAXPEAUImGuiWindow@@@Z";
BeginDockableDragDropTarget :: (window: *Window) -> void #foreign imgui "?BeginDockableDragDropTarget@ImGui@@YAXPEAUImGuiWindow@@@Z";
SetWindowDock :: (window: *Window, dock_id: ID, cond: Cond) -> void #foreign imgui "?SetWindowDock@ImGui@@YAXPEAUImGuiWindow@@IH@Z";

// Docking - Builder function needs to be generally called before the node is used/submitted.
// - The DockBuilderXXX functions are designed to _eventually_ become a public API, but it is too early to expose it and guarantee stability.
// - Do not hold on ImGuiDockNode* pointers! They may be invalidated by any split/merge/remove operation and every frame.
// - To create a DockSpace() node, make sure to set the ImGuiDockNodeFlags_DockSpace flag when calling DockBuilderAddNode().
//   You can create dockspace nodes (attached to a window) _or_ floating nodes (carry its own window) with this API.
// - DockBuilderSplitNode() create 2 child nodes within 1 node. The initial node becomes a parent node.
// - If you intend to split the node immediately after creation using DockBuilderSplitNode(), make sure
//   to call DockBuilderSetNodeSize() beforehand. If you don't, the resulting split sizes may not be reliable.
// - Call DockBuilderFinish() after you are done.
DockBuilderDockWindow :: (window_name: *u8, node_id: ID) -> void #foreign imgui "?DockBuilderDockWindow@ImGui@@YAXPEBDI@Z";
DockBuilderGetNode :: (node_id: ID) -> *DockNode #foreign imgui "?DockBuilderGetNode@ImGui@@YAPEAUImGuiDockNode@@I@Z";

DockBuilderAddNode :: (node_id: ID = 0, flags: DockNodeFlags = .None) -> ID #foreign imgui "?DockBuilderAddNode@ImGui@@YAIIH@Z";
DockBuilderRemoveNode :: (node_id: ID) -> void #foreign imgui "?DockBuilderRemoveNode@ImGui@@YAXI@Z";
DockBuilderRemoveNodeDockedWindows :: (node_id: ID, clear_settings_refs := true) -> void #foreign imgui "?DockBuilderRemoveNodeDockedWindows@ImGui@@YAXI_N@Z";
DockBuilderRemoveNodeChildNodes :: (node_id: ID) -> void #foreign imgui "?DockBuilderRemoveNodeChildNodes@ImGui@@YAXI@Z";
DockBuilderSetNodePos :: (node_id: ID, pos: ImVec2) -> void #foreign imgui "?DockBuilderSetNodePos@ImGui@@YAXIUImVec2@@@Z";
DockBuilderSetNodeSize :: (node_id: ID, size: ImVec2) -> void #foreign imgui "?DockBuilderSetNodeSize@ImGui@@YAXIUImVec2@@@Z";
DockBuilderSplitNode :: (node_id: ID, split_dir: Dir, size_ratio_for_node_at_dir: float, out_id_at_dir: *ID, out_id_at_opposite_dir: *ID) -> ID #foreign imgui "?DockBuilderSplitNode@ImGui@@YAIIW4ImGuiDir@@MPEAI1@Z";
DockBuilderCopyDockSpace :: (src_dockspace_id: ID, dst_dockspace_id: ID, in_window_remap_pairs: *ImVector(*u8)) -> void #foreign imgui "?DockBuilderCopyDockSpace@ImGui@@YAXIIPEAU?$ImVector@PEBD@@@Z";
DockBuilderCopyNode :: (src_node_id: ID, dst_node_id: ID, out_node_remap_pairs: *ImVector(ID)) -> void #foreign imgui "?DockBuilderCopyNode@ImGui@@YAXIIPEAU?$ImVector@I@@@Z";
DockBuilderCopyWindowSettings :: (src_name: *u8, dst_name: *u8) -> void #foreign imgui "?DockBuilderCopyWindowSettings@ImGui@@YAXPEBD0@Z";
DockBuilderFinish :: (node_id: ID) -> void #foreign imgui "?DockBuilderFinish@ImGui@@YAXI@Z";

// [EXPERIMENTAL] Focus Scope
// This is generally used to identify a unique input location (for e.g. a selection set)
// There is one per window (automatically set in Begin), but:
// - Selection patterns generally need to react (e.g. clear a selection) when landing on one item of the set.
//   So in order to identify a set multiple lists in same window may each need a focus scope.
//   If you imagine an hypothetical BeginSelectionGroup()/EndSelectionGroup() api, it would likely call PushFocusScope()/EndFocusScope()
// - Shortcut routing also use focus scope as a default location identifier if an owner is not provided.
// We don't use the ID Stack for this as it is common to want them separate.
PushFocusScope :: (id: ID) -> void #foreign imgui "?PushFocusScope@ImGui@@YAXI@Z";
PopFocusScope :: () -> void #foreign imgui "?PopFocusScope@ImGui@@YAXXZ";
IsInNavFocusRoute :: (focus_scope_id: ID) -> bool #foreign imgui "?IsInNavFocusRoute@ImGui@@YA_NI@Z";

// Drag and Drop
IsDragDropActive :: () -> bool #foreign imgui "?IsDragDropActive@ImGui@@YA_NXZ";
BeginDragDropTargetCustom :: (bb: *ImRect, id: ID) -> bool #foreign imgui "?BeginDragDropTargetCustom@ImGui@@YA_NAEBUImRect@@I@Z";
BeginDragDropTargetCustom :: (bb: ImRect, id: ID) -> bool #no_context {
    return BeginDragDropTargetCustom(*bb, id);
}
BeginDragDropTargetViewport :: (viewport: *Viewport, p_bb: *ImRect = null) -> bool #foreign imgui "?BeginDragDropTargetViewport@ImGui@@YA_NPEAUImGuiViewport@@PEBUImRect@@@Z";
ClearDragDrop :: () -> void #foreign imgui "?ClearDragDrop@ImGui@@YAXXZ";
IsDragDropPayloadBeingAccepted :: () -> bool #foreign imgui "?IsDragDropPayloadBeingAccepted@ImGui@@YA_NXZ";
RenderDragDropTargetRectForItem :: (bb: *ImRect) -> void #foreign imgui "?RenderDragDropTargetRectForItem@ImGui@@YAXAEBUImRect@@@Z";
RenderDragDropTargetRectForItem :: (bb: ImRect) #no_context {
    RenderDragDropTargetRectForItem(*bb);
}
RenderDragDropTargetRectEx :: (draw_list: *ImDrawList, bb: *ImRect, rounding: float) -> void #foreign imgui "?RenderDragDropTargetRectEx@ImGui@@YAXPEAUImDrawList@@AEBUImRect@@M@Z";
RenderDragDropTargetRectEx :: (draw_list: *ImDrawList, bb: ImRect, rounding: float) #no_context {
    RenderDragDropTargetRectEx(draw_list, *bb, rounding);
}

// Typing-Select API
// (provide Windows Explorer style "select items by typing partial name" + "cycle through items by typing same letter" feature)
// (this is currently not documented nor used by main library, but should work. See "widgets_typingselect" in imgui_test_suite for usage code. Please let us know if you use this!)
GetTypingSelectRequest :: (flags: TypingSelectFlags = xx TypingSelectFlags.None) -> *TypingSelectRequest #foreign imgui "?GetTypingSelectRequest@ImGui@@YAPEAUImGuiTypingSelectRequest@@H@Z";
TypingSelectFindMatch :: (req: *TypingSelectRequest, items_count: s32, get_item_name_func: #type (unknown0: *void, unknown1: s32) -> *u8 #c_call, user_data: *void, nav_item_idx: s32) -> s32 #foreign imgui "?TypingSelectFindMatch@ImGui@@YAHPEAUImGuiTypingSelectRequest@@HP6APEBDPEAXH@Z1H@Z";
TypingSelectFindNextSingleCharMatch :: (req: *TypingSelectRequest, items_count: s32, get_item_name_func: #type (unknown0: *void, unknown1: s32) -> *u8 #c_call, user_data: *void, nav_item_idx: s32) -> s32 #foreign imgui "?TypingSelectFindNextSingleCharMatch@ImGui@@YAHPEAUImGuiTypingSelectRequest@@HP6APEBDPEAXH@Z1H@Z";
TypingSelectFindBestLeadingMatch :: (req: *TypingSelectRequest, items_count: s32, get_item_name_func: #type (unknown0: *void, unknown1: s32) -> *u8 #c_call, user_data: *void) -> s32 #foreign imgui "?TypingSelectFindBestLeadingMatch@ImGui@@YAHPEAUImGuiTypingSelectRequest@@HP6APEBDPEAXH@Z1@Z";

// Box-Select API
BeginBoxSelect :: (scope_rect: *ImRect, window: *Window, box_select_id: ID, ms_flags: MultiSelectFlags) -> bool #foreign imgui "?BeginBoxSelect@ImGui@@YA_NAEBUImRect@@PEAUImGuiWindow@@IH@Z";
BeginBoxSelect :: (scope_rect: ImRect, window: *Window, box_select_id: ID, ms_flags: MultiSelectFlags) -> bool #no_context {
    return BeginBoxSelect(*scope_rect, window, box_select_id, ms_flags);
}
EndBoxSelect :: (scope_rect: *ImRect, ms_flags: MultiSelectFlags) -> void #foreign imgui "?EndBoxSelect@ImGui@@YAXAEBUImRect@@H@Z";
EndBoxSelect :: (scope_rect: ImRect, ms_flags: MultiSelectFlags) #no_context {
    EndBoxSelect(*scope_rect, ms_flags);
}

// Multi-Select API
MultiSelectItemHeader :: (id: ID, p_selected: *bool, p_button_flags: *ButtonFlags) -> void #foreign imgui "?MultiSelectItemHeader@ImGui@@YAXIPEA_NPEAH@Z";
MultiSelectItemFooter :: (id: ID, p_selected: *bool, p_pressed: *bool) -> void #foreign imgui "?MultiSelectItemFooter@ImGui@@YAXIPEA_N0@Z";
MultiSelectAddSetAll :: (ms: *MultiSelectTempData, selected: bool) -> void #foreign imgui "?MultiSelectAddSetAll@ImGui@@YAXPEAUImGuiMultiSelectTempData@@_N@Z";
MultiSelectAddSetRange :: (ms: *MultiSelectTempData, selected: bool, range_dir: s32, first_item: SelectionUserData, last_item: SelectionUserData) -> void #foreign imgui "?MultiSelectAddSetRange@ImGui@@YAXPEAUImGuiMultiSelectTempData@@_NH_J2@Z";

// Internal Columns API (this is not exposed because we will encourage transitioning to the Tables API)
SetWindowClipRectBeforeSetChannel :: (window: *Window, clip_rect: *ImRect) -> void #foreign imgui "?SetWindowClipRectBeforeSetChannel@ImGui@@YAXPEAUImGuiWindow@@AEBUImRect@@@Z";
SetWindowClipRectBeforeSetChannel :: (window: *Window, clip_rect: ImRect) #no_context {
    SetWindowClipRectBeforeSetChannel(window, *clip_rect);
}
BeginColumns :: (str_id: *u8, count: s32, flags: OldColumnFlags = 0) -> void #foreign imgui "?BeginColumns@ImGui@@YAXPEBDHH@Z";
EndColumns :: () -> void #foreign imgui "?EndColumns@ImGui@@YAXXZ";
PushColumnClipRect :: (column_index: s32) -> void #foreign imgui "?PushColumnClipRect@ImGui@@YAXH@Z";
PushColumnsBackground :: () -> void #foreign imgui "?PushColumnsBackground@ImGui@@YAXXZ";
PopColumnsBackground :: () -> void #foreign imgui "?PopColumnsBackground@ImGui@@YAXXZ";
GetColumnsID :: (str_id: *u8, count: s32) -> ID #foreign imgui "?GetColumnsID@ImGui@@YAIPEBDH@Z";
FindOrCreateColumns :: (window: *Window, id: ID) -> *OldColumns #foreign imgui "?FindOrCreateColumns@ImGui@@YAPEAUImGuiOldColumns@@PEAUImGuiWindow@@I@Z";
GetColumnOffsetFromNorm :: (columns: *OldColumns, offset_norm: float) -> float #foreign imgui "?GetColumnOffsetFromNorm@ImGui@@YAMPEBUImGuiOldColumns@@M@Z";
GetColumnNormFromOffset :: (columns: *OldColumns, offset: float) -> float #foreign imgui "?GetColumnNormFromOffset@ImGui@@YAMPEBUImGuiOldColumns@@M@Z";

// Tables: Candidates for public API
TableOpenContextMenu :: (column_n: s32 = -1) -> void #foreign imgui "?TableOpenContextMenu@ImGui@@YAXH@Z";
TableSetColumnWidth :: (column_n: s32, width: float) -> void #foreign imgui "?TableSetColumnWidth@ImGui@@YAXHM@Z";
TableSetColumnSortDirection :: (column_n: s32, sort_direction: SortDirection, append_to_sort_specs: bool) -> void #foreign imgui "?TableSetColumnSortDirection@ImGui@@YAXHW4ImGuiSortDirection@@_N@Z";
TableGetHoveredRow :: () -> s32 #foreign imgui "?TableGetHoveredRow@ImGui@@YAHXZ";
TableGetHeaderRowHeight :: () -> float #foreign imgui "?TableGetHeaderRowHeight@ImGui@@YAMXZ";
TableGetHeaderAngledMaxLabelWidth :: () -> float #foreign imgui "?TableGetHeaderAngledMaxLabelWidth@ImGui@@YAMXZ";
TablePushBackgroundChannel :: () -> void #foreign imgui "?TablePushBackgroundChannel@ImGui@@YAXXZ";
TablePopBackgroundChannel :: () -> void #foreign imgui "?TablePopBackgroundChannel@ImGui@@YAXXZ";
TablePushColumnChannel :: (column_n: s32) -> void #foreign imgui "?TablePushColumnChannel@ImGui@@YAXH@Z";
TablePopColumnChannel :: () -> void #foreign imgui "?TablePopColumnChannel@ImGui@@YAXXZ";
TableAngledHeadersRowEx :: (row_id: ID, angle: float, max_label_width: float, data: *TableHeaderData, data_count: s32) -> void #foreign imgui "?TableAngledHeadersRowEx@ImGui@@YAXIMMPEBUImGuiTableHeaderData@@H@Z";

TableFindByID :: (id: ID) -> *Table #foreign imgui "?TableFindByID@ImGui@@YAPEAUImGuiTable@@I@Z";
BeginTableEx :: (name: *u8, id: ID, columns_count: s32, flags: TableFlags = .None, outer_size: *ImVec2, inner_width: float = 0.0) -> bool #foreign imgui "?BeginTableEx@ImGui@@YA_NPEBDIHHAEBUImVec2@@M@Z";
BeginTableEx :: (name: *u8, id: ID, columns_count: s32, flags: TableFlags = .None, outer_size: ImVec2 = ImVec2.{0, 0}, inner_width: float = 0.0) -> bool #no_context {
    return BeginTableEx(name, id, columns_count, flags, *outer_size, inner_width);
}
TableBeginInitMemory :: (table: *Table, columns_count: s32) -> void #foreign imgui "?TableBeginInitMemory@ImGui@@YAXPEAUImGuiTable@@H@Z";
TableBeginApplyRequests :: (table: *Table) -> void #foreign imgui "?TableBeginApplyRequests@ImGui@@YAXPEAUImGuiTable@@@Z";
TableSetupDrawChannels :: (table: *Table) -> void #foreign imgui "?TableSetupDrawChannels@ImGui@@YAXPEAUImGuiTable@@@Z";
TableUpdateLayout :: (table: *Table) -> void #foreign imgui "?TableUpdateLayout@ImGui@@YAXPEAUImGuiTable@@@Z";
TableUpdateBorders :: (table: *Table) -> void #foreign imgui "?TableUpdateBorders@ImGui@@YAXPEAUImGuiTable@@@Z";
TableUpdateColumnsWeightFromWidth :: (table: *Table) -> void #foreign imgui "?TableUpdateColumnsWeightFromWidth@ImGui@@YAXPEAUImGuiTable@@@Z";
TableApplyExternalUnclipRect :: (table: *Table, rect: *ImRect) -> void #foreign imgui "?TableApplyExternalUnclipRect@ImGui@@YAXPEAUImGuiTable@@AEAUImRect@@@Z";
TableDrawBorders :: (table: *Table) -> void #foreign imgui "?TableDrawBorders@ImGui@@YAXPEAUImGuiTable@@@Z";
TableDrawDefaultContextMenu :: (table: *Table, flags_for_section_to_display: TableFlags) -> void #foreign imgui "?TableDrawDefaultContextMenu@ImGui@@YAXPEAUImGuiTable@@H@Z";
TableBeginContextMenuPopup :: (table: *Table) -> bool #foreign imgui "?TableBeginContextMenuPopup@ImGui@@YA_NPEAUImGuiTable@@@Z";
TableMergeDrawChannels :: (table: *Table) -> void #foreign imgui "?TableMergeDrawChannels@ImGui@@YAXPEAUImGuiTable@@@Z";

TableFixDisplayOrder :: (table: *Table) -> void #foreign imgui "?TableFixDisplayOrder@ImGui@@YAXPEAUImGuiTable@@@Z";
TableSortSpecsSanitize :: (table: *Table) -> void #foreign imgui "?TableSortSpecsSanitize@ImGui@@YAXPEAUImGuiTable@@@Z";
TableSortSpecsBuild :: (table: *Table) -> void #foreign imgui "?TableSortSpecsBuild@ImGui@@YAXPEAUImGuiTable@@@Z";
TableGetColumnNextSortDirection :: (column: *TableColumn) -> SortDirection #foreign imgui "?TableGetColumnNextSortDirection@ImGui@@YA?AW4ImGuiSortDirection@@PEAUImGuiTableColumn@@@Z";
TableFixColumnSortDirection :: (table: *Table, column: *TableColumn) -> void #foreign imgui "?TableFixColumnSortDirection@ImGui@@YAXPEAUImGuiTable@@PEAUImGuiTableColumn@@@Z";
TableGetColumnWidthAuto :: (table: *Table, column: *TableColumn) -> float #foreign imgui "?TableGetColumnWidthAuto@ImGui@@YAMPEAUImGuiTable@@PEAUImGuiTableColumn@@@Z";
TableBeginRow :: (table: *Table) -> void #foreign imgui "?TableBeginRow@ImGui@@YAXPEAUImGuiTable@@@Z";
TableEndRow :: (table: *Table) -> void #foreign imgui "?TableEndRow@ImGui@@YAXPEAUImGuiTable@@@Z";
TableBeginCell :: (table: *Table, column_n: s32) -> void #foreign imgui "?TableBeginCell@ImGui@@YAXPEAUImGuiTable@@H@Z";
TableEndCell :: (table: *Table) -> void #foreign imgui "?TableEndCell@ImGui@@YAXPEAUImGuiTable@@@Z";
TableGetCellBgRect :: (table: *Table, column_n: s32) -> ImRect #cpp_return_type_is_non_pod #foreign imgui "?TableGetCellBgRect@ImGui@@YA?AUImRect@@PEBUImGuiTable@@H@Z";
TableGetColumnName :: (table: *Table, column_n: s32) -> *u8 #foreign imgui "?TableGetColumnName@ImGui@@YAPEBDPEBUImGuiTable@@H@Z";
TableGetColumnResizeID :: (table: *Table, column_n: s32, instance_no: s32 = 0) -> ID #foreign imgui "?TableGetColumnResizeID@ImGui@@YAIPEAUImGuiTable@@HH@Z";
TableCalcMaxColumnWidth :: (table: *Table, column_n: s32) -> float #foreign imgui "?TableCalcMaxColumnWidth@ImGui@@YAMPEBUImGuiTable@@H@Z";
TableSetColumnWidthAutoSingle :: (table: *Table, column_n: s32) -> void #foreign imgui "?TableSetColumnWidthAutoSingle@ImGui@@YAXPEAUImGuiTable@@H@Z";
TableSetColumnWidthAutoAll :: (table: *Table) -> void #foreign imgui "?TableSetColumnWidthAutoAll@ImGui@@YAXPEAUImGuiTable@@@Z";
TableSetColumnDisplayOrder :: (table: *Table, column_n: s32, dst_order: s32) -> void #foreign imgui "?TableSetColumnDisplayOrder@ImGui@@YAXPEAUImGuiTable@@HH@Z";
TableQueueSetColumnDisplayOrder :: (table: *Table, column_n: s32, dst_order: s32) -> void #foreign imgui "?TableQueueSetColumnDisplayOrder@ImGui@@YAXPEAUImGuiTable@@HH@Z";
TableRemove :: (table: *Table) -> void #foreign imgui "?TableRemove@ImGui@@YAXPEAUImGuiTable@@@Z";
TableGcCompactTransientBuffers :: (table: *Table) -> void #foreign imgui "?TableGcCompactTransientBuffers@ImGui@@YAXPEAUImGuiTable@@@Z";
TableGcCompactTransientBuffers :: (table: *TableTempData) -> void #foreign imgui "?TableGcCompactTransientBuffers@ImGui@@YAXPEAUImGuiTableTempData@@@Z";
TableGcCompactSettings :: () -> void #foreign imgui "?TableGcCompactSettings@ImGui@@YAXXZ";

// Tables: Settings
TableLoadSettings :: (table: *Table) -> void #foreign imgui "?TableLoadSettings@ImGui@@YAXPEAUImGuiTable@@@Z";
TableSaveSettings :: (table: *Table) -> void #foreign imgui "?TableSaveSettings@ImGui@@YAXPEAUImGuiTable@@@Z";
TableResetSettings :: (table: *Table) -> void #foreign imgui "?TableResetSettings@ImGui@@YAXPEAUImGuiTable@@@Z";
TableGetBoundSettings :: (table: *Table) -> *TableSettings #foreign imgui "?TableGetBoundSettings@ImGui@@YAPEAUImGuiTableSettings@@PEAUImGuiTable@@@Z";
TableSettingsAddSettingsHandler :: () -> void #foreign imgui "?TableSettingsAddSettingsHandler@ImGui@@YAXXZ";
TableSettingsCreate :: (id: ID, columns_count: s32) -> *TableSettings #foreign imgui "?TableSettingsCreate@ImGui@@YAPEAUImGuiTableSettings@@IH@Z";
TableSettingsFindByID :: (id: ID) -> *TableSettings #foreign imgui "?TableSettingsFindByID@ImGui@@YAPEAUImGuiTableSettings@@I@Z";

TabBarFindByID :: (id: ID) -> *TabBar #foreign imgui "?TabBarFindByID@ImGui@@YAPEAUImGuiTabBar@@I@Z";
TabBarRemove :: (tab_bar: *TabBar) -> void #foreign imgui "?TabBarRemove@ImGui@@YAXPEAUImGuiTabBar@@@Z";
BeginTabBarEx :: (tab_bar: *TabBar, bb: *ImRect, flags: TabBarFlags) -> bool #foreign imgui "?BeginTabBarEx@ImGui@@YA_NPEAUImGuiTabBar@@AEBUImRect@@H@Z";
BeginTabBarEx :: (tab_bar: *TabBar, bb: ImRect, flags: TabBarFlags) -> bool #no_context {
    return BeginTabBarEx(tab_bar, *bb, flags);
}
TabBarFindTabByID :: (tab_bar: *TabBar, tab_id: ID) -> *TabItem #foreign imgui "?TabBarFindTabByID@ImGui@@YAPEAUImGuiTabItem@@PEAUImGuiTabBar@@I@Z";
TabBarFindTabByOrder :: (tab_bar: *TabBar, order: s32) -> *TabItem #foreign imgui "?TabBarFindTabByOrder@ImGui@@YAPEAUImGuiTabItem@@PEAUImGuiTabBar@@H@Z";
TabBarFindMostRecentlySelectedTabForActiveWindow :: (tab_bar: *TabBar) -> *TabItem #foreign imgui "?TabBarFindMostRecentlySelectedTabForActiveWindow@ImGui@@YAPEAUImGuiTabItem@@PEAUImGuiTabBar@@@Z";
TabBarGetCurrentTab :: (tab_bar: *TabBar) -> *TabItem #foreign imgui "?TabBarGetCurrentTab@ImGui@@YAPEAUImGuiTabItem@@PEAUImGuiTabBar@@@Z";

TabBarGetTabName :: (tab_bar: *TabBar, tab: *TabItem) -> *u8 #foreign imgui "?TabBarGetTabName@ImGui@@YAPEBDPEAUImGuiTabBar@@PEAUImGuiTabItem@@@Z";
TabBarAddTab :: (tab_bar: *TabBar, tab_flags: TabItemFlags, window: *Window) -> void #foreign imgui "?TabBarAddTab@ImGui@@YAXPEAUImGuiTabBar@@HPEAUImGuiWindow@@@Z";
TabBarRemoveTab :: (tab_bar: *TabBar, tab_id: ID) -> void #foreign imgui "?TabBarRemoveTab@ImGui@@YAXPEAUImGuiTabBar@@I@Z";
TabBarCloseTab :: (tab_bar: *TabBar, tab: *TabItem) -> void #foreign imgui "?TabBarCloseTab@ImGui@@YAXPEAUImGuiTabBar@@PEAUImGuiTabItem@@@Z";
TabBarQueueFocus :: (tab_bar: *TabBar, tab: *TabItem) -> void #foreign imgui "?TabBarQueueFocus@ImGui@@YAXPEAUImGuiTabBar@@PEAUImGuiTabItem@@@Z";
TabBarQueueFocus :: (tab_bar: *TabBar, tab_name: *u8) -> void #foreign imgui "?TabBarQueueFocus@ImGui@@YAXPEAUImGuiTabBar@@PEBD@Z";
TabBarQueueReorder :: (tab_bar: *TabBar, tab: *TabItem, offset: s32) -> void #foreign imgui "?TabBarQueueReorder@ImGui@@YAXPEAUImGuiTabBar@@PEAUImGuiTabItem@@H@Z";
TabBarQueueReorderFromMousePos :: (tab_bar: *TabBar, tab: *TabItem, mouse_pos: ImVec2) -> void #foreign imgui "?TabBarQueueReorderFromMousePos@ImGui@@YAXPEAUImGuiTabBar@@PEAUImGuiTabItem@@UImVec2@@@Z";
TabBarProcessReorder :: (tab_bar: *TabBar) -> bool #foreign imgui "?TabBarProcessReorder@ImGui@@YA_NPEAUImGuiTabBar@@@Z";
TabItemEx :: (tab_bar: *TabBar, label: *u8, p_open: *bool, flags: TabItemFlags, docked_window: *Window) -> bool #foreign imgui "?TabItemEx@ImGui@@YA_NPEAUImGuiTabBar@@PEBDPEA_NHPEAUImGuiWindow@@@Z";
TabItemSpacing :: (str_id: *u8, flags: TabItemFlags, width: float) -> void #foreign imgui "?TabItemSpacing@ImGui@@YAXPEBDHM@Z";
TabItemCalcSize :: (label: *u8, has_close_button_or_unsaved_marker: bool) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?TabItemCalcSize@ImGui@@YA?AUImVec2@@PEBD_N@Z";
TabItemCalcSize :: (window: *Window) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?TabItemCalcSize@ImGui@@YA?AUImVec2@@PEAUImGuiWindow@@@Z";
TabItemBackground :: (draw_list: *ImDrawList, bb: *ImRect, flags: TabItemFlags, col: ImU32) -> void #foreign imgui "?TabItemBackground@ImGui@@YAXPEAUImDrawList@@AEBUImRect@@HI@Z";
TabItemBackground :: (draw_list: *ImDrawList, bb: ImRect, flags: TabItemFlags, col: ImU32) #no_context {
    TabItemBackground(draw_list, *bb, flags, col);
}
TabItemLabelAndCloseButton :: (draw_list: *ImDrawList, bb: *ImRect, flags: TabItemFlags, frame_padding: ImVec2, label: *u8, tab_id: ID, close_button_id: ID, is_contents_visible: bool, out_just_closed: *bool, out_text_clipped: *bool) -> void #foreign imgui "?TabItemLabelAndCloseButton@ImGui@@YAXPEAUImDrawList@@AEBUImRect@@HUImVec2@@PEBDII_NPEA_N5@Z";
TabItemLabelAndCloseButton :: (draw_list: *ImDrawList, bb: ImRect, flags: TabItemFlags, frame_padding: ImVec2, label: *u8, tab_id: ID, close_button_id: ID, is_contents_visible: bool, out_just_closed: *bool, out_text_clipped: *bool) #no_context {
    TabItemLabelAndCloseButton(draw_list, *bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, out_just_closed, out_text_clipped);
}

// Render helpers
// AVOID USING OUTSIDE OF IMGUI.CPP! NOT FOR PUBLIC CONSUMPTION. THOSE FUNCTIONS ARE A MESS. THEIR SIGNATURE AND BEHAVIOR WILL CHANGE, THEY NEED TO BE REFACTORED INTO SOMETHING DECENT.
// NB: All position are in absolute pixels coordinates (we are never using window coordinates internally)
RenderText :: (pos: ImVec2, text: *u8, text_end: *u8 = null, hide_text_after_hash := true) -> void #foreign imgui "?RenderText@ImGui@@YAXUImVec2@@PEBD1_N@Z";
RenderText :: (pos: ImVec2, text: string, hide_text_after_hash := true) #no_context {
    RenderText(pos, text.data, text.data + text.count, hide_text_after_hash);
}
RenderTextWrapped :: (pos: ImVec2, text: *u8, text_end: *u8, wrap_width: float) -> void #foreign imgui "?RenderTextWrapped@ImGui@@YAXUImVec2@@PEBD1M@Z";
RenderTextWrapped :: (pos: ImVec2, text: string, wrap_width: float) #no_context {
    RenderTextWrapped(pos, text.data, text.data + text.count, wrap_width);
}
RenderTextClipped :: (pos_min: *ImVec2, pos_max: *ImVec2, text: *u8, text_end: *u8, text_size_if_known: *ImVec2, align: *ImVec2, clip_rect: *ImRect = null) -> void #foreign imgui "?RenderTextClipped@ImGui@@YAXAEBUImVec2@@0PEBD1PEBU2@0PEBUImRect@@@Z";
RenderTextClipped :: (pos_min: ImVec2, pos_max: ImVec2, text: string, text_size_if_known: *ImVec2, align: ImVec2 = ImVec2.{0, 0}, clip_rect: *ImRect = null) #no_context {
    RenderTextClipped(*pos_min, *pos_max, text.data, text.data + text.count, text_size_if_known, *align, clip_rect);
}
RenderTextClippedEx :: (draw_list: *ImDrawList, pos_min: *ImVec2, pos_max: *ImVec2, text: *u8, text_end: *u8, text_size_if_known: *ImVec2, align: *ImVec2, clip_rect: *ImRect = null) -> void #foreign imgui "?RenderTextClippedEx@ImGui@@YAXPEAUImDrawList@@AEBUImVec2@@1PEBD2PEBU3@1PEBUImRect@@@Z";
RenderTextClippedEx :: (draw_list: *ImDrawList, pos_min: ImVec2, pos_max: ImVec2, text: string, text_size_if_known: *ImVec2, align: ImVec2 = ImVec2.{0, 0}, clip_rect: *ImRect = null) #no_context {
    RenderTextClippedEx(draw_list, *pos_min, *pos_max, text.data, text.data + text.count, text_size_if_known, *align, clip_rect);
}
RenderTextEllipsis :: (draw_list: *ImDrawList, pos_min: *ImVec2, pos_max: *ImVec2, ellipsis_max_x: float, text: *u8, text_end: *u8, text_size_if_known: *ImVec2) -> void #foreign imgui "?RenderTextEllipsis@ImGui@@YAXPEAUImDrawList@@AEBUImVec2@@1MPEBD2PEBU3@@Z";
RenderTextEllipsis :: (draw_list: *ImDrawList, pos_min: ImVec2, pos_max: ImVec2, ellipsis_max_x: float, text: string, text_size_if_known: *ImVec2) #no_context {
    RenderTextEllipsis(draw_list, *pos_min, *pos_max, ellipsis_max_x, text.data, text.data + text.count, text_size_if_known);
}
RenderFrame :: (p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, borders := true, rounding: float = 0.0) -> void #foreign imgui "?RenderFrame@ImGui@@YAXUImVec2@@0I_NM@Z";
RenderFrameBorder :: (p_min: ImVec2, p_max: ImVec2, rounding: float = 0.0) -> void #foreign imgui "?RenderFrameBorder@ImGui@@YAXUImVec2@@0M@Z";
RenderColorComponentMarker :: (bb: *ImRect, col: ImU32, rounding: float) -> void #foreign imgui "?RenderColorComponentMarker@ImGui@@YAXAEBUImRect@@IM@Z";
RenderColorComponentMarker :: (bb: ImRect, col: ImU32, rounding: float) #no_context {
    RenderColorComponentMarker(*bb, col, rounding);
}
RenderColorRectWithAlphaCheckerboard :: (draw_list: *ImDrawList, p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, grid_step: float, grid_off: ImVec2, rounding: float = 0.0, flags: ImDrawFlags = .None) -> void #foreign imgui "?RenderColorRectWithAlphaCheckerboard@ImGui@@YAXPEAUImDrawList@@UImVec2@@1IM1MH@Z";
RenderNavCursor :: (bb: *ImRect, id: ID, flags: NavRenderCursorFlags = xx NavRenderCursorFlags.None) -> void #foreign imgui "?RenderNavCursor@ImGui@@YAXAEBUImRect@@IH@Z";
RenderNavCursor :: (bb: ImRect, id: ID, flags: NavRenderCursorFlags = xx NavRenderCursorFlags.None) #no_context {
    RenderNavCursor(*bb, id, flags);
}

FindRenderedTextEnd :: (text: *u8, text_end: *u8 = null) -> *u8 #foreign imgui "?FindRenderedTextEnd@ImGui@@YAPEBDPEBD0@Z";
FindRenderedTextEnd :: (text: string) -> *u8 #no_context {
    return FindRenderedTextEnd(text.data, text.data + text.count);
}
RenderMouseCursor :: (pos: ImVec2, scale: float, mouse_cursor: MouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) -> void #foreign imgui "?RenderMouseCursor@ImGui@@YAXUImVec2@@MHIII@Z";

// Render helpers (those functions don't access any ImGui state!)
RenderArrow :: (draw_list: *ImDrawList, pos: ImVec2, col: ImU32, dir: Dir, scale: float = 1.0) -> void #foreign imgui "?RenderArrow@ImGui@@YAXPEAUImDrawList@@UImVec2@@IW4ImGuiDir@@M@Z";
RenderBullet :: (draw_list: *ImDrawList, pos: ImVec2, col: ImU32) -> void #foreign imgui "?RenderBullet@ImGui@@YAXPEAUImDrawList@@UImVec2@@I@Z";
RenderCheckMark :: (draw_list: *ImDrawList, pos: ImVec2, col: ImU32, sz: float) -> void #foreign imgui "?RenderCheckMark@ImGui@@YAXPEAUImDrawList@@UImVec2@@IM@Z";
RenderArrowPointingAt :: (draw_list: *ImDrawList, pos: ImVec2, half_sz: ImVec2, direction: Dir, col: ImU32) -> void #foreign imgui "?RenderArrowPointingAt@ImGui@@YAXPEAUImDrawList@@UImVec2@@1W4ImGuiDir@@I@Z";
RenderArrowDockMenu :: (draw_list: *ImDrawList, p_min: ImVec2, sz: float, col: ImU32) -> void #foreign imgui "?RenderArrowDockMenu@ImGui@@YAXPEAUImDrawList@@UImVec2@@MI@Z";
RenderRectFilledInRangeH :: (draw_list: *ImDrawList, rect: *ImRect, col: ImU32, fill_x0: float, fill_x1: float, rounding: float) -> void #foreign imgui "?RenderRectFilledInRangeH@ImGui@@YAXPEAUImDrawList@@AEBUImRect@@IMMM@Z";
RenderRectFilledInRangeH :: (draw_list: *ImDrawList, rect: ImRect, col: ImU32, fill_x0: float, fill_x1: float, rounding: float) #no_context {
    RenderRectFilledInRangeH(draw_list, *rect, col, fill_x0, fill_x1, rounding);
}
RenderRectFilledWithHole :: (draw_list: *ImDrawList, outer: *ImRect, inner: *ImRect, col: ImU32, rounding: float) -> void #foreign imgui "?RenderRectFilledWithHole@ImGui@@YAXPEAUImDrawList@@AEBUImRect@@1IM@Z";
RenderRectFilledWithHole :: (draw_list: *ImDrawList, outer: ImRect, inner: ImRect, col: ImU32, rounding: float) #no_context {
    RenderRectFilledWithHole(draw_list, *outer, *inner, col, rounding);
}
CalcRoundingFlagsForRectInRect :: (r_in: *ImRect, r_outer: *ImRect, threshold: float) -> ImDrawFlags #foreign imgui "?CalcRoundingFlagsForRectInRect@ImGui@@YAHAEBUImRect@@0M@Z";
CalcRoundingFlagsForRectInRect :: (r_in: ImRect, r_outer: ImRect, threshold: float) -> ImDrawFlags #no_context {
    return CalcRoundingFlagsForRectInRect(*r_in, *r_outer, threshold);
}

// Widgets: Text
TextEx :: (text: *u8, text_end: *u8 = null, flags: TextFlags = 0) -> void #foreign imgui "?TextEx@ImGui@@YAXPEBD0H@Z";
TextEx :: (text: string, flags: TextFlags = 0) #no_context {
    TextEx(text.data, text.data + text.count, flags);
}
TextAligned_CFormat :: (align_x: float, size_x: float, fmt: *u8, __args: ..Any) -> void #foreign imgui "?TextAligned@ImGui@@YAXMMPEBDZZ";
TextAligned :: (align_x: float, size_x: float, fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    TextAligned_CFormat(align_x, size_x, "%s", formatted_text.data);
} @PrintLike

// Widgets
ButtonEx :: (label: *u8, size_arg: *ImVec2, flags: ButtonFlags = .None) -> bool #foreign imgui "?ButtonEx@ImGui@@YA_NPEBDAEBUImVec2@@H@Z";
ButtonEx :: (label: *u8, size_arg: ImVec2 = ImVec2.{0, 0}, flags: ButtonFlags = .None) -> bool #no_context {
    return ButtonEx(label, *size_arg, flags);
}
ArrowButtonEx :: (str_id: *u8, dir: Dir, size_arg: ImVec2, flags: ButtonFlags = .None) -> bool #foreign imgui "?ArrowButtonEx@ImGui@@YA_NPEBDW4ImGuiDir@@UImVec2@@H@Z";
ImageButtonEx :: (id: ID, tex_ref: ImTextureRef, image_size: *ImVec2, uv0: *ImVec2, uv1: *ImVec2, bg_col: *ImVec4, tint_col: *ImVec4, flags: ButtonFlags = .None) -> bool #foreign imgui "?ImageButtonEx@ImGui@@YA_NIUImTextureRef@@AEBUImVec2@@11AEBUImVec4@@2H@Z";
ImageButtonEx :: (id: ID, tex_ref: ImTextureRef, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4, flags: ButtonFlags = .None) -> bool #no_context {
    return ImageButtonEx(id, tex_ref, *image_size, *uv0, *uv1, *bg_col, *tint_col, flags);
}
SeparatorEx :: (flags: SeparatorFlags, thickness: float = 1.0) -> void #foreign imgui "?SeparatorEx@ImGui@@YAXHM@Z";
SeparatorTextEx :: (id: ID, label: *u8, label_end: *u8, extra_width: float) -> void #foreign imgui "?SeparatorTextEx@ImGui@@YAXIPEBD0M@Z";
SeparatorTextEx :: (id: ID, label: string, extra_width: float) #no_context {
    SeparatorTextEx(id, label.data, label.data + label.count, extra_width);
}
CheckboxFlags :: (label: *u8, flags: *ImS64, flags_value: ImS64) -> bool #foreign imgui "?CheckboxFlags@ImGui@@YA_NPEBDPEA_J_J@Z";
CheckboxFlags :: (label: *u8, flags: *ImU64, flags_value: ImU64) -> bool #foreign imgui "?CheckboxFlags@ImGui@@YA_NPEBDPEA_K_K@Z";

// Widgets: Window Decorations
CloseButton :: (id: ID, pos: *ImVec2) -> bool #foreign imgui "?CloseButton@ImGui@@YA_NIAEBUImVec2@@@Z";
CloseButton :: (id: ID, pos: ImVec2) -> bool #no_context {
    return CloseButton(id, *pos);
}
CollapseButton :: (id: ID, pos: *ImVec2, dock_node: *DockNode) -> bool #foreign imgui "?CollapseButton@ImGui@@YA_NIAEBUImVec2@@PEAUImGuiDockNode@@@Z";
CollapseButton :: (id: ID, pos: ImVec2, dock_node: *DockNode) -> bool #no_context {
    return CollapseButton(id, *pos, dock_node);
}
Scrollbar :: (axis: Axis) -> void #foreign imgui "?Scrollbar@ImGui@@YAXW4ImGuiAxis@@@Z";
ScrollbarEx :: (bb: *ImRect, id: ID, axis: Axis, p_scroll_v: *ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags = .None) -> bool #foreign imgui "?ScrollbarEx@ImGui@@YA_NAEBUImRect@@IW4ImGuiAxis@@PEA_J_J3H@Z";
ScrollbarEx :: (bb: ImRect, id: ID, axis: Axis, p_scroll_v: *ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags = .None) -> bool #no_context {
    return ScrollbarEx(*bb, id, axis, p_scroll_v, avail_v, contents_v, draw_rounding_flags);
}
GetWindowScrollbarRect :: (window: *Window, axis: Axis) -> ImRect #cpp_return_type_is_non_pod #foreign imgui "?GetWindowScrollbarRect@ImGui@@YA?AUImRect@@PEAUImGuiWindow@@W4ImGuiAxis@@@Z";
GetWindowScrollbarID :: (window: *Window, axis: Axis) -> ID #foreign imgui "?GetWindowScrollbarID@ImGui@@YAIPEAUImGuiWindow@@W4ImGuiAxis@@@Z";
GetWindowResizeCornerID :: (window: *Window, n: s32) -> ID #foreign imgui "?GetWindowResizeCornerID@ImGui@@YAIPEAUImGuiWindow@@H@Z";
GetWindowResizeBorderID :: (window: *Window, dir: Dir) -> ID #foreign imgui "?GetWindowResizeBorderID@ImGui@@YAIPEAUImGuiWindow@@W4ImGuiDir@@@Z";
ExtendHitBoxWhenNearViewportEdge :: (window: *Window, bb: *ImRect, threshold: float, axis: Axis) -> void #foreign imgui "?ExtendHitBoxWhenNearViewportEdge@ImGui@@YAXPEAUImGuiWindow@@PEAUImRect@@MW4ImGuiAxis@@@Z";

// Widgets low-level behaviors
ButtonBehavior :: (bb: *ImRect, id: ID, out_hovered: *bool, out_held: *bool, flags: ButtonFlags = .None) -> bool #foreign imgui "?ButtonBehavior@ImGui@@YA_NAEBUImRect@@IPEA_N1H@Z";
ButtonBehavior :: (bb: ImRect, id: ID, out_hovered: *bool, out_held: *bool, flags: ButtonFlags = .None) -> bool #no_context {
    return ButtonBehavior(*bb, id, out_hovered, out_held, flags);
}
DragBehavior :: (id: ID, data_type: DataType, p_v: *void, v_speed: float, p_min: *void, p_max: *void, format: *u8, flags: SliderFlags) -> bool #foreign imgui "?DragBehavior@ImGui@@YA_NIHPEAXMPEBX1PEBDH@Z";
SliderBehavior :: (bb: *ImRect, id: ID, data_type: DataType, p_v: *void, p_min: *void, p_max: *void, format: *u8, flags: SliderFlags, out_grab_bb: *ImRect) -> bool #foreign imgui "?SliderBehavior@ImGui@@YA_NAEBUImRect@@IHPEAXPEBX2PEBDHPEAU2@@Z";
SliderBehavior :: (bb: ImRect, id: ID, data_type: DataType, p_v: *void, p_min: *void, p_max: *void, format: *u8, flags: SliderFlags, out_grab_bb: *ImRect) -> bool #no_context {
    return SliderBehavior(*bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb);
}
SplitterBehavior :: (bb: *ImRect, id: ID, axis: Axis, size1: *float, size2: *float, min_size1: float, min_size2: float, hover_extend: float = 0.0, hover_visibility_delay: float = 0.0, bg_col: ImU32 = 0) -> bool #foreign imgui "?SplitterBehavior@ImGui@@YA_NAEBUImRect@@IW4ImGuiAxis@@PEAM2MMMMI@Z";
SplitterBehavior :: (bb: ImRect, id: ID, axis: Axis, size1: *float, size2: *float, min_size1: float, min_size2: float, hover_extend: float = 0.0, hover_visibility_delay: float = 0.0, bg_col: ImU32 = 0) -> bool #no_context {
    return SplitterBehavior(*bb, id, axis, size1, size2, min_size1, min_size2, hover_extend, hover_visibility_delay, bg_col);
}

// Widgets: Tree Nodes
TreeNodeBehavior :: (id: ID, flags: TreeNodeFlags, label: *u8, label_end: *u8 = null) -> bool #foreign imgui "?TreeNodeBehavior@ImGui@@YA_NIHPEBD0@Z";
TreeNodeBehavior :: (id: ID, flags: TreeNodeFlags, label: string) -> bool #no_context {
    return TreeNodeBehavior(id, flags, label.data, label.data + label.count);
}
TreeNodeDrawLineToChildNode :: (target_pos: *ImVec2) -> void #foreign imgui "?TreeNodeDrawLineToChildNode@ImGui@@YAXAEBUImVec2@@@Z";
TreeNodeDrawLineToChildNode :: (target_pos: ImVec2) #no_context {
    TreeNodeDrawLineToChildNode(*target_pos);
}
TreeNodeDrawLineToTreePop :: (data: *TreeNodeStackData) -> void #foreign imgui "?TreeNodeDrawLineToTreePop@ImGui@@YAXPEBUImGuiTreeNodeStackData@@@Z";
TreePushOverrideID :: (id: ID) -> void #foreign imgui "?TreePushOverrideID@ImGui@@YAXI@Z";
TreeNodeSetOpen :: (storage_id: ID, open: bool) -> void #foreign imgui "?TreeNodeSetOpen@ImGui@@YAXI_N@Z";
TreeNodeUpdateNextOpen :: (storage_id: ID, flags: TreeNodeFlags) -> bool #foreign imgui "?TreeNodeUpdateNextOpen@ImGui@@YA_NIH@Z";

// Data type helpers
DataTypeGetInfo :: (data_type: DataType) -> *DataTypeInfo #foreign imgui "?DataTypeGetInfo@ImGui@@YAPEBUImGuiDataTypeInfo@@H@Z";
DataTypeFormatString :: (buf: *u8, buf_size: s32, data_type: DataType, p_data: *void, format: *u8) -> s32 #foreign imgui "?DataTypeFormatString@ImGui@@YAHPEADHHPEBXPEBD@Z";
DataTypeApplyOp :: (data_type: DataType, op: s32, output: *void, arg_1: *void, arg_2: *void) -> void #foreign imgui "?DataTypeApplyOp@ImGui@@YAXHHPEAXPEBX1@Z";
DataTypeApplyFromText :: (buf: *u8, data_type: DataType, p_data: *void, format: *u8, p_data_when_empty: *void = null) -> bool #foreign imgui "?DataTypeApplyFromText@ImGui@@YA_NPEBDHPEAX01@Z";
DataTypeCompare :: (data_type: DataType, arg_1: *void, arg_2: *void) -> s32 #foreign imgui "?DataTypeCompare@ImGui@@YAHHPEBX0@Z";
DataTypeClamp :: (data_type: DataType, p_data: *void, p_min: *void, p_max: *void) -> bool #foreign imgui "?DataTypeClamp@ImGui@@YA_NHPEAXPEBX1@Z";
DataTypeIsZero :: (data_type: DataType, p_data: *void) -> bool #foreign imgui "?DataTypeIsZero@ImGui@@YA_NHPEBX@Z";

// InputText
InputTextEx :: (label: *u8, hint: *u8, buf: *u8, buf_size: s32, size_arg: *ImVec2, flags: InputTextFlags, callback: InputTextCallback = null, user_data: *void = null) -> bool #foreign imgui "?InputTextEx@ImGui@@YA_NPEBD0PEADHAEBUImVec2@@HP6AHPEAUImGuiInputTextCallbackData@@@ZPEAX@Z";
InputTextEx :: (label: *u8, hint: *u8, buf: *u8, buf_size: s32, size_arg: ImVec2, flags: InputTextFlags, callback: InputTextCallback = null, user_data: *void = null) -> bool #no_context {
    return InputTextEx(label, hint, buf, buf_size, *size_arg, flags, callback, user_data);
}
InputTextDeactivateHook :: (id: ID) -> void #foreign imgui "?InputTextDeactivateHook@ImGui@@YAXI@Z";
TempInputText :: (bb: *ImRect, id: ID, label: *u8, buf: *u8, buf_size: u64, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #foreign imgui "?TempInputText@ImGui@@YA_NAEBUImRect@@IPEBDPEAD_KHP6AHPEAUImGuiInputTextCallbackData@@@ZPEAX@Z";
TempInputText :: (bb: ImRect, id: ID, label: *u8, buf: *u8, buf_size: u64, flags: InputTextFlags = .None, callback: InputTextCallback = null, user_data: *void = null) -> bool #no_context {
    return TempInputText(*bb, id, label, buf, buf_size, flags, callback, user_data);
}
TempInputScalar :: (bb: *ImRect, id: ID, label: *u8, data_type: DataType, p_data: *void, format: *u8, p_clamp_min: *void = null, p_clamp_max: *void = null) -> bool #foreign imgui "?TempInputScalar@ImGui@@YA_NAEBUImRect@@IPEBDHPEAX1PEBX3@Z";
TempInputScalar :: (bb: ImRect, id: ID, label: *u8, data_type: DataType, p_data: *void, format: *u8, p_clamp_min: *void = null, p_clamp_max: *void = null) -> bool #no_context {
    return TempInputScalar(*bb, id, label, data_type, p_data, format, p_clamp_min, p_clamp_max);
}

SetNextItemRefVal :: (data_type: DataType, p_data: *void) -> void #foreign imgui "?SetNextItemRefVal@ImGui@@YAXHPEAX@Z";

// Color
ColorTooltip :: (text: *u8, col: *float, flags: ColorEditFlags) -> void #foreign imgui "?ColorTooltip@ImGui@@YAXPEBDPEBMH@Z";
ColorEditOptionsPopup :: (col: *float, flags: ColorEditFlags) -> void #foreign imgui "?ColorEditOptionsPopup@ImGui@@YAXPEBMH@Z";
ColorPickerOptionsPopup :: (ref_col: *float, flags: ColorEditFlags) -> void #foreign imgui "?ColorPickerOptionsPopup@ImGui@@YAXPEBMH@Z";

// Plot
PlotEx :: (plot_type: PlotType, label: *u8, values_getter: #type (data: *void, idx: s32) -> float #c_call, data: *void, values_count: s32, values_offset: s32, overlay_text: *u8, scale_min: float, scale_max: float, size_arg: *ImVec2) -> s32 #foreign imgui "?PlotEx@ImGui@@YAHW4ImGuiPlotType@@PEBDP6AMPEAXH@Z2HH1MMAEBUImVec2@@@Z";
PlotEx :: (plot_type: PlotType, label: *u8, values_getter: #type (data: *void, idx: s32) -> float #c_call, data: *void, values_count: s32, values_offset: s32, overlay_text: *u8, scale_min: float, scale_max: float, size_arg: ImVec2) -> s32 #no_context {
    return PlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, *size_arg);
}

// Shade functions (write over already created vertices)
ShadeVertsLinearColorGradientKeepAlpha :: (draw_list: *ImDrawList, vert_start_idx: s32, vert_end_idx: s32, gradient_p0: ImVec2, gradient_p1: ImVec2, col0: ImU32, col1: ImU32) -> void #foreign imgui "?ShadeVertsLinearColorGradientKeepAlpha@ImGui@@YAXPEAUImDrawList@@HHUImVec2@@1II@Z";
ShadeVertsLinearUV :: (draw_list: *ImDrawList, vert_start_idx: s32, vert_end_idx: s32, a: *ImVec2, b: *ImVec2, uv_a: *ImVec2, uv_b: *ImVec2, clamp: bool) -> void #foreign imgui "?ShadeVertsLinearUV@ImGui@@YAXPEAUImDrawList@@HHAEBUImVec2@@111_N@Z";
ShadeVertsLinearUV :: (draw_list: *ImDrawList, vert_start_idx: s32, vert_end_idx: s32, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, clamp: bool) #no_context {
    ShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, *a, *b, *uv_a, *uv_b, clamp);
}
ShadeVertsTransformPos :: (draw_list: *ImDrawList, vert_start_idx: s32, vert_end_idx: s32, pivot_in: *ImVec2, cos_a: float, sin_a: float, pivot_out: *ImVec2) -> void #foreign imgui "?ShadeVertsTransformPos@ImGui@@YAXPEAUImDrawList@@HHAEBUImVec2@@MM1@Z";
ShadeVertsTransformPos :: (draw_list: *ImDrawList, vert_start_idx: s32, vert_end_idx: s32, pivot_in: ImVec2, cos_a: float, sin_a: float, pivot_out: ImVec2) #no_context {
    ShadeVertsTransformPos(draw_list, vert_start_idx, vert_end_idx, *pivot_in, cos_a, sin_a, *pivot_out);
}

// Garbage collection
GcCompactTransientMiscBuffers :: () -> void #foreign imgui "?GcCompactTransientMiscBuffers@ImGui@@YAXXZ";
GcCompactTransientWindowBuffers :: (window: *Window) -> void #foreign imgui "?GcCompactTransientWindowBuffers@ImGui@@YAXPEAUImGuiWindow@@@Z";
GcAwakeTransientWindowBuffers :: (window: *Window) -> void #foreign imgui "?GcAwakeTransientWindowBuffers@ImGui@@YAXPEAUImGuiWindow@@@Z";

// Error handling, State Recovery
ErrorLog :: (msg: *u8) -> bool #foreign imgui "?ErrorLog@ImGui@@YA_NPEBD@Z";
ErrorRecoveryStoreState :: (state_out: *ErrorRecoveryState) -> void #foreign imgui "?ErrorRecoveryStoreState@ImGui@@YAXPEAUImGuiErrorRecoveryState@@@Z";
ErrorRecoveryTryToRecoverState :: (state_in: *ErrorRecoveryState) -> void #foreign imgui "?ErrorRecoveryTryToRecoverState@ImGui@@YAXPEBUImGuiErrorRecoveryState@@@Z";
ErrorRecoveryTryToRecoverWindowState :: (state_in: *ErrorRecoveryState) -> void #foreign imgui "?ErrorRecoveryTryToRecoverWindowState@ImGui@@YAXPEBUImGuiErrorRecoveryState@@@Z";
ErrorCheckUsingSetCursorPosToExtendParentBoundaries :: () -> void #foreign imgui "?ErrorCheckUsingSetCursorPosToExtendParentBoundaries@ImGui@@YAXXZ";
ErrorCheckEndFrameFinalizeErrorTooltip :: () -> void #foreign imgui "?ErrorCheckEndFrameFinalizeErrorTooltip@ImGui@@YAXXZ";
BeginErrorTooltip :: () -> bool #foreign imgui "?BeginErrorTooltip@ImGui@@YA_NXZ";
EndErrorTooltip :: () -> void #foreign imgui "?EndErrorTooltip@ImGui@@YAXXZ";

// Demo Doc Marker for e.g. imgui_explorer
DemoMarker :: (file: *u8, line: s32, section: *u8) -> void #foreign imgui "?DemoMarker@ImGui@@YAXPEBDH0@Z";

// Debug Tools
DebugAllocHook :: (info: *DebugAllocInfo, frame_count: s32, ptr: *void, size: u64) -> void #foreign imgui "?DebugAllocHook@ImGui@@YAXPEAUImGuiDebugAllocInfo@@HPEAX_K@Z";
DebugDrawCursorPos :: (col: ImU32 = 4278190335) -> void #foreign imgui "?DebugDrawCursorPos@ImGui@@YAXI@Z";
DebugDrawLineExtents :: (col: ImU32 = 4278190335) -> void #foreign imgui "?DebugDrawLineExtents@ImGui@@YAXI@Z";
DebugDrawItemRect :: (col: ImU32 = 4278190335) -> void #foreign imgui "?DebugDrawItemRect@ImGui@@YAXI@Z";
DebugTextUnformattedWithLocateItem :: (line_begin: *u8, line_end: *u8) -> void #foreign imgui "?DebugTextUnformattedWithLocateItem@ImGui@@YAXPEBD0@Z";
DebugTextUnformattedWithLocateItem :: (line: string) #no_context {
    DebugTextUnformattedWithLocateItem(line.data, line.data + line.count);
}
DebugLocateItem :: (target_id: ID) -> void #foreign imgui "?DebugLocateItem@ImGui@@YAXI@Z";
DebugLocateItemOnHover :: (target_id: ID) -> void #foreign imgui "?DebugLocateItemOnHover@ImGui@@YAXI@Z";
DebugLocateItemResolveWithLastItem :: () -> void #foreign imgui "?DebugLocateItemResolveWithLastItem@ImGui@@YAXXZ";
DebugBreakClearData :: () -> void #foreign imgui "?DebugBreakClearData@ImGui@@YAXXZ";
DebugBreakButton :: (label: *u8, description_of_location: *u8) -> bool #foreign imgui "?DebugBreakButton@ImGui@@YA_NPEBD0@Z";
DebugBreakButtonTooltip :: (keyboard_only: bool, description_of_location: *u8) -> void #foreign imgui "?DebugBreakButtonTooltip@ImGui@@YAX_NPEBD@Z";
ShowFontAtlas :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ShowFontAtlas@ImGui@@YAXPEAUImFontAtlas@@@Z";
DebugTextureIDToU64 :: (tex_id: ImTextureID) -> ImU64 #foreign imgui "?DebugTextureIDToU64@ImGui@@YA_K_K@Z";
DebugHookIdInfo :: (id: ID, data_type: DataType, data_id: *void, data_id_end: *void) -> void #foreign imgui "?DebugHookIdInfo@ImGui@@YAXIHPEBX0@Z";
DebugNodeColumns :: (columns: *OldColumns) -> void #foreign imgui "?DebugNodeColumns@ImGui@@YAXPEAUImGuiOldColumns@@@Z";
DebugNodeDockNode :: (node: *DockNode, label: *u8) -> void #foreign imgui "?DebugNodeDockNode@ImGui@@YAXPEAUImGuiDockNode@@PEBD@Z";
DebugNodeDrawList :: (window: *Window, viewport: *ViewportP, draw_list: *ImDrawList, label: *u8) -> void #foreign imgui "?DebugNodeDrawList@ImGui@@YAXPEAUImGuiWindow@@PEAUImGuiViewportP@@PEBUImDrawList@@PEBD@Z";
DebugNodeDrawCmdShowMeshAndBoundingBox :: (out_draw_list: *ImDrawList, draw_list: *ImDrawList, draw_cmd: *ImDrawCmd, show_mesh: bool, show_aabb: bool) -> void #foreign imgui "?DebugNodeDrawCmdShowMeshAndBoundingBox@ImGui@@YAXPEAUImDrawList@@PEBU2@PEBUImDrawCmd@@_N3@Z";
DebugNodeFont :: (font: *ImFont) -> void #foreign imgui "?DebugNodeFont@ImGui@@YAXPEAUImFont@@@Z";
DebugNodeFontGlyphsForSrcMask :: (font: *ImFont, baked: *ImFontBaked, src_mask: s32) -> void #foreign imgui "?DebugNodeFontGlyphsForSrcMask@ImGui@@YAXPEAUImFont@@PEAUImFontBaked@@H@Z";
DebugNodeFontGlyph :: (font: *ImFont, glyph: *ImFontGlyph) -> void #foreign imgui "?DebugNodeFontGlyph@ImGui@@YAXPEAUImFont@@PEBUImFontGlyph@@@Z";
DebugNodeTexture :: (tex: *ImTextureData, int_id: s32, highlight_rect: *ImFontAtlasRect = null) -> void #foreign imgui "?DebugNodeTexture@ImGui@@YAXPEAUImTextureData@@HPEBUImFontAtlasRect@@@Z";
DebugNodeStorage :: (storage: *Storage, label: *u8) -> void #foreign imgui "?DebugNodeStorage@ImGui@@YAXPEAUImGuiStorage@@PEBD@Z";
DebugNodeTabBar :: (tab_bar: *TabBar, label: *u8) -> void #foreign imgui "?DebugNodeTabBar@ImGui@@YAXPEAUImGuiTabBar@@PEBD@Z";
DebugNodeTable :: (table: *Table) -> void #foreign imgui "?DebugNodeTable@ImGui@@YAXPEAUImGuiTable@@@Z";
DebugNodeTableSettings :: (settings: *TableSettings) -> void #foreign imgui "?DebugNodeTableSettings@ImGui@@YAXPEAUImGuiTableSettings@@@Z";
DebugNodeInputTextState :: (state: *InputTextState) -> void #foreign imgui "?DebugNodeInputTextState@ImGui@@YAXPEAUImGuiInputTextState@@@Z";
DebugNodeTypingSelectState :: (state: *TypingSelectState) -> void #foreign imgui "?DebugNodeTypingSelectState@ImGui@@YAXPEAUImGuiTypingSelectState@@@Z";
DebugNodeMultiSelectState :: (state: *MultiSelectState) -> void #foreign imgui "?DebugNodeMultiSelectState@ImGui@@YAXPEAUImGuiMultiSelectState@@@Z";
DebugNodeWindow :: (window: *Window, label: *u8) -> void #foreign imgui "?DebugNodeWindow@ImGui@@YAXPEAUImGuiWindow@@PEBD@Z";
DebugNodeWindowSettings :: (settings: *WindowSettings) -> void #foreign imgui "?DebugNodeWindowSettings@ImGui@@YAXPEAUImGuiWindowSettings@@@Z";
DebugNodeWindowsList :: (windows: *ImVector(*Window), label: *u8) -> void #foreign imgui "?DebugNodeWindowsList@ImGui@@YAXPEAU?$ImVector@PEAUImGuiWindow@@@@PEBD@Z";
DebugNodeWindowsListByBeginStackParent :: (windows: **Window, windows_size: s32, parent_in_begin_stack: *Window) -> void #foreign imgui "?DebugNodeWindowsListByBeginStackParent@ImGui@@YAXPEAPEAUImGuiWindow@@HPEAU2@@Z";
DebugNodeViewport :: (viewport: *ViewportP) -> void #foreign imgui "?DebugNodeViewport@ImGui@@YAXPEAUImGuiViewportP@@@Z";
DebugNodePlatformMonitor :: (monitor: *PlatformMonitor, label: *u8, idx: s32) -> void #foreign imgui "?DebugNodePlatformMonitor@ImGui@@YAXPEAUImGuiPlatformMonitor@@PEBDH@Z";
DebugRenderKeyboardPreview :: (draw_list: *ImDrawList) -> void #foreign imgui "?DebugRenderKeyboardPreview@ImGui@@YAXPEAUImDrawList@@@Z";
DebugRenderViewportThumbnail :: (draw_list: *ImDrawList, viewport: *ViewportP, bb: *ImRect) -> void #foreign imgui "?DebugRenderViewportThumbnail@ImGui@@YAXPEAUImDrawList@@PEAUImGuiViewportP@@AEBUImRect@@@Z";
DebugRenderViewportThumbnail :: (draw_list: *ImDrawList, viewport: *ViewportP, bb: ImRect) #no_context {
    DebugRenderViewportThumbnail(draw_list, viewport, *bb);
}

// Flags for ImGui::Begin()
// (Those are per-window flags. There are shared flags in ImGuiIO: io.ConfigWindowsResizeFromEdges and io.ConfigWindowsMoveFromTitleBarOnly)
WindowFlags :: enum_flags s32 {
    None                      :: 0x0;
    NoTitleBar                :: 0x1;
    NoResize                  :: 0x2;
    NoMove                    :: 0x4;
    NoScrollbar               :: 0x8;
    NoScrollWithMouse         :: 0x10;
    NoCollapse                :: 0x20;
    AlwaysAutoResize          :: 0x40;
    NoBackground              :: 0x80;
    NoSavedSettings           :: 0x100;
    NoMouseInputs             :: 0x200;
    MenuBar                   :: 0x400;
    HorizontalScrollbar       :: 0x800;
    NoFocusOnAppearing        :: 0x1000;
    NoBringToFrontOnFocus     :: 0x2000;
    AlwaysVerticalScrollbar   :: 0x4000;
    AlwaysHorizontalScrollbar :: 0x8000;
    NoNavInputs               :: 0x10000;
    NoNavFocus                :: 0x20000;
    UnsavedDocument           :: 0x40000;
    NoDocking                 :: 0x80000;
    NoNav                     :: 0x30000;
    NoDecoration              :: 0x2b;
    NoInputs                  :: 0x30200;

    DockNodeHost              :: 0x800000;
    ChildWindow               :: 0x1000000;
    Tooltip                   :: 0x2000000;
    Popup                     :: 0x4000000;
    Modal                     :: 0x8000000;
    ChildMenu                 :: 0x10000000;

    ImGuiWindowFlags_None                      :: None;
    ImGuiWindowFlags_NoTitleBar                :: NoTitleBar;
    ImGuiWindowFlags_NoResize                  :: NoResize;
    ImGuiWindowFlags_NoMove                    :: NoMove;
    ImGuiWindowFlags_NoScrollbar               :: NoScrollbar;
    ImGuiWindowFlags_NoScrollWithMouse         :: NoScrollWithMouse;
    ImGuiWindowFlags_NoCollapse                :: NoCollapse;
    ImGuiWindowFlags_AlwaysAutoResize          :: AlwaysAutoResize;
    ImGuiWindowFlags_NoBackground              :: NoBackground;
    ImGuiWindowFlags_NoSavedSettings           :: NoSavedSettings;
    ImGuiWindowFlags_NoMouseInputs             :: NoMouseInputs;
    ImGuiWindowFlags_MenuBar                   :: MenuBar;
    ImGuiWindowFlags_HorizontalScrollbar       :: HorizontalScrollbar;
    ImGuiWindowFlags_NoFocusOnAppearing        :: NoFocusOnAppearing;
    ImGuiWindowFlags_NoBringToFrontOnFocus     :: NoBringToFrontOnFocus;
    ImGuiWindowFlags_AlwaysVerticalScrollbar   :: AlwaysVerticalScrollbar;
    ImGuiWindowFlags_AlwaysHorizontalScrollbar :: AlwaysHorizontalScrollbar;
    ImGuiWindowFlags_NoNavInputs               :: NoNavInputs;
    ImGuiWindowFlags_NoNavFocus                :: NoNavFocus;
    ImGuiWindowFlags_UnsavedDocument           :: UnsavedDocument;
    ImGuiWindowFlags_NoDocking                 :: NoDocking;
    ImGuiWindowFlags_NoNav                     :: NoNav;
    ImGuiWindowFlags_NoDecoration              :: NoDecoration;
    ImGuiWindowFlags_NoInputs                  :: NoInputs;

    ImGuiWindowFlags_DockNodeHost              :: DockNodeHost;
    ImGuiWindowFlags_ChildWindow               :: ChildWindow;
    ImGuiWindowFlags_Tooltip                   :: Tooltip;
    ImGuiWindowFlags_Popup                     :: Popup;
    ImGuiWindowFlags_Modal                     :: Modal;
    ImGuiWindowFlags_ChildMenu                 :: ChildMenu;
}

// Flags for ImGui::BeginChild()
// (Legacy: bit 0 must always correspond to ImGuiChildFlags_Borders to be backward compatible with old API using 'bool border = false'.)
// About using AutoResizeX/AutoResizeY flags:
// - May be combined with SetNextWindowSizeConstraints() to set a min/max size for each axis (see "Demo->Child->Auto-resize with Constraints").
// - Size measurement for a given axis is only performed when the child window is within visible boundaries, or is just appearing.
//   - This allows BeginChild() to return false when not within boundaries (e.g. when scrolling), which is more optimal. BUT it won't update its auto-size while clipped.
//     While not perfect, it is a better default behavior as the always-on performance gain is more valuable than the occasional "resizing after becoming visible again" glitch.
//   - You may also use ImGuiChildFlags_AlwaysAutoResize to force an update even when child window is not in view.
//     HOWEVER PLEASE UNDERSTAND THAT DOING SO WILL PREVENT BeginChild() FROM EVER RETURNING FALSE, disabling benefits of coarse clipping.
ChildFlags :: enum_flags s32 {
    None                   :: 0x0;
    Borders                :: 0x1;
    AlwaysUseWindowPadding :: 0x2;
    ResizeX                :: 0x4;
    ResizeY                :: 0x8;
    AutoResizeX            :: 0x10;
    AutoResizeY            :: 0x20;
    AlwaysAutoResize       :: 0x40;
    FrameStyle             :: 0x80;
    NavFlattened           :: 0x100;

    ImGuiChildFlags_None                   :: None;
    ImGuiChildFlags_Borders                :: Borders;
    ImGuiChildFlags_AlwaysUseWindowPadding :: AlwaysUseWindowPadding;
    ImGuiChildFlags_ResizeX                :: ResizeX;
    ImGuiChildFlags_ResizeY                :: ResizeY;
    ImGuiChildFlags_AutoResizeX            :: AutoResizeX;
    ImGuiChildFlags_AutoResizeY            :: AutoResizeY;
    ImGuiChildFlags_AlwaysAutoResize       :: AlwaysAutoResize;
    ImGuiChildFlags_FrameStyle             :: FrameStyle;
    ImGuiChildFlags_NavFlattened           :: NavFlattened;
}

// Flags for ImGui::PushItemFlag()
// (Those are shared by all submitted items)
ItemFlags :: enum_flags s32 {
    None              :: 0x0;
    NoTabStop         :: 0x1;
    NoNav             :: 0x2;
    NoNavDefaultFocus :: 0x4;
    ButtonRepeat      :: 0x8;
    AutoClosePopups   :: 0x10;
    AllowDuplicateId  :: 0x20;
    Disabled          :: 0x40;

    ImGuiItemFlags_None              :: None;
    ImGuiItemFlags_NoTabStop         :: NoTabStop;
    ImGuiItemFlags_NoNav             :: NoNav;
    ImGuiItemFlags_NoNavDefaultFocus :: NoNavDefaultFocus;
    ImGuiItemFlags_ButtonRepeat      :: ButtonRepeat;
    ImGuiItemFlags_AutoClosePopups   :: AutoClosePopups;
    ImGuiItemFlags_AllowDuplicateId  :: AllowDuplicateId;
    ImGuiItemFlags_Disabled          :: Disabled;
}

// Flags for ImGui::InputText()
// (Those are per-item flags. There are shared flags in ImGuiIO: io.ConfigInputTextCursorBlink and io.ConfigInputTextEnterKeepActive)
InputTextFlags :: enum_flags s32 {
    None                :: 0x0;
    CharsDecimal        :: 0x1;
    CharsHexadecimal    :: 0x2;
    CharsScientific     :: 0x4;
    CharsUppercase      :: 0x8;
    CharsNoBlank        :: 0x10;

    AllowTabInput       :: 0x20;
    EnterReturnsTrue    :: 0x40;
    EscapeClearsAll     :: 0x80;
    CtrlEnterForNewLine :: 0x100;

    ReadOnly            :: 0x200;
    Password            :: 0x400;
    AlwaysOverwrite     :: 0x800;
    AutoSelectAll       :: 0x1000;
    ParseEmptyRefVal    :: 0x2000;
    DisplayEmptyRefVal  :: 0x4000;
    NoHorizontalScroll  :: 0x8000;
    NoUndoRedo          :: 0x10000;

    ElideLeft           :: 0x20000;

    CallbackCompletion  :: 0x40000;
    CallbackHistory     :: 0x80000;
    CallbackAlways      :: 0x100000;
    CallbackCharFilter  :: 0x200000;
    CallbackResize      :: 0x400000;
    CallbackEdit        :: 0x800000;

    WordWrap            :: 0x1000000;

    ImGuiInputTextFlags_None                :: None;
    ImGuiInputTextFlags_CharsDecimal        :: CharsDecimal;
    ImGuiInputTextFlags_CharsHexadecimal    :: CharsHexadecimal;
    ImGuiInputTextFlags_CharsScientific     :: CharsScientific;
    ImGuiInputTextFlags_CharsUppercase      :: CharsUppercase;
    ImGuiInputTextFlags_CharsNoBlank        :: CharsNoBlank;

    ImGuiInputTextFlags_AllowTabInput       :: AllowTabInput;
    ImGuiInputTextFlags_EnterReturnsTrue    :: EnterReturnsTrue;
    ImGuiInputTextFlags_EscapeClearsAll     :: EscapeClearsAll;
    ImGuiInputTextFlags_CtrlEnterForNewLine :: CtrlEnterForNewLine;

    ImGuiInputTextFlags_ReadOnly            :: ReadOnly;
    ImGuiInputTextFlags_Password            :: Password;
    ImGuiInputTextFlags_AlwaysOverwrite     :: AlwaysOverwrite;
    ImGuiInputTextFlags_AutoSelectAll       :: AutoSelectAll;
    ImGuiInputTextFlags_ParseEmptyRefVal    :: ParseEmptyRefVal;
    ImGuiInputTextFlags_DisplayEmptyRefVal  :: DisplayEmptyRefVal;
    ImGuiInputTextFlags_NoHorizontalScroll  :: NoHorizontalScroll;
    ImGuiInputTextFlags_NoUndoRedo          :: NoUndoRedo;

    ImGuiInputTextFlags_ElideLeft           :: ElideLeft;

    ImGuiInputTextFlags_CallbackCompletion  :: CallbackCompletion;
    ImGuiInputTextFlags_CallbackHistory     :: CallbackHistory;
    ImGuiInputTextFlags_CallbackAlways      :: CallbackAlways;
    ImGuiInputTextFlags_CallbackCharFilter  :: CallbackCharFilter;
    ImGuiInputTextFlags_CallbackResize      :: CallbackResize;
    ImGuiInputTextFlags_CallbackEdit        :: CallbackEdit;

    ImGuiInputTextFlags_WordWrap            :: WordWrap;
}

// Flags for ImGui::TreeNodeEx(), ImGui::CollapsingHeader*()
TreeNodeFlags :: enum_flags s32 {
    None                 :: 0x0;
    Selected             :: 0x1;
    Framed               :: 0x2;
    AllowOverlap         :: 0x4;
    NoTreePushOnOpen     :: 0x8;
    NoAutoOpenOnLog      :: 0x10;
    DefaultOpen          :: 0x20;
    OpenOnDoubleClick    :: 0x40;
    OpenOnArrow          :: 0x80;
    Leaf                 :: 0x100;
    Bullet               :: 0x200;
    FramePadding         :: 0x400;
    SpanAvailWidth       :: 0x800;
    SpanFullWidth        :: 0x1000;
    SpanLabelWidth       :: 0x2000;
    SpanAllColumns       :: 0x4000;
    LabelSpanAllColumns  :: 0x8000;

    NavLeftJumpsToParent :: 0x20000;
    CollapsingHeader     :: 0x1a;

    DrawLinesNone        :: 0x40000;
    DrawLinesFull        :: 0x80000;
    DrawLinesToNodes     :: 0x100000;

    NavLeftJumpsBackHere :: 0x20000;
    SpanTextWidth        :: 0x2000;

    ImGuiTreeNodeFlags_None                 :: None;
    ImGuiTreeNodeFlags_Selected             :: Selected;
    ImGuiTreeNodeFlags_Framed               :: Framed;
    ImGuiTreeNodeFlags_AllowOverlap         :: AllowOverlap;
    ImGuiTreeNodeFlags_NoTreePushOnOpen     :: NoTreePushOnOpen;
    ImGuiTreeNodeFlags_NoAutoOpenOnLog      :: NoAutoOpenOnLog;
    ImGuiTreeNodeFlags_DefaultOpen          :: DefaultOpen;
    ImGuiTreeNodeFlags_OpenOnDoubleClick    :: OpenOnDoubleClick;
    ImGuiTreeNodeFlags_OpenOnArrow          :: OpenOnArrow;
    ImGuiTreeNodeFlags_Leaf                 :: Leaf;
    ImGuiTreeNodeFlags_Bullet               :: Bullet;
    ImGuiTreeNodeFlags_FramePadding         :: FramePadding;
    ImGuiTreeNodeFlags_SpanAvailWidth       :: SpanAvailWidth;
    ImGuiTreeNodeFlags_SpanFullWidth        :: SpanFullWidth;
    ImGuiTreeNodeFlags_SpanLabelWidth       :: SpanLabelWidth;
    ImGuiTreeNodeFlags_SpanAllColumns       :: SpanAllColumns;
    ImGuiTreeNodeFlags_LabelSpanAllColumns  :: LabelSpanAllColumns;

    ImGuiTreeNodeFlags_NavLeftJumpsToParent :: NavLeftJumpsToParent;
    ImGuiTreeNodeFlags_CollapsingHeader     :: CollapsingHeader;

    ImGuiTreeNodeFlags_DrawLinesNone        :: DrawLinesNone;
    ImGuiTreeNodeFlags_DrawLinesFull        :: DrawLinesFull;
    ImGuiTreeNodeFlags_DrawLinesToNodes     :: DrawLinesToNodes;

    ImGuiTreeNodeFlags_NavLeftJumpsBackHere :: NavLeftJumpsBackHere;
    ImGuiTreeNodeFlags_SpanTextWidth        :: SpanTextWidth;
}

// Flags for OpenPopup*(), BeginPopupContext*(), IsPopupOpen() functions.
// - IMPORTANT: If you ever used the left mouse button with BeginPopupContextXXX() helpers before 1.92.6: Read "API BREAKING CHANGES" 2026/01/07 (1.92.6) entry in imgui.cpp or GitHub topic #9157.
// - Multiple buttons currently cannot be combined/or-ed in those functions (we could allow it later).
PopupFlags :: enum_flags s32 {
    None                    :: 0x0;
    MouseButtonLeft         :: 0x4;
    MouseButtonRight        :: 0x8;
    MouseButtonMiddle       :: 0xc;
    NoReopen                :: 0x20;

    NoOpenOverExistingPopup :: 0x80;
    NoOpenOverItems         :: 0x100;
    AnyPopupId              :: 0x400;
    AnyPopupLevel           :: 0x800;
    AnyPopup                :: 0xc00;
    MouseButtonShift_       :: 0x2;
    MouseButtonMask_        :: 0xc;
    InvalidMask_            :: 0x3;

    ImGuiPopupFlags_None                    :: None;
    ImGuiPopupFlags_MouseButtonLeft         :: MouseButtonLeft;
    ImGuiPopupFlags_MouseButtonRight        :: MouseButtonRight;
    ImGuiPopupFlags_MouseButtonMiddle       :: MouseButtonMiddle;
    ImGuiPopupFlags_NoReopen                :: NoReopen;

    ImGuiPopupFlags_NoOpenOverExistingPopup :: NoOpenOverExistingPopup;
    ImGuiPopupFlags_NoOpenOverItems         :: NoOpenOverItems;
    ImGuiPopupFlags_AnyPopupId              :: AnyPopupId;
    ImGuiPopupFlags_AnyPopupLevel           :: AnyPopupLevel;
    ImGuiPopupFlags_AnyPopup                :: AnyPopup;
    ImGuiPopupFlags_MouseButtonShift_       :: MouseButtonShift_;
    ImGuiPopupFlags_MouseButtonMask_        :: MouseButtonMask_;
    ImGuiPopupFlags_InvalidMask_            :: InvalidMask_;
}

// Flags for ImGui::Selectable()
SelectableFlags :: enum_flags s32 {
    None              :: 0x0;
    NoAutoClosePopups :: 0x1;
    SpanAllColumns    :: 0x2;
    AllowDoubleClick  :: 0x4;
    Disabled          :: 0x8;
    AllowOverlap      :: 0x10;
    Highlight         :: 0x20;
    SelectOnNav       :: 0x40;

    DontClosePopups   :: 0x1;

    ImGuiSelectableFlags_None              :: None;
    ImGuiSelectableFlags_NoAutoClosePopups :: NoAutoClosePopups;
    ImGuiSelectableFlags_SpanAllColumns    :: SpanAllColumns;
    ImGuiSelectableFlags_AllowDoubleClick  :: AllowDoubleClick;
    ImGuiSelectableFlags_Disabled          :: Disabled;
    ImGuiSelectableFlags_AllowOverlap      :: AllowOverlap;
    ImGuiSelectableFlags_Highlight         :: Highlight;
    ImGuiSelectableFlags_SelectOnNav       :: SelectOnNav;

    ImGuiSelectableFlags_DontClosePopups   :: DontClosePopups;
}

// Flags for ImGui::BeginCombo()
ComboFlags :: enum_flags s32 {
    None            :: 0x0;
    PopupAlignLeft  :: 0x1;
    HeightSmall     :: 0x2;
    HeightRegular   :: 0x4;
    HeightLarge     :: 0x8;
    HeightLargest   :: 0x10;
    NoArrowButton   :: 0x20;
    NoPreview       :: 0x40;
    WidthFitPreview :: 0x80;
    HeightMask_     :: 0x1e;

    ImGuiComboFlags_None            :: None;
    ImGuiComboFlags_PopupAlignLeft  :: PopupAlignLeft;
    ImGuiComboFlags_HeightSmall     :: HeightSmall;
    ImGuiComboFlags_HeightRegular   :: HeightRegular;
    ImGuiComboFlags_HeightLarge     :: HeightLarge;
    ImGuiComboFlags_HeightLargest   :: HeightLargest;
    ImGuiComboFlags_NoArrowButton   :: NoArrowButton;
    ImGuiComboFlags_NoPreview       :: NoPreview;
    ImGuiComboFlags_WidthFitPreview :: WidthFitPreview;
    ImGuiComboFlags_HeightMask_     :: HeightMask_;
}

// Flags for ImGui::BeginTabBar()
TabBarFlags :: enum_flags s32 {
    None                         :: 0x0;
    Reorderable                  :: 0x1;
    AutoSelectNewTabs            :: 0x2;
    TabListPopupButton           :: 0x4;
    NoCloseWithMiddleMouseButton :: 0x8;
    NoTabListScrollingButtons    :: 0x10;
    NoTooltip                    :: 0x20;
    DrawSelectedOverline         :: 0x40;

    FittingPolicyMixed           :: 0x80;
    FittingPolicyShrink          :: 0x100;
    FittingPolicyScroll          :: 0x200;
    FittingPolicyMask_           :: 0x380;
    FittingPolicyDefault_        :: 0x80;

    FittingPolicyResizeDown      :: 0x100;

    ImGuiTabBarFlags_None                         :: None;
    ImGuiTabBarFlags_Reorderable                  :: Reorderable;
    ImGuiTabBarFlags_AutoSelectNewTabs            :: AutoSelectNewTabs;
    ImGuiTabBarFlags_TabListPopupButton           :: TabListPopupButton;
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton :: NoCloseWithMiddleMouseButton;
    ImGuiTabBarFlags_NoTabListScrollingButtons    :: NoTabListScrollingButtons;
    ImGuiTabBarFlags_NoTooltip                    :: NoTooltip;
    ImGuiTabBarFlags_DrawSelectedOverline         :: DrawSelectedOverline;

    ImGuiTabBarFlags_FittingPolicyMixed           :: FittingPolicyMixed;
    ImGuiTabBarFlags_FittingPolicyShrink          :: FittingPolicyShrink;
    ImGuiTabBarFlags_FittingPolicyScroll          :: FittingPolicyScroll;
    ImGuiTabBarFlags_FittingPolicyMask_           :: FittingPolicyMask_;
    ImGuiTabBarFlags_FittingPolicyDefault_        :: FittingPolicyDefault_;

    ImGuiTabBarFlags_FittingPolicyResizeDown      :: FittingPolicyResizeDown;
}

// Flags for ImGui::BeginTabItem()
TabItemFlags :: enum_flags s32 {
    None                         :: 0x0;
    UnsavedDocument              :: 0x1;
    SetSelected                  :: 0x2;
    NoCloseWithMiddleMouseButton :: 0x4;
    NoPushId                     :: 0x8;
    NoTooltip                    :: 0x10;
    NoReorder                    :: 0x20;
    Leading                      :: 0x40;
    Trailing                     :: 0x80;
    NoAssumedClosure             :: 0x100;

    ImGuiTabItemFlags_None                         :: None;
    ImGuiTabItemFlags_UnsavedDocument              :: UnsavedDocument;
    ImGuiTabItemFlags_SetSelected                  :: SetSelected;
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton :: NoCloseWithMiddleMouseButton;
    ImGuiTabItemFlags_NoPushId                     :: NoPushId;
    ImGuiTabItemFlags_NoTooltip                    :: NoTooltip;
    ImGuiTabItemFlags_NoReorder                    :: NoReorder;
    ImGuiTabItemFlags_Leading                      :: Leading;
    ImGuiTabItemFlags_Trailing                     :: Trailing;
    ImGuiTabItemFlags_NoAssumedClosure             :: NoAssumedClosure;
}

// Flags for ImGui::IsWindowFocused()
FocusedFlags :: enum_flags s32 {
    None                :: 0x0;
    ChildWindows        :: 0x1;
    RootWindow          :: 0x2;
    AnyWindow           :: 0x4;
    NoPopupHierarchy    :: 0x8;
    DockHierarchy       :: 0x10;
    RootAndChildWindows :: 0x3;

    ImGuiFocusedFlags_None                :: None;
    ImGuiFocusedFlags_ChildWindows        :: ChildWindows;
    ImGuiFocusedFlags_RootWindow          :: RootWindow;
    ImGuiFocusedFlags_AnyWindow           :: AnyWindow;
    ImGuiFocusedFlags_NoPopupHierarchy    :: NoPopupHierarchy;
    ImGuiFocusedFlags_DockHierarchy       :: DockHierarchy;
    ImGuiFocusedFlags_RootAndChildWindows :: RootAndChildWindows;
}

// Flags for ImGui::IsItemHovered(), ImGui::IsWindowHovered()
// Note: if you are trying to check whether your mouse should be dispatched to Dear ImGui or to your app, you should use 'io.WantCaptureMouse' instead! Please read the FAQ!
// Note: windows with the ImGuiWindowFlags_NoInputs flag are ignored by IsWindowHovered() calls.
HoveredFlags :: enum_flags s32 {
    None                         :: 0x0;
    ChildWindows                 :: 0x1;
    RootWindow                   :: 0x2;
    AnyWindow                    :: 0x4;
    NoPopupHierarchy             :: 0x8;
    DockHierarchy                :: 0x10;
    AllowWhenBlockedByPopup      :: 0x20;

    AllowWhenBlockedByActiveItem :: 0x80;
    AllowWhenOverlappedByItem    :: 0x100;
    AllowWhenOverlappedByWindow  :: 0x200;
    AllowWhenDisabled            :: 0x400;
    NoNavOverride                :: 0x800;
    AllowWhenOverlapped          :: 0x300;
    RectOnly                     :: 0x3a0;
    RootAndChildWindows          :: 0x3;

    ForTooltip                   :: 0x1000;

    Stationary                   :: 0x2000;
    DelayNone                    :: 0x4000;
    DelayShort                   :: 0x8000;
    DelayNormal                  :: 0x10000;
    NoSharedDelay                :: 0x20000;

    ImGuiHoveredFlags_None                         :: None;
    ImGuiHoveredFlags_ChildWindows                 :: ChildWindows;
    ImGuiHoveredFlags_RootWindow                   :: RootWindow;
    ImGuiHoveredFlags_AnyWindow                    :: AnyWindow;
    ImGuiHoveredFlags_NoPopupHierarchy             :: NoPopupHierarchy;
    ImGuiHoveredFlags_DockHierarchy                :: DockHierarchy;
    ImGuiHoveredFlags_AllowWhenBlockedByPopup      :: AllowWhenBlockedByPopup;

    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem :: AllowWhenBlockedByActiveItem;
    ImGuiHoveredFlags_AllowWhenOverlappedByItem    :: AllowWhenOverlappedByItem;
    ImGuiHoveredFlags_AllowWhenOverlappedByWindow  :: AllowWhenOverlappedByWindow;
    ImGuiHoveredFlags_AllowWhenDisabled            :: AllowWhenDisabled;
    ImGuiHoveredFlags_NoNavOverride                :: NoNavOverride;
    ImGuiHoveredFlags_AllowWhenOverlapped          :: AllowWhenOverlapped;
    ImGuiHoveredFlags_RectOnly                     :: RectOnly;
    ImGuiHoveredFlags_RootAndChildWindows          :: RootAndChildWindows;

    ImGuiHoveredFlags_ForTooltip                   :: ForTooltip;

    ImGuiHoveredFlags_Stationary                   :: Stationary;
    ImGuiHoveredFlags_DelayNone                    :: DelayNone;
    ImGuiHoveredFlags_DelayShort                   :: DelayShort;
    ImGuiHoveredFlags_DelayNormal                  :: DelayNormal;
    ImGuiHoveredFlags_NoSharedDelay                :: NoSharedDelay;
}

// Flags for ImGui::DockSpace(), shared/inherited by child nodes.
// (Some flags can be applied to individual nodes directly)
// FIXME-DOCK: Also see ImGuiDockNodeFlagsPrivate_ which may involve using the WIP and internal DockBuilder api.
DockNodeFlags :: enum_flags s32 {
    None                     :: 0x0;
    KeepAliveOnly            :: 0x1;

    NoDockingOverCentralNode :: 0x4;
    PassthruCentralNode      :: 0x8;
    NoDockingSplit           :: 0x10;
    NoResize                 :: 0x20;
    AutoHideTabBar           :: 0x40;
    NoUndocking              :: 0x80;

    NoSplit                  :: 0x10;
    NoDockingInCentralNode   :: 0x4;

    ImGuiDockNodeFlags_None                     :: None;
    ImGuiDockNodeFlags_KeepAliveOnly            :: KeepAliveOnly;

    ImGuiDockNodeFlags_NoDockingOverCentralNode :: NoDockingOverCentralNode;
    ImGuiDockNodeFlags_PassthruCentralNode      :: PassthruCentralNode;
    ImGuiDockNodeFlags_NoDockingSplit           :: NoDockingSplit;
    ImGuiDockNodeFlags_NoResize                 :: NoResize;
    ImGuiDockNodeFlags_AutoHideTabBar           :: AutoHideTabBar;
    ImGuiDockNodeFlags_NoUndocking              :: NoUndocking;

    ImGuiDockNodeFlags_NoSplit                  :: NoSplit;
    ImGuiDockNodeFlags_NoDockingInCentralNode   :: NoDockingInCentralNode;
}

// Flags for ImGui::BeginDragDropSource(), ImGui::AcceptDragDropPayload()
DragDropFlags :: enum_flags s32 {
    None                     :: 0x0;

    SourceNoPreviewTooltip   :: 0x1;
    SourceNoDisableHover     :: 0x2;
    SourceNoHoldToOpenOthers :: 0x4;
    SourceAllowNullID        :: 0x8;
    SourceExtern             :: 0x10;
    PayloadAutoExpire        :: 0x20;
    PayloadNoCrossContext    :: 0x40;
    PayloadNoCrossProcess    :: 0x80;

    AcceptBeforeDelivery     :: 0x400;
    AcceptNoDrawDefaultRect  :: 0x800;
    AcceptNoPreviewTooltip   :: 0x1000;
    AcceptDrawAsHovered      :: 0x2000;
    AcceptPeekOnly           :: 0xc00;

    SourceAutoExpirePayload  :: 0x20;

    ImGuiDragDropFlags_None                     :: None;

    ImGuiDragDropFlags_SourceNoPreviewTooltip   :: SourceNoPreviewTooltip;
    ImGuiDragDropFlags_SourceNoDisableHover     :: SourceNoDisableHover;
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers :: SourceNoHoldToOpenOthers;
    ImGuiDragDropFlags_SourceAllowNullID        :: SourceAllowNullID;
    ImGuiDragDropFlags_SourceExtern             :: SourceExtern;
    ImGuiDragDropFlags_PayloadAutoExpire        :: PayloadAutoExpire;
    ImGuiDragDropFlags_PayloadNoCrossContext    :: PayloadNoCrossContext;
    ImGuiDragDropFlags_PayloadNoCrossProcess    :: PayloadNoCrossProcess;

    ImGuiDragDropFlags_AcceptBeforeDelivery     :: AcceptBeforeDelivery;
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect  :: AcceptNoDrawDefaultRect;
    ImGuiDragDropFlags_AcceptNoPreviewTooltip   :: AcceptNoPreviewTooltip;
    ImGuiDragDropFlags_AcceptDrawAsHovered      :: AcceptDrawAsHovered;
    ImGuiDragDropFlags_AcceptPeekOnly           :: AcceptPeekOnly;

    ImGuiDragDropFlags_SourceAutoExpirePayload  :: SourceAutoExpirePayload;
}

// A primary data type
DataType :: enum s32 {
    S8     :: 0;
    U8     :: 1;
    S16    :: 2;
    U16    :: 3;
    S32    :: 4;
    U32    :: 5;
    S64    :: 6;
    U64    :: 7;
    Float  :: 8;
    Double :: 9;
    Bool   :: 10;
    String :: 11;
    COUNT  :: 12;

    ImGuiDataType_S8     :: S8;
    ImGuiDataType_U8     :: U8;
    ImGuiDataType_S16    :: S16;
    ImGuiDataType_U16    :: U16;
    ImGuiDataType_S32    :: S32;
    ImGuiDataType_U32    :: U32;
    ImGuiDataType_S64    :: S64;
    ImGuiDataType_U64    :: U64;
    ImGuiDataType_Float  :: Float;
    ImGuiDataType_Double :: Double;
    ImGuiDataType_Bool   :: Bool;
    ImGuiDataType_String :: String;
    ImGuiDataType_COUNT  :: COUNT;
}

// Flags for Shortcut(), SetNextItemShortcut(),
// (and for upcoming extended versions of IsKeyPressed(), IsMouseClicked(), Shortcut(), SetKeyOwner(), SetItemKeyOwner() that are still in imgui_internal.h)
// Don't mistake with ImGuiInputTextFlags! (which is for ImGui::InputText() function)
InputFlags :: enum_flags s32 {
    None                 :: 0x0;
    Repeat               :: 0x1;

    RouteActive          :: 0x400;
    RouteFocused         :: 0x800;
    RouteGlobal          :: 0x1000;
    RouteAlways          :: 0x2000;

    RouteOverFocused     :: 0x4000;
    RouteOverActive      :: 0x8000;
    RouteUnlessBgFocused :: 0x10000;
    RouteFromRootWindow  :: 0x20000;

    Tooltip              :: 0x40000;

    ImGuiInputFlags_None                 :: None;
    ImGuiInputFlags_Repeat               :: Repeat;

    ImGuiInputFlags_RouteActive          :: RouteActive;
    ImGuiInputFlags_RouteFocused         :: RouteFocused;
    ImGuiInputFlags_RouteGlobal          :: RouteGlobal;
    ImGuiInputFlags_RouteAlways          :: RouteAlways;

    ImGuiInputFlags_RouteOverFocused     :: RouteOverFocused;
    ImGuiInputFlags_RouteOverActive      :: RouteOverActive;
    ImGuiInputFlags_RouteUnlessBgFocused :: RouteUnlessBgFocused;
    ImGuiInputFlags_RouteFromRootWindow  :: RouteFromRootWindow;

    ImGuiInputFlags_Tooltip              :: Tooltip;
}

// Configuration flags stored in io.ConfigFlags. Set by user/application.
// Note that nowadays most of our configuration options are in other ImGuiIO fields, e.g. io.ConfigWindowsMoveFromTitleBarOnly.
ConfigFlags :: enum_flags s32 {
    None                    :: 0x0;
    NavEnableKeyboard       :: 0x1;
    NavEnableGamepad        :: 0x2;
    NoMouse                 :: 0x10;
    NoMouseCursorChange     :: 0x20;
    NoKeyboard              :: 0x40;

    DockingEnable           :: 0x80;

    ViewportsEnable         :: 0x400;

    IsSRGB                  :: 0x100000;
    IsTouchScreen           :: 0x200000;

    NavEnableSetMousePos    :: 0x4;
    NavNoCaptureKeyboard    :: 0x8;
    DpiEnableScaleFonts     :: 0x4000;
    DpiEnableScaleViewports :: 0x8000;

    ImGuiConfigFlags_None                    :: None;
    ImGuiConfigFlags_NavEnableKeyboard       :: NavEnableKeyboard;
    ImGuiConfigFlags_NavEnableGamepad        :: NavEnableGamepad;
    ImGuiConfigFlags_NoMouse                 :: NoMouse;
    ImGuiConfigFlags_NoMouseCursorChange     :: NoMouseCursorChange;
    ImGuiConfigFlags_NoKeyboard              :: NoKeyboard;

    ImGuiConfigFlags_DockingEnable           :: DockingEnable;

    ImGuiConfigFlags_ViewportsEnable         :: ViewportsEnable;

    ImGuiConfigFlags_IsSRGB                  :: IsSRGB;
    ImGuiConfigFlags_IsTouchScreen           :: IsTouchScreen;

    ImGuiConfigFlags_NavEnableSetMousePos    :: NavEnableSetMousePos;
    ImGuiConfigFlags_NavNoCaptureKeyboard    :: NavNoCaptureKeyboard;
    ImGuiConfigFlags_DpiEnableScaleFonts     :: DpiEnableScaleFonts;
    ImGuiConfigFlags_DpiEnableScaleViewports :: DpiEnableScaleViewports;
}

// Backend capabilities flags stored in io.BackendFlags. Set by imgui_impl_xxx or custom backend.
BackendFlags :: enum_flags s32 {
    None                    :: 0x0;
    HasGamepad              :: 0x1;
    HasMouseCursors         :: 0x2;
    HasSetMousePos          :: 0x4;
    RendererHasVtxOffset    :: 0x8;
    RendererHasTextures     :: 0x10;

    RendererHasViewports    :: 0x400;
    PlatformHasViewports    :: 0x800;
    HasMouseHoveredViewport :: 0x1000;
    HasParentViewport       :: 0x2000;

    ImGuiBackendFlags_None                    :: None;
    ImGuiBackendFlags_HasGamepad              :: HasGamepad;
    ImGuiBackendFlags_HasMouseCursors         :: HasMouseCursors;
    ImGuiBackendFlags_HasSetMousePos          :: HasSetMousePos;
    ImGuiBackendFlags_RendererHasVtxOffset    :: RendererHasVtxOffset;
    ImGuiBackendFlags_RendererHasTextures     :: RendererHasTextures;

    ImGuiBackendFlags_RendererHasViewports    :: RendererHasViewports;
    ImGuiBackendFlags_PlatformHasViewports    :: PlatformHasViewports;
    ImGuiBackendFlags_HasMouseHoveredViewport :: HasMouseHoveredViewport;
    ImGuiBackendFlags_HasParentViewport       :: HasParentViewport;
}

// Enumeration for PushStyleColor() / PopStyleColor()
Col :: enum s32 {
    Text                      :: 0;
    TextDisabled              :: 1;
    WindowBg                  :: 2;
    ChildBg                   :: 3;
    PopupBg                   :: 4;
    Border                    :: 5;
    BorderShadow              :: 6;
    FrameBg                   :: 7;
    FrameBgHovered            :: 8;
    FrameBgActive             :: 9;
    TitleBg                   :: 10;
    TitleBgActive             :: 11;
    TitleBgCollapsed          :: 12;
    MenuBarBg                 :: 13;
    ScrollbarBg               :: 14;
    ScrollbarGrab             :: 15;
    ScrollbarGrabHovered      :: 16;
    ScrollbarGrabActive       :: 17;
    CheckMark                 :: 18;
    CheckboxSelectedBg        :: 19;
    SliderGrab                :: 20;
    SliderGrabActive          :: 21;
    Button                    :: 22;
    ButtonHovered             :: 23;
    ButtonActive              :: 24;
    Header                    :: 25;
    HeaderHovered             :: 26;
    HeaderActive              :: 27;
    Separator                 :: 28;
    SeparatorHovered          :: 29;
    SeparatorActive           :: 30;
    ResizeGrip                :: 31;
    ResizeGripHovered         :: 32;
    ResizeGripActive          :: 33;
    InputTextCursor           :: 34;
    TabHovered                :: 35;
    Tab                       :: 36;
    TabSelected               :: 37;
    TabSelectedOverline       :: 38;
    TabDimmed                 :: 39;
    TabDimmedSelected         :: 40;
    TabDimmedSelectedOverline :: 41;
    DockingPreview            :: 42;
    DockingEmptyBg            :: 43;
    PlotLines                 :: 44;
    PlotLinesHovered          :: 45;
    PlotHistogram             :: 46;
    PlotHistogramHovered      :: 47;
    TableHeaderBg             :: 48;
    TableBorderStrong         :: 49;
    TableBorderLight          :: 50;
    TableRowBg                :: 51;
    TableRowBgAlt             :: 52;
    TextLink                  :: 53;
    TextSelectedBg            :: 54;
    TreeLines                 :: 55;
    DragDropTarget            :: 56;
    DragDropTargetBg          :: 57;
    UnsavedMarker             :: 58;
    NavCursor                 :: 59;
    NavWindowingHighlight     :: 60;
    NavWindowingDimBg         :: 61;
    ModalWindowDimBg          :: 62;
    COUNT                     :: 63;

    TabActive                 :: 37;
    TabUnfocused              :: 39;
    TabUnfocusedActive        :: 40;
    NavHighlight              :: 59;

    ImGuiCol_Text                      :: Text;
    ImGuiCol_TextDisabled              :: TextDisabled;
    ImGuiCol_WindowBg                  :: WindowBg;
    ImGuiCol_ChildBg                   :: ChildBg;
    ImGuiCol_PopupBg                   :: PopupBg;
    ImGuiCol_Border                    :: Border;
    ImGuiCol_BorderShadow              :: BorderShadow;
    ImGuiCol_FrameBg                   :: FrameBg;
    ImGuiCol_FrameBgHovered            :: FrameBgHovered;
    ImGuiCol_FrameBgActive             :: FrameBgActive;
    ImGuiCol_TitleBg                   :: TitleBg;
    ImGuiCol_TitleBgActive             :: TitleBgActive;
    ImGuiCol_TitleBgCollapsed          :: TitleBgCollapsed;
    ImGuiCol_MenuBarBg                 :: MenuBarBg;
    ImGuiCol_ScrollbarBg               :: ScrollbarBg;
    ImGuiCol_ScrollbarGrab             :: ScrollbarGrab;
    ImGuiCol_ScrollbarGrabHovered      :: ScrollbarGrabHovered;
    ImGuiCol_ScrollbarGrabActive       :: ScrollbarGrabActive;
    ImGuiCol_CheckMark                 :: CheckMark;
    ImGuiCol_CheckboxSelectedBg        :: CheckboxSelectedBg;
    ImGuiCol_SliderGrab                :: SliderGrab;
    ImGuiCol_SliderGrabActive          :: SliderGrabActive;
    ImGuiCol_Button                    :: Button;
    ImGuiCol_ButtonHovered             :: ButtonHovered;
    ImGuiCol_ButtonActive              :: ButtonActive;
    ImGuiCol_Header                    :: Header;
    ImGuiCol_HeaderHovered             :: HeaderHovered;
    ImGuiCol_HeaderActive              :: HeaderActive;
    ImGuiCol_Separator                 :: Separator;
    ImGuiCol_SeparatorHovered          :: SeparatorHovered;
    ImGuiCol_SeparatorActive           :: SeparatorActive;
    ImGuiCol_ResizeGrip                :: ResizeGrip;
    ImGuiCol_ResizeGripHovered         :: ResizeGripHovered;
    ImGuiCol_ResizeGripActive          :: ResizeGripActive;
    ImGuiCol_InputTextCursor           :: InputTextCursor;
    ImGuiCol_TabHovered                :: TabHovered;
    ImGuiCol_Tab                       :: Tab;
    ImGuiCol_TabSelected               :: TabSelected;
    ImGuiCol_TabSelectedOverline       :: TabSelectedOverline;
    ImGuiCol_TabDimmed                 :: TabDimmed;
    ImGuiCol_TabDimmedSelected         :: TabDimmedSelected;
    ImGuiCol_TabDimmedSelectedOverline :: TabDimmedSelectedOverline;
    ImGuiCol_DockingPreview            :: DockingPreview;
    ImGuiCol_DockingEmptyBg            :: DockingEmptyBg;
    ImGuiCol_PlotLines                 :: PlotLines;
    ImGuiCol_PlotLinesHovered          :: PlotLinesHovered;
    ImGuiCol_PlotHistogram             :: PlotHistogram;
    ImGuiCol_PlotHistogramHovered      :: PlotHistogramHovered;
    ImGuiCol_TableHeaderBg             :: TableHeaderBg;
    ImGuiCol_TableBorderStrong         :: TableBorderStrong;
    ImGuiCol_TableBorderLight          :: TableBorderLight;
    ImGuiCol_TableRowBg                :: TableRowBg;
    ImGuiCol_TableRowBgAlt             :: TableRowBgAlt;
    ImGuiCol_TextLink                  :: TextLink;
    ImGuiCol_TextSelectedBg            :: TextSelectedBg;
    ImGuiCol_TreeLines                 :: TreeLines;
    ImGuiCol_DragDropTarget            :: DragDropTarget;
    ImGuiCol_DragDropTargetBg          :: DragDropTargetBg;
    ImGuiCol_UnsavedMarker             :: UnsavedMarker;
    ImGuiCol_NavCursor                 :: NavCursor;
    ImGuiCol_NavWindowingHighlight     :: NavWindowingHighlight;
    ImGuiCol_NavWindowingDimBg         :: NavWindowingDimBg;
    ImGuiCol_ModalWindowDimBg          :: ModalWindowDimBg;
    ImGuiCol_COUNT                     :: COUNT;

    ImGuiCol_TabActive                 :: TabActive;
    ImGuiCol_TabUnfocused              :: TabUnfocused;
    ImGuiCol_TabUnfocusedActive        :: TabUnfocusedActive;
    ImGuiCol_NavHighlight              :: NavHighlight;
}

// Enumeration for PushStyleVar() / PopStyleVar() to temporarily modify the ImGuiStyle structure.
// - The enum only refers to fields of ImGuiStyle which makes sense to be pushed/popped inside UI code.
//   During initialization or between frames, feel free to just poke into ImGuiStyle directly.
// - Tip: Use your programming IDE navigation facilities on the names in the _second column_ below to find the actual members and their description.
//   - In Visual Studio: Ctrl+Comma ("Edit.GoToAll") can follow symbols inside comments, whereas Ctrl+F12 ("Edit.GoToImplementation") cannot.
//   - In Visual Studio w/ Visual Assist installed: Alt+G ("VAssistX.GoToImplementation") can also follow symbols inside comments.
//   - In VS Code, CLion, etc.: Ctrl+Click can follow symbols inside comments.
// - When changing this enum, you need to update the associated internal table GStyleVarInfo[] accordingly. This is where we link enum values to members offset/type.
StyleVar :: enum s32 {
    Alpha                       :: 0;
    DisabledAlpha               :: 1;
    WindowPadding               :: 2;
    WindowRounding              :: 3;
    WindowBorderSize            :: 4;
    WindowMinSize               :: 5;
    WindowTitleAlign            :: 6;
    ChildRounding               :: 7;
    ChildBorderSize             :: 8;
    PopupRounding               :: 9;
    PopupBorderSize             :: 10;
    FramePadding                :: 11;
    FrameRounding               :: 12;
    FrameBorderSize             :: 13;
    ItemSpacing                 :: 14;
    ItemInnerSpacing            :: 15;
    IndentSpacing               :: 16;
    CellPadding                 :: 17;
    ScrollbarSize               :: 18;
    ScrollbarRounding           :: 19;
    ScrollbarPadding            :: 20;
    GrabMinSize                 :: 21;
    GrabRounding                :: 22;
    ImageRounding               :: 23;
    ImageBorderSize             :: 24;
    TabRounding                 :: 25;
    TabBorderSize               :: 26;
    TabMinWidthBase             :: 27;
    TabMinWidthShrink           :: 28;
    TabBarBorderSize            :: 29;
    TabBarOverlineSize          :: 30;
    TableAngledHeadersAngle     :: 31;
    TableAngledHeadersTextAlign :: 32;
    TreeLinesSize               :: 33;
    TreeLinesRounding           :: 34;
    DragDropTargetRounding      :: 35;
    ButtonTextAlign             :: 36;
    SelectableTextAlign         :: 37;
    SeparatorSize               :: 38;
    SeparatorTextBorderSize     :: 39;
    SeparatorTextAlign          :: 40;
    SeparatorTextPadding        :: 41;
    DockingSeparatorSize        :: 42;
    COUNT                       :: 43;

    ImGuiStyleVar_Alpha                       :: Alpha;
    ImGuiStyleVar_DisabledAlpha               :: DisabledAlpha;
    ImGuiStyleVar_WindowPadding               :: WindowPadding;
    ImGuiStyleVar_WindowRounding              :: WindowRounding;
    ImGuiStyleVar_WindowBorderSize            :: WindowBorderSize;
    ImGuiStyleVar_WindowMinSize               :: WindowMinSize;
    ImGuiStyleVar_WindowTitleAlign            :: WindowTitleAlign;
    ImGuiStyleVar_ChildRounding               :: ChildRounding;
    ImGuiStyleVar_ChildBorderSize             :: ChildBorderSize;
    ImGuiStyleVar_PopupRounding               :: PopupRounding;
    ImGuiStyleVar_PopupBorderSize             :: PopupBorderSize;
    ImGuiStyleVar_FramePadding                :: FramePadding;
    ImGuiStyleVar_FrameRounding               :: FrameRounding;
    ImGuiStyleVar_FrameBorderSize             :: FrameBorderSize;
    ImGuiStyleVar_ItemSpacing                 :: ItemSpacing;
    ImGuiStyleVar_ItemInnerSpacing            :: ItemInnerSpacing;
    ImGuiStyleVar_IndentSpacing               :: IndentSpacing;
    ImGuiStyleVar_CellPadding                 :: CellPadding;
    ImGuiStyleVar_ScrollbarSize               :: ScrollbarSize;
    ImGuiStyleVar_ScrollbarRounding           :: ScrollbarRounding;
    ImGuiStyleVar_ScrollbarPadding            :: ScrollbarPadding;
    ImGuiStyleVar_GrabMinSize                 :: GrabMinSize;
    ImGuiStyleVar_GrabRounding                :: GrabRounding;
    ImGuiStyleVar_ImageRounding               :: ImageRounding;
    ImGuiStyleVar_ImageBorderSize             :: ImageBorderSize;
    ImGuiStyleVar_TabRounding                 :: TabRounding;
    ImGuiStyleVar_TabBorderSize               :: TabBorderSize;
    ImGuiStyleVar_TabMinWidthBase             :: TabMinWidthBase;
    ImGuiStyleVar_TabMinWidthShrink           :: TabMinWidthShrink;
    ImGuiStyleVar_TabBarBorderSize            :: TabBarBorderSize;
    ImGuiStyleVar_TabBarOverlineSize          :: TabBarOverlineSize;
    ImGuiStyleVar_TableAngledHeadersAngle     :: TableAngledHeadersAngle;
    ImGuiStyleVar_TableAngledHeadersTextAlign :: TableAngledHeadersTextAlign;
    ImGuiStyleVar_TreeLinesSize               :: TreeLinesSize;
    ImGuiStyleVar_TreeLinesRounding           :: TreeLinesRounding;
    ImGuiStyleVar_DragDropTargetRounding      :: DragDropTargetRounding;
    ImGuiStyleVar_ButtonTextAlign             :: ButtonTextAlign;
    ImGuiStyleVar_SelectableTextAlign         :: SelectableTextAlign;
    ImGuiStyleVar_SeparatorSize               :: SeparatorSize;
    ImGuiStyleVar_SeparatorTextBorderSize     :: SeparatorTextBorderSize;
    ImGuiStyleVar_SeparatorTextAlign          :: SeparatorTextAlign;
    ImGuiStyleVar_SeparatorTextPadding        :: SeparatorTextPadding;
    ImGuiStyleVar_DockingSeparatorSize        :: DockingSeparatorSize;
    ImGuiStyleVar_COUNT                       :: COUNT;
}

// Flags for InvisibleButton() [extended in imgui_internal.h]
ButtonFlags :: enum_flags s32 {
    None              :: 0x0;
    MouseButtonLeft   :: 0x1;
    MouseButtonRight  :: 0x2;
    MouseButtonMiddle :: 0x4;
    MouseButtonMask_  :: 0x7;
    EnableNav         :: 0x8;
    AllowOverlap      :: 0x1000;

    ImGuiButtonFlags_None              :: None;
    ImGuiButtonFlags_MouseButtonLeft   :: MouseButtonLeft;
    ImGuiButtonFlags_MouseButtonRight  :: MouseButtonRight;
    ImGuiButtonFlags_MouseButtonMiddle :: MouseButtonMiddle;
    ImGuiButtonFlags_MouseButtonMask_  :: MouseButtonMask_;
    ImGuiButtonFlags_EnableNav         :: EnableNav;
    ImGuiButtonFlags_AllowOverlap      :: AllowOverlap;
}

// Flags for ColorEdit3() / ColorEdit4() / ColorPicker3() / ColorPicker4() / ColorButton()
ColorEditFlags :: enum_flags s32 {
    None             :: 0x0;
    NoAlpha          :: 0x2;
    NoPicker         :: 0x4;
    NoOptions        :: 0x8;
    NoSmallPreview   :: 0x10;
    NoInputs         :: 0x20;
    NoTooltip        :: 0x40;
    NoLabel          :: 0x80;
    NoSidePreview    :: 0x100;
    NoDragDrop       :: 0x200;
    NoBorder         :: 0x400;
    NoColorMarkers   :: 0x800;

    AlphaOpaque      :: 0x1000;
    AlphaNoBg        :: 0x2000;
    AlphaPreviewHalf :: 0x4000;

    AlphaBar         :: 0x40000;
    HDR              :: 0x80000;
    DisplayRGB       :: 0x100000;
    DisplayHSV       :: 0x200000;
    DisplayHex       :: 0x400000;
    Uint8            :: 0x800000;
    Float            :: 0x1000000;
    PickerHueBar     :: 0x2000000;
    PickerHueWheel   :: 0x4000000;
    InputRGB         :: 0x8000000;
    InputHSV         :: 0x10000000;

    DefaultOptions_  :: 0xa900000;

    AlphaMask_       :: 0x7002;
    DisplayMask_     :: 0x700000;
    DataTypeMask_    :: 0x1800000;
    PickerMask_      :: 0x6000000;
    InputMask_       :: 0x18000000;

    AlphaPreview     :: 0x0;

    ImGuiColorEditFlags_None             :: None;
    ImGuiColorEditFlags_NoAlpha          :: NoAlpha;
    ImGuiColorEditFlags_NoPicker         :: NoPicker;
    ImGuiColorEditFlags_NoOptions        :: NoOptions;
    ImGuiColorEditFlags_NoSmallPreview   :: NoSmallPreview;
    ImGuiColorEditFlags_NoInputs         :: NoInputs;
    ImGuiColorEditFlags_NoTooltip        :: NoTooltip;
    ImGuiColorEditFlags_NoLabel          :: NoLabel;
    ImGuiColorEditFlags_NoSidePreview    :: NoSidePreview;
    ImGuiColorEditFlags_NoDragDrop       :: NoDragDrop;
    ImGuiColorEditFlags_NoBorder         :: NoBorder;
    ImGuiColorEditFlags_NoColorMarkers   :: NoColorMarkers;

    ImGuiColorEditFlags_AlphaOpaque      :: AlphaOpaque;
    ImGuiColorEditFlags_AlphaNoBg        :: AlphaNoBg;
    ImGuiColorEditFlags_AlphaPreviewHalf :: AlphaPreviewHalf;

    ImGuiColorEditFlags_AlphaBar         :: AlphaBar;
    ImGuiColorEditFlags_HDR              :: HDR;
    ImGuiColorEditFlags_DisplayRGB       :: DisplayRGB;
    ImGuiColorEditFlags_DisplayHSV       :: DisplayHSV;
    ImGuiColorEditFlags_DisplayHex       :: DisplayHex;
    ImGuiColorEditFlags_Uint8            :: Uint8;
    ImGuiColorEditFlags_Float            :: Float;
    ImGuiColorEditFlags_PickerHueBar     :: PickerHueBar;
    ImGuiColorEditFlags_PickerHueWheel   :: PickerHueWheel;
    ImGuiColorEditFlags_InputRGB         :: InputRGB;
    ImGuiColorEditFlags_InputHSV         :: InputHSV;

    ImGuiColorEditFlags_DefaultOptions_  :: DefaultOptions_;

    ImGuiColorEditFlags_AlphaMask_       :: AlphaMask_;
    ImGuiColorEditFlags_DisplayMask_     :: DisplayMask_;
    ImGuiColorEditFlags_DataTypeMask_    :: DataTypeMask_;
    ImGuiColorEditFlags_PickerMask_      :: PickerMask_;
    ImGuiColorEditFlags_InputMask_       :: InputMask_;

    ImGuiColorEditFlags_AlphaPreview     :: AlphaPreview;
}

// Flags for DragFloat(), DragInt(), SliderFloat(), SliderInt() etc.
// We use the same sets of flags for DragXXX() and SliderXXX() functions as the features are the same and it makes it easier to swap them.
// (Those are per-item flags. There is shared behavior flag too: ImGuiIO: io.ConfigDragClickToInputText)
SliderFlags :: enum_flags s32 {
    None            :: 0x0;
    Logarithmic     :: 0x20;
    NoRoundToFormat :: 0x40;
    NoInput         :: 0x80;
    WrapAround      :: 0x100;
    ClampOnInput    :: 0x200;
    ClampZeroRange  :: 0x400;
    NoSpeedTweaks   :: 0x800;
    ColorMarkers    :: 0x1000;
    AlwaysClamp     :: 0x600;
    InvalidMask_    :: 0x7000000f;

    ImGuiSliderFlags_None            :: None;
    ImGuiSliderFlags_Logarithmic     :: Logarithmic;
    ImGuiSliderFlags_NoRoundToFormat :: NoRoundToFormat;
    ImGuiSliderFlags_NoInput         :: NoInput;
    ImGuiSliderFlags_WrapAround      :: WrapAround;
    ImGuiSliderFlags_ClampOnInput    :: ClampOnInput;
    ImGuiSliderFlags_ClampZeroRange  :: ClampZeroRange;
    ImGuiSliderFlags_NoSpeedTweaks   :: NoSpeedTweaks;
    ImGuiSliderFlags_ColorMarkers    :: ColorMarkers;
    ImGuiSliderFlags_AlwaysClamp     :: AlwaysClamp;
    ImGuiSliderFlags_InvalidMask_    :: InvalidMask_;
}

// Identify a mouse button.
// Those values are guaranteed to be stable and we frequently use 0/1 directly. Named enums provided for convenience.
MouseButton :: enum s32 {
    Left   :: 0;
    Right  :: 1;
    Middle :: 2;
    COUNT  :: 5;

    ImGuiMouseButton_Left   :: Left;
    ImGuiMouseButton_Right  :: Right;
    ImGuiMouseButton_Middle :: Middle;
    ImGuiMouseButton_COUNT  :: COUNT;
}

// Enumeration for GetMouseCursor()
// User code may request backend to display given cursor by calling SetMouseCursor(), which is why we have some cursors that are marked unused here
MouseCursor :: enum s32 {
    None       :: -1;
    Arrow      :: 0;
    TextInput  :: 1;
    ResizeAll  :: 2;
    ResizeNS   :: 3;
    ResizeEW   :: 4;
    ResizeNESW :: 5;
    ResizeNWSE :: 6;
    Hand       :: 7;
    Wait       :: 8;
    Progress   :: 9;
    NotAllowed :: 10;
    COUNT      :: 11;

    ImGuiMouseCursor_None       :: None;
    ImGuiMouseCursor_Arrow      :: Arrow;
    ImGuiMouseCursor_TextInput  :: TextInput;
    ImGuiMouseCursor_ResizeAll  :: ResizeAll;
    ImGuiMouseCursor_ResizeNS   :: ResizeNS;
    ImGuiMouseCursor_ResizeEW   :: ResizeEW;
    ImGuiMouseCursor_ResizeNESW :: ResizeNESW;
    ImGuiMouseCursor_ResizeNWSE :: ResizeNWSE;
    ImGuiMouseCursor_Hand       :: Hand;
    ImGuiMouseCursor_Wait       :: Wait;
    ImGuiMouseCursor_Progress   :: Progress;
    ImGuiMouseCursor_NotAllowed :: NotAllowed;
    ImGuiMouseCursor_COUNT      :: COUNT;
}

// Enumeration for ImGui::SetNextWindow***(), SetWindow***(), SetNextItem***() functions
// Represent a condition.
// Important: Treat as a regular enum! Do NOT combine multiple values using binary operators! All the functions above treat 0 as a shortcut to ImGuiCond_Always.
Cond :: enum s32 {
    None         :: 0;
    Always       :: 1;
    Once         :: 2;
    FirstUseEver :: 4;
    Appearing    :: 8;

    ImGuiCond_None         :: None;
    ImGuiCond_Always       :: Always;
    ImGuiCond_Once         :: Once;
    ImGuiCond_FirstUseEver :: FirstUseEver;
    ImGuiCond_Appearing    :: Appearing;
}

// Flags for ImGui::BeginTable()
// - Important! Sizing policies have complex and subtle side effects, much more so than you would expect.
//   Read comments/demos carefully + experiment with live demos to get acquainted with them.
// - The DEFAULT sizing policies are:
//    - Default to ImGuiTableFlags_SizingFixedFit    if ScrollX is on, or if host window has ImGuiWindowFlags_AlwaysAutoResize.
//    - Default to ImGuiTableFlags_SizingStretchSame if ScrollX is off.
// - When ScrollX is off:
//    - Table defaults to ImGuiTableFlags_SizingStretchSame -> all Columns defaults to ImGuiTableColumnFlags_WidthStretch with same weight.
//    - Columns sizing policy allowed: Stretch (default), Fixed/Auto.
//    - Fixed Columns (if any) will generally obtain their requested width (unless the table cannot fit them all).
//    - Stretch Columns will share the remaining width according to their respective weight.
//    - Mixed Fixed/Stretch columns is possible but has various side-effects on resizing behaviors.
//      The typical use of mixing sizing policies is: any number of LEADING Fixed columns, followed by one or two TRAILING Stretch columns.
//      (this is because the visible order of columns have subtle but necessary effects on how they react to manual resizing).
// - When ScrollX is on:
//    - Table defaults to ImGuiTableFlags_SizingFixedFit -> all Columns defaults to ImGuiTableColumnFlags_WidthFixed
//    - Columns sizing policy allowed: Fixed/Auto mostly.
//    - Fixed Columns can be enlarged as needed. Table will show a horizontal scrollbar if needed.
//    - When using auto-resizing (non-resizable) fixed columns, querying the content width to use item right-alignment e.g. SetNextItemWidth(-FLT_MIN) doesn't make sense, would create a feedback loop.
//    - Using Stretch columns OFTEN DOES NOT MAKE SENSE if ScrollX is on, UNLESS you have specified a value for 'inner_width' in BeginTable().
//      If you specify a value for 'inner_width' then effectively the scrolling space is known and Stretch or mixed Fixed/Stretch columns become meaningful again.
// - Read on documentation at the top of imgui_tables.cpp for details.
TableFlags :: enum_flags s32 {
    None                       :: 0x0;
    Resizable                  :: 0x1;
    Reorderable                :: 0x2;
    Hideable                   :: 0x4;
    Sortable                   :: 0x8;
    NoSavedSettings            :: 0x10;
    ContextMenuInBody          :: 0x20;

    RowBg                      :: 0x40;
    BordersInnerH              :: 0x80;
    BordersOuterH              :: 0x100;
    BordersInnerV              :: 0x200;
    BordersOuterV              :: 0x400;
    BordersH                   :: 0x180;
    BordersV                   :: 0x600;
    BordersInner               :: 0x280;
    BordersOuter               :: 0x500;
    Borders                    :: 0x780;
    NoBordersInBody            :: 0x800;
    NoBordersInBodyUntilResize :: 0x1000;

    SizingFixedFit             :: 0x2000;
    SizingFixedSame            :: 0x4000;
    SizingStretchProp          :: 0x6000;
    SizingStretchSame          :: 0x8000;

    NoHostExtendX              :: 0x10000;
    NoHostExtendY              :: 0x20000;
    NoKeepColumnsVisible       :: 0x40000;
    PreciseWidths              :: 0x80000;

    NoClip                     :: 0x100000;

    PadOuterX                  :: 0x200000;
    NoPadOuterX                :: 0x400000;
    NoPadInnerX                :: 0x800000;

    ScrollX                    :: 0x1000000;
    ScrollY                    :: 0x2000000;

    SortMulti                  :: 0x4000000;
    SortTristate               :: 0x8000000;

    HighlightHoveredColumn     :: 0x10000000;

    SizingMask_                :: 0xe000;

    ImGuiTableFlags_None                       :: None;
    ImGuiTableFlags_Resizable                  :: Resizable;
    ImGuiTableFlags_Reorderable                :: Reorderable;
    ImGuiTableFlags_Hideable                   :: Hideable;
    ImGuiTableFlags_Sortable                   :: Sortable;
    ImGuiTableFlags_NoSavedSettings            :: NoSavedSettings;
    ImGuiTableFlags_ContextMenuInBody          :: ContextMenuInBody;

    ImGuiTableFlags_RowBg                      :: RowBg;
    ImGuiTableFlags_BordersInnerH              :: BordersInnerH;
    ImGuiTableFlags_BordersOuterH              :: BordersOuterH;
    ImGuiTableFlags_BordersInnerV              :: BordersInnerV;
    ImGuiTableFlags_BordersOuterV              :: BordersOuterV;
    ImGuiTableFlags_BordersH                   :: BordersH;
    ImGuiTableFlags_BordersV                   :: BordersV;
    ImGuiTableFlags_BordersInner               :: BordersInner;
    ImGuiTableFlags_BordersOuter               :: BordersOuter;
    ImGuiTableFlags_Borders                    :: Borders;
    ImGuiTableFlags_NoBordersInBody            :: NoBordersInBody;
    ImGuiTableFlags_NoBordersInBodyUntilResize :: NoBordersInBodyUntilResize;

    ImGuiTableFlags_SizingFixedFit             :: SizingFixedFit;
    ImGuiTableFlags_SizingFixedSame            :: SizingFixedSame;
    ImGuiTableFlags_SizingStretchProp          :: SizingStretchProp;
    ImGuiTableFlags_SizingStretchSame          :: SizingStretchSame;

    ImGuiTableFlags_NoHostExtendX              :: NoHostExtendX;
    ImGuiTableFlags_NoHostExtendY              :: NoHostExtendY;
    ImGuiTableFlags_NoKeepColumnsVisible       :: NoKeepColumnsVisible;
    ImGuiTableFlags_PreciseWidths              :: PreciseWidths;

    ImGuiTableFlags_NoClip                     :: NoClip;

    ImGuiTableFlags_PadOuterX                  :: PadOuterX;
    ImGuiTableFlags_NoPadOuterX                :: NoPadOuterX;
    ImGuiTableFlags_NoPadInnerX                :: NoPadInnerX;

    ImGuiTableFlags_ScrollX                    :: ScrollX;
    ImGuiTableFlags_ScrollY                    :: ScrollY;

    ImGuiTableFlags_SortMulti                  :: SortMulti;
    ImGuiTableFlags_SortTristate               :: SortTristate;

    ImGuiTableFlags_HighlightHoveredColumn     :: HighlightHoveredColumn;

    ImGuiTableFlags_SizingMask_                :: SizingMask_;
}

// Flags for ImGui::TableSetupColumn()
TableColumnFlags :: enum_flags s32 {
    None                 :: 0x0;
    Disabled             :: 0x1;
    DefaultHide          :: 0x2;
    DefaultSort          :: 0x4;
    WidthStretch         :: 0x8;
    WidthFixed           :: 0x10;
    NoResize             :: 0x20;
    NoReorder            :: 0x40;
    NoHide               :: 0x80;
    NoClip               :: 0x100;
    NoSort               :: 0x200;
    NoSortAscending      :: 0x400;
    NoSortDescending     :: 0x800;
    NoHeaderLabel        :: 0x1000;
    NoHeaderWidth        :: 0x2000;
    PreferSortAscending  :: 0x4000;
    PreferSortDescending :: 0x8000;
    IndentEnable         :: 0x10000;
    IndentDisable        :: 0x20000;
    AngledHeader         :: 0x40000;

    IsEnabled            :: 0x1000000;
    IsVisible            :: 0x2000000;
    IsSorted             :: 0x4000000;
    IsHovered            :: 0x8000000;

    WidthMask_           :: 0x18;
    IndentMask_          :: 0x30000;
    StatusMask_          :: 0xf000000;
    NoDirectResize_      :: 0x40000000;

    ImGuiTableColumnFlags_None                 :: None;
    ImGuiTableColumnFlags_Disabled             :: Disabled;
    ImGuiTableColumnFlags_DefaultHide          :: DefaultHide;
    ImGuiTableColumnFlags_DefaultSort          :: DefaultSort;
    ImGuiTableColumnFlags_WidthStretch         :: WidthStretch;
    ImGuiTableColumnFlags_WidthFixed           :: WidthFixed;
    ImGuiTableColumnFlags_NoResize             :: NoResize;
    ImGuiTableColumnFlags_NoReorder            :: NoReorder;
    ImGuiTableColumnFlags_NoHide               :: NoHide;
    ImGuiTableColumnFlags_NoClip               :: NoClip;
    ImGuiTableColumnFlags_NoSort               :: NoSort;
    ImGuiTableColumnFlags_NoSortAscending      :: NoSortAscending;
    ImGuiTableColumnFlags_NoSortDescending     :: NoSortDescending;
    ImGuiTableColumnFlags_NoHeaderLabel        :: NoHeaderLabel;
    ImGuiTableColumnFlags_NoHeaderWidth        :: NoHeaderWidth;
    ImGuiTableColumnFlags_PreferSortAscending  :: PreferSortAscending;
    ImGuiTableColumnFlags_PreferSortDescending :: PreferSortDescending;
    ImGuiTableColumnFlags_IndentEnable         :: IndentEnable;
    ImGuiTableColumnFlags_IndentDisable        :: IndentDisable;
    ImGuiTableColumnFlags_AngledHeader         :: AngledHeader;

    ImGuiTableColumnFlags_IsEnabled            :: IsEnabled;
    ImGuiTableColumnFlags_IsVisible            :: IsVisible;
    ImGuiTableColumnFlags_IsSorted             :: IsSorted;
    ImGuiTableColumnFlags_IsHovered            :: IsHovered;

    ImGuiTableColumnFlags_WidthMask_           :: WidthMask_;
    ImGuiTableColumnFlags_IndentMask_          :: IndentMask_;
    ImGuiTableColumnFlags_StatusMask_          :: StatusMask_;
    ImGuiTableColumnFlags_NoDirectResize_      :: NoDirectResize_;
}

// Flags for ImGui::TableNextRow()
TableRowFlags :: enum_flags s32 {
    None    :: 0x0;
    Headers :: 0x1;

    ImGuiTableRowFlags_None    :: None;
    ImGuiTableRowFlags_Headers :: Headers;
}

// Enum for ImGui::TableSetBgColor()
// Background colors are rendering in 3 layers:
//  - Layer 0: draw with RowBg0 color if set, otherwise draw with ColumnBg0 if set.
//  - Layer 1: draw with RowBg1 color if set, otherwise draw with ColumnBg1 if set.
//  - Layer 2: draw with CellBg color if set.
// The purpose of the two row/columns layers is to let you decide if a background color change should override or blend with the existing color.
// When using ImGuiTableFlags_RowBg on the table, each row has the RowBg0 color automatically set for odd/even rows.
// If you set the color of RowBg0 target, your color will override the existing RowBg0 color.
// If you set the color of RowBg1 or ColumnBg1 target, your color will blend over the RowBg0 color.
TableBgTarget :: enum s32 {
    None   :: 0;
    RowBg0 :: 1;
    RowBg1 :: 2;
    CellBg :: 3;

    ImGuiTableBgTarget_None   :: None;
    ImGuiTableBgTarget_RowBg0 :: RowBg0;
    ImGuiTableBgTarget_RowBg1 :: RowBg1;
    ImGuiTableBgTarget_CellBg :: CellBg;
}

// Sorting specifications for a table (often handling sort specs for a single column, occasionally more)
// Obtained by calling TableGetSortSpecs().
// When 'SpecsDirty == true' you can sort your data. It will be true with sorting specs have changed since last call, or the first time.
// Make sure to set 'SpecsDirty = false' after sorting, else you may wastefully sort your data every frame!
TableSortSpecs :: struct {
    Specs:      *TableColumnSortSpecs; // Pointer to sort spec array.
    SpecsCount: s32; // Sort spec count. Most often 1. May be > 1 when ImGuiTableFlags_SortMulti is enabled. May be == 0 when ImGuiTableFlags_SortTristate is enabled.
    SpecsDirty: bool; // Set to true when specs have changed since last time! Use this to sort again, then clear the flag.
}

// Sorting specification for one column of a table (sizeof == 12 bytes)
TableColumnSortSpecs :: struct {
    ColumnUserID:   ID; // User id of the column (if specified by a TableSetupColumn() call)
    ColumnIndex:    ImS16; // Index of the column
    SortOrder:      ImS16; // Index within parent ImGuiTableSortSpecs (always stored in order starting from 0, tables sorted on a single criteria will always have a 0 here)
    SortDirection_: SortDirection; // ImGuiSortDirection_Ascending or ImGuiSortDirection_Descending
}

//-----------------------------------------------------------------------------
// IM_MALLOC(), IM_FREE(), IM_NEW(), IM_PLACEMENT_NEW(), IM_DELETE()
// We call C++ constructor on own allocated memory via the placement "new(ptr) Type()" syntax.
// Defining a custom placement new() with a custom parameter allows us to bypass including <new> which on some platforms complains when user has disabled exceptions.
//-----------------------------------------------------------------------------
ImNewWrapper :: struct {
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// [SECTION] ImGuiStyle
//-----------------------------------------------------------------------------
// You may modify the ImGui::GetStyle() main instance during initialization and before NewFrame().
// During the frame, use ImGui::PushStyleVar(ImGuiStyleVar_XXXX)/PopStyleVar() to alter the main style values,
// and ImGui::PushStyleColor(ImGuiCol_XXX)/PopStyleColor() for colors.
//-----------------------------------------------------------------------------
Style :: struct {
    FontSizeBase:                     float; // Current base font size before external global factors are applied. Use PushFont(NULL, size) to modify. Use ImGui::GetFontSize() to obtain scaled value.
    FontScaleMain:                    float; // Main global scale factor. May be set by application once, or exposed to end-user.
    FontScaleDpi:                     float; // Additional global scale factor from viewport/monitor contents scale. In docking branch: when io.ConfigDpiScaleFonts is enabled, this is automatically overwritten when changing monitor DPI.

    Alpha:                            float; // Global alpha applies to everything in Dear ImGui.
    DisabledAlpha:                    float; // Additional alpha multiplier applied by BeginDisabled(). Multiply over current value of Alpha.
    WindowPadding:                    ImVec2; // Padding within a window.
    WindowRounding:                   float; // Radius of window corners rounding. Set to 0.0f to have rectangular windows. Large values tend to lead to variety of artifacts and are not recommended.
    WindowBorderSize:                 float; // Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    WindowBorderHoverPadding:         float; // Hit-testing extent outside/inside resizing border. Also extend determination of hovered window. Generally meaningfully larger than WindowBorderSize to make it easy to reach borders.
    WindowMinSize:                    ImVec2; // Minimum window size. This is a global setting. If you want to constrain individual windows, use SetNextWindowSizeConstraints().
    WindowTitleAlign:                 ImVec2; // Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered.
    WindowMenuButtonPosition:         Dir; // Side of the collapsing/docking button in the title bar (None/Left/Right). Defaults to ImGuiDir_Left.
    ChildRounding:                    float; // Radius of child window corners rounding. Set to 0.0f to have rectangular windows.
    ChildBorderSize:                  float; // Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    PopupRounding:                    float; // Radius of popup window corners rounding. (Note that tooltip windows use WindowRounding)
    PopupBorderSize:                  float; // Thickness of border around popup/tooltip windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    FramePadding:                     ImVec2; // Padding within a framed rectangle (used by most widgets).
    FrameRounding:                    float; // Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets).
    FrameBorderSize:                  float; // Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly).
    ItemSpacing:                      ImVec2; // Horizontal and vertical spacing between widgets/lines.
    ItemInnerSpacing:                 ImVec2; // Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label).
    CellPadding:                      ImVec2; // Padding within a table cell. Cellpadding.x is locked for entire table. CellPadding.y may be altered between different rows.
    TouchExtraPadding:                ImVec2; // Expand reactive bounding box for touch-based system where touch position is not accurate enough. Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much!
    IndentSpacing:                    float; // Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2).
    ColumnsMinSpacing:                float; // Minimum horizontal spacing between two columns. Preferably > (FramePadding.x + 1).
    ScrollbarSize:                    float; // Width of the vertical scrollbar, Height of the horizontal scrollbar.
    ScrollbarRounding:                float; // Radius of grab corners for scrollbar.
    ScrollbarPadding:                 float; // Padding of scrollbar grab within its frame (same for both axes).
    GrabMinSize:                      float; // Minimum width/height of a grab box for slider/scrollbar.
    GrabRounding:                     float; // Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs.
    LogSliderDeadzone:                float; // The size in pixels of the dead-zone around zero on logarithmic sliders that cross zero.
    ImageRounding:                    float; // Rounding of Image() calls.
    ImageBorderSize:                  float; // Thickness of border around Image() calls.
    TabRounding:                      float; // Radius of upper corners of a tab. Set to 0.0f to have rectangular tabs.
    TabBorderSize:                    float; // Thickness of border around tabs.
    TabMinWidthBase:                  float; // Minimum tab width, to make tabs larger than their contents. TabBar buttons are not affected.
    TabMinWidthShrink:                float; // Minimum tab width after shrinking, when using ImGuiTabBarFlags_FittingPolicyMixed policy.
    TabCloseButtonMinWidthSelected:   float; // -1: always visible. 0.0f: visible when hovered. >0.0f: visible when hovered if minimum width. FLT_MAX: never shrink, will behave like ImGuiTabBarFlags_FittingPolicyScroll.
    TabCloseButtonMinWidthUnselected: float; // -1: always visible. 0.0f: visible when hovered. >0.0f: visible when hovered if minimum width. FLT_MAX: never show close button when unselected.
    TabBarBorderSize:                 float; // Thickness of tab-bar separator, which takes on the tab active color to denote focus.
    TabBarOverlineSize:               float; // Thickness of tab-bar overline, which highlights the selected tab-bar.
    TableAngledHeadersAngle:          float; // Angle of angled headers (supported values range from -50.0f degrees to +50.0f degrees).
    TableAngledHeadersTextAlign:      ImVec2; // Alignment of angled headers within the cell
    TreeLinesFlags:                   TreeNodeFlags; // Default way to draw lines connecting TreeNode hierarchy. ImGuiTreeNodeFlags_DrawLinesNone or ImGuiTreeNodeFlags_DrawLinesFull or ImGuiTreeNodeFlags_DrawLinesToNodes.
    TreeLinesSize:                    float; // Thickness of outlines when using ImGuiTreeNodeFlags_DrawLines.
    TreeLinesRounding:                float; // Radius of lines connecting child nodes to the vertical line.
    DragDropTargetRounding:           float; // Radius of the drag and drop target frame. When <0.0f: use FrameRounding.
    DragDropTargetBorderSize:         float; // Thickness of the drag and drop target border.
    DragDropTargetPadding:            float; // Size to expand the drag and drop target from actual target item size.
    ColorMarkerSize:                  float; // Size of R/G/B/A color markers for ColorEdit4() and for Drags/Sliders when using ImGuiSliderFlags_ColorMarkers.
    ColorButtonPosition:              Dir; // Side of the color button in the ColorEdit4 widget (left/right). Defaults to ImGuiDir_Right.
    ButtonTextAlign:                  ImVec2; // Alignment of button text when button is larger than text. Defaults to (0.5f, 0.5f) (centered).
    SelectableTextAlign:              ImVec2; // Alignment of selectable text. Defaults to (0.0f, 0.0f) (top-left aligned). It's generally important to keep this left-aligned if you want to lay multiple items on a same line.
    SeparatorSize:                    float; // Thickness of border in Separator(). Must be >= 1.0f.
    SeparatorTextBorderSize:          float; // Thickness of border in SeparatorText()
    SeparatorTextAlign:               ImVec2; // Alignment of text within the separator. Defaults to (0.0f, 0.5f) (left aligned, center).
    SeparatorTextPadding:             ImVec2; // Horizontal offset of text from each edge of the separator + spacing on other axis. Generally small values. .y is recommended to be == FramePadding.y.
    DisplayWindowPadding:             ImVec2; // Apply to regular windows: amount which we enforce to keep visible when moving near edges of your screen.
    DisplaySafeAreaPadding:           ImVec2; // Apply to every windows, menus, popups, tooltips: amount where we avoid displaying contents. Adjust if you cannot see the edges of your screen (e.g. on a TV where scaling has not been configured).
    DockingNodeHasCloseButton:        bool; // Docking node has their own CloseButton() to close all docked windows.
    DockingSeparatorSize:             float; // Thickness of resizing border between docked windows
    MouseCursorScale:                 float; // Scale software rendered mouse cursor (when io.MouseDrawCursor is enabled). We apply per-monitor DPI scaling over this scale. May be removed later.
    AntiAliasedLines:                 bool; // Enable anti-aliased lines/borders. Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
    AntiAliasedLinesUseTex:           bool; // Enable anti-aliased lines/borders using textures where possible. Require backend to render with bilinear filtering (NOT point/nearest filtering). Latched at the beginning of the frame (copied to ImDrawList).
    AntiAliasedFill:                  bool; // Enable anti-aliased edges around filled shapes (rounded rectangles, circles, etc.). Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList).
    CurveTessellationTol:             float; // Tessellation tolerance when using PathBezierCurveTo() without a specific number of segments. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality.
    CircleTessellationMaxError:       float; // Maximum error (in pixels) allowed when using AddCircle()/AddCircleFilled() or drawing rounded corner rectangles with no explicit segment count specified. Decrease for higher quality but more geometry.

    // Colors
    Colors:                           [63] ImVec4;

    HoverStationaryDelay:             float; // Delay for IsItemHovered(ImGuiHoveredFlags_Stationary). Time required to consider mouse stationary.
    HoverDelayShort:                  float; // Delay for IsItemHovered(ImGuiHoveredFlags_DelayShort). Usually used along with HoverStationaryDelay.
    HoverDelayNormal:                 float; // Delay for IsItemHovered(ImGuiHoveredFlags_DelayNormal). "
    HoverFlagsForTooltipMouse:        HoveredFlags; // Default flags when using IsItemHovered(ImGuiHoveredFlags_ForTooltip) or BeginItemTooltip()/SetItemTooltip() while using mouse.
    HoverFlagsForTooltipNav:          HoveredFlags; // Default flags when using IsItemHovered(ImGuiHoveredFlags_ForTooltip) or BeginItemTooltip()/SetItemTooltip() while using keyboard/gamepad.

    _MainScale:                       float; // FIXME-WIP: Reference scale, as applied by ScaleAllSizes(). PLEASE DO NOT USE THIS FOR NOW.
    _NextFrameFontSizeBase:           float; // FIXME: Temporary hack until we finish remaining work.

    // Functions
    Constructor :: (this: *Style) -> void #cpp_method #foreign imgui "??0ImGuiStyle@@QEAA@XZ";
    ScaleAllSizes :: (this: *Style, scale_factor: float) -> void #cpp_method #foreign imgui "?ScaleAllSizes@ImGuiStyle@@QEAAXM@Z";
}

// [Internal] Storage used by IsKeyDown(), IsKeyPressed() etc functions.
// If prior to 1.87 you used io.KeysDownDuration[] (which was marked as internal), you should use GetKeyData(key)->DownDuration and *NOT* io.KeysData[key]->DownDuration.
KeyData :: struct {
    Down:             bool; // True for if key is down
    DownDuration:     float; // Duration the key has been down (<0.0f: not pressed, 0.0f: just pressed, >0.0f: time held)
    DownDurationPrev: float; // Last frame duration the key has been down
    AnalogValue:      float; // 0.0f..1.0f for gamepad values
}

IO :: struct {
    ConfigFlags_:                                  ConfigFlags; // = 0              // See ImGuiConfigFlags_ enum. Set by user/application. Keyboard/Gamepad navigation options, etc.
    BackendFlags_:                                 BackendFlags; // = 0              // See ImGuiBackendFlags_ enum. Set by backend (imgui_impl_xxx files or custom backend) to communicate features supported by the backend.
    DisplaySize:                                   ImVec2; // <unset>          // Main display size, in pixels (== GetMainViewport()->Size). May change every frame.
    DisplayFramebufferScale:                       ImVec2; // = (1, 1)         // Main display density. For retina display where window coordinates are different from framebuffer coordinates. This will affect font density + will end up in ImDrawData::FramebufferScale.
    DeltaTime:                                     float; // = 1.0f/60.0f     // Time elapsed since last frame, in seconds. May change every frame.
    IniSavingRate:                                 float; // = 5.0f           // Minimum time between saving positions/sizes to .ini file, in seconds.
    IniFilename:                                   *u8; // = "imgui.ini"    // Path to .ini file (important: default "imgui.ini" is relative to current working dir!). Set NULL to disable automatic .ini loading/saving or if you want to manually call LoadIniSettingsXXX() / SaveIniSettingsXXX() functions.
    LogFilename:                                   *u8; // = "imgui_log.txt"// Path to .log file (default parameter to ImGui::LogToFile when no file is specified).
    UserData:                                      *void; // = NULL           // Store your own data.

    Fonts:                                         *ImFontAtlas; // <auto>           // Font atlas: load, rasterize and pack one or more fonts into a single texture.
    FontDefault:                                   *ImFont; // = NULL           // Font to use on NewFrame(). Use NULL to uses Fonts->Fonts[0].
    FontAllowUserScaling:                          bool; // = false          // Allow user scaling text of individual window with Ctrl+Wheel.

    ConfigNavSwapGamepadButtons:                   bool; // = false          // Swap Activate<>Cancel (A<>B) buttons, matching typical "Nintendo/Japanese style" gamepad layout.
    ConfigNavMoveSetMousePos:                      bool; // = false          // Directional/tabbing navigation teleports the mouse cursor. May be useful on TV/console systems where moving a virtual mouse is difficult. Will update io.MousePos and set io.WantSetMousePos=true.
    ConfigNavCaptureKeyboard:                      bool; // = true           // Sets io.WantCaptureKeyboard when io.NavActive is set.
    ConfigNavEscapeClearFocusItem:                 bool; // = true           // Pressing Escape can clear focused item + navigation id/highlight. Set to false if you want to always keep highlight on.
    ConfigNavEscapeClearFocusWindow:               bool; // = false          // Pressing Escape can clear focused window as well (super set of io.ConfigNavEscapeClearFocusItem).
    ConfigNavCursorVisibleAuto:                    bool; // = true           // Using directional navigation key makes the cursor visible. Mouse click hides the cursor.
    ConfigNavCursorVisibleAlways:                  bool; // = false          // Navigation cursor is always visible.

    ConfigDockingNoSplit:                          bool; // = false          // Simplified docking mode: disable window splitting, so docking is limited to merging multiple windows together into tab-bars.
    ConfigDockingNoDockingOver:                    bool; // = false          // Simplified docking mode: disable window merging into a same tab-bar, so docking is limited to splitting windows.
    ConfigDockingWithShift:                        bool; // = false          // Enable docking with holding Shift key (reduce visual noise, allows dropping in wider space)
    ConfigDockingAlwaysTabBar:                     bool; // = false          // [BETA] [FIXME: This currently creates regression with auto-sizing and general overhead] Make every single floating window display within a docking node.
    ConfigDockingTransparentPayload:               bool; // = false          // [BETA] Make window or viewport transparent when docking and only display docking boxes on the target viewport. Useful if rendering of multiple viewport cannot be synced. Best used with ConfigViewportsNoAutoMerge.

    ConfigViewportsNoAutoMerge:                    bool; // = false;         // Set to make all floating imgui windows always create their own viewport. Otherwise, they are merged into the main host viewports when overlapping it. May also set ImGuiViewportFlags_NoAutoMerge on individual viewport.
    ConfigViewportsNoTaskBarIcon:                  bool; // = false          // Disable default OS task bar icon flag for secondary viewports. When a viewport doesn't want a task bar icon, ImGuiViewportFlags_NoTaskBarIcon will be set on it.
    ConfigViewportsNoDecoration:                   bool; // = true           // Disable default OS window decoration flag for secondary viewports. When a viewport doesn't want window decorations, ImGuiViewportFlags_NoDecoration will be set on it. Enabling decoration can create subsequent issues at OS levels (e.g. minimum window size).
    ConfigViewportsNoDefaultParent:                bool; // = true           // Disable setting OS window parent to main viewport by default. The platform backend is expected to honor `viewport->ParentViewportID` to setup a parent/child relationship between the OS windows (supported if ImGuiBackendFlags_HasParentViewport is set). When parented: child windows always appear in front of their parent. Set to false if you want viewports to automatically be parent of main viewport, otherwise all viewports will be top-level OS windows. Parent/child relationship may be set on a per-window basis using ImGuiWindowClass.
    ConfigViewportsPlatformFocusSetsImGuiFocus:    bool; //= true // When a platform window is focused (e.g. using Alt+Tab, clicking Platform Title Bar), apply corresponding focus on imgui windows (may clear focus/active id from imgui windows location in other platform windows). In principle this is better enabled but we provide an opt-out, because some Linux window managers tend to eagerly focus windows (e.g. on mouse hover, or even a simple window pos/size change).

    ConfigDpiScaleFonts:                           bool; // = false          // [EXPERIMENTAL] Automatically overwrite style.FontScaleDpi when Monitor DPI changes. This will scale fonts but _NOT_ scale sizes/padding for now.
    ConfigDpiScaleViewports:                       bool; // = false          // [EXPERIMENTAL] Scale Dear ImGui and Platform Windows when Monitor DPI changes.

    MouseDrawCursor:                               bool; // = false          // Request ImGui to draw a mouse cursor for you (if you are on a platform without a mouse cursor). Cannot be easily renamed to 'io.ConfigXXX' because this is frequently used by backend implementations.
    ConfigMacOSXBehaviors:                         bool; // = defined(__APPLE__) // Swap Cmd<>Ctrl keys + OS X style text editing cursor movement using Alt instead of Ctrl, Shortcuts using Cmd/Super instead of Ctrl, Line/Text Start and End using Cmd+Arrows instead of Home/End, Double click selects by word instead of selecting whole text, Multi-selection in lists uses Cmd/Super instead of Ctrl.
    ConfigInputTrickleEventQueue:                  bool; // = true           // Enable input queue trickling: some types of events submitted during the same frame (e.g. button down + up) will be spread over multiple frames, improving interactions with low framerates.
    ConfigInputTextCursorBlink:                    bool; // = true           // Enable blinking cursor (optional as some users consider it to be distracting).
    ConfigInputTextEnterKeepActive:                bool; // = false          // [BETA] Pressing Enter will reactivate item and select all text (single-line only).
    ConfigDragClickToInputText:                    bool; // = false          // [BETA] Enable turning DragXXX widgets into text input with a simple mouse click-release (without moving). Not desirable on devices without a keyboard.
    ConfigWindowsResizeFromEdges:                  bool; // = true           // Enable resizing of windows from their edges and from the lower-left corner. This requires ImGuiBackendFlags_HasMouseCursors for better mouse cursor feedback. (This used to be a per-window ImGuiWindowFlags_ResizeFromAnySide flag)
    ConfigWindowsMoveFromTitleBarOnly:             bool; // = false      // Enable allowing to move windows only when clicking on their title bar. Does not apply to windows without a title bar.
    ConfigWindowsCopyContentsWithCtrlC:            bool; // = false      // [EXPERIMENTAL] Ctrl+C copy the contents of focused window into the clipboard. Experimental because: (1) has known issues with nested Begin/End pairs (2) text output quality varies (3) text output is in submission order rather than spatial order.
    ConfigScrollbarScrollByPage:                   bool; // = true           // Enable scrolling page by page when clicking outside the scrollbar grab. When disabled, always scroll to clicked location. When enabled, Shift+Click scrolls to clicked location.
    ConfigMemoryCompactTimer:                      float; // = 60.0f          // Timer (in seconds) to free transient windows/tables memory buffers when unused. Set to -1.0f to disable.

    MouseDoubleClickTime:                          float; // = 0.30f          // Time for a double-click, in seconds.
    MouseDoubleClickMaxDist:                       float; // = 6.0f           // Distance threshold to stay in to validate a double-click, in pixels.
    MouseDragThreshold:                            float; // = 6.0f           // Distance threshold before considering we are dragging.
    KeyRepeatDelay:                                float; // = 0.275f         // When holding a key/button, time before it starts repeating, in seconds (for buttons in Repeat mode, etc.).
    KeyRepeatRate:                                 float; // = 0.050f         // When holding a key/button, rate at which it repeats, in seconds.

    ConfigErrorRecovery:                           bool; // = true       // Enable error recovery support. Some errors won't be detected and lead to direct crashes if recovery is disabled.
    ConfigErrorRecoveryEnableAssert:               bool; // = true       // Enable asserts on recoverable error. By default call IM_ASSERT() when returning from a failing IM_ASSERT_USER_ERROR()
    ConfigErrorRecoveryEnableDebugLog:             bool; // = true       // Enable debug log output on recoverable errors.
    ConfigErrorRecoveryEnableTooltip:              bool; // = true       // Enable tooltip on recoverable errors. The tooltip include a way to enable asserts if they were disabled.

    ConfigDebugIsDebuggerPresent:                  bool; // = false          // Enable various tools calling IM_DEBUG_BREAK().

    ConfigDebugHighlightIdConflicts:               bool; // = true           // Highlight and show an error message popup when multiple items have conflicting identifiers.
    ConfigDebugHighlightIdConflictsShowItemPicker: bool; //=true // Show "Item Picker" button in aforementioned popup.

    ConfigDebugBeginReturnValueOnce:               bool; // = false          // First-time calls to Begin()/BeginChild() will return false. NEEDS TO BE SET AT APPLICATION BOOT TIME if you don't want to miss windows.
    ConfigDebugBeginReturnValueLoop:               bool; // = false          // Some calls to Begin()/BeginChild() will return false. Will cycle through window depths then repeat. Suggested use: add "io.ConfigDebugBeginReturnValue = io.KeyShift" in your main loop then occasionally press SHIFT. Windows should be flickering while running.

    ConfigDebugIgnoreFocusLoss:                    bool; // = false          // Ignore io.AddFocusEvent(false), consequently not calling io.ClearInputKeys()/io.ClearInputMouse() in input processing.

    ConfigDebugIniSettings:                        bool; // = false          // Save .ini data with extra comments (particularly helpful for Docking, but makes saving slower)

    BackendPlatformName:                           *u8; // = NULL
    BackendRendererName:                           *u8; // = NULL
    BackendPlatformUserData:                       *void; // = NULL           // User data for platform backend
    BackendRendererUserData:                       *void; // = NULL           // User data for renderer backend
    BackendLanguageUserData:                       *void; // = NULL           // User data for non C++ programming language backend

    // Input Functions
    AddKeyEvent :: (this: *IO, key: Key, down: bool) -> void #cpp_method #foreign imgui "?AddKeyEvent@ImGuiIO@@QEAAXW4ImGuiKey@@_N@Z";
    AddKeyAnalogEvent :: (this: *IO, key: Key, down: bool, v: float) -> void #cpp_method #foreign imgui "?AddKeyAnalogEvent@ImGuiIO@@QEAAXW4ImGuiKey@@_NM@Z";
    AddMousePosEvent :: (this: *IO, x: float, y: float) -> void #cpp_method #foreign imgui "?AddMousePosEvent@ImGuiIO@@QEAAXMM@Z";
    AddMouseButtonEvent :: (this: *IO, button: s32, down: bool) -> void #cpp_method #foreign imgui "?AddMouseButtonEvent@ImGuiIO@@QEAAXH_N@Z";
    AddMouseWheelEvent :: (this: *IO, wheel_x: float, wheel_y: float) -> void #cpp_method #foreign imgui "?AddMouseWheelEvent@ImGuiIO@@QEAAXMM@Z";
    AddMouseSourceEvent :: (this: *IO, source: MouseSource) -> void #cpp_method #foreign imgui "?AddMouseSourceEvent@ImGuiIO@@QEAAXW4ImGuiMouseSource@@@Z";
    AddMouseViewportEvent :: (this: *IO, id: ID) -> void #cpp_method #foreign imgui "?AddMouseViewportEvent@ImGuiIO@@QEAAXI@Z";
    AddFocusEvent :: (this: *IO, focused: bool) -> void #cpp_method #foreign imgui "?AddFocusEvent@ImGuiIO@@QEAAX_N@Z";
    AddInputCharacter :: (this: *IO, c: u32) -> void #cpp_method #foreign imgui "?AddInputCharacter@ImGuiIO@@QEAAXI@Z";
    AddInputCharacterUTF16 :: (this: *IO, c: ImWchar16) -> void #cpp_method #foreign imgui "?AddInputCharacterUTF16@ImGuiIO@@QEAAXG@Z";
    AddInputCharactersUTF8 :: (this: *IO, str: *u8) -> void #cpp_method #foreign imgui "?AddInputCharactersUTF8@ImGuiIO@@QEAAXPEBD@Z";

    SetKeyEventNativeData :: (this: *IO, key: Key, native_keycode: s32, native_scancode: s32, native_legacy_index: s32 = -1) -> void #cpp_method #foreign imgui "?SetKeyEventNativeData@ImGuiIO@@QEAAXW4ImGuiKey@@HHH@Z";
    SetAppAcceptingEvents :: (this: *IO, accepting_events: bool) -> void #cpp_method #foreign imgui "?SetAppAcceptingEvents@ImGuiIO@@QEAAX_N@Z";
    ClearEventsQueue :: (this: *IO) -> void #cpp_method #foreign imgui "?ClearEventsQueue@ImGuiIO@@QEAAXXZ";
    ClearInputKeys :: (this: *IO) -> void #cpp_method #foreign imgui "?ClearInputKeys@ImGuiIO@@QEAAXXZ";
    ClearInputMouse :: (this: *IO) -> void #cpp_method #foreign imgui "?ClearInputMouse@ImGuiIO@@QEAAXXZ";

    WantCaptureMouse:                              bool; // Set when Dear ImGui will use mouse inputs, in this case do not dispatch them to your main game/application (either way, always pass on mouse inputs to imgui). (e.g. unclicked mouse is hovering over an imgui window, widget is active, mouse was clicked over an imgui window, etc.).
    WantCaptureKeyboard:                           bool; // Set when Dear ImGui will use keyboard inputs, in this case do not dispatch them to your main game/application (either way, always pass keyboard inputs to imgui). (e.g. InputText active, or an imgui window is focused and navigation is enabled, etc.).
    WantTextInput:                                 bool; // Mobile/console: when set, you may display an on-screen keyboard. This is set by Dear ImGui when it wants textual keyboard input to happen (e.g. when a InputText widget is active).
    WantSetMousePos:                               bool; // MousePos has been altered, backend should reposition mouse on next frame. Rarely used! Set only when io.ConfigNavMoveSetMousePos is enabled.
    WantSaveIniSettings:                           bool; // When manual .ini load/save is active (io.IniFilename == NULL), this will be set to notify your application that you can call SaveIniSettingsToMemory() and save yourself. Important: clear io.WantSaveIniSettings yourself after saving!
    NavActive:                                     bool; // Keyboard/Gamepad navigation is currently allowed (will handle ImGuiKey_NavXXX events) = a window is focused and it doesn't use the ImGuiWindowFlags_NoNavInputs flag.
    NavVisible:                                    bool; // Keyboard/Gamepad navigation highlight is visible and allowed (will handle ImGuiKey_NavXXX events).
    Framerate:                                     float; // Estimate of application framerate (rolling average over 60 frames, based on io.DeltaTime), in frame per second. Solely for convenience. Slow applications may not want to use a moving average or may want to reset underlying buffers occasionally.
    MetricsRenderVertices:                         s32; // Vertices output during last call to Render()
    MetricsRenderIndices:                          s32; // Indices output during last call to Render() = number of triangles * 3
    MetricsRenderWindows:                          s32; // Number of visible windows
    MetricsActiveWindows:                          s32; // Number of active windows
    MouseDelta:                                    ImVec2; // Mouse delta. Note that this is zero if either current or previous position are invalid (-FLT_MAX,-FLT_MAX), so a disappearing/reappearing mouse won't have a huge delta.

    Ctx:                                           *ImGuiContext; // Parent UI context (needs to be set explicitly by parent).

    MousePos:                                      ImVec2; // Mouse position, in pixels. Set to ImVec2(-FLT_MAX, -FLT_MAX) if mouse is unavailable (on another screen, etc.)
    MouseDown:                                     [5] bool; // Mouse buttons: 0=left, 1=right, 2=middle + extras (ImGuiMouseButton_COUNT == 5). Dear ImGui mostly uses left and right buttons. Other buttons allow us to track if the mouse is being used by your application + available to user as a convenience via IsMouse** API.
    MouseWheel:                                    float; // Mouse wheel Vertical: 1 unit scrolls about 5 lines text. >0 scrolls Up, <0 scrolls Down. Hold Shift to turn vertical scroll into horizontal scroll.
    MouseWheelH:                                   float; // Mouse wheel Horizontal. >0 scrolls Left, <0 scrolls Right. Most users don't have a mouse with a horizontal wheel, may not be filled by all backends.
    MouseSource_:                                  MouseSource; // Mouse actual input peripheral (Mouse/TouchScreen/Pen).
    MouseHoveredViewport:                          ID; // (Optional) Modify using io.AddMouseViewportEvent(). With multi-viewports: viewport the OS mouse is hovering. If possible _IGNORING_ viewports with the ImGuiViewportFlags_NoInputs flag is much better (few backends can handle that). Set io.BackendFlags |= ImGuiBackendFlags_HasMouseHoveredViewport if you can provide this info. If you don't imgui will infer the value using the rectangles and last focused time of the viewports it knows about (ignoring other OS windows).
    KeyCtrl:                                       bool; // Keyboard modifier down: Ctrl (non-macOS), Cmd (macOS)
    KeyShift:                                      bool; // Keyboard modifier down: Shift
    KeyAlt:                                        bool; // Keyboard modifier down: Alt
    KeySuper:                                      bool; // Keyboard modifier down: Windows/Super (non-macOS), Ctrl (macOS)

    KeyMods:                                       KeyChord; // Key mods flags (any of ImGuiMod_Ctrl/ImGuiMod_Shift/ImGuiMod_Alt/ImGuiMod_Super flags, same as io.KeyCtrl/KeyShift/KeyAlt/KeySuper but merged into flags). Read-only, updated by NewFrame()
    KeysData:                                      [155] KeyData; // Key state for all known keys. MUST use 'key - ImGuiKey_NamedKey_BEGIN' as index. Use IsKeyXXX() functions to access this.
    WantCaptureMouseUnlessPopupClose:              bool; // Alternative to WantCaptureMouse: (WantCaptureMouse == true && WantCaptureMouseUnlessPopupClose == false) when a click over void is expected to close a popup.
    MousePosPrev:                                  ImVec2; // Previous mouse position (note that MouseDelta is not necessary == MousePos-MousePosPrev, in case either position is invalid)
    MouseClickedPos:                               [5] ImVec2; // Position at time of clicking
    MouseClickedTime:                              [5] float64; // Time of last click (used to figure out double-click)
    MouseClicked:                                  [5] bool; // Mouse button went from !Down to Down (same as MouseClickedCount[x] != 0)
    MouseDoubleClicked:                            [5] bool; // Has mouse button been double-clicked? (same as MouseClickedCount[x] == 2)
    MouseClickedCount:                             [5] ImU16; // == 0 (not clicked), == 1 (same as MouseClicked[]), == 2 (double-clicked), == 3 (triple-clicked) etc. when going from !Down to Down
    MouseClickedLastCount:                         [5] ImU16; // Count successive number of clicks. Stays valid after mouse release. Reset after another click is done.
    MouseReleased:                                 [5] bool; // Mouse button went from Down to !Down
    MouseReleasedTime:                             [5] float64; // Time of last released (rarely used! but useful to handle delayed single-click when trying to disambiguate them from double-click).
    MouseDownOwned:                                [5] bool; // Track if button was clicked inside a dear imgui window or over void blocked by a popup. We don't request mouse capture from the application if click started outside ImGui bounds.
    MouseDownOwnedUnlessPopupClose:                [5] bool; // Track if button was clicked inside a dear imgui window.
    MouseWheelRequestAxisSwap:                     bool; // On a non-Mac system, holding Shift requests WheelY to perform the equivalent of a WheelX event. On a Mac system this is already enforced by the system.
    MouseCtrlLeftAsRightClick:                     bool; // (OSX) Set to true when the current click was a Ctrl+Click that spawned a simulated right click
    MouseDownDuration:                             [5] float; // Duration the mouse button has been down (0.0f == just clicked)
    MouseDownDurationPrev:                         [5] float; // Previous time the mouse button has been down
    MouseDragMaxDistanceAbs:                       [5] ImVec2; // Maximum distance, absolute, on each axis, of how much mouse has traveled from the clicking point
    MouseDragMaxDistanceSqr:                       [5] float; // Squared maximum distance of how much mouse has traveled from the clicking point (used for moving thresholds)
    PenPressure:                                   float; // Touch/Pen pressure (0.0f to 1.0f, should be >0.0f only when MouseDown[0] == true). Helper storage currently unused by Dear ImGui.
    AppFocusLost:                                  bool; // Only modify via AddFocusEvent()
    AppAcceptingEvents:                            bool; // Only modify via SetAppAcceptingEvents()
    InputQueueSurrogate:                           ImWchar16; // For AddInputCharacterUTF16()
    InputQueueCharacters:                          ImVector(ImWchar); // Queue of _characters_ input (obtained by platform backend). Fill using AddInputCharacter() helper.

    FontGlobalScale:                               float; // Moved io.FontGlobalScale to style.FontScaleMain in 1.92 (June 2025)

    // Legacy: before 1.91.1, clipboard functions were stored in ImGuiIO instead of ImGuiPlatformIO.
    // As this is will affect all users of custom engines/backends, we are providing proper legacy redirection (will obsolete).
    GetClipboardTextFn:                            #type (user_data: *void) -> *u8 #c_call;
    SetClipboardTextFn:                            #type (user_data: *void, text: *u8) -> void #c_call;
    ClipboardUserData:                             *void;

    Constructor :: (this: *IO) -> void #cpp_method #foreign imgui "??0ImGuiIO@@QEAA@XZ";
}

// Shared state of InputText(), passed as an argument to your callback when a ImGuiInputTextFlags_Callback* flag is used.
// The callback function should return 0 by default.
// Callbacks (follow a flag name and see comments in ImGuiInputTextFlags_ declarations for more details)
// - ImGuiInputTextFlags_CallbackEdit:        Callback on buffer edit. Note that InputText() already returns true on edit + you can always use IsItemEdited(). The callback is useful to manipulate the underlying buffer while focus is active.
// - ImGuiInputTextFlags_CallbackAlways:      Callback on each iteration
// - ImGuiInputTextFlags_CallbackCompletion:  Callback on pressing TAB
// - ImGuiInputTextFlags_CallbackHistory:     Callback on pressing Up/Down arrows
// - ImGuiInputTextFlags_CallbackCharFilter:  Callback on character inputs to replace or discard them. Modify 'EventChar' to replace or discard, or return 1 in callback to discard.
// - ImGuiInputTextFlags_CallbackResize:      Callback on buffer capacity changes request (beyond 'buf_size' parameter value), allowing the string to grow.
InputTextCallbackData :: struct {
    Ctx:            *ImGuiContext; // Parent UI context
    EventFlag:      InputTextFlags; // One ImGuiInputTextFlags_Callback*    // Read-only
    Flags:          InputTextFlags; // What user passed to InputText()      // Read-only
    UserData:       *void; // What user passed to InputText()      // Read-only
    ID_:            ID; // Widget ID                            // Read-only

    EventKey:       Key; // Key pressed (Up/Down/TAB)            // Read-only    // [Completion,History]
    EventChar:      ImWchar; // Character input                      // Read-write   // [CharFilter] Replace character with another one, or set to zero to drop. return 1 is equivalent to setting EventChar=0;
    EventActivated: bool; // Input field just got activated       // Read-only    // [Always]
    BufDirty:       bool; // Set if you modify Buf/BufTextLen!    // Write        // [Completion,History,Always]
    Buf:            *u8; // Text buffer                          // Read-write   // [Resize] Can replace pointer / [Completion,History,Always] Only write to pointed data, don't replace the actual pointer!
    BufTextLen:     s32; // Text length (in bytes)               // Read-write   // [Resize,Completion,History,Always] Exclude zero-terminator storage. In C land: == strlen(some_text), in C++ land: string.length()
    BufSize:        s32; // Buffer size (in bytes) = capacity+1  // Read-only    // [Resize,Completion,History,Always] Include zero-terminator storage. In C land: == ARRAYSIZE(my_char_array), in C++ land: string.capacity()+1
    CursorPos:      s32; //                                      // Read-write   // [Completion,History,Always,CharFilter]
    SelectionStart: s32; //                                      // Read-write   // [Completion,History,Always,CharFilter] == to SelectionEnd when no selection
    SelectionEnd:   s32; //                                      // Read-write   // [Completion,History,Always,CharFilter]

    // Helper functions for text manipulation.
    // Use those function to benefit from the CallbackResize behaviors. Calling those function reset the selection.
    Constructor :: (this: *InputTextCallbackData) -> void #cpp_method #foreign imgui "??0ImGuiInputTextCallbackData@@QEAA@XZ";
    DeleteChars :: (this: *InputTextCallbackData, pos: s32, bytes_count: s32) -> void #cpp_method #foreign imgui "?DeleteChars@ImGuiInputTextCallbackData@@QEAAXHH@Z";
    InsertChars :: (this: *InputTextCallbackData, pos: s32, text: *u8, text_end: *u8 = null) -> void #cpp_method #foreign imgui "?InsertChars@ImGuiInputTextCallbackData@@QEAAXHPEBD0@Z";
    InsertChars :: (this: *InputTextCallbackData, pos: s32, text: string) #no_context {
        InsertChars(this, pos, text.data, text.data + text.count);
    }
}

// Resizing callback data to apply custom constraint. As enabled by SetNextWindowSizeConstraints(). Callback is called during the next Begin().
// NB: For basic min/max size constraint on each axis you don't need to use the callback! The SetNextWindowSizeConstraints() parameters are enough.
SizeCallbackData :: struct {
    UserData:    *void; // Read-only.   What user passed to SetNextWindowSizeConstraints(). Generally store an integer or float in here (need reinterpret_cast<>).
    Pos:         ImVec2; // Read-only.   Window position, for reference.
    CurrentSize: ImVec2; // Read-only.   Current window size.
    DesiredSize: ImVec2; // Read-write.  Desired size, based on user's mouse position. Write to this field to restrain resizing.
}

// [ALPHA] Rarely used / very advanced uses only. Use with SetNextWindowClass() and DockSpace() functions.
// Important: the content of this class is still highly WIP and likely to change and be refactored
// before we stabilize Docking features. Please be mindful if using this.
// Provide hints:
// - To the platform backend via altered viewport flags (enable/disable OS decoration, OS task bar icons, etc.)
// - To the platform backend for OS level parent/child relationships of viewport (otherwise: default is configured via io.ConfigViewportsNoDefaultParent)
// - To the docking system for various options and filtering.
WindowClass :: struct {
    ClassId:                    ID; // User data. 0 = Default class (unclassed). Windows of different classes cannot be docked with each others.
    ParentViewportId:           ID; // Hint for the platform backend. -1: use default. 0: request platform backend to not parent the platform. != 0: request platform backend to create a parent<>child relationship between the platform windows. Not conforming backends are free to e.g. parent every viewport to the main viewport or not.
    FocusRouteParentWindowId:   ID; // ID of parent window for shortcut focus route evaluation, e.g. Shortcut() call from Parent Window will succeed when this window is focused.
    ViewportFlagsOverrideSet:   ViewportFlags; // Viewport flags to set when a window of this class owns a viewport. This allows you to enforce OS decoration or task bar icon, override the defaults on a per-window basis.
    ViewportFlagsOverrideClear: ViewportFlags; // Viewport flags to clear when a window of this class owns a viewport. This allows you to enforce OS decoration or task bar icon, override the defaults on a per-window basis.
    TabItemFlagsOverrideSet:    TabItemFlags; // [EXPERIMENTAL] TabItem flags to set when a window of this class gets submitted into a dock node tab bar. May use with ImGuiTabItemFlags_Leading or ImGuiTabItemFlags_Trailing.
    DockNodeFlagsOverrideSet:   DockNodeFlags; // [EXPERIMENTAL] Dock node flags to set when a window of this class is hosted by a dock node (it doesn't have to be selected!)
    DockingAlwaysTabBar:        bool; // Set to true to enforce single floating windows of this class always having their own docking node (equivalent of setting the global io.ConfigDockingAlwaysTabBar)
    DockingAllowUnclassed:      bool; // Set to true to allow windows of this class to be docked/merged with an unclassed window. // FIXME-DOCK: Move to DockNodeFlags override?
    PlatformIconData:           *void; // [EXPERIMENTAL] Pass opaque data for Platform backend to handle.
}

// Data payload for Drag and Drop operations: AcceptDragDropPayload(), GetDragDropPayload()
Payload :: struct {
    Data:           *void; // Data (copied and owned by dear imgui)
    DataSize:       s32; // Data size

    SourceId:       ID; // Source item id
    SourceParentId: ID; // Source parent id (if available)
    DataFrameCount: s32; // Data timestamp
    DataType:       [33] u8; // Data type tag (short user-supplied string, 32 characters max)
    Preview:        bool; // Set when AcceptDragDropPayload() was called and mouse has been hovering the target item (nb: handle overlapping drag targets)
    Delivery:       bool; // Set when AcceptDragDropPayload() was called and mouse button is released over the target item.
}

// Helper: Execute a block of code at maximum once a frame. Convenient if you want to quickly create a UI within deep-nested code that runs multiple times every frame.
// Usage: static ImGuiOnceUponAFrame oaf; if (oaf) ImGui::Text("This will be called only once per frame");
OnceUponAFrame :: struct {
    RefFrame: s32;
}

// Helper: Parse and apply text filters. In format "aaaaa[,bbbb][,ccccc]"
TextFilter :: struct {
    Constructor :: (this: *TextFilter, default_filter: *u8 = "") -> void #cpp_method #foreign imgui "??0ImGuiTextFilter@@QEAA@PEBD@Z";
    Draw :: (this: *TextFilter, label: *u8 = "Filter (inc,-exc)", width: float = 0.0) -> bool #cpp_method #foreign imgui "?Draw@ImGuiTextFilter@@QEAA_NPEBDM@Z";
    PassFilter :: (this: *TextFilter, text: *u8, text_end: *u8 = null) -> bool #cpp_method #foreign imgui "?PassFilter@ImGuiTextFilter@@QEBA_NPEBD0@Z";
    PassFilter :: (this: *TextFilter, text: string) -> bool #no_context {
        return PassFilter(this, text.data, text.data + text.count);
    }
    Build :: (this: *TextFilter) -> void #cpp_method #foreign imgui "?Build@ImGuiTextFilter@@QEAAXXZ";

    // [Internal]
    TextRange :: struct {
        b: *u8;
        e: *u8;

        split :: (this: *TextRange, separator: u8, out: *ImVector(TextRange)) -> void #cpp_method #foreign imgui "?split@ImGuiTextRange@ImGuiTextFilter@@QEBAXDPEAU?$ImVector@UImGuiTextRange@ImGuiTextFilter@@@@@Z";
    }

    InputBuf:  [256] u8;
    Filters:   ImVector(TextRange);
    CountGrep: s32;
}

// [Internal] Key+Value for ImGuiStorage
StoragePair :: struct {
    key: ID;
    union {
        val_i: s32;
        val_f: float;
        val_p: *void;
    }
}

// Helper: Key->Value storage
// Typically you don't have to worry about this since a storage is held within each Window.
// We use it to e.g. store collapse state for a tree (Int 0/1)
// This is optimized for efficient lookup (dichotomy into a contiguous buffer) and rare insertion (typically tied to user interactions aka max once a frame)
// You can use it as custom user storage for temporary values. Declare your own storage if, for example:
// - You want to manipulate the open/close state of a particular sub-tree in your interface (tree node uses Int 0/1 to store their state).
// - You want to store custom debug data easily without adding or editing structures in your code (probably not efficient, but convenient)
// Types are NOT stored, so it is up to you to make sure your Key don't collide with different types.
Storage :: struct {
    // [Internal]
    Data: ImVector(StoragePair);

    GetInt :: (this: *Storage, key: ID, default_val: s32 = 0) -> s32 #cpp_method #foreign imgui "?GetInt@ImGuiStorage@@QEBAHIH@Z";
    SetInt :: (this: *Storage, key: ID, val: s32) -> void #cpp_method #foreign imgui "?SetInt@ImGuiStorage@@QEAAXIH@Z";
    GetBool :: (this: *Storage, key: ID, default_val := false) -> bool #cpp_method #foreign imgui "?GetBool@ImGuiStorage@@QEBA_NI_N@Z";
    SetBool :: (this: *Storage, key: ID, val: bool) -> void #cpp_method #foreign imgui "?SetBool@ImGuiStorage@@QEAAXI_N@Z";
    GetFloat :: (this: *Storage, key: ID, default_val: float = 0.0) -> float #cpp_method #foreign imgui "?GetFloat@ImGuiStorage@@QEBAMIM@Z";
    SetFloat :: (this: *Storage, key: ID, val: float) -> void #cpp_method #foreign imgui "?SetFloat@ImGuiStorage@@QEAAXIM@Z";
    GetVoidPtr :: (this: *Storage, key: ID) -> *void #cpp_method #foreign imgui "?GetVoidPtr@ImGuiStorage@@QEBAPEAXI@Z";
    SetVoidPtr :: (this: *Storage, key: ID, val: *void) -> void #cpp_method #foreign imgui "?SetVoidPtr@ImGuiStorage@@QEAAXIPEAX@Z";

    // - Get***Ref() functions finds pair, insert on demand if missing, return pointer. Useful if you intend to do Get+Set.
    // - References are only valid until a new value is added to the storage. Calling a Set***() function or a Get***Ref() function invalidates the pointer.
    // - A typical use case where this is convenient for quick hacking (e.g. add storage during a live Edit&Continue session if you can't modify existing struct)
    //      float* pvar = ImGui::GetFloatRef(key); ImGui::SliderFloat("var", pvar, 0, 100.0f); some_var += *pvar;
    GetIntRef :: (this: *Storage, key: ID, default_val: s32 = 0) -> *s32 #cpp_method #foreign imgui "?GetIntRef@ImGuiStorage@@QEAAPEAHIH@Z";
    GetBoolRef :: (this: *Storage, key: ID, default_val := false) -> *bool #cpp_method #foreign imgui "?GetBoolRef@ImGuiStorage@@QEAAPEA_NI_N@Z";
    GetFloatRef :: (this: *Storage, key: ID, default_val: float = 0.0) -> *float #cpp_method #foreign imgui "?GetFloatRef@ImGuiStorage@@QEAAPEAMIM@Z";
    GetVoidPtrRef :: (this: *Storage, key: ID, default_val: *void = null) -> **void #cpp_method #foreign imgui "?GetVoidPtrRef@ImGuiStorage@@QEAAPEAPEAXIPEAX@Z";

    // Advanced: for quicker full rebuild of a storage (instead of an incremental one), you may add all your contents and then sort once.
    BuildSortByKey :: (this: *Storage) -> void #cpp_method #foreign imgui "?BuildSortByKey@ImGuiStorage@@QEAAXXZ";

    // Obsolete: use on your own storage if you know only integer are being stored (open/close all tree nodes)
    SetAllInt :: (this: *Storage, val: s32) -> void #cpp_method #foreign imgui "?SetAllInt@ImGuiStorage@@QEAAXH@Z";
}

// Flags for ImGuiListClipper (currently not fully exposed in function calls: a future refactor will likely add this to ImGuiListClipper::Begin function equivalent)
ListClipperFlags :: enum_flags s32 {
    None                  :: 0x0;
    NoSetTableRowCounters :: 0x1;

    ImGuiListClipperFlags_None                  :: None;
    ImGuiListClipperFlags_NoSetTableRowCounters :: NoSetTableRowCounters;
}

// Helper: Manually clip large list of items.
// If you have lots evenly spaced items and you have random access to the list, you can perform coarse
// clipping based on visibility to only submit items that are in view.
// The clipper calculates the range of visible items and advance the cursor to compensate for the non-visible items we have skipped.
// (Dear ImGui already clip items based on their bounds but: it needs to first layout the item to do so, and generally
//  fetching/submitting your own data incurs additional cost. Coarse clipping using ImGuiListClipper allows you to easily
//  scale using lists with tens of thousands of items without a problem)
// Usage:
//   ImGuiListClipper clipper;
//   clipper.Begin(1000);         // We have 1000 elements, evenly spaced.
//   while (clipper.Step())
//       for (int i = clipper.DisplayStart; i < clipper.DisplayEnd; i++)
//           ImGui::Text("line number %d", i);
// Generally what happens is:
// - Clipper lets you process the first element (DisplayStart = 0, DisplayEnd = 1) regardless of it being visible or not.
// - User code submit that one element.
// - Clipper can measure the height of the first element
// - Clipper calculate the actual range of elements to display based on the current clipping rectangle, position the cursor before the first visible element.
// - User code submit visible elements.
// - The clipper also handles various subtleties related to keyboard/gamepad navigation, wrapping etc.
ListClipper :: struct {
    DisplayStart:     s32; // First item to display, updated by each call to Step()
    DisplayEnd:       s32; // End of items to display (exclusive)
    UserIndex:        s32; // Helper storage for user convenience/code. Optional, and otherwise unused if you don't use it.
    ItemsCount:       s32; // [Internal] Number of items
    ItemsHeight:      float; // [Internal] Height of item after a first step and item submission can calculate it
    Flags:            ListClipperFlags; // [Internal] Flags, currently not yet well exposed.
    StartPosY:        float64; // [Internal] Cursor position at the time of Begin() or after table frozen rows are all processed
    StartSeekOffsetY: float64; // [Internal] Account for frozen rows in a table and initial loss of precision in very large windows.
    Ctx:              *ImGuiContext; // [Internal] Parent UI context
    TempData:         *void; // [Internal] Internal data

    // items_count: Use INT_MAX if you don't know how many items you have (in which case the cursor won't be advanced in the final step, and you can call SeekCursorForItem() manually if you need)
    // items_height: Use -1.0f to be calculated automatically on first step. Otherwise pass in the distance between your items, typically GetTextLineHeightWithSpacing() or GetFrameHeightWithSpacing().
    Constructor :: (this: *ListClipper) -> void #cpp_method #foreign imgui "??0ImGuiListClipper@@QEAA@XZ";
    Destructor :: (this: *ListClipper) -> void #cpp_method #foreign imgui "??1ImGuiListClipper@@QEAA@XZ";
    Begin :: (this: *ListClipper, items_count: s32, items_height: float = -1.0) -> void #cpp_method #foreign imgui "?Begin@ImGuiListClipper@@QEAAXHM@Z";
    End :: (this: *ListClipper) -> void #cpp_method #foreign imgui "?End@ImGuiListClipper@@QEAAXXZ";
    Step :: (this: *ListClipper) -> bool #cpp_method #foreign imgui "?Step@ImGuiListClipper@@QEAA_NXZ";

    IncludeItemsByIndex :: (this: *ListClipper, item_begin: s32, item_end: s32) -> void #cpp_method #foreign imgui "?IncludeItemsByIndex@ImGuiListClipper@@QEAAXHH@Z";

    // Seek cursor toward given item. This is automatically called while stepping.
    // - The only reason to call this is: you can use ImGuiListClipper::Begin(INT_MAX) if you don't know item count ahead of time.
    // - In this case, after all steps are done, you'll want to call SeekCursorForItem(item_count).
    SeekCursorForItem :: (this: *ListClipper, item_index: s32) -> void #cpp_method #foreign imgui "?SeekCursorForItem@ImGuiListClipper@@QEAAXH@Z";
}

// Flags for BeginMultiSelect()
MultiSelectFlags :: enum_flags s32 {
    None                  :: 0x0;
    SingleSelect          :: 0x1;
    NoSelectAll           :: 0x2;
    NoRangeSelect         :: 0x4;
    NoAutoSelect          :: 0x8;
    NoAutoClear           :: 0x10;
    NoAutoClearOnReselect :: 0x20;
    BoxSelect1d           :: 0x40;
    BoxSelect2d           :: 0x80;
    BoxSelectNoScroll     :: 0x100;
    ClearOnEscape         :: 0x200;
    ClearOnClickVoid      :: 0x400;
    ScopeWindow           :: 0x800;
    ScopeRect             :: 0x1000;
    SelectOnAuto          :: 0x2000;
    SelectOnClickAlways   :: 0x4000;
    SelectOnClickRelease  :: 0x8000;

    NavWrapX              :: 0x10000;
    NoSelectOnRightClick  :: 0x20000;
    SelectOnMask_         :: 0xe000;

    SelectOnClick         :: 0x2000;

    ImGuiMultiSelectFlags_None                  :: None;
    ImGuiMultiSelectFlags_SingleSelect          :: SingleSelect;
    ImGuiMultiSelectFlags_NoSelectAll           :: NoSelectAll;
    ImGuiMultiSelectFlags_NoRangeSelect         :: NoRangeSelect;
    ImGuiMultiSelectFlags_NoAutoSelect          :: NoAutoSelect;
    ImGuiMultiSelectFlags_NoAutoClear           :: NoAutoClear;
    ImGuiMultiSelectFlags_NoAutoClearOnReselect :: NoAutoClearOnReselect;
    ImGuiMultiSelectFlags_BoxSelect1d           :: BoxSelect1d;
    ImGuiMultiSelectFlags_BoxSelect2d           :: BoxSelect2d;
    ImGuiMultiSelectFlags_BoxSelectNoScroll     :: BoxSelectNoScroll;
    ImGuiMultiSelectFlags_ClearOnEscape         :: ClearOnEscape;
    ImGuiMultiSelectFlags_ClearOnClickVoid      :: ClearOnClickVoid;
    ImGuiMultiSelectFlags_ScopeWindow           :: ScopeWindow;
    ImGuiMultiSelectFlags_ScopeRect             :: ScopeRect;
    ImGuiMultiSelectFlags_SelectOnAuto          :: SelectOnAuto;
    ImGuiMultiSelectFlags_SelectOnClickAlways   :: SelectOnClickAlways;
    ImGuiMultiSelectFlags_SelectOnClickRelease  :: SelectOnClickRelease;

    ImGuiMultiSelectFlags_NavWrapX              :: NavWrapX;
    ImGuiMultiSelectFlags_NoSelectOnRightClick  :: NoSelectOnRightClick;
    ImGuiMultiSelectFlags_SelectOnMask_         :: SelectOnMask_;

    ImGuiMultiSelectFlags_SelectOnClick         :: SelectOnClick;
}

// Main IO structure returned by BeginMultiSelect()/EndMultiSelect().
// This mainly contains a list of selection requests.
// - Use 'Demo->Tools->Debug Log->Selection' to see requests as they happen.
// - Some fields are only useful if your list is dynamic and allows deletion (getting post-deletion focus/state right is shown in the demo)
// - Below: who reads/writes each fields? 'r'=read, 'w'=write, 'ms'=multi-select code, 'app'=application/user code.
MultiSelectIO :: struct {
    Requests:      ImVector(SelectionRequest); //  ms:w, app:r     /  ms:w  app:r   // Requests to apply to your selection data.
    RangeSrcItem:  SelectionUserData; //  ms:w  app:r     /                // (If using clipper) Begin: Source item (often the first selected item) must never be clipped: use clipper.IncludeItemByIndex() to ensure it is submitted.
    NavIdItem:     SelectionUserData; //  ms:w, app:r     /                // (If using deletion) Last known SetNextItemSelectionUserData() value for NavId (if part of submitted items).
    NavIdSelected: bool; //  ms:w, app:r     /        app:r   // (If using deletion) Last known selection state for NavId (if part of submitted items).
    RangeSrcReset: bool; //        app:w     /  ms:r          // (If using deletion) Set before EndMultiSelect() to reset ResetSrcItem (e.g. if deleted selection).
    ItemsCount:    s32; //  ms:w, app:r     /        app:r   // 'int items_count' parameter to BeginMultiSelect() is copied here for convenience, allowing simpler calls to your ApplyRequests handler. Not used internally.
}

// Selection request type
SelectionRequestType :: enum s32 {
    None     :: 0;
    SetAll   :: 1;
    SetRange :: 2;

    ImGuiSelectionRequestType_None     :: None;
    ImGuiSelectionRequestType_SetAll   :: SetAll;
    ImGuiSelectionRequestType_SetRange :: SetRange;
}

// Selection request item
SelectionRequest :: struct {
    Type:           SelectionRequestType; //  ms:w, app:r     /  ms:w, app:r   // Request type. You'll most often receive 1 Clear + 1 SetRange with a single-item range.
    Selected:       bool; //  ms:w, app:r     /  ms:w, app:r   // Parameter for SetAll/SetRange requests (true = select, false = unselect)
    RangeDirection: ImS8; //                  /  ms:w  app:r   // Parameter for SetRange request: +1 when RangeFirstItem comes before RangeLastItem, -1 otherwise. Useful if you want to preserve selection order on a backward Shift+Click.
    RangeFirstItem: SelectionUserData; //                  /  ms:w, app:r   // Parameter for SetRange request (this is generally == RangeSrcItem when shift selecting from top to bottom).
    RangeLastItem:  SelectionUserData; //                  /  ms:w, app:r   // Parameter for SetRange request (this is generally == RangeSrcItem when shift selecting from bottom to top). Inclusive!
}

// Optional helper to store multi-selection state + apply multi-selection requests.
// - Used by our demos and provided as a convenience to easily implement basic multi-selection.
// - Iterate selection with 'void* it = NULL; ImGuiID id; while (selection.GetNextSelectedItem(&it, &id)) { ... }'
//   Or you can check 'if (Contains(id)) { ... }' for each possible object if their number is not too high to iterate.
// - USING THIS IS NOT MANDATORY. This is only a helper and not a required API.
// To store a multi-selection, in your application you could:
// - Use this helper as a convenience. We use our simple key->value ImGuiStorage as a std::set<ImGuiID> replacement.
// - Use your own external storage: e.g. std::set<MyObjectId>, std::vector<MyObjectId>, interval trees, intrusively stored selection etc.
// In ImGuiSelectionBasicStorage we:
// - always use indices in the multi-selection API (passed to SetNextItemSelectionUserData(), retrieved in ImGuiMultiSelectIO)
// - use the AdapterIndexToStorageId() indirection layer to abstract how persistent selection data is derived from an index.
// - use decently optimized logic to allow queries and insertion of very large selection sets.
// - do not preserve selection order.
// Many combinations are possible depending on how you prefer to store your items and how you prefer to store your selection.
// Large applications are likely to eventually want to get rid of this indirection layer and do their own thing.
// See https://github.com/ocornut/imgui/wiki/Multi-Select for details and pseudo-code using this helper.
SelectionBasicStorage :: struct {
    Size:                    s32; //          // Number of selected items, maintained by this helper.
    PreserveOrder:           bool; // = false  // GetNextSelectedItem() will return ordered selection (currently implemented by two additional sorts of selection. Could be improved)
    UserData:                *void; // = NULL   // User data for use by adapter function        // e.g. selection.UserData = (void*)my_items;
    AdapterIndexToStorageId: #type (self: *SelectionBasicStorage, idx: s32) -> ID #c_call; // e.g. selection.AdapterIndexToStorageId = [](ImGuiSelectionBasicStorage* self, int idx) { return ((MyItems**)self->UserData)[idx]->ID; };
    _SelectionOrder:         s32; // [Internal] Increasing counter to store selection order
    _Storage:                Storage; // [Internal] Selection set. Think of this as similar to e.g. std::set<ImGuiID>. Prefer not accessing directly: iterate with GetNextSelectedItem().

    // Methods
    Constructor :: (this: *SelectionBasicStorage) -> void #cpp_method #foreign imgui "??0ImGuiSelectionBasicStorage@@QEAA@XZ";
    ApplyRequests :: (this: *SelectionBasicStorage, ms_io: *MultiSelectIO) -> void #cpp_method #foreign imgui "?ApplyRequests@ImGuiSelectionBasicStorage@@QEAAXPEAUImGuiMultiSelectIO@@@Z";
    Contains :: (this: *SelectionBasicStorage, id: ID) -> bool #cpp_method #foreign imgui "?Contains@ImGuiSelectionBasicStorage@@QEBA_NI@Z";
    Clear :: (this: *SelectionBasicStorage) -> void #cpp_method #foreign imgui "?Clear@ImGuiSelectionBasicStorage@@QEAAXXZ";
    Swap :: (this: *SelectionBasicStorage, r: *SelectionBasicStorage) -> void #cpp_method #foreign imgui "?Swap@ImGuiSelectionBasicStorage@@QEAAXAEAU1@@Z";
    SetItemSelected :: (this: *SelectionBasicStorage, id: ID, selected: bool) -> void #cpp_method #foreign imgui "?SetItemSelected@ImGuiSelectionBasicStorage@@QEAAXI_N@Z";
    GetNextSelectedItem :: (this: *SelectionBasicStorage, opaque_it: **void, out_id: *ID) -> bool #cpp_method #foreign imgui "?GetNextSelectedItem@ImGuiSelectionBasicStorage@@QEAA_NPEAPEAXPEAI@Z";
}

// Optional helper to apply multi-selection requests to existing randomly accessible storage.
// Convenient if you want to quickly wire multi-select API on e.g. an array of bool or items storing their own selection state.
SelectionExternalStorage :: struct {
    UserData:               *void; // User data for use by adapter function                                // e.g. selection.UserData = (void*)my_items;
    AdapterSetItemSelected: #type (self: *SelectionExternalStorage, idx: s32, selected: bool) -> void #c_call; // e.g. AdapterSetItemSelected = [](ImGuiSelectionExternalStorage* self, int idx, bool selected) { ((MyItems**)self->UserData)[idx]->Selected = selected; }

    // Methods
    Constructor :: (this: *SelectionExternalStorage) -> void #cpp_method #foreign imgui "??0ImGuiSelectionExternalStorage@@QEAA@XZ";
    ApplyRequests :: (this: *SelectionExternalStorage, ms_io: *MultiSelectIO) -> void #cpp_method #foreign imgui "?ApplyRequests@ImGuiSelectionExternalStorage@@QEAAXPEAUImGuiMultiSelectIO@@@Z";
}

ImDrawIdx :: u16;

// Typically, 1 command = 1 GPU draw call (unless command is a callback)
// - VtxOffset: When 'io.BackendFlags & ImGuiBackendFlags_RendererHasVtxOffset' is enabled,
//   this fields allow us to render meshes larger than 64K vertices while keeping 16-bit indices.
//   Backends made for <1.71. will typically ignore the VtxOffset fields.
// - The ClipRect/TexRef/VtxOffset fields must be contiguous as we memcmp() them together (this is asserted for).
ImDrawCmd :: struct {
    ClipRect:               ImVec4; // 4*4  // Clipping rectangle (x1, y1, x2, y2). Subtract ImDrawData->DisplayPos to get clipping rectangle in "viewport" coordinates
    TexRef:                 ImTextureRef; // 16   // Reference to a font/texture atlas (where backend called ImTextureData::SetTexID()) or to a user-provided texture ID (via e.g. ImGui::Image() calls). Both will lead to a ImTextureID value.
    VtxOffset:              u32; // 4    // Start offset in vertex buffer. ImGuiBackendFlags_RendererHasVtxOffset: always 0, otherwise may be >0 to support meshes larger than 64K vertices with 16-bit indices.
    IdxOffset:              u32; // 4    // Start offset in index buffer.
    ElemCount:              u32; // 4    // Number of indices (multiple of 3) to be rendered as triangles. Vertices are stored in the callee ImDrawList's vtx_buffer[] array, indices in idx_buffer[].
    UserCallback:           ImDrawCallback; // 4-8  // If != NULL, call the function instead of rendering the vertices. clip_rect and texture_id will be set normally.
    UserCallbackData:       *void; // 4-8  // Callback user data (when UserCallback != NULL). If called AddCallback() with size == 0, this is a copy of the AddCallback() argument. If called AddCallback() with size > 0, this is pointing to a buffer where data is stored.
    UserCallbackDataSize:   s32; // 4 // Size of callback user data when using storage, otherwise 0.
    UserCallbackDataOffset: s32; // 4 // [Internal] Offset of callback user data when using storage, otherwise -1.
}

ImDrawVert :: struct {
    pos: ImVec2;
    uv:  ImVec2;
    col: ImU32;
}

// [Internal] For use by ImDrawList
ImDrawCmdHeader :: struct {
    ClipRect:  ImVec4;
    TexRef:    ImTextureRef;
    VtxOffset: u32;
}

// Forward declarations: ImDrawList, ImFontAtlas layer
ImDrawChannel :: struct {
    _CmdBuffer: ImVector(ImDrawCmd);
    _IdxBuffer: ImVector(ImDrawIdx);
}

// Split/Merge functions are used to split the draw list into different layers which can be drawn into out of order.
// This is used by the Columns/Tables API, so items of each column can be batched together in a same draw call.
ImDrawListSplitter :: struct {
    _Current:  s32; // Current channel number (0)
    _Count:    s32; // Number of active channels (1+)
    _Channels: ImVector(ImDrawChannel); // Draw channels (not resized down so _Count might be < Channels.Size)

    ClearFreeMemory :: (this: *ImDrawListSplitter) -> void #cpp_method #foreign imgui "?ClearFreeMemory@ImDrawListSplitter@@QEAAXXZ";
    Split :: (this: *ImDrawListSplitter, draw_list: *ImDrawList, count: s32) -> void #cpp_method #foreign imgui "?Split@ImDrawListSplitter@@QEAAXPEAUImDrawList@@H@Z";
    Merge :: (this: *ImDrawListSplitter, draw_list: *ImDrawList) -> void #cpp_method #foreign imgui "?Merge@ImDrawListSplitter@@QEAAXPEAUImDrawList@@@Z";
    SetCurrentChannel :: (this: *ImDrawListSplitter, draw_list: *ImDrawList, channel_idx: s32) -> void #cpp_method #foreign imgui "?SetCurrentChannel@ImDrawListSplitter@@QEAAXPEAUImDrawList@@H@Z";
}

// Flags for ImDrawList functions
ImDrawFlags :: enum_flags s32 {
    None                    :: 0x0;
    RoundCornersTopLeft     :: 0x10;
    RoundCornersTopRight    :: 0x20;
    RoundCornersBottomLeft  :: 0x40;
    RoundCornersBottomRight :: 0x80;
    RoundCornersNone        :: 0x100;
    Closed                  :: 0x200;
    RoundCornersTop         :: 0x30;
    RoundCornersBottom      :: 0xc0;
    RoundCornersLeft        :: 0x50;
    RoundCornersRight       :: 0xa0;
    RoundCornersAll         :: 0xf0;
    RoundCornersDefault_    :: 0xf0;
    RoundCornersMask_       :: 0x1f0;
    InvalidMask_            :: 0xffffffff8000000f;

    ImDrawFlags_None                    :: None;
    ImDrawFlags_RoundCornersTopLeft     :: RoundCornersTopLeft;
    ImDrawFlags_RoundCornersTopRight    :: RoundCornersTopRight;
    ImDrawFlags_RoundCornersBottomLeft  :: RoundCornersBottomLeft;
    ImDrawFlags_RoundCornersBottomRight :: RoundCornersBottomRight;
    ImDrawFlags_RoundCornersNone        :: RoundCornersNone;
    ImDrawFlags_Closed                  :: Closed;
    ImDrawFlags_RoundCornersTop         :: RoundCornersTop;
    ImDrawFlags_RoundCornersBottom      :: RoundCornersBottom;
    ImDrawFlags_RoundCornersLeft        :: RoundCornersLeft;
    ImDrawFlags_RoundCornersRight       :: RoundCornersRight;
    ImDrawFlags_RoundCornersAll         :: RoundCornersAll;
    ImDrawFlags_RoundCornersDefault_    :: RoundCornersDefault_;
    ImDrawFlags_RoundCornersMask_       :: RoundCornersMask_;
    ImDrawFlags_InvalidMask_            :: InvalidMask_;
}

// Flags for ImDrawList instance. Those are set automatically by ImGui:: functions from ImGuiIO settings, and generally not manipulated directly.
// It is however possible to temporarily alter flags between calls to ImDrawList:: functions.
ImDrawListFlags :: enum_flags s32 {
    None                   :: 0x0;
    AntiAliasedLines       :: 0x1;
    AntiAliasedLinesUseTex :: 0x2;
    AntiAliasedFill        :: 0x4;
    AllowVtxOffset         :: 0x8;

    ImDrawListFlags_None                   :: None;
    ImDrawListFlags_AntiAliasedLines       :: AntiAliasedLines;
    ImDrawListFlags_AntiAliasedLinesUseTex :: AntiAliasedLinesUseTex;
    ImDrawListFlags_AntiAliasedFill        :: AntiAliasedFill;
    ImDrawListFlags_AllowVtxOffset         :: AllowVtxOffset;
}

// Draw command list
// This is the low-level list of polygons that ImGui:: functions are filling. At the end of the frame,
// all command lists are passed to your ImGuiIO::RenderDrawListFn function for rendering.
// Each dear imgui window contains its own ImDrawList. You can use ImGui::GetWindowDrawList() to
// access the current window draw list and draw custom primitives.
// You can interleave normal ImGui:: calls and adding primitives to the current draw list.
// In single viewport mode, top-left is == GetMainViewport()->Pos (generally 0,0), bottom-right is == GetMainViewport()->Pos+Size (generally io.DisplaySize).
// You are totally free to apply whatever transformation matrix you want to the data (depending on the use of the transformation you may want to apply it to ClipRect as well!)
// Important: Primitives are always added to the list and not culled (culling is done at higher-level by ImGui:: functions), if you use this API a lot consider coarse culling your drawn objects.
ImDrawList :: struct {
    CmdBuffer:         ImVector(ImDrawCmd); // Draw commands. Typically 1 command = 1 GPU draw call, unless the command is a callback.
    IdxBuffer:         ImVector(ImDrawIdx); // Index buffer. Each command consume ImDrawCmd::ElemCount of those
    VtxBuffer:         ImVector(ImDrawVert); // Vertex buffer.
    Flags:             ImDrawListFlags; // Flags, you may poke into these to adjust anti-aliasing settings per-primitive.

    _VtxCurrentIdx:    u32; // [Internal] generally == VtxBuffer.Size unless we are past 64K vertices, in which case this gets reset to 0.
    _Data:             *ImDrawListSharedData; // Pointer to shared draw data (you can use ImGui::GetDrawListSharedData() to get the one from current ImGui context)
    _VtxWritePtr:      *ImDrawVert; // [Internal] point within VtxBuffer.Data after each add command (to avoid using the ImVector<> operators too much)
    _IdxWritePtr:      *ImDrawIdx; // [Internal] point within IdxBuffer.Data after each add command (to avoid using the ImVector<> operators too much)
    _Path:             ImVector(ImVec2); // [Internal] current path building
    _CmdHeader:        ImDrawCmdHeader; // [Internal] template of active commands. Fields should match those of CmdBuffer.back().
    _Splitter:         ImDrawListSplitter; // [Internal] for channels api (note: prefer using your own persistent instance of ImDrawListSplitter!)
    _ClipRectStack:    ImVector(ImVec4); // [Internal]
    _TextureStack:     ImVector(ImTextureRef); // [Internal]
    _CallbacksDataBuf: ImVector(ImU8); // [Internal]
    _FringeScale:      float; // [Internal] anti-alias fringe is scaled by this value, this helps to keep things sharp while zooming at vertex buffer content
    _OwnerName:        *u8; // Pointer to owner window's name for debugging

    // If you want to create ImDrawList instances, pass them ImGui::GetDrawListSharedData().
    // (advanced: you may create and use your own ImDrawListSharedData so you can use ImDrawList without ImGui, but that's more involved)
    Constructor :: (this: *ImDrawList, shared_data: *ImDrawListSharedData) -> void #cpp_method #foreign imgui "??0ImDrawList@@QEAA@PEAUImDrawListSharedData@@@Z";
    Destructor :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "??1ImDrawList@@QEAA@XZ";

    PushClipRect :: (this: *ImDrawList, clip_rect_min: *ImVec2, clip_rect_max: *ImVec2, intersect_with_current_clip_rect := false) -> void #cpp_method #foreign imgui "?PushClipRect@ImDrawList@@QEAAXAEBUImVec2@@0_N@Z";
    PushClipRect :: (this: *ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect := false) #no_context {
        PushClipRect(this, *clip_rect_min, *clip_rect_max, intersect_with_current_clip_rect);
    }
    PushClipRectFullScreen :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?PushClipRectFullScreen@ImDrawList@@QEAAXXZ";
    PopClipRect :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?PopClipRect@ImDrawList@@QEAAXXZ";
    PushTexture :: (this: *ImDrawList, tex_ref: ImTextureRef) -> void #cpp_method #foreign imgui "?PushTexture@ImDrawList@@QEAAXUImTextureRef@@@Z";
    PopTexture :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?PopTexture@ImDrawList@@QEAAXXZ";

    // Primitives
    // - Filled shapes must always use clockwise winding order. The anti-aliasing fringe depends on it. Counter-clockwise shapes will have "inward" anti-aliasing.
    // - For rectangular primitives, "p_min" and "p_max" represent the upper-left and lower-right corners.
    // - For circle primitives, use "num_segments == 0" to automatically calculate tessellation (preferred).
    //   In older versions (until Dear ImGui 1.77) the AddCircle functions defaulted to num_segments == 12.
    //   In future versions we will use textures to provide cheaper and higher-quality circles.
    //   Use AddNgon() and AddNgonFilled() functions if you need to guarantee a specific number of sides.
    AddLine :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, col: ImU32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddLine@ImDrawList@@QEAAXAEBUImVec2@@0IM@Z";
    AddLine :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32, thickness: float = 1.0) #no_context {
        AddLine(this, *p1, *p2, col, thickness);
    }
    AddLineH :: (this: *ImDrawList, min_x: float, max_x: float, y: float, col: ImU32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddLineH@ImDrawList@@QEAAXMMMIM@Z";
    AddLineV :: (this: *ImDrawList, x: float, min_y: float, max_y: float, col: ImU32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddLineV@ImDrawList@@QEAAXMMMIM@Z";
    AddRect :: (this: *ImDrawList, p_min: *ImVec2, p_max: *ImVec2, col: ImU32, rounding: float = 0.0, thickness: float = 1.0, flags: ImDrawFlags = .None) -> void #cpp_method #foreign imgui "?AddRect@ImDrawList@@QEAAXAEBUImVec2@@0IMMH@Z";
    AddRect :: (this: *ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: float = 0.0, thickness: float = 1.0, flags: ImDrawFlags = .None) #no_context {
        AddRect(this, *p_min, *p_max, col, rounding, thickness, flags);
    }
    AddRectFilled :: (this: *ImDrawList, p_min: *ImVec2, p_max: *ImVec2, col: ImU32, rounding: float = 0.0, flags: ImDrawFlags = .None) -> void #cpp_method #foreign imgui "?AddRectFilled@ImDrawList@@QEAAXAEBUImVec2@@0IMH@Z";
    AddRectFilled :: (this: *ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: float = 0.0, flags: ImDrawFlags = .None) #no_context {
        AddRectFilled(this, *p_min, *p_max, col, rounding, flags);
    }
    AddRectFilledMultiColor :: (this: *ImDrawList, p_min: *ImVec2, p_max: *ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) -> void #cpp_method #foreign imgui "?AddRectFilledMultiColor@ImDrawList@@QEAAXAEBUImVec2@@0IIII@Z";
    AddRectFilledMultiColor :: (this: *ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) #no_context {
        AddRectFilledMultiColor(this, *p_min, *p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left);
    }
    AddQuad :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, col: ImU32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddQuad@ImDrawList@@QEAAXAEBUImVec2@@000IM@Z";
    AddQuad :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: float = 1.0) #no_context {
        AddQuad(this, *p1, *p2, *p3, *p4, col, thickness);
    }
    AddQuadFilled :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, col: ImU32) -> void #cpp_method #foreign imgui "?AddQuadFilled@ImDrawList@@QEAAXAEBUImVec2@@000I@Z";
    AddQuadFilled :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) #no_context {
        AddQuadFilled(this, *p1, *p2, *p3, *p4, col);
    }
    AddTriangle :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, col: ImU32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddTriangle@ImDrawList@@QEAAXAEBUImVec2@@00IM@Z";
    AddTriangle :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: float = 1.0) #no_context {
        AddTriangle(this, *p1, *p2, *p3, col, thickness);
    }
    AddTriangleFilled :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, col: ImU32) -> void #cpp_method #foreign imgui "?AddTriangleFilled@ImDrawList@@QEAAXAEBUImVec2@@00I@Z";
    AddTriangleFilled :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) #no_context {
        AddTriangleFilled(this, *p1, *p2, *p3, col);
    }
    AddCircle :: (this: *ImDrawList, center: *ImVec2, radius: float, col: ImU32, num_segments: s32 = 0, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddCircle@ImDrawList@@QEAAXAEBUImVec2@@MIHM@Z";
    AddCircle :: (this: *ImDrawList, center: ImVec2, radius: float, col: ImU32, num_segments: s32 = 0, thickness: float = 1.0) #no_context {
        AddCircle(this, *center, radius, col, num_segments, thickness);
    }
    AddCircleFilled :: (this: *ImDrawList, center: *ImVec2, radius: float, col: ImU32, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?AddCircleFilled@ImDrawList@@QEAAXAEBUImVec2@@MIH@Z";
    AddCircleFilled :: (this: *ImDrawList, center: ImVec2, radius: float, col: ImU32, num_segments: s32 = 0) #no_context {
        AddCircleFilled(this, *center, radius, col, num_segments);
    }
    AddNgon :: (this: *ImDrawList, center: *ImVec2, radius: float, col: ImU32, num_segments: s32, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddNgon@ImDrawList@@QEAAXAEBUImVec2@@MIHM@Z";
    AddNgon :: (this: *ImDrawList, center: ImVec2, radius: float, col: ImU32, num_segments: s32, thickness: float = 1.0) #no_context {
        AddNgon(this, *center, radius, col, num_segments, thickness);
    }
    AddNgonFilled :: (this: *ImDrawList, center: *ImVec2, radius: float, col: ImU32, num_segments: s32) -> void #cpp_method #foreign imgui "?AddNgonFilled@ImDrawList@@QEAAXAEBUImVec2@@MIH@Z";
    AddNgonFilled :: (this: *ImDrawList, center: ImVec2, radius: float, col: ImU32, num_segments: s32) #no_context {
        AddNgonFilled(this, *center, radius, col, num_segments);
    }
    AddEllipse :: (this: *ImDrawList, center: *ImVec2, radius: *ImVec2, col: ImU32, rot: float = 0.0, num_segments: s32 = 0, thickness: float = 1.0) -> void #cpp_method #foreign imgui "?AddEllipse@ImDrawList@@QEAAXAEBUImVec2@@0IMHM@Z";
    AddEllipse :: (this: *ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: float = 0.0, num_segments: s32 = 0, thickness: float = 1.0) #no_context {
        AddEllipse(this, *center, *radius, col, rot, num_segments, thickness);
    }
    AddEllipseFilled :: (this: *ImDrawList, center: *ImVec2, radius: *ImVec2, col: ImU32, rot: float = 0.0, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?AddEllipseFilled@ImDrawList@@QEAAXAEBUImVec2@@0IMH@Z";
    AddEllipseFilled :: (this: *ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: float = 0.0, num_segments: s32 = 0) #no_context {
        AddEllipseFilled(this, *center, *radius, col, rot, num_segments);
    }
    AddText :: (this: *ImDrawList, pos: *ImVec2, col: ImU32, text_begin: *u8, text_end: *u8 = null) -> void #cpp_method #foreign imgui "?AddText@ImDrawList@@QEAAXAEBUImVec2@@IPEBD1@Z";
    AddText :: (this: *ImDrawList, pos: ImVec2, col: ImU32, text: string) #no_context {
        AddText(this, *pos, col, text.data, text.data + text.count);
    }
    AddText :: (this: *ImDrawList, font: *ImFont, font_size: float, pos: *ImVec2, col: ImU32, text_begin: *u8, text_end: *u8 = null, wrap_width: float = 0.0, cpu_fine_clip_rect: *ImVec4 = null) -> void #cpp_method #foreign imgui "?AddText@ImDrawList@@QEAAXPEAUImFont@@MAEBUImVec2@@IPEBD2MPEBUImVec4@@@Z";
    AddText :: (this: *ImDrawList, font: *ImFont, font_size: float, pos: ImVec2, col: ImU32, text: string, wrap_width: float = 0.0, cpu_fine_clip_rect: *ImVec4 = null) #no_context {
        AddText(this, font, font_size, *pos, col, text.data, text.data + text.count, wrap_width, cpu_fine_clip_rect);
    }
    AddBezierCubic :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, col: ImU32, thickness: float, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?AddBezierCubic@ImDrawList@@QEAAXAEBUImVec2@@000IMH@Z";
    AddBezierCubic :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: float, num_segments: s32 = 0) #no_context {
        AddBezierCubic(this, *p1, *p2, *p3, *p4, col, thickness, num_segments);
    }
    AddBezierQuadratic :: (this: *ImDrawList, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, col: ImU32, thickness: float, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?AddBezierQuadratic@ImDrawList@@QEAAXAEBUImVec2@@00IMH@Z";
    AddBezierQuadratic :: (this: *ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: float, num_segments: s32 = 0) #no_context {
        AddBezierQuadratic(this, *p1, *p2, *p3, col, thickness, num_segments);
    }

    // General polygon
    // - Only simple polygons are supported by filling functions (no self-intersections, no holes).
    // - Concave polygon fill is more expensive than convex one: it has O(N^2) complexity. Provided as a convenience for the user but not used by the main library.
    AddPolyline :: (this: *ImDrawList, points: *ImVec2, num_points: s32, col: ImU32, thickness: float, flags: ImDrawFlags = .None) -> void #cpp_method #foreign imgui "?AddPolyline@ImDrawList@@QEAAXPEBUImVec2@@HIMH@Z";
    AddConvexPolyFilled :: (this: *ImDrawList, points: *ImVec2, num_points: s32, col: ImU32) -> void #cpp_method #foreign imgui "?AddConvexPolyFilled@ImDrawList@@QEAAXPEBUImVec2@@HI@Z";
    AddConcavePolyFilled :: (this: *ImDrawList, points: *ImVec2, num_points: s32, col: ImU32) -> void #cpp_method #foreign imgui "?AddConcavePolyFilled@ImDrawList@@QEAAXPEBUImVec2@@HI@Z";

    // Image primitives
    // - Read FAQ to understand what ImTextureID/ImTextureRef are.
    // - "p_min" and "p_max" represent the upper-left and lower-right corners of the rectangle.
    // - "uv_min" and "uv_max" represent the normalized texture coordinates to use for those corners. Using (0,0)->(1,1) texture coordinates will generally display the entire texture.
    AddImage :: (this: *ImDrawList, tex_ref: ImTextureRef, p_min: *ImVec2, p_max: *ImVec2, uv_min: *ImVec2, uv_max: *ImVec2, col: ImU32 = 4294967295) -> void #cpp_method #foreign imgui "?AddImage@ImDrawList@@QEAAXUImTextureRef@@AEBUImVec2@@111I@Z";
    AddImage :: (this: *ImDrawList, tex_ref: ImTextureRef, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2 = ImVec2.{0, 0}, uv_max: ImVec2 = ImVec2.{1, 1}, col: ImU32 = 4294967295) #no_context {
        AddImage(this, tex_ref, *p_min, *p_max, *uv_min, *uv_max, col);
    }
    AddImageQuad :: (this: *ImDrawList, tex_ref: ImTextureRef, p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, uv1: *ImVec2, uv2: *ImVec2, uv3: *ImVec2, uv4: *ImVec2, col: ImU32 = 4294967295) -> void #cpp_method #foreign imgui "?AddImageQuad@ImDrawList@@QEAAXUImTextureRef@@AEBUImVec2@@1111111I@Z";
    AddImageQuad :: (this: *ImDrawList, tex_ref: ImTextureRef, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2 = ImVec2.{0, 0}, uv2: ImVec2 = ImVec2.{1, 0}, uv3: ImVec2 = ImVec2.{1, 1}, uv4: ImVec2 = ImVec2.{0, 1}, col: ImU32 = 4294967295) #no_context {
        AddImageQuad(this, tex_ref, *p1, *p2, *p3, *p4, *uv1, *uv2, *uv3, *uv4, col);
    }
    AddImageRounded :: (this: *ImDrawList, tex_ref: ImTextureRef, p_min: *ImVec2, p_max: *ImVec2, uv_min: *ImVec2, uv_max: *ImVec2, col: ImU32, rounding: float, flags: ImDrawFlags = .None) -> void #cpp_method #foreign imgui "?AddImageRounded@ImDrawList@@QEAAXUImTextureRef@@AEBUImVec2@@111IMH@Z";
    AddImageRounded :: (this: *ImDrawList, tex_ref: ImTextureRef, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32, rounding: float, flags: ImDrawFlags = .None) #no_context {
        AddImageRounded(this, tex_ref, *p_min, *p_max, *uv_min, *uv_max, col, rounding, flags);
    }

    PathArcTo :: (this: *ImDrawList, center: *ImVec2, radius: float, a_min: float, a_max: float, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?PathArcTo@ImDrawList@@QEAAXAEBUImVec2@@MMMH@Z";
    PathArcTo :: (this: *ImDrawList, center: ImVec2, radius: float, a_min: float, a_max: float, num_segments: s32 = 0) #no_context {
        PathArcTo(this, *center, radius, a_min, a_max, num_segments);
    }
    PathArcToFast :: (this: *ImDrawList, center: *ImVec2, radius: float, a_min_of_12: s32, a_max_of_12: s32) -> void #cpp_method #foreign imgui "?PathArcToFast@ImDrawList@@QEAAXAEBUImVec2@@MHH@Z";
    PathArcToFast :: (this: *ImDrawList, center: ImVec2, radius: float, a_min_of_12: s32, a_max_of_12: s32) #no_context {
        PathArcToFast(this, *center, radius, a_min_of_12, a_max_of_12);
    }
    PathEllipticalArcTo :: (this: *ImDrawList, center: *ImVec2, radius: *ImVec2, rot: float, a_min: float, a_max: float, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?PathEllipticalArcTo@ImDrawList@@QEAAXAEBUImVec2@@0MMMH@Z";
    PathEllipticalArcTo :: (this: *ImDrawList, center: ImVec2, radius: ImVec2, rot: float, a_min: float, a_max: float, num_segments: s32 = 0) #no_context {
        PathEllipticalArcTo(this, *center, *radius, rot, a_min, a_max, num_segments);
    }
    PathBezierCubicCurveTo :: (this: *ImDrawList, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?PathBezierCubicCurveTo@ImDrawList@@QEAAXAEBUImVec2@@00H@Z";
    PathBezierCubicCurveTo :: (this: *ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: s32 = 0) #no_context {
        PathBezierCubicCurveTo(this, *p2, *p3, *p4, num_segments);
    }
    PathBezierQuadraticCurveTo :: (this: *ImDrawList, p2: *ImVec2, p3: *ImVec2, num_segments: s32 = 0) -> void #cpp_method #foreign imgui "?PathBezierQuadraticCurveTo@ImDrawList@@QEAAXAEBUImVec2@@0H@Z";
    PathBezierQuadraticCurveTo :: (this: *ImDrawList, p2: ImVec2, p3: ImVec2, num_segments: s32 = 0) #no_context {
        PathBezierQuadraticCurveTo(this, *p2, *p3, num_segments);
    }
    PathRect :: (this: *ImDrawList, rect_min: *ImVec2, rect_max: *ImVec2, rounding: float = 0.0, flags: ImDrawFlags = .None) -> void #cpp_method #foreign imgui "?PathRect@ImDrawList@@QEAAXAEBUImVec2@@0MH@Z";
    PathRect :: (this: *ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: float = 0.0, flags: ImDrawFlags = .None) #no_context {
        PathRect(this, *rect_min, *rect_max, rounding, flags);
    }

    // Advanced: Draw Callbacks
    // - May be used to alter render state (change sampler, blending, current shader). May be used to emit custom rendering commands (difficult to do correctly, but possible).
    // - Use special GetPlatformIO().DrawCallback_ResetRenderState callback to instruct backend to reset its render state to the default.
    // - See other standard callbacks in GetPlatformIO(), which may or not be supported by your backend.
    // - Your rendering loop must check for 'UserCallback' in ImDrawCmd and call the function instead of rendering triangles. All standard backends are honoring this.
    // - For some backends, the callback may access selected render-states exposed by the backend in a ImGui_ImplXXXX_RenderState structure pointed to by platform_io.Renderer_RenderState.
    // - IMPORTANT: please be mindful of the different level of indirection between using size==0 (copying argument) and using size>0 (copying pointed data into a buffer).
    //   - If userdata_size == 0: we copy/store the 'userdata' argument as-is. It will be available unmodified in ImDrawCmd::UserCallbackData during render.
    //   - If userdata_size > 0,  we copy/store 'userdata_size' bytes pointed to by 'userdata'. We store them in a buffer stored inside the drawlist. ImDrawCmd::UserCallbackData will point inside that buffer so you have to retrieve data from there. Your callback may need to use ImDrawCmd::UserCallbackDataSize if you expect dynamically-sized data.
    //   - Support for userdata_size > 0 was added in v1.91.4, October 2024. So earlier code always only allowed to copy/store a simple void*.
    AddCallback :: (this: *ImDrawList, callback: ImDrawCallback, userdata: *void = null, userdata_size: u64 = 0) -> void #cpp_method #foreign imgui "?AddCallback@ImDrawList@@QEAAXP6AXPEBU1@PEBUImDrawCmd@@@ZPEAX_K@Z";

    // Advanced: Miscellaneous
    AddDrawCmd :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?AddDrawCmd@ImDrawList@@QEAAXXZ";
    CloneOutput :: (this: *ImDrawList) -> *ImDrawList #cpp_method #foreign imgui "?CloneOutput@ImDrawList@@QEBAPEAU1@XZ";

    // Advanced: Primitives allocations
    // - We render triangles (three vertices)
    // - All primitives needs to be reserved via PrimReserve() beforehand.
    PrimReserve :: (this: *ImDrawList, idx_count: s32, vtx_count: s32) -> void #cpp_method #foreign imgui "?PrimReserve@ImDrawList@@QEAAXHH@Z";
    PrimUnreserve :: (this: *ImDrawList, idx_count: s32, vtx_count: s32) -> void #cpp_method #foreign imgui "?PrimUnreserve@ImDrawList@@QEAAXHH@Z";
    PrimRect :: (this: *ImDrawList, a: *ImVec2, b: *ImVec2, col: ImU32) -> void #cpp_method #foreign imgui "?PrimRect@ImDrawList@@QEAAXAEBUImVec2@@0I@Z";
    PrimRect :: (this: *ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) #no_context {
        PrimRect(this, *a, *b, col);
    }
    PrimRectUV :: (this: *ImDrawList, a: *ImVec2, b: *ImVec2, uv_a: *ImVec2, uv_b: *ImVec2, col: ImU32) -> void #cpp_method #foreign imgui "?PrimRectUV@ImDrawList@@QEAAXAEBUImVec2@@000I@Z";
    PrimRectUV :: (this: *ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) #no_context {
        PrimRectUV(this, *a, *b, *uv_a, *uv_b, col);
    }
    PrimQuadUV :: (this: *ImDrawList, a: *ImVec2, b: *ImVec2, c: *ImVec2, d: *ImVec2, uv_a: *ImVec2, uv_b: *ImVec2, uv_c: *ImVec2, uv_d: *ImVec2, col: ImU32) -> void #cpp_method #foreign imgui "?PrimQuadUV@ImDrawList@@QEAAXAEBUImVec2@@0000000I@Z";
    PrimQuadUV :: (this: *ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) #no_context {
        PrimQuadUV(this, *a, *b, *c, *d, *uv_a, *uv_b, *uv_c, *uv_d, col);
    }

    // [Internal helpers]
    _SetDrawListSharedData :: (this: *ImDrawList, data: *ImDrawListSharedData) -> void #cpp_method #foreign imgui "?_SetDrawListSharedData@ImDrawList@@QEAAXPEAUImDrawListSharedData@@@Z";
    _ResetForNewFrame :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_ResetForNewFrame@ImDrawList@@QEAAXXZ";
    _ClearFreeMemory :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_ClearFreeMemory@ImDrawList@@QEAAXXZ";
    _PopUnusedDrawCmd :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_PopUnusedDrawCmd@ImDrawList@@QEAAXXZ";
    _TryMergeDrawCmds :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_TryMergeDrawCmds@ImDrawList@@QEAAXXZ";
    _OnChangedClipRect :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_OnChangedClipRect@ImDrawList@@QEAAXXZ";
    _OnChangedTexture :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_OnChangedTexture@ImDrawList@@QEAAXXZ";
    _OnChangedVtxOffset :: (this: *ImDrawList) -> void #cpp_method #foreign imgui "?_OnChangedVtxOffset@ImDrawList@@QEAAXXZ";
    _SetTexture :: (this: *ImDrawList, tex_ref: ImTextureRef) -> void #cpp_method #foreign imgui "?_SetTexture@ImDrawList@@QEAAXUImTextureRef@@@Z";
    _CalcCircleAutoSegmentCount :: (this: *ImDrawList, radius: float) -> s32 #cpp_method #foreign imgui "?_CalcCircleAutoSegmentCount@ImDrawList@@QEBAHM@Z";
    _PathArcToFastEx :: (this: *ImDrawList, center: *ImVec2, radius: float, a_min_sample: s32, a_max_sample: s32, a_step: s32) -> void #cpp_method #foreign imgui "?_PathArcToFastEx@ImDrawList@@QEAAXAEBUImVec2@@MHHH@Z";
    _PathArcToFastEx :: (this: *ImDrawList, center: ImVec2, radius: float, a_min_sample: s32, a_max_sample: s32, a_step: s32) #no_context {
        _PathArcToFastEx(this, *center, radius, a_min_sample, a_max_sample, a_step);
    }
    _PathArcToN :: (this: *ImDrawList, center: *ImVec2, radius: float, a_min: float, a_max: float, num_segments: s32) -> void #cpp_method #foreign imgui "?_PathArcToN@ImDrawList@@QEAAXAEBUImVec2@@MMMH@Z";
    _PathArcToN :: (this: *ImDrawList, center: ImVec2, radius: float, a_min: float, a_max: float, num_segments: s32) #no_context {
        _PathArcToN(this, *center, radius, a_min, a_max, num_segments);
    }
}

// All draw data to render a Dear ImGui frame
// (NB: the style and the naming convention here is a little inconsistent, we currently preserve them for backward compatibility purpose,
// as this is one of the oldest structure exposed by the library! Basically, ImDrawList == CmdList)
ImDrawData :: struct {
    Valid:            bool; // Only valid after Render() is called and before the next NewFrame() is called.
    CmdListsCount:    s32; // == CmdLists.Size. (OBSOLETE: exists for legacy reasons). Number of ImDrawList* to render.
    TotalIdxCount:    s32; // For convenience, sum of all ImDrawList's IdxBuffer.Size
    TotalVtxCount:    s32; // For convenience, sum of all ImDrawList's VtxBuffer.Size
    CmdLists:         ImVector(*ImDrawList); // Array of ImDrawList* to render. The ImDrawLists are owned by ImGuiContext and only pointed to from here.
    DisplayPos:       ImVec2; // Top-left position of the viewport to render (== top-left of the orthogonal projection matrix to use) (== GetMainViewport()->Pos for the main viewport, == (0.0) in most single-viewport applications)
    DisplaySize:      ImVec2; // Size of the viewport to render (== GetMainViewport()->Size for the main viewport, == io.DisplaySize in most single-viewport applications)
    FramebufferScale: ImVec2; // Amount of pixels for each unit of DisplaySize. Copied from viewport->FramebufferScale (== io.DisplayFramebufferScale for main viewport). Generally (1,1) on normal display, (2,2) on OSX with Retina display.
    OwnerViewport:    *Viewport; // Viewport carrying the ImDrawData instance, might be of use to the renderer (generally not).
    Textures:         *ImVector(*ImTextureData); // List of textures to update. Most of the times the list is shared by all ImDrawData, has only 1 texture and it doesn't need any update. This almost always points to ImGui::GetPlatformIO().Textures[]. May be overridden or set to NULL if you want to manually update textures.

    Clear :: (this: *ImDrawData) -> void #cpp_method #foreign imgui "?Clear@ImDrawData@@QEAAXXZ";
    AddDrawList :: (this: *ImDrawData, draw_list: *ImDrawList) -> void #cpp_method #foreign imgui "?AddDrawList@ImDrawData@@QEAAXPEAUImDrawList@@@Z";
    DeIndexAllBuffers :: (this: *ImDrawData) -> void #cpp_method #foreign imgui "?DeIndexAllBuffers@ImDrawData@@QEAAXXZ";
    ScaleClipRects :: (this: *ImDrawData, fb_scale: *ImVec2) -> void #cpp_method #foreign imgui "?ScaleClipRects@ImDrawData@@QEAAXAEBUImVec2@@@Z";
    ScaleClipRects :: (this: *ImDrawData, fb_scale: ImVec2) #no_context {
        ScaleClipRects(this, *fb_scale);
    }
}

// We intentionally support a limited amount of texture formats to limit burden on CPU-side code and extension.
// Most standard backends only support RGBA32 but we provide a single channel option for low-resource/embedded systems.
ImTextureFormat :: enum s32 {
    RGBA32 :: 0;
    Alpha8 :: 1;

    ImTextureFormat_RGBA32 :: RGBA32;
    ImTextureFormat_Alpha8 :: Alpha8;
}

// Status of a texture to communicate with Renderer Backend.
ImTextureStatus :: enum s32 {
    OK          :: 0;
    Destroyed   :: 1;
    WantCreate  :: 2;
    WantUpdates :: 3;
    WantDestroy :: 4;

    ImTextureStatus_OK          :: OK;
    ImTextureStatus_Destroyed   :: Destroyed;
    ImTextureStatus_WantCreate  :: WantCreate;
    ImTextureStatus_WantUpdates :: WantUpdates;
    ImTextureStatus_WantDestroy :: WantDestroy;
}

// Coordinates of a rectangle within a texture.
// When a texture is in ImTextureStatus_WantUpdates state, we provide a list of individual rectangles to copy to the graphics system.
// You may use ImTextureData::Updates[] for the list, or ImTextureData::UpdateBox for a single bounding box.
ImTextureRect :: struct {
    x: u16; // Upper-left coordinates of rectangle to update
    y: u16; // Upper-left coordinates of rectangle to update
    w: u16; // Size of rectangle to update (in pixels)
    h: u16; // Size of rectangle to update (in pixels)
}

// Specs and pixel storage for a texture used by Dear ImGui.
// This is only useful for (1) core library and (2) backends. End-user/applications do not need to care about this.
// Renderer Backends will create a GPU-side version of this.
// Why does we store two identifiers: TexID and BackendUserData?
// - ImTextureID    TexID           = lower-level identifier stored in ImDrawCmd. ImDrawCmd can refer to textures not created by the backend, and for which there's no ImTextureData.
// - void*          BackendUserData = higher-level opaque storage for backend own book-keeping. Some backends may have enough with TexID and not need both.
// In columns below: who reads/writes each fields? 'r'=read, 'w'=write, 'core'=main library, 'backend'=renderer backend
ImTextureData :: struct {
    UniqueID:             s32; // w    -   // [DEBUG] Sequential index to facilitate identifying a texture when debugging/printing. Unique per atlas.
    Status:               ImTextureStatus; // rw   rw  // ImTextureStatus_OK/_WantCreate/_WantUpdates/_WantDestroy. Always use SetStatus() to modify!
    BackendUserData:      *void; // -    rw  // Convenience storage for backend. Some backends may have enough with TexID.
    TexID:                ImTextureID; // r    w   // Backend-specific texture identifier. Always use SetTexID() to modify! The identifier will stored in ImDrawCmd::GetTexID() and passed to backend's RenderDrawData function.
    Format:               ImTextureFormat; // w    r   // ImTextureFormat_RGBA32 (default) or ImTextureFormat_Alpha8
    Width:                s32; // w    r   // Texture width
    Height:               s32; // w    r   // Texture height
    BytesPerPixel:        s32; // w    r   // 4 or 1
    Pixels:               *u8; // w    r   // Pointer to buffer holding 'Width*Height' pixels and 'Width*Height*BytesPerPixels' bytes.
    UsedRect:             ImTextureRect; // w    r   // Bounding box encompassing all past and queued Updates[].
    UpdateRect:           ImTextureRect; // w    r   // Bounding box encompassing all queued Updates[].
    Updates:              ImVector(ImTextureRect); // w    r   // Array of individual updates.
    UnusedFrames:         s32; // w    r   // In order to facilitate handling Status==WantDestroy in some backend: this is a count successive frames where the texture was not used. Always >0 when Status==WantDestroy.
    RefCount:             u16; // w    r   // Number of contexts using this texture. Used during backend shutdown.
    UseColors:            bool; // w    r   // Tell whether our texture data is known to use colors (rather than just white + alpha).
    WantDestroyNextFrame: bool; // rw   -   // [Internal] Queued to set ImTextureStatus_WantDestroy next frame. May still be used in the current frame.

    Create :: (this: *ImTextureData, format: ImTextureFormat, w: s32, h: s32) -> void #cpp_method #foreign imgui "?Create@ImTextureData@@QEAAXW4ImTextureFormat@@HH@Z";
    DestroyPixels :: (this: *ImTextureData) -> void #cpp_method #foreign imgui "?DestroyPixels@ImTextureData@@QEAAXXZ";
}

// A font input/source (we may rename this to ImFontSource in the future)
ImFontConfig :: struct {
    Name:                 [40] u8; // <auto>   // Name (strictly to ease debugging, hence limited size buffer)
    FontData:             *void; //          // TTF/OTF data
    FontDataSize:         s32; //          // TTF/OTF data size
    FontDataOwnedByAtlas: bool; // true     // TTF/OTF data ownership taken by the owner ImFontAtlas (will delete memory itself). SINCE 1.92, THE DATA NEEDS TO PERSIST FOR WHOLE DURATION OF ATLAS.

    MergeMode:            bool; // false    // Merge into previous ImFont, so you can combine multiple inputs font into one ImFont (e.g. ASCII font + icons + Japanese glyphs). You may want to use GlyphOffset.y when merge font of different heights.
    PixelSnapH:           bool; // false    // Align every glyph AdvanceX to pixel boundaries. Prevents fractional font size from working correctly! Useful e.g. if you are merging a non-pixel aligned font with the default font. If enabled, OversampleH/V will default to 1.
    OversampleH:          ImS8; // 0 (2)    // Rasterize at higher quality for sub-pixel positioning. 0 == auto == 1 or 2 depending on size. Note the difference between 2 and 3 is minimal. You can reduce this to 1 for large glyphs save memory. Read https://github.com/nothings/stb/blob/master/tests/oversample/README.md for details.
    OversampleV:          ImS8; // 0 (1)    // Rasterize at higher quality for sub-pixel positioning. 0 == auto == 1. This is not really useful as we don't use sub-pixel positions on the Y axis.
    EllipsisChar:         ImWchar; // 0        // Explicitly specify Unicode codepoint of ellipsis character. When fonts are being merged first specified ellipsis will be used.
    SizePixels:           float; //          // Output size in pixels for rasterizer (more or less maps to the resulting font height).
    GlyphRanges:          *ImWchar; // NULL     // *LEGACY* THE ARRAY DATA NEEDS TO PERSIST AS LONG AS THE FONT IS ALIVE. Pointer to a user-provided list of Unicode range (2 value per range, values are inclusive, zero-terminated list).
    GlyphExcludeRanges:   *ImWchar; // NULL     // Pointer to a small user-provided list of Unicode ranges (2 value per range, values are inclusive, zero-terminated list). This is very close to GlyphRanges[] but designed to exclude ranges from a font source, when merging fonts with overlapping glyphs. Use "Input Glyphs Overlap Detection Tool" to find about your overlapping ranges.

    GlyphOffset:          ImVec2; // 0, 0     // Offset (in pixels) all glyphs from this font input. Absolute value for default size, other sizes will scale this value.
    GlyphMinAdvanceX:     float; // 0        // Minimum AdvanceX for glyphs, set Min to align font icons, set both Min/Max to enforce mono-space font. Absolute value for default size, other sizes will scale this value.
    GlyphMaxAdvanceX:     float; // FLT_MAX  // Maximum AdvanceX for glyphs
    GlyphExtraAdvanceX:   float; // 0        // Extra spacing (in pixels) between glyphs. Please contact us if you are using this. // FIXME-NEWATLAS: Intentionally unscaled
    FontNo:               ImU32; // 0        // Index of font within TTF/OTF file
    FontLoaderFlags:      u32; // 0        // Settings for custom font builder. THIS IS BUILDER IMPLEMENTATION DEPENDENT. Leave as zero if unsure.

    RasterizerMultiply:   float; // 1.0f     // Linearly brighten (>1.0f) or darken (<1.0f) font output. Brightening small fonts may be a good workaround to make them more readable. This is a silly thing we may remove in the future.
    RasterizerDensity:    float; // 1.0f     // [LEGACY: this only makes sense when ImGuiBackendFlags_RendererHasTextures is not supported] DPI scale multiplier for rasterization. Not altering other font metrics: makes it easy to swap between e.g. a 100% and a 400% fonts for a zooming display, or handle Retina screen. IMPORTANT: If you change this it is expected that you increase/decrease font scale roughly to the inverse of this, otherwise quality may look lowered.
    ExtraSizeScale:       float; // 1.0f     // Extra rasterizer scale over SizePixels.

    Flags:                ImFontFlags; // Font flags (don't use just yet, will be exposed in upcoming 1.92.X updates)
    DstFont:              *ImFont; // Target font (as we merging fonts, multiple ImFontConfig may target the same font)
    FontLoader:           *ImFontLoader; // Custom font backend for this source (default source is the one stored in ImFontAtlas)
    FontLoaderData:       *void; // Font loader opaque storage (per font config)

    PixelSnapV:           bool; // true    // [Obsoleted in 1.91.6] Align Scaled GlyphOffset.y to pixel boundaries.

    Constructor :: (this: *ImFontConfig) -> void #cpp_method #foreign imgui "??0ImFontConfig@@QEAA@XZ";
}

// Hold rendering data for one glyph.
// (Note: some language parsers may fail to convert the bitfield members, in this case maybe drop store a single u32 or we can rework this)
ImFontGlyph :: struct {
    __bitfield: u32;
    /* 
        Colored: u32; /* 1 bits */ // Flag to indicate glyph is colored and should generally ignore tinting (make it usable with no shift on little-endian as this is used in loops)
        Visible: u32; /* 1 bits */ // Flag to indicate glyph has no visible pixels (e.g. space). Allow early out when rendering.
        SourceIdx: u32; /* 4 bits */ // Index of source in parent font
        Codepoint: u32; /* 26 bits */ // 0x0000..0x10FFFF;
    */

    AdvanceX:   float; // Horizontal distance to advance cursor/layout position.
    X0:         float; // Glyph corners. Offsets from current cursor/layout position.
    Y0:         float; // Glyph corners. Offsets from current cursor/layout position.
    X1:         float; // Glyph corners. Offsets from current cursor/layout position.
    Y1:         float; // Glyph corners. Offsets from current cursor/layout position.
    U0:         float; // Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId.
    V0:         float; // Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId.
    U1:         float; // Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId.
    V1:         float; // Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId.
    PackId:     s32; // [Internal] ImFontAtlasRectId value (FIXME: Cold data, could be moved elsewhere?)
}

set_Colored :: (fields: *ImFontGlyph, value: bool) {
    if value fields.__bitfield |= 1 << 0;
    else     fields.__bitfield &= ~cast(u32)(1 << 0);
}
get_Colored :: (fields: ImFontGlyph) -> bool {
    return (fields.__bitfield & (1 << 0)) != 0;
}

set_Visible :: (fields: *ImFontGlyph, value: bool) {
    if value fields.__bitfield |= 1 << 1;
    else     fields.__bitfield &= ~cast(u32)(1 << 1);
}
get_Visible :: (fields: ImFontGlyph) -> bool {
    return (fields.__bitfield & (1 << 1)) != 0;
}

set_SourceIdx :: (fields: *ImFontGlyph, value: u32) {
    MASK0: u32 : (0b1111 << 2);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 2) & MASK0);
}
get_SourceIdx :: (fields: ImFontGlyph) -> u32 {
    return ((fields.__bitfield & (0b1111 << 2)) >> 2);
}

set_Codepoint :: (fields: *ImFontGlyph, value: u32) {
    MASK0: u32 : (0b11_1111_1111_1111_1111_1111_1111 << 6);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 6) & MASK0);
}
get_Codepoint :: (fields: ImFontGlyph) -> u32 {
    return ((fields.__bitfield & (0b11_1111_1111_1111_1111_1111_1111 << 6)) >> 6);
}


// Helper to build glyph ranges from text/string data. Feed your application strings/characters to it then call BuildRanges().
// This is essentially a tightly packed of vector of 64k booleans = 8KB storage.
ImFontGlyphRangesBuilder :: struct {
    UsedChars: ImVector(ImU32); // Store 1-bit per Unicode code point (0=unused, 1=used)

    AddText :: (this: *ImFontGlyphRangesBuilder, text: *u8, text_end: *u8 = null) -> void #cpp_method #foreign imgui "?AddText@ImFontGlyphRangesBuilder@@QEAAXPEBD0@Z";
    AddText :: (this: *ImFontGlyphRangesBuilder, text: string) #no_context {
        AddText(this, text.data, text.data + text.count);
    }
    AddRanges :: (this: *ImFontGlyphRangesBuilder, ranges: *ImWchar) -> void #cpp_method #foreign imgui "?AddRanges@ImFontGlyphRangesBuilder@@QEAAXPEBG@Z";
    BuildRanges :: (this: *ImFontGlyphRangesBuilder, out_ranges: *ImVector(ImWchar)) -> void #cpp_method #foreign imgui "?BuildRanges@ImFontGlyphRangesBuilder@@QEAAXPEAU?$ImVector@G@@@Z";
}

// An opaque identifier to a rectangle in the atlas. -1 when invalid.
// The rectangle may move and UV may be invalidated, use GetCustomRect() to retrieve it.
ImFontAtlasRectId :: s32;

// Output of ImFontAtlas::GetCustomRect() when using custom rectangles.
// Those values may not be cached/stored as they are only valid for the current value of atlas->TexRef
// (this is in theory derived from ImTextureRect but we use separate structures for reasons)
ImFontAtlasRect :: struct {
    x:   u16; // Position (in current texture)
    y:   u16; // Position (in current texture)
    w:   u16; // Size
    h:   u16; // Size
    uv0: ImVec2; // UV coordinates (in current texture)
    uv1: ImVec2; // UV coordinates (in current texture)
}

// Flags for ImFontAtlas build
ImFontAtlasFlags :: enum_flags s32 {
    None               :: 0x0;
    NoPowerOfTwoHeight :: 0x1;
    NoMouseCursors     :: 0x2;
    NoBakedLines       :: 0x4;

    ImFontAtlasFlags_None               :: None;
    ImFontAtlasFlags_NoPowerOfTwoHeight :: NoPowerOfTwoHeight;
    ImFontAtlasFlags_NoMouseCursors     :: NoMouseCursors;
    ImFontAtlasFlags_NoBakedLines       :: NoBakedLines;
}

// Load and rasterize multiple TTF/OTF fonts into a same texture. The font atlas will build a single texture holding:
//  - One or more fonts.
//  - Custom graphics data needed to render the shapes needed by Dear ImGui.
//  - Mouse cursor shapes for software cursor rendering (unless setting 'Flags |= ImFontAtlasFlags_NoMouseCursors' in the font atlas).
//  - If you don't call any AddFont*** functions, the default font embedded in the code will be loaded for you.
// It is the rendering backend responsibility to upload texture into your graphics API:
//  - ImGui_ImplXXXX_RenderDrawData() functions generally iterate platform_io->Textures[] to create/update/destroy each ImTextureData instance.
//  - Backend then set ImTextureData's TexID and BackendUserData.
//  - Texture id are passed back to you during rendering to identify the texture. Read FAQ entry about ImTextureID/ImTextureRef for more details.
// Legacy path:
//  - Call Build() + GetTexDataAsAlpha8() or GetTexDataAsRGBA32() to build and retrieve pixels data.
//  - Call SetTexID(my_tex_id); and pass the pointer/identifier to your texture in a format natural to your graphics API.
// Common pitfalls:
// - If you pass a 'glyph_ranges' array to AddFont*** functions, you need to make sure that your array persists up until the
//   atlas is build (when calling GetTexData*** or Build()). We only copy the pointer, not the data.
// - Important: By default, AddFontFromMemoryTTF() takes ownership of the data. Even though we are not writing to it, we will free the pointer on destruction.
//   You can set font_cfg->FontDataOwnedByAtlas=false to keep ownership of your data and it won't be freed,
// - Even though many functions are suffixed with "TTF", OTF data is supported just as well.
// - This is an old API and it is currently awkward for those and various other reasons! We will address them in the future!
ImFontAtlas :: struct {
    Constructor :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "??0ImFontAtlas@@QEAA@XZ";
    Destructor :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "??1ImFontAtlas@@QEAA@XZ";
    AddFont :: (this: *ImFontAtlas, font_cfg: *ImFontConfig) -> *ImFont #cpp_method #foreign imgui "?AddFont@ImFontAtlas@@QEAAPEAUImFont@@PEBUImFontConfig@@@Z";
    AddFontDefault :: (this: *ImFontAtlas, font_cfg: *ImFontConfig = null) -> *ImFont #cpp_method #foreign imgui "?AddFontDefault@ImFontAtlas@@QEAAPEAUImFont@@PEBUImFontConfig@@@Z";
    AddFontDefaultVector :: (this: *ImFontAtlas, font_cfg: *ImFontConfig = null) -> *ImFont #cpp_method #foreign imgui "?AddFontDefaultVector@ImFontAtlas@@QEAAPEAUImFont@@PEBUImFontConfig@@@Z";
    AddFontDefaultBitmap :: (this: *ImFontAtlas, font_cfg: *ImFontConfig = null) -> *ImFont #cpp_method #foreign imgui "?AddFontDefaultBitmap@ImFontAtlas@@QEAAPEAUImFont@@PEBUImFontConfig@@@Z";
    AddFontFromFileTTF :: (this: *ImFontAtlas, filename: *u8, size_pixels: float = 0.0, font_cfg: *ImFontConfig = null, glyph_ranges: *ImWchar = null) -> *ImFont #cpp_method #foreign imgui "?AddFontFromFileTTF@ImFontAtlas@@QEAAPEAUImFont@@PEBDMPEBUImFontConfig@@PEBG@Z";
    AddFontFromMemoryTTF :: (this: *ImFontAtlas, font_data: *void, font_data_size: s32, size_pixels: float = 0.0, font_cfg: *ImFontConfig = null, glyph_ranges: *ImWchar = null) -> *ImFont #cpp_method #foreign imgui "?AddFontFromMemoryTTF@ImFontAtlas@@QEAAPEAUImFont@@PEAXHMPEBUImFontConfig@@PEBG@Z";
    AddFontFromMemoryCompressedTTF :: (this: *ImFontAtlas, compressed_font_data: *void, compressed_font_data_size: s32, size_pixels: float = 0.0, font_cfg: *ImFontConfig = null, glyph_ranges: *ImWchar = null) -> *ImFont #cpp_method #foreign imgui "?AddFontFromMemoryCompressedTTF@ImFontAtlas@@QEAAPEAUImFont@@PEBXHMPEBUImFontConfig@@PEBG@Z";
    AddFontFromMemoryCompressedBase85TTF :: (this: *ImFontAtlas, compressed_font_data_base85: *u8, size_pixels: float = 0.0, font_cfg: *ImFontConfig = null, glyph_ranges: *ImWchar = null) -> *ImFont #cpp_method #foreign imgui "?AddFontFromMemoryCompressedBase85TTF@ImFontAtlas@@QEAAPEAUImFont@@PEBDMPEBUImFontConfig@@PEBG@Z";
    RemoveFont :: (this: *ImFontAtlas, font: *ImFont) -> void #cpp_method #foreign imgui "?RemoveFont@ImFontAtlas@@QEAAXPEAUImFont@@@Z";

    Clear :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "?Clear@ImFontAtlas@@QEAAXXZ";
    ClearFonts :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "?ClearFonts@ImFontAtlas@@QEAAXXZ";
    CompactCache :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "?CompactCache@ImFontAtlas@@QEAAXXZ";
    SetFontLoader :: (this: *ImFontAtlas, font_loader: *ImFontLoader) -> void #cpp_method #foreign imgui "?SetFontLoader@ImFontAtlas@@QEAAXPEBUImFontLoader@@@Z";

    // As we are transitioning toward a new font system, we expect to obsolete those soon:
    ClearInputData :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "?ClearInputData@ImFontAtlas@@QEAAXXZ";
    ClearTexData :: (this: *ImFontAtlas) -> void #cpp_method #foreign imgui "?ClearTexData@ImFontAtlas@@QEAAXXZ";

    // Legacy path for build atlas + retrieving pixel data.
    // - User is in charge of copying the pixels into graphics memory (e.g. create a texture with your engine). Then store your texture handle with SetTexID().
    // - The pitch is always = Width * BytesPerPixels (1 or 4)
    // - Building in RGBA32 format is provided for convenience and compatibility, but note that unless you manually manipulate or copy color data into
    //   the texture (e.g. when using the AddCustomRect*** api), then the RGB pixels emitted will always be white (~75% of memory/bandwidth waste).
    // - From 1.92 with backends supporting ImGuiBackendFlags_RendererHasTextures:
    //   - Calling Build(), GetTexDataAsAlpha8(), GetTexDataAsRGBA32() is not needed.
    //   - In backend: replace calls to ImFontAtlas::SetTexID() with calls to ImTextureData::SetTexID() after honoring texture creation.
    Build :: (this: *ImFontAtlas) -> bool #cpp_method #foreign imgui "?Build@ImFontAtlas@@QEAA_NXZ";
    GetTexDataAsAlpha8 :: (this: *ImFontAtlas, out_pixels: **u8, out_width: *s32, out_height: *s32, out_bytes_per_pixel: *s32 = null) -> void #cpp_method #foreign imgui "?GetTexDataAsAlpha8@ImFontAtlas@@QEAAXPEAPEAEPEAH11@Z";
    GetTexDataAsRGBA32 :: (this: *ImFontAtlas, out_pixels: **u8, out_width: *s32, out_height: *s32, out_bytes_per_pixel: *s32 = null) -> void #cpp_method #foreign imgui "?GetTexDataAsRGBA32@ImFontAtlas@@QEAAXPEAPEAEPEAH11@Z";

    // Since 1.92: specifying glyph ranges is only useful/necessary if your backend doesn't support ImGuiBackendFlags_RendererHasTextures!
    GetGlyphRangesDefault :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesDefault@ImFontAtlas@@QEAAPEBGXZ";

    // Helpers to retrieve list of common Unicode ranges (2 value per range, values are inclusive, zero-terminated list)
    // NB: Make sure that your string are UTF-8 and NOT in your local code page.
    // Read https://github.com/ocornut/imgui/blob/master/docs/FONTS.md/#about-utf-8-encoding for details.
    // NB: Consider using ImFontGlyphRangesBuilder to build glyph ranges from textual data.
    GetGlyphRangesGreek :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesGreek@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesKorean :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesKorean@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesJapanese :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesJapanese@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesChineseFull :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesChineseFull@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesChineseSimplifiedCommon :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesChineseSimplifiedCommon@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesCyrillic :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesCyrillic@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesThai :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesThai@ImFontAtlas@@QEAAPEBGXZ";
    GetGlyphRangesVietnamese :: (this: *ImFontAtlas) -> *ImWchar #cpp_method #foreign imgui "?GetGlyphRangesVietnamese@ImFontAtlas@@QEAAPEBGXZ";

    // Register and retrieve custom rectangles
    // - You can request arbitrary rectangles to be packed into the atlas, for your own purpose.
    // - Since 1.92.0, packing is done immediately in the function call (previously packing was done during the Build call)
    // - You can render your pixels into the texture right after calling the AddCustomRect() functions.
    // - VERY IMPORTANT:
    //   - Texture may be created/resized at any time when calling ImGui or ImFontAtlas functions.
    //   - IT WILL INVALIDATE RECTANGLE DATA SUCH AS UV COORDINATES. Always use latest values from GetCustomRect().
    //   - UV coordinates are associated to the current texture identifier aka 'atlas->TexRef'. Both TexRef and UV coordinates are typically changed at the same time.
    // - If you render colored output into your custom rectangles: set 'atlas->TexPixelsUseColors = true' as this may help some backends decide of preferred texture format.
    // - Read docs/FONTS.md for more details about using colorful icons.
    // - Note: this API may be reworked further in order to facilitate supporting e.g. multi-monitor, varying DPI settings.
    // - (Pre-1.92 names) ------------> (1.92 names)
    //   - GetCustomRectByIndex()   --> Use GetCustomRect()
    //   - CalcCustomRectUV()       --> Use GetCustomRect() and read uv0, uv1 fields.
    //   - AddCustomRectRegular()   --> Renamed to AddCustomRect()
    //   - AddCustomRectFontGlyph() --> Prefer using custom ImFontLoader inside ImFontConfig
    //   - ImFontAtlasCustomRect    --> Renamed to ImFontAtlasRect
    AddCustomRect :: (this: *ImFontAtlas, width: s32, height: s32, out_r: *ImFontAtlasRect = null) -> ImFontAtlasRectId #cpp_method #foreign imgui "?AddCustomRect@ImFontAtlas@@QEAAHHHPEAUImFontAtlasRect@@@Z";
    RemoveCustomRect :: (this: *ImFontAtlas, id: ImFontAtlasRectId) -> void #cpp_method #foreign imgui "?RemoveCustomRect@ImFontAtlas@@QEAAXH@Z";
    GetCustomRect :: (this: *ImFontAtlas, id: ImFontAtlasRectId, out_r: *ImFontAtlasRect) -> bool #cpp_method #foreign imgui "?GetCustomRect@ImFontAtlas@@QEBA_NHPEAUImFontAtlasRect@@@Z";

    Flags:               ImFontAtlasFlags; // Build flags (see ImFontAtlasFlags_)
    TexDesiredFormat:    ImTextureFormat; // Desired texture format (default to ImTextureFormat_RGBA32 but may be changed to ImTextureFormat_Alpha8).
    TexGlyphPadding:     s32; // FIXME: Should be called "TexPackPadding". Padding between glyphs within texture in pixels. Defaults to 1. If your rendering method doesn't rely on bilinear filtering you may set this to 0 (will also need to set AntiAliasedLinesUseTex = false).
    TexMinWidth:         s32; // Minimum desired texture width. Must be a power of two. Default to 512.
    TexMinHeight:        s32; // Minimum desired texture height. Must be a power of two. Default to 128.
    TexMaxWidth:         s32; // Maximum desired texture width. Must be a power of two. Default to 8192.
    TexMaxHeight:        s32; // Maximum desired texture height. Must be a power of two. Default to 8192.
    UserData:            *void; // Store your own atlas related user-data (if e.g. you have multiple font atlas).

    union {
        TexRef: ImTextureRef; // Latest texture identifier == TexData->GetTexRef(). // RENAMED TexID to TexRef in 1.92.0.
        TexID:  ImTextureRef; // Latest texture identifier == TexData->GetTexRef(). // RENAMED TexID to TexRef in 1.92.0.
    }

    TexData:             *ImTextureData; // Latest texture.

    TexList:             ImVector(*ImTextureData); // Texture list (most often TexList.Size == 1). TexData is always == TexList.back(). DO NOT USE DIRECTLY, USE GetDrawData().Textures[]/GetPlatformIO().Textures[] instead!
    Locked:              bool; // Marked as locked during ImGui::NewFrame()..EndFrame() scope if TexUpdates are not supported. Any attempt to modify the atlas will assert.
    RendererHasTextures: bool; // Copy of (BackendFlags & ImGuiBackendFlags_RendererHasTextures) from supporting context.
    TexIsBuilt:          bool; // Set when texture was built matching current font input. Mostly useful for legacy IsBuilt() call.
    TexPixelsUseColors:  bool; // Tell whether our texture data is known to use colors (rather than just alpha channel), in order to help backend select a format or conversion process.
    TexUvScale:          ImVec2; // = (1.0f/TexData->TexWidth, 1.0f/TexData->TexHeight). May change as new texture gets created.
    TexUvWhitePixel:     ImVec2; // Texture coordinates to a white pixel. May change as new texture gets created.
    Fonts:               ImVector(*ImFont); // Hold all the fonts returned by AddFont*. Fonts[0] is the default font upon calling ImGui::NewFrame(), use ImGui::PushFont()/PopFont() to change the current font.
    Sources:             ImVector(ImFontConfig); // Source/configuration data
    TexUvLines:          [33] ImVec4; // UVs for baked anti-aliased lines
    TexNextUniqueID:     s32; // Next value to be stored in TexData->UniqueID
    FontNextUniqueID:    s32; // Next value to be stored in ImFont->FontID
    DrawListSharedDatas: ImVector(*ImDrawListSharedData); // List of users for this atlas. Typically one per Dear ImGui context.
    Builder:             *ImFontAtlasBuilder; // Opaque interface to our data that doesn't need to be public and may be discarded when rebuilding.
    FontLoader:          *ImFontLoader; // Font loader opaque interface (default to use FreeType when IMGUI_ENABLE_FREETYPE is defined, otherwise default to use stb_truetype). Use SetFontLoader() to change this at runtime.
    FontLoaderName:      *u8; // Font loader name (for display e.g. in About box) == FontLoader->Name
    FontLoaderData:      *void; // Font backend opaque storage
    FontLoaderFlags:     u32; // Shared flags (for all fonts) for font loader. THIS IS BUILD IMPLEMENTATION DEPENDENT (e.g. Per-font override is also available in ImFontConfig).
    RefCount:            s32; // Number of contexts using this atlas
    OwnerContext:        *ImGuiContext; // Context which own the atlas will be in charge of updating and destroying it.

    TempRect:            ImFontAtlasRect; // For old GetCustomRectByIndex() API

    AddCustomRectFontGlyph :: (this: *ImFontAtlas, font: *ImFont, codepoint: ImWchar, w: s32, h: s32, advance_x: float, offset: *ImVec2) -> ImFontAtlasRectId #cpp_method #foreign imgui "?AddCustomRectFontGlyph@ImFontAtlas@@QEAAHPEAUImFont@@GHHMAEBUImVec2@@@Z";
    AddCustomRectFontGlyph :: (this: *ImFontAtlas, font: *ImFont, codepoint: ImWchar, w: s32, h: s32, advance_x: float, offset: ImVec2 = ImVec2.{0, 0}) -> ImFontAtlasRectId #no_context {
        return AddCustomRectFontGlyph(this, font, codepoint, w, h, advance_x, *offset);
    }
    AddCustomRectFontGlyphForSize :: (this: *ImFontAtlas, font: *ImFont, font_size: float, codepoint: ImWchar, w: s32, h: s32, advance_x: float, offset: *ImVec2) -> ImFontAtlasRectId #cpp_method #foreign imgui "?AddCustomRectFontGlyphForSize@ImFontAtlas@@QEAAHPEAUImFont@@MGHHMAEBUImVec2@@@Z";
    AddCustomRectFontGlyphForSize :: (this: *ImFontAtlas, font: *ImFont, font_size: float, codepoint: ImWchar, w: s32, h: s32, advance_x: float, offset: ImVec2 = ImVec2.{0, 0}) -> ImFontAtlasRectId #no_context {
        return AddCustomRectFontGlyphForSize(this, font, font_size, codepoint, w, h, advance_x, *offset);
    }
}

// Font runtime data for a given size
// Important: pointers to ImFontBaked are only valid for the current frame.
ImFontBaked :: struct {
    IndexAdvanceX:      ImVector(float); // 12-16 // out // Sparse. Glyphs->AdvanceX in a directly indexable way (cache-friendly for CalcTextSize functions which only this info, and are often bottleneck in large UI).
    FallbackAdvanceX:   float; // 4     // out // FindGlyph(FallbackChar)->AdvanceX
    Size:               float; // 4     // in  // Height of characters/line, set during loading (doesn't change after loading)
    RasterizerDensity:  float; // 4     // in  // Density this is baked at

    IndexLookup:        ImVector(ImU16); // 12-16 // out // Sparse. Index glyphs by Unicode code-point.
    Glyphs:             ImVector(ImFontGlyph); // 12-16 // out // All glyphs.
    FallbackGlyphIndex: s32; // 4     // out // Index of FontFallbackChar

    Ascent:             float; // 4+4   // out // Ascent: distance from top to bottom of e.g. 'A' [0..FontSize] (unscaled)
    Descent:            float; // 4+4   // out // Ascent: distance from top to bottom of e.g. 'A' [0..FontSize] (unscaled)
    __bitfield:         u32;
    /* 
        MetricsTotalSurface: u32; /* 26 bits */ // 3  // out // Total surface in pixels to get an idea of the font rasterization/texture cost (not exact, we approximate the cost of padding between glyphs)
        WantDestroy: u32; /* 1 bits */ // 0  //     // Queued for destroy
        LoadNoFallback: u32; /* 1 bits */ // 0  //     // Disable loading fallback in lower-level calls.
        LoadNoRenderOnLayout: u32; /* 1 bits */ // 0  //     // Enable a two-steps mode where CalcTextSize() calls will load AdvanceX *without* rendering/packing glyphs. Only advantageous if you know that the glyph is unlikely to actually be rendered, otherwise it is slower because we'd do one query on the first CalcTextSize and one query on the first Draw.;
    */

    LastUsedFrame:      s32; // 4  //     // Record of that time this was bounds
    BakedId:            ID; // 4     //     // Unique ID for this baked storage
    OwnerFont:          *ImFont; // 4-8   // in  // Parent font
    FontLoaderDatas:    *void; // 4-8   //     // Font loader opaque storage (per baked font * sources): single contiguous buffer allocated by imgui, passed to loader.

    // Functions
    Constructor :: (this: *ImFontBaked) -> void #cpp_method #foreign imgui "??0ImFontBaked@@QEAA@XZ";
    ClearOutputData :: (this: *ImFontBaked) -> void #cpp_method #foreign imgui "?ClearOutputData@ImFontBaked@@QEAAXXZ";
    FindGlyph :: (this: *ImFontBaked, c: ImWchar) -> *ImFontGlyph #cpp_method #foreign imgui "?FindGlyph@ImFontBaked@@QEAAPEAUImFontGlyph@@G@Z";
    FindGlyphNoFallback :: (this: *ImFontBaked, c: ImWchar) -> *ImFontGlyph #cpp_method #foreign imgui "?FindGlyphNoFallback@ImFontBaked@@QEAAPEAUImFontGlyph@@G@Z";
    GetCharAdvance :: (this: *ImFontBaked, c: ImWchar) -> float #cpp_method #foreign imgui "?GetCharAdvance@ImFontBaked@@QEAAMG@Z";
    IsGlyphLoaded :: (this: *ImFontBaked, c: ImWchar) -> bool #cpp_method #foreign imgui "?IsGlyphLoaded@ImFontBaked@@QEAA_NG@Z";
}

set_MetricsTotalSurface :: (fields: *ImFontBaked, value: u32) {
    MASK0: u32 : 0b11_1111_1111_1111_1111_1111_1111;
    fields.__bitfield = (fields.__bitfield & ~MASK0) | (value & MASK0);
}
get_MetricsTotalSurface :: (fields: ImFontBaked) -> u32 {
    return (fields.__bitfield & 0b11_1111_1111_1111_1111_1111_1111);
}

set_WantDestroy :: (fields: *ImFontBaked, value: bool) {
    if value fields.__bitfield |= 1 << 26;
    else     fields.__bitfield &= ~cast(u32)(1 << 26);
}
get_WantDestroy :: (fields: ImFontBaked) -> bool {
    return (fields.__bitfield & (1 << 26)) != 0;
}

set_LoadNoFallback :: (fields: *ImFontBaked, value: bool) {
    if value fields.__bitfield |= 1 << 27;
    else     fields.__bitfield &= ~cast(u32)(1 << 27);
}
get_LoadNoFallback :: (fields: ImFontBaked) -> bool {
    return (fields.__bitfield & (1 << 27)) != 0;
}

set_LoadNoRenderOnLayout :: (fields: *ImFontBaked, value: bool) {
    if value fields.__bitfield |= 1 << 28;
    else     fields.__bitfield &= ~cast(u32)(1 << 28);
}
get_LoadNoRenderOnLayout :: (fields: ImFontBaked) -> bool {
    return (fields.__bitfield & (1 << 28)) != 0;
}


// Font flags
// (in future versions as we redesign font loading API, this will become more important and better documented. for now please consider this as internal/advanced use)
ImFontFlags :: enum_flags s32 {
    None            :: 0x0;
    NoLoadError     :: 0x2;
    NoLoadGlyphs    :: 0x4;
    LockBakedSizes  :: 0x8;
    ImplicitRefSize :: 0x10;

    ImFontFlags_None            :: None;
    ImFontFlags_NoLoadError     :: NoLoadError;
    ImFontFlags_NoLoadGlyphs    :: NoLoadGlyphs;
    ImFontFlags_LockBakedSizes  :: LockBakedSizes;
    ImFontFlags_ImplicitRefSize :: ImplicitRefSize;
}

// Font runtime data and rendering
// - ImFontAtlas automatically loads a default embedded font for you if you didn't load one manually.
// - Since 1.92.0 a font may be rendered as any size! Therefore a font doesn't have one specific size.
// - Use 'font->GetFontBaked(size)' to retrieve the ImFontBaked* corresponding to a given size.
// - If you used g.Font + g.FontSize (which is frequent from the ImGui layer), you can use g.FontBaked as a shortcut, as g.FontBaked == g.Font->GetFontBaked(g.FontSize).
ImFont :: struct {
    LastBaked:                *ImFontBaked; // 4-8   // Cache last bound baked. NEVER USE DIRECTLY. Use GetFontBaked().
    OwnerAtlas:               *ImFontAtlas; // 4-8   // What we have been loaded into.
    Flags:                    ImFontFlags; // 4     // Font flags.
    CurrentRasterizerDensity: float; // Current rasterizer density. This is a varying state of the font.

    FontId:                   ID; // Unique identifier for the font
    LegacySize:               float; // 4     // in  // Font size passed to AddFont(). Use for old code calling PushFont() expecting to use that size. (use ImGui::GetFontBaked() to get font baked at current bound size).
    Sources:                  ImVector(*ImFontConfig); // 16    // in  // List of sources. Pointers within OwnerAtlas->Sources[]
    EllipsisChar:             ImWchar; // 2-4   // out // Character used for ellipsis rendering ('...'). If you ever want to temporarily swap this for an alternative/dummy char, make sure to clear EllipsisAutoBake.
    FallbackChar:             ImWchar; // 2-4   // out // Character used if a glyph isn't found (U+FFFD, '?')
    Used8kPagesMap:           [1] ImU8; // 1 bytes if ImWchar=ImWchar16, 17 bytes if ImWchar==ImWchar32. Store 1-bit for each block of 8K codepoints that has one active glyph. This is mainly used to facilitate iterations across all used codepoints.
    EllipsisAutoBake:         bool; // 1     //     // Mark when the "..." glyph (== EllipsisChar) needs to be generated by combining multiple '.'.
    RemapPairs:               Storage; // 16    //     // Remapping pairs when using AddRemapChar(), otherwise empty.

    Scale:                    float; // 4     // in  // Legacy base font scale (~1.0f), multiplied by the per-window font scale which you can adjust with SetWindowFontScale()

    // Methods
    Constructor :: (this: *ImFont) -> void #cpp_method #foreign imgui "??0ImFont@@QEAA@XZ";
    Destructor :: (this: *ImFont) -> void #cpp_method #foreign imgui "??1ImFont@@QEAA@XZ";
    IsGlyphInFont :: (this: *ImFont, c: ImWchar) -> bool #cpp_method #foreign imgui "?IsGlyphInFont@ImFont@@QEAA_NG@Z";

    // [Internal] Don't use!
    // 'max_width' stops rendering after a certain width (could be turned into a 2d size). FLT_MAX to disable.
    // 'wrap_width' enable automatic word-wrapping across multiple lines to fit into given width. 0.0f to disable.
    GetFontBaked :: (this: *ImFont, font_size: float, density: float = -1.0) -> *ImFontBaked #cpp_method #foreign imgui "?GetFontBaked@ImFont@@QEAAPEAUImFontBaked@@MM@Z";
    CalcTextSizeA :: (this: *ImFont, size: float, max_width: float, wrap_width: float, text_begin: *u8, text_end: *u8 = null, out_remaining: **u8 = null) -> ImVec2 #cpp_method #cpp_return_type_is_non_pod #foreign imgui "?CalcTextSizeA@ImFont@@QEAA?AUImVec2@@MMMPEBD0PEAPEBD@Z";
    CalcTextSizeA :: (this: *ImFont, size: float, max_width: float, wrap_width: float, text: string, out_remaining: **u8 = null) -> ImVec2 #no_context {
        return CalcTextSizeA(this, size, max_width, wrap_width, text.data, text.data + text.count, out_remaining);
    }
    CalcWordWrapPosition :: (this: *ImFont, size: float, text: *u8, text_end: *u8, wrap_width: float) -> *u8 #cpp_method #foreign imgui "?CalcWordWrapPosition@ImFont@@QEAAPEBDMPEBD0M@Z";
    CalcWordWrapPosition :: (this: *ImFont, size: float, text: string, wrap_width: float) -> *u8 #no_context {
        return CalcWordWrapPosition(this, size, text.data, text.data + text.count, wrap_width);
    }
    RenderChar :: (this: *ImFont, draw_list: *ImDrawList, size: float, pos: *ImVec2, col: ImU32, c: ImWchar, cpu_fine_clip: *ImVec4 = null) -> void #cpp_method #foreign imgui "?RenderChar@ImFont@@QEAAXPEAUImDrawList@@MAEBUImVec2@@IGPEBUImVec4@@@Z";
    RenderChar :: (this: *ImFont, draw_list: *ImDrawList, size: float, pos: ImVec2, col: ImU32, c: ImWchar, cpu_fine_clip: *ImVec4 = null) #no_context {
        RenderChar(this, draw_list, size, *pos, col, c, cpu_fine_clip);
    }
    RenderText :: (this: *ImFont, draw_list: *ImDrawList, size: float, pos: *ImVec2, col: ImU32, clip_rect: *ImVec4, text_begin: *u8, text_end: *u8, wrap_width: float = 0.0, flags: ImDrawTextFlags = .None) -> void #cpp_method #foreign imgui "?RenderText@ImFont@@QEAAXPEAUImDrawList@@MAEBUImVec2@@IAEBUImVec4@@PEBD3MH@Z";
    RenderText :: (this: *ImFont, draw_list: *ImDrawList, size: float, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text: string, wrap_width: float = 0.0, flags: ImDrawTextFlags = .None) #no_context {
        RenderText(this, draw_list, size, *pos, col, *clip_rect, text.data, text.data + text.count, wrap_width, flags);
    }

    // [Internal] Don't use!
    ClearOutputData :: (this: *ImFont) -> void #cpp_method #foreign imgui "?ClearOutputData@ImFont@@QEAAXXZ";
    AddRemapChar :: (this: *ImFont, from_codepoint: ImWchar, to_codepoint: ImWchar) -> void #cpp_method #foreign imgui "?AddRemapChar@ImFont@@QEAAXGG@Z";
    IsGlyphRangeUnused :: (this: *ImFont, c_begin: u32, c_last: u32) -> bool #cpp_method #foreign imgui "?IsGlyphRangeUnused@ImFont@@QEAA_NII@Z";
}

// Flags stored in ImGuiViewport::Flags, giving indications to the platform backends.
ViewportFlags :: enum_flags s32 {
    None                :: 0x0;
    IsPlatformWindow    :: 0x1;
    IsPlatformMonitor   :: 0x2;
    OwnedByApp          :: 0x4;
    NoDecoration        :: 0x8;
    NoTaskBarIcon       :: 0x10;
    NoFocusOnAppearing  :: 0x20;
    NoFocusOnClick      :: 0x40;
    NoInputs            :: 0x80;
    NoRendererClear     :: 0x100;
    NoAutoMerge         :: 0x200;
    TopMost             :: 0x400;
    CanHostOtherWindows :: 0x800;

    IsMinimized         :: 0x1000;
    IsFocused           :: 0x2000;

    ImGuiViewportFlags_None                :: None;
    ImGuiViewportFlags_IsPlatformWindow    :: IsPlatformWindow;
    ImGuiViewportFlags_IsPlatformMonitor   :: IsPlatformMonitor;
    ImGuiViewportFlags_OwnedByApp          :: OwnedByApp;
    ImGuiViewportFlags_NoDecoration        :: NoDecoration;
    ImGuiViewportFlags_NoTaskBarIcon       :: NoTaskBarIcon;
    ImGuiViewportFlags_NoFocusOnAppearing  :: NoFocusOnAppearing;
    ImGuiViewportFlags_NoFocusOnClick      :: NoFocusOnClick;
    ImGuiViewportFlags_NoInputs            :: NoInputs;
    ImGuiViewportFlags_NoRendererClear     :: NoRendererClear;
    ImGuiViewportFlags_NoAutoMerge         :: NoAutoMerge;
    ImGuiViewportFlags_TopMost             :: TopMost;
    ImGuiViewportFlags_CanHostOtherWindows :: CanHostOtherWindows;

    ImGuiViewportFlags_IsMinimized         :: IsMinimized;
    ImGuiViewportFlags_IsFocused           :: IsFocused;
}

// - Currently represents the Platform Window created by the application which is hosting our Dear ImGui windows.
// - With multi-viewport enabled, we extend this concept to have multiple active viewports.
// - In the future we will extend this concept further to also represent Platform Monitor and support a "no main platform window" operation mode.
// - About Main Area vs Work Area:
//   - Main Area = entire viewport.
//   - Work Area = entire viewport minus sections used by main menu bars (for platform windows), or by task bar (for platform monitor).
//   - Windows are generally trying to stay within the Work Area of their host viewport.
Viewport :: struct {
    ID_:                   ID; // Unique identifier for the viewport
    Flags:                 ViewportFlags; // See ImGuiViewportFlags_
    Pos:                   ImVec2; // Main Area: Position of the viewport (Dear ImGui coordinates are the same as OS desktop/native coordinates)
    Size:                  ImVec2; // Main Area: Size of the viewport.
    FramebufferScale:      ImVec2; // Density of the viewport for Retina display (always 1,1 on Windows, may be 2,2 etc on macOS/iOS). This will affect font rasterizer density.
    WorkPos:               ImVec2; // Work Area: Position of the viewport minus task bars, menus bars, status bars (>= Pos)
    WorkSize:              ImVec2; // Work Area: Size of the viewport minus task bars, menu bars, status bars (<= Size)
    DpiScale:              float; // 1.0f = 96 DPI = No extra scale.
    ParentViewportId:      ID; // (Advanced) 0: no parent. Instruct the platform backend to setup a parent/child relationship between platform windows.
    ParentViewport:        *Viewport; // (Advanced) Direct shortcut to ImGui::FindViewportByID(ParentViewportId). NULL: no parent.
    DrawData:              *ImDrawData; // The ImDrawData corresponding to this viewport. Valid after Render() and until the next call to NewFrame().

    RendererUserData:      *void; // void* to hold custom data structure for the renderer (e.g. swap chain, framebuffers etc.). generally set by your Renderer_CreateWindow function.
    PlatformUserData:      *void; // void* to hold custom data structure for the OS / platform (e.g. windowing info, render context). generally set by your Platform_CreateWindow function.
    PlatformIconData:      *void; // void* to hold custom data structure for the OS / platform to specify an icon. Currently unused for exposed to allow experiments.
    PlatformHandle:        *void; // void* to hold higher-level, platform window handle (e.g. HWND for Win32 backend, Uint32 WindowID for SDL, GLFWWindow* for GLFW), for FindViewportByPlatformHandle().
    PlatformHandleRaw:     *void; // void* to hold lower-level, platform-native window handle (always HWND on Win32 platform, unused for other platforms).
    PlatformWindowCreated: bool; // Platform window has been created (Platform_CreateWindow() has been called). This is false during the first frame where a viewport is being created.
    PlatformRequestMove:   bool; // Platform window requested move (e.g. window was moved by the OS / host window manager, authoritative position will be OS window position)
    PlatformRequestResize: bool; // Platform window requested resize (e.g. window was resized by the OS / host window manager, authoritative size will be OS window size)
    PlatformRequestClose:  bool; // Platform window requested closure (e.g. window was moved by the OS / host window manager, e.g. pressing ALT-F4)

    GetDebugName :: (this: *Viewport) -> *u8 #cpp_method #foreign imgui "?GetDebugName@ImGuiViewport@@QEBAPEBDXZ";
}

// Access via ImGui::GetPlatformIO()
PlatformIO :: struct {
    Constructor :: (this: *PlatformIO) -> void #cpp_method #foreign imgui "??0ImGuiPlatformIO@@QEAA@XZ";

    Platform_GetClipboardTextFn:        #type (ctx: *ImGuiContext) -> *u8 #c_call; // Should return NULL on failure (e.g. clipboard data is not text).
    Platform_SetClipboardTextFn:        #type (ctx: *ImGuiContext, text: *u8) -> void #c_call;
    Platform_ClipboardUserData:         *void;

    // Optional: Open link/folder/file in OS Shell
    // (default to use ShellExecuteW() on Windows, system() on Linux/Mac. expected to return false on failure, but some platforms may always return true)
    Platform_OpenInShellFn:             #type (ctx: *ImGuiContext, path: *u8) -> bool #c_call;
    Platform_OpenInShellUserData:       *void;

    // Optional: Notify OS Input Method Editor of the screen position of your cursor for text input position (e.g. when using Japanese/Chinese IME on Windows)
    // (default to use native imm32 api on Windows)
    Platform_SetImeDataFn:              #type (ctx: *ImGuiContext, viewport: *Viewport, data: *PlatformImeData) -> void #c_call;
    Platform_ImeUserData:               *void;

    Platform_LocaleDecimalPoint:        ImWchar; // '.'

    // Optional: Maximum texture size supported by renderer (used to adjust how we size textures). 0 if not known.
    Renderer_TextureMaxWidth:           s32;
    Renderer_TextureMaxHeight:          s32;

    // Written by some backends during ImGui_ImplXXXX_RenderDrawData() call to point backend_specific ImGui_ImplXXXX_RenderState* structure.
    Renderer_RenderState:               *void;

    DrawCallback_ResetRenderState:      ImDrawCallback; // Request to reset the graphics/render state.
    DrawCallback_SetSamplerLinear:      ImDrawCallback; // Request backend to set texture sampling to Linear.
    DrawCallback_SetSamplerNearest:     ImDrawCallback; // Request backend to set texture sampling to Nearest/Point.

    Platform_CreateWindow:              #type (vp: *Viewport) -> void #c_call; // . . U . .  // Create a new platform window for the given viewport
    Platform_DestroyWindow:             #type (vp: *Viewport) -> void #c_call; // N . U . D  //
    Platform_ShowWindow:                #type (vp: *Viewport) -> void #c_call; // . . U . .  // Newly created windows are initially hidden so SetWindowPos/Size/Title can be called on them before showing the window
    Platform_SetWindowPos:              #type (vp: *Viewport, pos: ImVec2) -> void #c_call; // . . U . .  // Set platform window position (given the upper-left corner of client area)
    Platform_GetWindowPos:              #type (vp: *Viewport) -> ImVec2 #c_call #cpp_return_type_is_non_pod; // N . . . .  //
    Platform_SetWindowSize:             #type (vp: *Viewport, size: ImVec2) -> void #c_call; // . . U . .  // Set platform window client area size (ignoring OS decorations such as OS title bar etc.)
    Platform_GetWindowSize:             #type (vp: *Viewport) -> ImVec2 #c_call #cpp_return_type_is_non_pod; // N . . . .  // Get platform window client area size
    Platform_GetWindowFramebufferScale: #type (vp: *Viewport) -> ImVec2 #c_call #cpp_return_type_is_non_pod; // N . . . .  // Return viewport density. Always 1,1 on Windows, often 2,2 on Retina display on macOS/iOS. MUST BE INTEGER VALUES.
    Platform_SetWindowFocus:            #type (vp: *Viewport) -> void #c_call; // N . . . .  // Move window to front and set input focus
    Platform_GetWindowFocus:            #type (vp: *Viewport) -> bool #c_call; // . . U . .  //
    Platform_GetWindowMinimized:        #type (vp: *Viewport) -> bool #c_call; // N . . . .  // Get platform window minimized state. When minimized, we generally won't attempt to get/set size and contents will be culled more easily
    Platform_SetWindowTitle:            #type (vp: *Viewport, str: *u8) -> void #c_call; // . . U . .  // Set platform window title (given an UTF-8 string)
    Platform_SetWindowAlpha:            #type (vp: *Viewport, alpha: float) -> void #c_call; // . . U . .  // (Optional) Setup global transparency (not per-pixel transparency)
    Platform_UpdateWindow:              #type (vp: *Viewport) -> void #c_call; // . . U . .  // (Optional) Called by UpdatePlatformWindows(). Optional hook to allow the platform backend from doing general book-keeping every frame.
    Platform_RenderWindow:              #type (vp: *Viewport, render_arg: *void) -> void #c_call; // . . . R .  // (Optional) Main rendering (platform side! This is often unused, or just setting a "current" context for OpenGL bindings). 'render_arg' is the value passed to RenderPlatformWindowsDefault().
    Platform_SwapBuffers:               #type (vp: *Viewport, render_arg: *void) -> void #c_call; // . . . R .  // (Optional) Call Present/SwapBuffers (platform side! This is often unused!). 'render_arg' is the value passed to RenderPlatformWindowsDefault().
    Platform_GetWindowDpiScale:         #type (vp: *Viewport) -> float #c_call; // N . . . .  // (Optional) [BETA] FIXME-DPI: DPI handling: Return DPI scale for this viewport. 1.0f = 96 DPI.
    Platform_OnChangedViewport:         #type (vp: *Viewport) -> void #c_call; // . F . . .  // (Optional) [BETA] FIXME-DPI: DPI handling: Called during Begin() every time the viewport we are outputting into changes, so backend has a chance to swap fonts to adjust style.
    Platform_GetWindowWorkAreaInsets:   #type (vp: *Viewport) -> ImVec4 #c_call #cpp_return_type_is_non_pod; // N . . . .  // (Optional) [BETA] Get initial work area inset for the viewport (won't be covered by main menu bar, dockspace over viewport etc.). Default to (0,0),(0,0). 'safeAreaInsets' in iOS land, 'DisplayCutout' in Android land.
    Platform_CreateVkSurface:           #type (vp: *Viewport, vk_inst: ImU64, vk_allocators: *void, out_vk_surface: *ImU64) -> s32 #c_call; // (Optional) For a Vulkan Renderer to call into Platform code (since the surface creation needs to tie them both).

    Renderer_CreateWindow:              #type (vp: *Viewport) -> void #c_call; // . . U . .  // Create swap chain, frame buffers etc. (called after Platform_CreateWindow)
    Renderer_DestroyWindow:             #type (vp: *Viewport) -> void #c_call; // N . U . D  // Destroy swap chain, frame buffers etc. (called before Platform_DestroyWindow)
    Renderer_SetWindowSize:             #type (vp: *Viewport, size: ImVec2) -> void #c_call; // . . U . .  // Resize swap chain, frame buffers etc. (called after Platform_SetWindowSize)
    Renderer_RenderWindow:              #type (vp: *Viewport, render_arg: *void) -> void #c_call; // . . . R .  // (Optional) Clear framebuffer, setup render target, then render the viewport->DrawData. 'render_arg' is the value passed to RenderPlatformWindowsDefault().
    Renderer_SwapBuffers:               #type (vp: *Viewport, render_arg: *void) -> void #c_call; // . . . R .  // (Optional) Call Present/SwapBuffers. 'render_arg' is the value passed to RenderPlatformWindowsDefault().

    // (Optional) Monitor list
    // - Updated by: app/backend. Update every frame to dynamically support changing monitor or DPI configuration.
    // - Used by: dear imgui to query DPI info, clamp popups/tooltips within same monitor and not have them straddle monitors.
    Monitors:                           ImVector(PlatformMonitor);

    Textures:                           ImVector(*ImTextureData); // List of textures used by Dear ImGui (most often 1) + contents of external texture list is automatically appended into this.

    Viewports:                          ImVector(*Viewport); // Main viewports, followed by all secondary viewports.

    //------------------------------------------------------------------
    // Functions
    //------------------------------------------------------------------
    ClearPlatformHandlers :: (this: *PlatformIO) -> void #cpp_method #foreign imgui "?ClearPlatformHandlers@ImGuiPlatformIO@@QEAAXXZ";
    ClearRendererHandlers :: (this: *PlatformIO) -> void #cpp_method #foreign imgui "?ClearRendererHandlers@ImGuiPlatformIO@@QEAAXXZ";
}

// (Optional) This is required when enabling multi-viewport. Represent the bounds of each connected monitor/display and their DPI.
// We use this information for multiple DPI support + clamping the position of popups and tooltips so they don't straddle multiple monitors.
PlatformMonitor :: struct {
    MainPos:        ImVec2; // Coordinates of the area displayed on this monitor (Min = upper left, Max = bottom right)
    MainSize:       ImVec2; // Coordinates of the area displayed on this monitor (Min = upper left, Max = bottom right)
    WorkPos:        ImVec2; // Coordinates without task bars / side bars / menu bars. Used to avoid positioning popups/tooltips inside this region. If you don't have this info, please copy the value for MainPos/MainSize.
    WorkSize:       ImVec2; // Coordinates without task bars / side bars / menu bars. Used to avoid positioning popups/tooltips inside this region. If you don't have this info, please copy the value for MainPos/MainSize.
    DpiScale:       float; // 1.0f = 96 DPI
    PlatformHandle: *void; // Backend dependant data (e.g. HMONITOR, GLFWmonitor*, SDL Display Index, NSScreen*)
}

// (Optional) Support for IME (Input Method Editor) via the platform_io.Platform_SetImeDataFn() function. Handler is called during EndFrame().
PlatformImeData :: struct {
    WantVisible:     bool; // A widget wants the IME to be visible.
    WantTextInput:   bool; // A widget wants text input, not necessarily IME to be visible. This is automatically set to the upcoming value of io.WantTextInput.
    InputPos:        ImVec2; // Position of input cursor (for IME).
    InputLineHeight: float; // Line height (for IME).
    ViewportId:      ID; // ID of platform window/viewport.
}

//-- OBSOLETED in 1.92.0: ImFontAtlasCustomRect becomes ImTextureRect
// - ImFontAtlasCustomRect::X,Y          --> ImTextureRect::x,y
// - ImFontAtlasCustomRect::Width,Height --> ImTextureRect::w,h
// - ImFontAtlasCustomRect::GlyphColored --> if you need to write to this, instead you can write to 'font->Glyphs.back()->Colored' after calling AddCustomRectFontGlyph()
// We could make ImTextureRect an union to use old names, but 1) this would be confusing 2) the fix is easy 3) ImFontAtlasCustomRect was always a rather esoteric api.
ImFontAtlasCustomRect :: ImFontAtlasRect;

// Indicates variable should deduced automatically.
IMPLOT_AUTO: s32 : -1;

// Special color used to indicate that a color should be deduced automatically.
IMPLOT_AUTO_COL: ImVec4 : .{0, 0, 0, -1};

// Forward declarations
ImPlotContext :: struct {}

// Axis indices. The values assigned may change; NEVER hardcode these.
ImAxis :: enum s32 {
    X1    :: 0;
    X2    :: 1;
    X3    :: 2;

    Y1    :: 3;
    Y2    :: 4;
    Y3    :: 5;

    COUNT :: 6;

    ImAxis_X1    :: X1;
    ImAxis_X2    :: X2;
    ImAxis_X3    :: X3;

    ImAxis_Y1    :: Y1;
    ImAxis_Y2    :: Y2;
    ImAxis_Y3    :: Y3;

    ImAxis_COUNT :: COUNT;
}

// Plotting properties. These provide syntactic sugar for creating ImPlotSpecs from (ImPlotProp,value) pairs. See ImPlotSpec documentation.
ImPlotProp :: enum s32 {
    LineColor        :: 0;
    LineColors       :: 1;
    LineWeight       :: 2;
    FillColor        :: 3;
    FillColors       :: 4;
    FillAlpha        :: 5;
    Marker           :: 6;
    MarkerSize       :: 7;
    MarkerSizes      :: 8;
    MarkerLineColor  :: 9;
    MarkerLineColors :: 10;
    MarkerFillColor  :: 11;
    MarkerFillColors :: 12;
    Size             :: 13;
    Offset           :: 14;
    Stride           :: 15;
    Flags            :: 16;

    ImPlotProp_LineColor        :: LineColor;
    ImPlotProp_LineColors       :: LineColors;
    ImPlotProp_LineWeight       :: LineWeight;
    ImPlotProp_FillColor        :: FillColor;
    ImPlotProp_FillColors       :: FillColors;
    ImPlotProp_FillAlpha        :: FillAlpha;
    ImPlotProp_Marker           :: Marker;
    ImPlotProp_MarkerSize       :: MarkerSize;
    ImPlotProp_MarkerSizes      :: MarkerSizes;
    ImPlotProp_MarkerLineColor  :: MarkerLineColor;
    ImPlotProp_MarkerLineColors :: MarkerLineColors;
    ImPlotProp_MarkerFillColor  :: MarkerFillColor;
    ImPlotProp_MarkerFillColors :: MarkerFillColors;
    ImPlotProp_Size             :: Size;
    ImPlotProp_Offset           :: Offset;
    ImPlotProp_Stride           :: Stride;
    ImPlotProp_Flags            :: Flags;
}

// Options for plots (see BeginPlot).
ImPlotFlags :: enum_flags s32 {
    None        :: 0x0;
    NoTitle     :: 0x1;
    NoLegend    :: 0x2;
    NoMouseText :: 0x4;
    NoInputs    :: 0x8;
    NoMenus     :: 0x10;
    NoBoxSelect :: 0x20;
    NoFrame     :: 0x40;
    Equal       :: 0x80;
    Crosshairs  :: 0x100;
    CanvasOnly  :: 0x37;

    ImPlotFlags_None        :: None;
    ImPlotFlags_NoTitle     :: NoTitle;
    ImPlotFlags_NoLegend    :: NoLegend;
    ImPlotFlags_NoMouseText :: NoMouseText;
    ImPlotFlags_NoInputs    :: NoInputs;
    ImPlotFlags_NoMenus     :: NoMenus;
    ImPlotFlags_NoBoxSelect :: NoBoxSelect;
    ImPlotFlags_NoFrame     :: NoFrame;
    ImPlotFlags_Equal       :: Equal;
    ImPlotFlags_Crosshairs  :: Crosshairs;
    ImPlotFlags_CanvasOnly  :: CanvasOnly;
}

// Options for plot axes (see SetupAxis).
ImPlotAxisFlags :: enum_flags s32 {
    None          :: 0x0;
    NoLabel       :: 0x1;
    NoGridLines   :: 0x2;
    NoTickMarks   :: 0x4;
    NoTickLabels  :: 0x8;
    NoInitialFit  :: 0x10;
    NoMenus       :: 0x20;
    NoSideSwitch  :: 0x40;
    NoHighlight   :: 0x80;
    Opposite      :: 0x100;
    Foreground    :: 0x200;
    Invert        :: 0x400;
    AutoFit       :: 0x800;
    RangeFit      :: 0x1000;
    PanStretch    :: 0x2000;
    LockMin       :: 0x4000;
    LockMax       :: 0x8000;
    Lock          :: 0xc000;
    NoDecorations :: 0xf;
    AuxDefault    :: 0x102;

    ImPlotAxisFlags_None          :: None;
    ImPlotAxisFlags_NoLabel       :: NoLabel;
    ImPlotAxisFlags_NoGridLines   :: NoGridLines;
    ImPlotAxisFlags_NoTickMarks   :: NoTickMarks;
    ImPlotAxisFlags_NoTickLabels  :: NoTickLabels;
    ImPlotAxisFlags_NoInitialFit  :: NoInitialFit;
    ImPlotAxisFlags_NoMenus       :: NoMenus;
    ImPlotAxisFlags_NoSideSwitch  :: NoSideSwitch;
    ImPlotAxisFlags_NoHighlight   :: NoHighlight;
    ImPlotAxisFlags_Opposite      :: Opposite;
    ImPlotAxisFlags_Foreground    :: Foreground;
    ImPlotAxisFlags_Invert        :: Invert;
    ImPlotAxisFlags_AutoFit       :: AutoFit;
    ImPlotAxisFlags_RangeFit      :: RangeFit;
    ImPlotAxisFlags_PanStretch    :: PanStretch;
    ImPlotAxisFlags_LockMin       :: LockMin;
    ImPlotAxisFlags_LockMax       :: LockMax;
    ImPlotAxisFlags_Lock          :: Lock;
    ImPlotAxisFlags_NoDecorations :: NoDecorations;
    ImPlotAxisFlags_AuxDefault    :: AuxDefault;
}

// Options for subplots (see BeginSubplot)
ImPlotSubplotFlags :: enum_flags s32 {
    None       :: 0x0;
    NoTitle    :: 0x1;
    NoLegend   :: 0x2;
    NoMenus    :: 0x4;
    NoResize   :: 0x8;
    NoAlign    :: 0x10;
    ShareItems :: 0x20;
    LinkRows   :: 0x40;
    LinkCols   :: 0x80;
    LinkAllX   :: 0x100;
    LinkAllY   :: 0x200;
    ColMajor   :: 0x400;

    ImPlotSubplotFlags_None       :: None;
    ImPlotSubplotFlags_NoTitle    :: NoTitle;
    ImPlotSubplotFlags_NoLegend   :: NoLegend;
    ImPlotSubplotFlags_NoMenus    :: NoMenus;
    ImPlotSubplotFlags_NoResize   :: NoResize;
    ImPlotSubplotFlags_NoAlign    :: NoAlign;
    ImPlotSubplotFlags_ShareItems :: ShareItems;
    ImPlotSubplotFlags_LinkRows   :: LinkRows;
    ImPlotSubplotFlags_LinkCols   :: LinkCols;
    ImPlotSubplotFlags_LinkAllX   :: LinkAllX;
    ImPlotSubplotFlags_LinkAllY   :: LinkAllY;
    ImPlotSubplotFlags_ColMajor   :: ColMajor;
}

// Options for legends (see SetupLegend)
ImPlotLegendFlags :: enum_flags s32 {
    None            :: 0x0;
    NoButtons       :: 0x1;
    NoHighlightItem :: 0x2;
    NoHighlightAxis :: 0x4;
    NoMenus         :: 0x8;
    Outside         :: 0x10;
    Horizontal      :: 0x20;
    Sort            :: 0x40;
    Reverse         :: 0x80;

    ImPlotLegendFlags_None            :: None;
    ImPlotLegendFlags_NoButtons       :: NoButtons;
    ImPlotLegendFlags_NoHighlightItem :: NoHighlightItem;
    ImPlotLegendFlags_NoHighlightAxis :: NoHighlightAxis;
    ImPlotLegendFlags_NoMenus         :: NoMenus;
    ImPlotLegendFlags_Outside         :: Outside;
    ImPlotLegendFlags_Horizontal      :: Horizontal;
    ImPlotLegendFlags_Sort            :: Sort;
    ImPlotLegendFlags_Reverse         :: Reverse;
}

// Options for mouse hover text (see SetupMouseText)
ImPlotMouseTextFlags :: enum_flags s32 {
    None       :: 0x0;
    NoAuxAxes  :: 0x1;
    NoFormat   :: 0x2;
    ShowAlways :: 0x4;

    ImPlotMouseTextFlags_None       :: None;
    ImPlotMouseTextFlags_NoAuxAxes  :: NoAuxAxes;
    ImPlotMouseTextFlags_NoFormat   :: NoFormat;
    ImPlotMouseTextFlags_ShowAlways :: ShowAlways;
}

// Options for DragPoint, DragLine, DragRect
ImPlotDragToolFlags :: enum_flags s32 {
    None      :: 0x0;
    NoCursors :: 0x1;
    NoFit     :: 0x2;
    NoInputs  :: 0x4;
    Delayed   :: 0x8;

    ImPlotDragToolFlags_None      :: None;
    ImPlotDragToolFlags_NoCursors :: NoCursors;
    ImPlotDragToolFlags_NoFit     :: NoFit;
    ImPlotDragToolFlags_NoInputs  :: NoInputs;
    ImPlotDragToolFlags_Delayed   :: Delayed;
}

// Flags for ColormapScale
ImPlotColormapScaleFlags :: enum_flags s32 {
    None     :: 0x0;
    NoLabel  :: 0x1;
    Opposite :: 0x2;
    Invert   :: 0x4;

    ImPlotColormapScaleFlags_None     :: None;
    ImPlotColormapScaleFlags_NoLabel  :: NoLabel;
    ImPlotColormapScaleFlags_Opposite :: Opposite;
    ImPlotColormapScaleFlags_Invert   :: Invert;
}

// Flags for ANY PlotX function. Used by setting ImPlotSpec::Flags.
ImPlotItemFlags :: enum_flags s32 {
    None     :: 0x0;
    NoLegend :: 0x1;
    NoFit    :: 0x2;

    ImPlotItemFlags_None     :: None;
    ImPlotItemFlags_NoLegend :: NoLegend;
    ImPlotItemFlags_NoFit    :: NoFit;
}

// Flags for PlotLine. Used by setting ImPlotSpec::Flags.
ImPlotLineFlags :: enum_flags s32 {
    None     :: 0x0;
    Segments :: 0x400;
    Loop     :: 0x800;
    SkipNaN  :: 0x1000;
    NoClip   :: 0x2000;
    Shaded   :: 0x4000;

    ImPlotLineFlags_None     :: None;
    ImPlotLineFlags_Segments :: Segments;
    ImPlotLineFlags_Loop     :: Loop;
    ImPlotLineFlags_SkipNaN  :: SkipNaN;
    ImPlotLineFlags_NoClip   :: NoClip;
    ImPlotLineFlags_Shaded   :: Shaded;
}

// Flags for PlotScatter. Used by setting ImPlotSpec::Flags.
ImPlotScatterFlags :: enum_flags s32 {
    None   :: 0x0;
    NoClip :: 0x400;

    ImPlotScatterFlags_None   :: None;
    ImPlotScatterFlags_NoClip :: NoClip;
}

// Flags for PlotBubbles. Used by setting ImPlotSpec::Flags.
ImPlotBubblesFlags :: enum_flags s32 {
    None :: 0x0;
    ImPlotBubblesFlags_None :: None;
}

// Flags for PlotPolygon. Used by setting ImPlotSpec::Flags.
ImPlotPolygonFlags :: enum_flags s32 {
    None    :: 0x0;
    Concave :: 0x400;

    ImPlotPolygonFlags_None    :: None;
    ImPlotPolygonFlags_Concave :: Concave;
}

// Flags for PlotStairs. Used by setting ImPlotSpec::Flags.
ImPlotStairsFlags :: enum_flags s32 {
    None    :: 0x0;
    PreStep :: 0x400;
    Shaded  :: 0x800;

    ImPlotStairsFlags_None    :: None;
    ImPlotStairsFlags_PreStep :: PreStep;
    ImPlotStairsFlags_Shaded  :: Shaded;
}

// Flags for PlotShaded (placeholder). Used by setting ImPlotSpec::Flags.
ImPlotShadedFlags :: enum_flags s32 {
    None :: 0x0;
    ImPlotShadedFlags_None :: None;
}

// Flags for PlotBars. Used by setting ImPlotSpec::Flags.
ImPlotBarsFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;

    ImPlotBarsFlags_None       :: None;
    ImPlotBarsFlags_Horizontal :: Horizontal;
}

// Flags for PlotBarGroups. Used by setting ImPlotSpec::Flags.
ImPlotBarGroupsFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;
    Stacked    :: 0x800;

    ImPlotBarGroupsFlags_None       :: None;
    ImPlotBarGroupsFlags_Horizontal :: Horizontal;
    ImPlotBarGroupsFlags_Stacked    :: Stacked;
}

// Flags for PlotErrorBars. Used by setting ImPlotSpec::Flags.
ImPlotErrorBarsFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;

    ImPlotErrorBarsFlags_None       :: None;
    ImPlotErrorBarsFlags_Horizontal :: Horizontal;
}

// Flags for PlotStems. Used by setting ImPlotSpec::Flags.
ImPlotStemsFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;

    ImPlotStemsFlags_None       :: None;
    ImPlotStemsFlags_Horizontal :: Horizontal;
}

// Flags for PlotInfLines. Used by setting ImPlotSpec::Flags.
ImPlotInfLinesFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;

    ImPlotInfLinesFlags_None       :: None;
    ImPlotInfLinesFlags_Horizontal :: Horizontal;
}

// Flags for PlotPieChart. Used by setting ImPlotSpec::Flags.
ImPlotPieChartFlags :: enum_flags s32 {
    None          :: 0x0;
    Normalize     :: 0x400;
    IgnoreHidden  :: 0x800;
    Exploding     :: 0x1000;
    NoSliceBorder :: 0x2000;

    ImPlotPieChartFlags_None          :: None;
    ImPlotPieChartFlags_Normalize     :: Normalize;
    ImPlotPieChartFlags_IgnoreHidden  :: IgnoreHidden;
    ImPlotPieChartFlags_Exploding     :: Exploding;
    ImPlotPieChartFlags_NoSliceBorder :: NoSliceBorder;
}

// Flags for PlotHeatmap. Used by setting ImPlotSpec::Flags.
ImPlotHeatmapFlags :: enum_flags s32 {
    None     :: 0x0;
    ColMajor :: 0x400;

    ImPlotHeatmapFlags_None     :: None;
    ImPlotHeatmapFlags_ColMajor :: ColMajor;
}

// Flags for PlotHistogram and PlotHistogram2D. Used by setting ImPlotSpec::Flags.
ImPlotHistogramFlags :: enum_flags s32 {
    None       :: 0x0;
    Horizontal :: 0x400;
    Cumulative :: 0x800;
    Density    :: 0x1000;
    NoOutliers :: 0x2000;
    ColMajor   :: 0x4000;

    ImPlotHistogramFlags_None       :: None;
    ImPlotHistogramFlags_Horizontal :: Horizontal;
    ImPlotHistogramFlags_Cumulative :: Cumulative;
    ImPlotHistogramFlags_Density    :: Density;
    ImPlotHistogramFlags_NoOutliers :: NoOutliers;
    ImPlotHistogramFlags_ColMajor   :: ColMajor;
}

// Flags for PlotDigital (placeholder). Used by setting ImPlotSpec::Flags.
ImPlotDigitalFlags :: enum_flags s32 {
    None :: 0x0;
    ImPlotDigitalFlags_None :: None;
}

// Flags for PlotImage (placeholder). Used by setting ImPlotSpec::Flags.
ImPlotImageFlags :: enum_flags s32 {
    None :: 0x0;
    ImPlotImageFlags_None :: None;
}

// Flags for PlotText. Used by setting ImPlotSpec::Flags.
ImPlotTextFlags :: enum_flags s32 {
    None     :: 0x0;
    Vertical :: 0x400;

    ImPlotTextFlags_None     :: None;
    ImPlotTextFlags_Vertical :: Vertical;
}

// Flags for PlotDummy (placeholder). Used by setting ImPlotSpec::Flags.
ImPlotDummyFlags :: enum_flags s32 {
    None :: 0x0;
    ImPlotDummyFlags_None :: None;
}

// Represents a condition for SetupAxisLimits etc. (same as ImGuiCond, but we only support a subset of those enums)
ImPlotCond :: enum s32 {
    None   :: 0;
    Always :: 1;
    Once   :: 2;

    ImPlotCond_None   :: None;
    ImPlotCond_Always :: Always;
    ImPlotCond_Once   :: Once;
}

// Plot styling colors.
ImPlotCol :: enum s32 {
    FrameBg       :: 0;
    PlotBg        :: 1;
    PlotBorder    :: 2;
    LegendBg      :: 3;
    LegendBorder  :: 4;
    LegendText    :: 5;
    TitleText     :: 6;
    InlayText     :: 7;
    AxisText      :: 8;
    AxisGrid      :: 9;
    AxisTick      :: 10;
    AxisBg        :: 11;
    AxisBgHovered :: 12;
    AxisBgActive  :: 13;
    Selection     :: 14;
    Crosshairs    :: 15;
    COUNT         :: 16;

    ImPlotCol_FrameBg       :: FrameBg;
    ImPlotCol_PlotBg        :: PlotBg;
    ImPlotCol_PlotBorder    :: PlotBorder;
    ImPlotCol_LegendBg      :: LegendBg;
    ImPlotCol_LegendBorder  :: LegendBorder;
    ImPlotCol_LegendText    :: LegendText;
    ImPlotCol_TitleText     :: TitleText;
    ImPlotCol_InlayText     :: InlayText;
    ImPlotCol_AxisText      :: AxisText;
    ImPlotCol_AxisGrid      :: AxisGrid;
    ImPlotCol_AxisTick      :: AxisTick;
    ImPlotCol_AxisBg        :: AxisBg;
    ImPlotCol_AxisBgHovered :: AxisBgHovered;
    ImPlotCol_AxisBgActive  :: AxisBgActive;
    ImPlotCol_Selection     :: Selection;
    ImPlotCol_Crosshairs    :: Crosshairs;
    ImPlotCol_COUNT         :: COUNT;
}

// Plot styling variables.
ImPlotStyleVar :: enum s32 {
    PlotDefaultSize    :: 0;
    PlotMinSize        :: 1;
    PlotBorderSize     :: 2;
    MinorAlpha         :: 3;
    MajorTickLen       :: 4;
    MinorTickLen       :: 5;
    MajorTickSize      :: 6;
    MinorTickSize      :: 7;
    MajorGridSize      :: 8;
    MinorGridSize      :: 9;
    PlotPadding        :: 10;
    LabelPadding       :: 11;
    LegendPadding      :: 12;
    LegendInnerPadding :: 13;
    LegendSpacing      :: 14;
    MousePosPadding    :: 15;
    AnnotationPadding  :: 16;
    FitPadding         :: 17;
    DigitalPadding     :: 18;
    DigitalSpacing     :: 19;
    COUNT              :: 20;

    ImPlotStyleVar_PlotDefaultSize    :: PlotDefaultSize;
    ImPlotStyleVar_PlotMinSize        :: PlotMinSize;
    ImPlotStyleVar_PlotBorderSize     :: PlotBorderSize;
    ImPlotStyleVar_MinorAlpha         :: MinorAlpha;
    ImPlotStyleVar_MajorTickLen       :: MajorTickLen;
    ImPlotStyleVar_MinorTickLen       :: MinorTickLen;
    ImPlotStyleVar_MajorTickSize      :: MajorTickSize;
    ImPlotStyleVar_MinorTickSize      :: MinorTickSize;
    ImPlotStyleVar_MajorGridSize      :: MajorGridSize;
    ImPlotStyleVar_MinorGridSize      :: MinorGridSize;
    ImPlotStyleVar_PlotPadding        :: PlotPadding;
    ImPlotStyleVar_LabelPadding       :: LabelPadding;
    ImPlotStyleVar_LegendPadding      :: LegendPadding;
    ImPlotStyleVar_LegendInnerPadding :: LegendInnerPadding;
    ImPlotStyleVar_LegendSpacing      :: LegendSpacing;
    ImPlotStyleVar_MousePosPadding    :: MousePosPadding;
    ImPlotStyleVar_AnnotationPadding  :: AnnotationPadding;
    ImPlotStyleVar_FitPadding         :: FitPadding;
    ImPlotStyleVar_DigitalPadding     :: DigitalPadding;
    ImPlotStyleVar_DigitalSpacing     :: DigitalSpacing;
    ImPlotStyleVar_COUNT              :: COUNT;
}

// Axis scale
ImPlotScale :: enum s32 {
    Linear :: 0;
    Time   :: 1;
    Log10  :: 2;
    SymLog :: 3;

    ImPlotScale_Linear :: Linear;
    ImPlotScale_Time   :: Time;
    ImPlotScale_Log10  :: Log10;
    ImPlotScale_SymLog :: SymLog;
}

// Marker specifications.
ImPlotMarker :: enum s32 {
    None     :: -2;
    Auto     :: -1;
    Circle   :: 0;
    Square   :: 1;
    Diamond  :: 2;
    Up       :: 3;
    Down     :: 4;
    Left     :: 5;
    Right    :: 6;
    Cross    :: 7;
    Plus     :: 8;
    Asterisk :: 9;
    COUNT    :: 10;

    ImPlotMarker_None     :: None;
    ImPlotMarker_Auto     :: Auto;
    ImPlotMarker_Circle   :: Circle;
    ImPlotMarker_Square   :: Square;
    ImPlotMarker_Diamond  :: Diamond;
    ImPlotMarker_Up       :: Up;
    ImPlotMarker_Down     :: Down;
    ImPlotMarker_Left     :: Left;
    ImPlotMarker_Right    :: Right;
    ImPlotMarker_Cross    :: Cross;
    ImPlotMarker_Plus     :: Plus;
    ImPlotMarker_Asterisk :: Asterisk;
    ImPlotMarker_COUNT    :: COUNT;
}

// Built-in colormaps
ImPlotColormap :: enum s32 {
    Deep     :: 0;
    Dark     :: 1;
    Pastel   :: 2;
    Paired   :: 3;
    Viridis  :: 4;
    Plasma   :: 5;
    Hot      :: 6;
    Cool     :: 7;
    Pink     :: 8;
    Jet      :: 9;
    Twilight :: 10;
    RdBu     :: 11;
    BrBG     :: 12;
    PiYG     :: 13;
    Spectral :: 14;
    Greys    :: 15;

    ImPlotColormap_Deep     :: Deep;
    ImPlotColormap_Dark     :: Dark;
    ImPlotColormap_Pastel   :: Pastel;
    ImPlotColormap_Paired   :: Paired;
    ImPlotColormap_Viridis  :: Viridis;
    ImPlotColormap_Plasma   :: Plasma;
    ImPlotColormap_Hot      :: Hot;
    ImPlotColormap_Cool     :: Cool;
    ImPlotColormap_Pink     :: Pink;
    ImPlotColormap_Jet      :: Jet;
    ImPlotColormap_Twilight :: Twilight;
    ImPlotColormap_RdBu     :: RdBu;
    ImPlotColormap_BrBG     :: BrBG;
    ImPlotColormap_PiYG     :: PiYG;
    ImPlotColormap_Spectral :: Spectral;
    ImPlotColormap_Greys    :: Greys;
}

// Used to position items on a plot (e.g. legends, labels, etc.)
ImPlotLocation :: enum s32 {
    Center    :: 0;
    North     :: 1;
    South     :: 2;
    West      :: 4;
    East      :: 8;
    NorthWest :: 5;
    NorthEast :: 9;
    SouthWest :: 6;
    SouthEast :: 10;

    ImPlotLocation_Center    :: Center;
    ImPlotLocation_North     :: North;
    ImPlotLocation_South     :: South;
    ImPlotLocation_West      :: West;
    ImPlotLocation_East      :: East;
    ImPlotLocation_NorthWest :: NorthWest;
    ImPlotLocation_NorthEast :: NorthEast;
    ImPlotLocation_SouthWest :: SouthWest;
    ImPlotLocation_SouthEast :: SouthEast;
}

// Enums for different automatic histogram binning methods (k = bin count or w = bin width)
ImPlotBin :: enum s32 {
    Sqrt    :: -1;
    Sturges :: -2;
    Rice    :: -3;
    Scott   :: -4;

    ImPlotBin_Sqrt    :: Sqrt;
    ImPlotBin_Sturges :: Sturges;
    ImPlotBin_Rice    :: Rice;
    ImPlotBin_Scott   :: Scott;
}

// Plot item styling specification. Provide these to PlotX functions to override styling, specify
// offsetting or stride, or set optional flags. This struct can be used in the following ways:
//
// 1. By declaring and defining a struct instance:
//
//    ImPlotSpec spec;
//    spec.LineColor = ImVec4(1,0,0,1);
//    spec.LineWeight = 2.0f;
//    spec.Marker = ImPlotMarker_Circle;
//    spec.Flags = ImPlotItemFlags_NoLegend | ImPlotLineFlags_Segments;
//    ImPlot::PlotLine("MyLine", xs, ys, 100, spec);
//
// 2. Inline using (ImPlotProp,value) pairs (order does NOT matter):
//
//    ImPlot::PlotLine("MyLine", xs, ys, 100, {
//      ImPlotProp_LineColor, ImVec4(1,0,0,1),
//      ImPlotProp_LineWeight, 2.0f,
//      ImPlotProp_Marker, ImPlotMarker_Circle,
//      ImPlotProp_Flags, ImPlotItemFlags_NoLegend | ImPlotLineFlags_Segments
//    });
ImPlotSpec :: struct {
    LineColor:        ImVec4; // line color (applies to lines, bar edges); IMPLOT_AUTO_COL will use next Colormap color or current item color
    LineColors:       *ImU32 = null; // array of colors for each line; if nullptr, use LineColor for all lines
    LineWeight:       float = 1.0; // line weight in pixels (applies to lines, bar edges, marker edges)
    FillColor:        ImVec4; // fill color (applies to shaded regions, bar faces); IMPLOT_AUTO_COL will use next Colormap color or current item color
    FillColors:       *ImU32 = null; // array of colors for each fill; if nullptr, use FillColor for all fills
    FillAlpha:        float = 1.0; // alpha multiplier (applies to FillColor, FillColors, MarkerFillColor, and MarkerFillColors)
    Marker:           ImPlotMarker = cast(ImPlotMarker).None; // marker type; specify ImPlotMarker_Auto to use the next unused marker
    MarkerSize:       float = 4; // size of markers (radius) *in pixels*
    MarkerSizes:      *float = null; // array of sizes for each marker; if nullptr, use MarkerSize for all markers
    MarkerLineColor:  ImVec4; // marker edge color; IMPLOT_AUTO_COL will use LineColor
    MarkerLineColors: *ImU32 = null; // array of colors for each marker edge; if nullptr, use MarkerLineColor for all markers
    MarkerFillColor:  ImVec4; // marker face color; IMPLOT_AUTO_COL will use LineColor
    MarkerFillColors: *ImU32 = null; // array of colors for each marker face; if nullptr, use MarkerFillColor for all markers
    Size:             float = 4; // size of error bar whiskers (width or height), and digital bars (height) *in pixels*
    Offset:           s32 = 0; // data index offset
    Stride:           s32 = IMPLOT_AUTO; // data stride in bytes; IMPLOT_AUTO will result in sizeof(T) where T is the type passed to PlotX
    Flags:            ImPlotItemFlags = cast(ImPlotItemFlags).None; // optional item flags; can be composed from common ImPlotItemFlags and/or specialized ImPlotXFlags
}

// Double precision version of ImVec2 used by ImPlot. Extensible by end users.
ImPlotPoint :: struct {
    x: float64;
    y: float64;
}

// Range defined by a min/max value.
ImPlotRange :: struct {
    Min: float64;
    Max: float64;
}

// Combination of two range limits for X and Y axes. Also an AABB defined by Min()/Max().
ImPlotRect :: struct {
    X: ImPlotRange;
    Y: ImPlotRange;
}

// Plot style structure
ImPlotStyle :: struct {
    PlotDefaultSize:    ImVec2; // = 400,300 default size used when ImVec2(0,0) is passed to BeginPlot
    PlotMinSize:        ImVec2; // = 200,150 minimum size plot frame can be when shrunk
    PlotBorderSize:     float; // = 1,      line thickness of border around plot area
    MinorAlpha:         float; // = 0.25    alpha multiplier applied to minor axis grid lines
    MajorTickLen:       ImVec2; // = 10,10   major tick lengths for X and Y axes
    MinorTickLen:       ImVec2; // = 5,5     minor tick lengths for X and Y axes
    MajorTickSize:      ImVec2; // = 1,1     line thickness of major ticks
    MinorTickSize:      ImVec2; // = 1,1     line thickness of minor ticks
    MajorGridSize:      ImVec2; // = 1,1     line thickness of major grid lines
    MinorGridSize:      ImVec2; // = 1,1     line thickness of minor grid lines

    PlotPadding:        ImVec2; // = 10,10   padding between widget frame and plot area, labels, or outside legends (i.e. main padding)
    LabelPadding:       ImVec2; // = 5,5     padding between axes labels, tick labels, and plot edge
    LegendPadding:      ImVec2; // = 10,10   legend padding from plot edges
    LegendInnerPadding: ImVec2; // = 5,5     legend inner padding from legend edges
    LegendSpacing:      ImVec2; // = 5,0     spacing between legend entries
    MousePosPadding:    ImVec2; // = 10,10   padding between plot edge and interior mouse location text
    AnnotationPadding:  ImVec2; // = 2,2     text padding around annotation labels
    FitPadding:         ImVec2; // = 0,0     additional fit padding as a percentage of the fit extents (e.g. ImVec2(0.1f,0.1f) adds 10% to the fit extents of X and Y)
    DigitalPadding:     float; // = 20,     digital plot padding from bottom in pixels
    DigitalSpacing:     float; // = 4,      digital plot spacing gap in pixels

    Colors:             [16] ImVec4; // Array of styling colors. Indexable with ImPlotCol_ enums.

    Colormap:           ImPlotColormap; // The current colormap. Set this to either an ImPlotColormap_ enum or an index returned by AddColormap.

    UseLocalTime:       bool; // = false,  axis labels will be formatted for your timezone when ImPlotAxisFlag_Time is enabled
    UseISO8601:         bool; // = false,  dates will be formatted according to ISO 8601 where applicable (e.g. YYYY-MM-DD, YYYY-MM, --MM-DD, etc.)
    Use24HourClock:     bool; // = false,  times will be formatted using a 24 hour clock
    Constructor :: (this: *ImPlotStyle) -> void #cpp_method #foreign imgui "??0ImPlotStyle@@QEAA@XZ";
}

// Input mapping structure. Default values listed. See also MapInputDefault, MapInputReverse.
ImPlotInputMap :: struct {
    Pan:           MouseButton; // LMB    enables panning when held,
    PanMod:        s32; // none   optional modifier that must be held for panning/fitting
    Fit:           MouseButton; // LMB    initiates fit when double clicked
    Select:        MouseButton; // RMB    begins box selection when pressed and confirms selection when released
    SelectCancel:  MouseButton; // LMB    cancels active box selection when pressed; cannot be same as Select
    SelectMod:     s32; // none   optional modifier that must be held for box selection
    SelectHorzMod: s32; // Alt    expands active box selection horizontally to plot edge when held
    SelectVertMod: s32; // Shift  expands active box selection vertically to plot edge when held
    Menu:          MouseButton; // RMB    opens context menus (if enabled) when clicked
    OverrideMod:   s32; // Ctrl   when held, all input is ignored; used to enable axis/plots as DND sources
    ZoomMod:       s32; // none   optional modifier that must be held for scroll wheel zooming
    ZoomRate:      float; // 0.1f   zoom rate for scroll (e.g. 0.1f = 10% plot range every scroll click); make negative to invert
    Constructor :: (this: *ImPlotInputMap) -> void #cpp_method #foreign imgui "??0ImPlotInputMap@@QEAA@XZ";
}

// Callback signature for axis tick label formatter.
ImPlotFormatter :: #type (value: float64, buff: *u8, size: s32, user_data: *void) -> s32 #c_call;

// Callback signature for data getter.
ImPlotGetter :: #type (idx: s32, user_data: *void) -> ImPlotPoint #c_call #cpp_return_type_is_non_pod;

// Callback signature for axis transform.
ImPlotTransform :: #type (value: float64, user_data: *void) -> float64 #c_call;

ImPlot :: struct {
    // Creates a new ImPlot context. Call this after ImGui::CreateContext.
    CreateContext :: () -> *ImPlotContext #foreign imgui "?CreateContext@ImPlot@@YAPEAUImPlotContext@@XZ";

    // Destroys an ImPlot context. Call this before ImGui::DestroyContext. nullptr = destroy current context.
    DestroyContext :: (ctx: *ImPlotContext = null) -> void #foreign imgui "?DestroyContext@ImPlot@@YAXPEAUImPlotContext@@@Z";

    // Returns the current ImPlot context. nullptr if no context has ben set.
    GetCurrentContext :: () -> *ImPlotContext #foreign imgui "?GetCurrentContext@ImPlot@@YAPEAUImPlotContext@@XZ";

    // Sets the current ImPlot context.
    SetCurrentContext :: (ctx: *ImPlotContext) -> void #foreign imgui "?SetCurrentContext@ImPlot@@YAXPEAUImPlotContext@@@Z";

    // Sets the current **ImGui** context. This is ONLY necessary if you are compiling
    // ImPlot as a DLL (not recommended) separate from your ImGui compilation. It
    // sets the global variable GImGui, which is not shared across DLL boundaries.
    // See GImGui documentation in imgui.cpp for more details.
    SetImGuiContext :: (ctx: *ImGuiContext) -> void #foreign imgui "?SetImGuiContext@ImPlot@@YAXPEAUImGuiContext@@@Z";

    // Starts a 2D plotting context. If this function returns true, EndPlot() MUST
    // be called! You are encouraged to use the following convention:
    //
    // if (BeginPlot(...)) {
    //     PlotLine(...);
    //     ...
    //     EndPlot();
    // }
    //
    // Important notes:
    //
    // - #title_id must be unique to the current ImGui ID scope. If you need to avoid ID
    //   collisions or don't want to display a title in the plot, use double hashes
    //   (e.g. "MyPlot##HiddenIdText" or "##NoTitle").
    // - #size is the **frame** size of the plot widget, not the plot area. The default
    //   size of plots (i.e. when ImVec2(0,0)) can be modified in your ImPlotStyle.
    BeginPlot :: (title_id: *u8, size: *ImVec2, flags: ImPlotFlags = .None) -> bool #foreign imgui "?BeginPlot@ImPlot@@YA_NPEBDAEBUImVec2@@H@Z";
    BeginPlot :: (title_id: *u8, size: ImVec2 = ImVec2.{-1, 0}, flags: ImPlotFlags = .None) -> bool #no_context {
        return BeginPlot(title_id, *size, flags);
    }

    // Only call EndPlot() if BeginPlot() returns true! Typically called at the end
    // of an if statement conditioned on BeginPlot(). See example above.
    EndPlot :: () -> void #foreign imgui "?EndPlot@ImPlot@@YAXXZ";

    // Starts a subdivided plotting context. If the function returns true,
    // EndSubplots() MUST be called! Call BeginPlot/EndPlot AT MOST [rows*cols]
    // times in  between the beginning and end of the subplot context. Plots are
    // added in row major order.
    //
    // Example:
    //
    // if (BeginSubplots("My Subplot",2,3,ImVec2(800,400)) {
    //     for (int i = 0; i < 6; ++i) {
    //         if (BeginPlot(...)) {
    //             ImPlot::PlotLine(...);
    //             ...
    //             EndPlot();
    //         }
    //     }
    //     EndSubplots();
    // }
    //
    // Produces:
    //
    // [0] | [1] | [2]
    // ----|-----|----
    // [3] | [4] | [5]
    //
    // Important notes:
    //
    // - #title_id must be unique to the current ImGui ID scope. If you need to avoid ID
    //   collisions or don't want to display a title in the plot, use double hashes
    //   (e.g. "MySubplot##HiddenIdText" or "##NoTitle").
    // - #rows and #cols must be greater than 0.
    // - #size is the size of the entire grid of subplots, not the individual plots
    // - #row_ratios and #col_ratios must have AT LEAST #rows and #cols elements,
    //   respectively. These are the sizes of the rows and columns expressed in ratios.
    //   If the user adjusts the dimensions, the arrays are updated with new ratios.
    //
    // Important notes regarding BeginPlot from inside of BeginSubplots:
    //
    // - The #title_id parameter of _BeginPlot_ (see above) does NOT have to be
    //   unique when called inside of a subplot context. Subplot IDs are hashed
    //   for your convenience so you don't have call PushID or generate unique title
    //   strings. Simply pass an empty string to BeginPlot unless you want to title
    //   each subplot.
    // - The #size parameter of _BeginPlot_ (see above) is ignored when inside of a
    //   subplot context. The actual size of the subplot will be based on the
    //   #size value you pass to _BeginSubplots_ and #row/#col_ratios if provided.
    BeginSubplots :: (title_id: *u8, rows: s32, cols: s32, size: *ImVec2, flags: ImPlotSubplotFlags = .None, row_ratios: *float = null, col_ratios: *float = null) -> bool #foreign imgui "?BeginSubplots@ImPlot@@YA_NPEBDHHAEBUImVec2@@HPEAM2@Z";
    BeginSubplots :: (title_id: *u8, rows: s32, cols: s32, size: ImVec2, flags: ImPlotSubplotFlags = .None, row_ratios: *float = null, col_ratios: *float = null) -> bool #no_context {
        return BeginSubplots(title_id, rows, cols, *size, flags, row_ratios, col_ratios);
    }

    // Only call EndSubplots() if BeginSubplots() returns true! Typically called at the end
    // of an if statement conditioned on BeginSubplots(). See example above.
    EndSubplots :: () -> void #foreign imgui "?EndSubplots@ImPlot@@YAXXZ";

    // Enables an axis or sets the label and/or flags for an existing axis. Leave #label = nullptr for no label.
    SetupAxis :: (axis: ImAxis, label: *u8 = null, flags: ImPlotAxisFlags = .None) -> void #foreign imgui "?SetupAxis@ImPlot@@YAXHPEBDH@Z";

    // Sets an axis range limits. If ImPlotCond_Always is used, the axes limits will be locked. Inversion with v_min > v_max is not supported; use SetupAxisLimits instead.
    SetupAxisLimits :: (axis: ImAxis, v_min: float64, v_max: float64, cond: ImPlotCond = cast(ImPlotCond).Once) -> void #foreign imgui "?SetupAxisLimits@ImPlot@@YAXHNNH@Z";

    // Links an axis range limits to external values. Set to nullptr for no linkage. The pointer data must remain valid until EndPlot.
    SetupAxisLinks :: (axis: ImAxis, link_min: *float64, link_max: *float64) -> void #foreign imgui "?SetupAxisLinks@ImPlot@@YAXHPEAN0@Z";

    // Sets the format of numeric axis labels via formatter specifier (default="%g"). Formatted values will be double (i.e. use %f).
    SetupAxisFormat :: (axis: ImAxis, fmt: *u8) -> void #foreign imgui "?SetupAxisFormat@ImPlot@@YAXHPEBD@Z";

    // Sets the format of numeric axis labels via formatter callback. Given #value, write a label into #buff. Optionally pass user data.
    SetupAxisFormat :: (axis: ImAxis, formatter: ImPlotFormatter, data: *void = null) -> void #foreign imgui "?SetupAxisFormat@ImPlot@@YAXHP6AHNPEADHPEAX@Z1@Z";

    // Sets an axis' ticks and optionally the labels. To keep the default ticks, set #keep_default=true.
    SetupAxisTicks :: (axis: ImAxis, values: *float64, n_ticks: s32, labels: **u8 = null, keep_default := false) -> void #foreign imgui "?SetupAxisTicks@ImPlot@@YAXHPEBNHQEBQEBD_N@Z";

    // Sets an axis' ticks and optionally the labels for the next plot. To keep the default ticks, set #keep_default=true.
    SetupAxisTicks :: (axis: ImAxis, v_min: float64, v_max: float64, n_ticks: s32, labels: **u8 = null, keep_default := false) -> void #foreign imgui "?SetupAxisTicks@ImPlot@@YAXHNNHQEBQEBD_N@Z";

    // Sets an axis' scale using built-in options.
    SetupAxisScale :: (axis: ImAxis, scale: ImPlotScale) -> void #foreign imgui "?SetupAxisScale@ImPlot@@YAXHH@Z";

    // Sets an axis' scale using user supplied forward and inverse transforms.
    SetupAxisScale :: (axis: ImAxis, forward: ImPlotTransform, inverse: ImPlotTransform, data: *void = null) -> void #foreign imgui "?SetupAxisScale@ImPlot@@YAXHP6ANNPEAX@Z10@Z";

    // Sets an axis' limits constraints.
    SetupAxisLimitsConstraints :: (axis: ImAxis, v_min: float64, v_max: float64) -> void #foreign imgui "?SetupAxisLimitsConstraints@ImPlot@@YAXHNN@Z";

    // Sets an axis' zoom constraints.
    SetupAxisZoomConstraints :: (axis: ImAxis, z_min: float64, z_max: float64) -> void #foreign imgui "?SetupAxisZoomConstraints@ImPlot@@YAXHNN@Z";

    // Sets the label and/or flags for primary X and Y axes (shorthand for two calls to SetupAxis).
    SetupAxes :: (x_label: *u8, y_label: *u8, x_flags: ImPlotAxisFlags = .None, y_flags: ImPlotAxisFlags = .None) -> void #foreign imgui "?SetupAxes@ImPlot@@YAXPEBD0HH@Z";

    // Sets the primary X and Y axes range limits. If ImPlotCond_Always is used, the axes limits will be locked (shorthand for two calls to SetupAxisLimits).
    SetupAxesLimits :: (x_min: float64, x_max: float64, y_min: float64, y_max: float64, cond: ImPlotCond = cast(ImPlotCond).Once) -> void #foreign imgui "?SetupAxesLimits@ImPlot@@YAXNNNNH@Z";

    // Sets up the plot legend. This can also be called immediately after BeginSubplots when using ImPlotSubplotFlags_ShareItems.
    SetupLegend :: (location: ImPlotLocation, flags: ImPlotLegendFlags = .None) -> void #foreign imgui "?SetupLegend@ImPlot@@YAXHH@Z";

    // Set the location of the current plot's mouse position text (default = South|East).
    SetupMouseText :: (location: ImPlotLocation, flags: ImPlotMouseTextFlags = .None) -> void #foreign imgui "?SetupMouseText@ImPlot@@YAXHH@Z";

    // Explicitly finalize plot setup. Once you call this, you cannot make anymore Setup calls for the current plot!
    // Note that calling this function is OPTIONAL; it will be called by the first subsequent setup-locking API call.
    SetupFinish :: () -> void #foreign imgui "?SetupFinish@ImPlot@@YAXXZ";

    // Sets an upcoming axis range limits. If ImPlotCond_Always is used, the axes limits will be locked.
    SetNextAxisLimits :: (axis: ImAxis, v_min: float64, v_max: float64, cond: ImPlotCond = cast(ImPlotCond).Once) -> void #foreign imgui "?SetNextAxisLimits@ImPlot@@YAXHNNH@Z";

    // Links an upcoming axis range limits to external values. Set to nullptr for no linkage. The pointer data must remain valid until EndPlot!
    SetNextAxisLinks :: (axis: ImAxis, link_min: *float64, link_max: *float64) -> void #foreign imgui "?SetNextAxisLinks@ImPlot@@YAXHPEAN0@Z";

    // Set an upcoming axis to auto fit to its data.
    SetNextAxisToFit :: (axis: ImAxis) -> void #foreign imgui "?SetNextAxisToFit@ImPlot@@YAXH@Z";

    // Sets the upcoming primary X and Y axes range limits. If ImPlotCond_Always is used, the axes limits will be locked (shorthand for two calls to SetupAxisLimits).
    SetNextAxesLimits :: (x_min: float64, x_max: float64, y_min: float64, y_max: float64, cond: ImPlotCond = cast(ImPlotCond).Once) -> void #foreign imgui "?SetNextAxesLimits@ImPlot@@YAXNNNNH@Z";

    // Sets all upcoming axes to auto fit to their data.
    SetNextAxesToFit :: () -> void #foreign imgui "?SetNextAxesToFit@ImPlot@@YAXXZ";

    PlotLineG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: *ImPlotSpec) -> void #foreign imgui "?PlotLineG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z1HAEBUImPlotSpec@@@Z";
    PlotLineG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotLineG(label_id, getter, data, count, *spec);
    }

    PlotScatterG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: *ImPlotSpec) -> void #foreign imgui "?PlotScatterG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z1HAEBUImPlotSpec@@@Z";
    PlotScatterG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotScatterG(label_id, getter, data, count, *spec);
    }

    PlotStairsG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: *ImPlotSpec) -> void #foreign imgui "?PlotStairsG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z1HAEBUImPlotSpec@@@Z";
    PlotStairsG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotStairsG(label_id, getter, data, count, *spec);
    }

    PlotShadedG :: (label_id: *u8, getter1: ImPlotGetter, data1: *void, getter2: ImPlotGetter, data2: *void, count: s32, spec: *ImPlotSpec) -> void #foreign imgui "?PlotShadedG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z121HAEBUImPlotSpec@@@Z";
    PlotShadedG :: (label_id: *u8, getter1: ImPlotGetter, data1: *void, getter2: ImPlotGetter, data2: *void, count: s32, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotShadedG(label_id, getter1, data1, getter2, data2, count, *spec);
    }

    PlotBarsG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, bar_size: float64, spec: *ImPlotSpec) -> void #foreign imgui "?PlotBarsG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z1HNAEBUImPlotSpec@@@Z";
    PlotBarsG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, bar_size: float64, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotBarsG(label_id, getter, data, count, bar_size, *spec);
    }

    PlotDigitalG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: *ImPlotSpec) -> void #foreign imgui "?PlotDigitalG@ImPlot@@YAXPEBDP6A?AUImPlotPoint@@HPEAX@Z1HAEBUImPlotSpec@@@Z";
    PlotDigitalG :: (label_id: *u8, getter: ImPlotGetter, data: *void, count: s32, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotDigitalG(label_id, getter, data, count, *spec);
    }

    PlotImage :: (label_id: *u8, tex_ref: ImTextureRef, bounds_min: *ImPlotPoint, bounds_max: *ImPlotPoint, uv0: *ImVec2, uv1: *ImVec2, tint_col: *ImVec4, spec: *ImPlotSpec) -> void #foreign imgui "?PlotImage@ImPlot@@YAXPEBDUImTextureRef@@AEBUImPlotPoint@@2AEBUImVec2@@3AEBUImVec4@@AEBUImPlotSpec@@@Z";
    PlotImage :: (label_id: *u8, tex_ref: ImTextureRef, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, uv0: ImVec2 = ImVec2.{0, 0}, uv1: ImVec2 = ImVec2.{1, 1}, tint_col: ImVec4 = ImVec4.{1, 1, 1, 1}, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotImage(label_id, tex_ref, *bounds_min, *bounds_max, *uv0, *uv1, *tint_col, *spec);
    }

    // Plots a centered text label at point x,y with an optional pixel offset. Text color can be changed with ImPlot::PushStyleColor(ImPlotCol_InlayText, ...).
    PlotText :: (text: *u8, x: float64, y: float64, pix_offset: *ImVec2, spec: *ImPlotSpec) -> void #foreign imgui "?PlotText@ImPlot@@YAXPEBDNNAEBUImVec2@@AEBUImPlotSpec@@@Z";
    PlotText :: (text: *u8, x: float64, y: float64, pix_offset: ImVec2 = ImVec2.{0, 0}, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotText(text, x, y, *pix_offset, *spec);
    }

    // Plots a dummy item (i.e. adds a legend entry colored by ImPlotCol_Line)
    PlotDummy :: (label_id: *u8, spec: *ImPlotSpec) -> void #foreign imgui "?PlotDummy@ImPlot@@YAXPEBDAEBUImPlotSpec@@@Z";
    PlotDummy :: (label_id: *u8, spec: ImPlotSpec = ImPlotSpec.{}) #no_context {
        PlotDummy(label_id, *spec);
    }

    // Shows a draggable point at x,y. #col defaults to ImGuiCol_Text.
    DragPoint :: (id: s32, x: *float64, y: *float64, col: *ImVec4, size: float = 4, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #foreign imgui "?DragPoint@ImPlot@@YA_NHPEAN0AEBUImVec4@@MHPEA_N22@Z";
    DragPoint :: (id: s32, x: *float64, y: *float64, col: ImVec4, size: float = 4, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #no_context {
        return DragPoint(id, x, y, *col, size, flags, out_clicked, out_hovered, out_held);
    }

    // Shows a draggable vertical guide line at an x-value. #col defaults to ImGuiCol_Text.
    DragLineX :: (id: s32, x: *float64, col: *ImVec4, thickness: float = 1, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #foreign imgui "?DragLineX@ImPlot@@YA_NHPEANAEBUImVec4@@MHPEA_N22@Z";
    DragLineX :: (id: s32, x: *float64, col: ImVec4, thickness: float = 1, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #no_context {
        return DragLineX(id, x, *col, thickness, flags, out_clicked, out_hovered, out_held);
    }

    // Shows a draggable horizontal guide line at a y-value. #col defaults to ImGuiCol_Text.
    DragLineY :: (id: s32, y: *float64, col: *ImVec4, thickness: float = 1, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #foreign imgui "?DragLineY@ImPlot@@YA_NHPEANAEBUImVec4@@MHPEA_N22@Z";
    DragLineY :: (id: s32, y: *float64, col: ImVec4, thickness: float = 1, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #no_context {
        return DragLineY(id, y, *col, thickness, flags, out_clicked, out_hovered, out_held);
    }

    // Shows a draggable and resizeable rectangle.
    DragRect :: (id: s32, x1: *float64, y1: *float64, x2: *float64, y2: *float64, col: *ImVec4, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #foreign imgui "?DragRect@ImPlot@@YA_NHPEAN000AEBUImVec4@@HPEA_N22@Z";
    DragRect :: (id: s32, x1: *float64, y1: *float64, x2: *float64, y2: *float64, col: ImVec4, flags: ImPlotDragToolFlags = .None, out_clicked: *bool = null, out_hovered: *bool = null, out_held: *bool = null) -> bool #no_context {
        return DragRect(id, x1, y1, x2, y2, *col, flags, out_clicked, out_hovered, out_held);
    }

    // Shows an annotation callout at a chosen point. Clamping keeps annotations in the plot area. Annotations are always rendered on top.
    Annotation :: (x: float64, y: float64, col: *ImVec4, pix_offset: *ImVec2, clamp: bool, round := false) -> void #foreign imgui "?Annotation@ImPlot@@YAXNNAEBUImVec4@@AEBUImVec2@@_N2@Z";
    Annotation :: (x: float64, y: float64, col: ImVec4, pix_offset: ImVec2, clamp: bool, round := false) #no_context {
        Annotation(x, y, *col, *pix_offset, clamp, round);
    }
    Annotation_CFormat :: (x: float64, y: float64, col: *ImVec4, pix_offset: *ImVec2, clamp: bool, fmt: *u8, __args: ..Any) -> void #foreign imgui "?Annotation@ImPlot@@YAXNNAEBUImVec4@@AEBUImVec2@@_NPEBDZZ";
    Annotation :: (x: float64, y: float64, col: ImVec4, pix_offset: ImVec2, clamp: bool, fmt: string, __args: ..Any) {
        push_allocator(temp);
        formatted_text_builder: String_Builder;
        print_to_builder(*formatted_text_builder, fmt, ..__args);
        append(*formatted_text_builder, "\0");
        formatted_text := builder_to_string(*formatted_text_builder);
        Annotation_CFormat(x, y, *col, *pix_offset, clamp, "%s", formatted_text.data);
    } @PrintLike

    // Shows a x-axis tag at the specified coordinate value.
    TagX :: (x: float64, col: *ImVec4, round := false) -> void #foreign imgui "?TagX@ImPlot@@YAXNAEBUImVec4@@_N@Z";
    TagX :: (x: float64, col: ImVec4, round := false) #no_context {
        TagX(x, *col, round);
    }
    TagX_CFormat :: (x: float64, col: *ImVec4, fmt: *u8, __args: ..Any) -> void #foreign imgui "?TagX@ImPlot@@YAXNAEBUImVec4@@PEBDZZ";
    TagX :: (x: float64, col: ImVec4, fmt: string, __args: ..Any) {
        push_allocator(temp);
        formatted_text_builder: String_Builder;
        print_to_builder(*formatted_text_builder, fmt, ..__args);
        append(*formatted_text_builder, "\0");
        formatted_text := builder_to_string(*formatted_text_builder);
        TagX_CFormat(x, *col, "%s", formatted_text.data);
    } @PrintLike

    // Shows a y-axis tag at the specified coordinate value.
    TagY :: (y: float64, col: *ImVec4, round := false) -> void #foreign imgui "?TagY@ImPlot@@YAXNAEBUImVec4@@_N@Z";
    TagY :: (y: float64, col: ImVec4, round := false) #no_context {
        TagY(y, *col, round);
    }
    TagY_CFormat :: (y: float64, col: *ImVec4, fmt: *u8, __args: ..Any) -> void #foreign imgui "?TagY@ImPlot@@YAXNAEBUImVec4@@PEBDZZ";
    TagY :: (y: float64, col: ImVec4, fmt: string, __args: ..Any) {
        push_allocator(temp);
        formatted_text_builder: String_Builder;
        print_to_builder(*formatted_text_builder, fmt, ..__args);
        append(*formatted_text_builder, "\0");
        formatted_text := builder_to_string(*formatted_text_builder);
        TagY_CFormat(y, *col, "%s", formatted_text.data);
    } @PrintLike

    // Select which axis/axes will be used for subsequent plot elements.
    SetAxis :: (axis: ImAxis) -> void #foreign imgui "?SetAxis@ImPlot@@YAXH@Z";
    SetAxes :: (x_axis: ImAxis, y_axis: ImAxis) -> void #foreign imgui "?SetAxes@ImPlot@@YAXHH@Z";

    // Convert pixels to a position in the current plot's coordinate system. Passing IMPLOT_AUTO uses the current axes.
    PixelsToPlot :: (pix: *ImVec2, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotPoint #cpp_return_type_is_non_pod #foreign imgui "?PixelsToPlot@ImPlot@@YA?AUImPlotPoint@@AEBUImVec2@@HH@Z";
    PixelsToPlot :: (pix: ImVec2, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotPoint #no_context {
        return PixelsToPlot(*pix, x_axis, y_axis);
    }
    PixelsToPlot :: (x: float, y: float, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotPoint #cpp_return_type_is_non_pod #foreign imgui "?PixelsToPlot@ImPlot@@YA?AUImPlotPoint@@MMHH@Z";

    // Convert a position in the current plot's coordinate system to pixels. Passing IMPLOT_AUTO uses the current axes.
    PlotToPixels :: (plt: *ImPlotPoint, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?PlotToPixels@ImPlot@@YA?AUImVec2@@AEBUImPlotPoint@@HH@Z";
    PlotToPixels :: (plt: ImPlotPoint, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImVec2 #no_context {
        return PlotToPixels(*plt, x_axis, y_axis);
    }
    PlotToPixels :: (x: float64, y: float64, x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?PlotToPixels@ImPlot@@YA?AUImVec2@@NNHH@Z";

    // Get the current Plot position (top-left) in pixels.
    GetPlotPos :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetPlotPos@ImPlot@@YA?AUImVec2@@XZ";

    // Get the current Plot size in pixels.
    GetPlotSize :: () -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?GetPlotSize@ImPlot@@YA?AUImVec2@@XZ";

    // Returns the mouse position in x,y coordinates of the current plot. Passing IMPLOT_AUTO uses the current axes.
    GetPlotMousePos :: (x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotPoint #cpp_return_type_is_non_pod #foreign imgui "?GetPlotMousePos@ImPlot@@YA?AUImPlotPoint@@HH@Z";

    // Returns the current plot axis range.
    GetPlotLimits :: (x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotRect #cpp_return_type_is_non_pod #foreign imgui "?GetPlotLimits@ImPlot@@YA?AUImPlotRect@@HH@Z";

    // Returns true if the plot area in the current plot is hovered.
    IsPlotHovered :: () -> bool #foreign imgui "?IsPlotHovered@ImPlot@@YA_NXZ";

    // Returns true if the axis label area in the current plot is hovered.
    IsAxisHovered :: (axis: ImAxis) -> bool #foreign imgui "?IsAxisHovered@ImPlot@@YA_NH@Z";

    // Returns true if the bounding frame of a subplot is hovered.
    IsSubplotsHovered :: () -> bool #foreign imgui "?IsSubplotsHovered@ImPlot@@YA_NXZ";

    // Returns true if the current plot is being box selected.
    IsPlotSelected :: () -> bool #foreign imgui "?IsPlotSelected@ImPlot@@YA_NXZ";

    // Returns the current plot box selection bounds. Passing IMPLOT_AUTO uses the current axes.
    GetPlotSelection :: (x_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO, y_axis: ImAxis = cast(ImAxis)xx IMPLOT_AUTO) -> ImPlotRect #cpp_return_type_is_non_pod #foreign imgui "?GetPlotSelection@ImPlot@@YA?AUImPlotRect@@HH@Z";

    // Cancels a the current plot box selection.
    CancelPlotSelection :: () -> void #foreign imgui "?CancelPlotSelection@ImPlot@@YAXXZ";

    // Hides or shows the next plot item (i.e. as if it were toggled from the legend).
    // Use ImPlotCond_Always if you need to forcefully set this every frame.
    HideNextItem :: (hidden := true, cond: ImPlotCond = cast(ImPlotCond).Once) -> void #foreign imgui "?HideNextItem@ImPlot@@YAX_NH@Z";

    // Align axis padding over multiple plots in a single row or column. #group_id must
    // be unique. If this function returns true, EndAlignedPlots() must be called.
    BeginAlignedPlots :: (group_id: *u8, vertical := true) -> bool #foreign imgui "?BeginAlignedPlots@ImPlot@@YA_NPEBD_N@Z";

    // Only call EndAlignedPlots() if BeginAlignedPlots() returns true!
    EndAlignedPlots :: () -> void #foreign imgui "?EndAlignedPlots@ImPlot@@YAXXZ";

    // Begin a popup for a legend entry.
    BeginLegendPopup :: (label_id: *u8, mouse_button: MouseButton = .Right) -> bool #foreign imgui "?BeginLegendPopup@ImPlot@@YA_NPEBDH@Z";

    // End a popup for a legend entry.
    EndLegendPopup :: () -> void #foreign imgui "?EndLegendPopup@ImPlot@@YAXXZ";

    // Returns true if a plot item legend entry is hovered.
    IsLegendEntryHovered :: (label_id: *u8) -> bool #foreign imgui "?IsLegendEntryHovered@ImPlot@@YA_NPEBD@Z";

    // Turns the current plot's plotting area into a drag and drop target. Don't forget to call EndDragDropTarget!
    BeginDragDropTargetPlot :: () -> bool #foreign imgui "?BeginDragDropTargetPlot@ImPlot@@YA_NXZ";

    // Turns the current plot's X-axis into a drag and drop target. Don't forget to call EndDragDropTarget!
    BeginDragDropTargetAxis :: (axis: ImAxis) -> bool #foreign imgui "?BeginDragDropTargetAxis@ImPlot@@YA_NH@Z";

    // Turns the current plot's legend into a drag and drop target. Don't forget to call EndDragDropTarget!
    BeginDragDropTargetLegend :: () -> bool #foreign imgui "?BeginDragDropTargetLegend@ImPlot@@YA_NXZ";

    // Ends a drag and drop target (currently just an alias for ImGui::EndDragDropTarget).
    EndDragDropTarget :: () -> void #foreign imgui "?EndDragDropTarget@ImPlot@@YAXXZ";

    // Turns the current plot's plotting area into a drag and drop source. You must hold Ctrl. Don't forget to call EndDragDropSource!
    BeginDragDropSourcePlot :: (flags: DragDropFlags = .None) -> bool #foreign imgui "?BeginDragDropSourcePlot@ImPlot@@YA_NH@Z";

    // Turns the current plot's X-axis into a drag and drop source. You must hold Ctrl. Don't forget to call EndDragDropSource!
    BeginDragDropSourceAxis :: (axis: ImAxis, flags: DragDropFlags = .None) -> bool #foreign imgui "?BeginDragDropSourceAxis@ImPlot@@YA_NHH@Z";

    // Turns an item in the current plot's legend into drag and drop source. Don't forget to call EndDragDropSource!
    BeginDragDropSourceItem :: (label_id: *u8, flags: DragDropFlags = .None) -> bool #foreign imgui "?BeginDragDropSourceItem@ImPlot@@YA_NPEBDH@Z";

    // Ends a drag and drop source (currently just an alias for ImGui::EndDragDropSource).
    EndDragDropSource :: () -> void #foreign imgui "?EndDragDropSource@ImPlot@@YAXXZ";

    // Provides access to plot style structure for permanent modifications to colors, sizes, etc.
    GetStyle :: () -> *ImPlotStyle #foreign imgui "?GetStyle@ImPlot@@YAAEAUImPlotStyle@@XZ";

    // Style plot colors for current ImGui style (default).
    StyleColorsAuto :: (dst: *ImPlotStyle = null) -> void #foreign imgui "?StyleColorsAuto@ImPlot@@YAXPEAUImPlotStyle@@@Z";

    // Style plot colors for ImGui "Classic".
    StyleColorsClassic :: (dst: *ImPlotStyle = null) -> void #foreign imgui "?StyleColorsClassic@ImPlot@@YAXPEAUImPlotStyle@@@Z";

    // Style plot colors for ImGui "Dark".
    StyleColorsDark :: (dst: *ImPlotStyle = null) -> void #foreign imgui "?StyleColorsDark@ImPlot@@YAXPEAUImPlotStyle@@@Z";

    // Style plot colors for ImGui "Light".
    StyleColorsLight :: (dst: *ImPlotStyle = null) -> void #foreign imgui "?StyleColorsLight@ImPlot@@YAXPEAUImPlotStyle@@@Z";

    // Temporarily modify a style color. Don't forget to call PopStyleColor!
    PushStyleColor :: (idx: ImPlotCol, col: ImU32) -> void #foreign imgui "?PushStyleColor@ImPlot@@YAXHI@Z";
    PushStyleColor :: (idx: ImPlotCol, col: *ImVec4) -> void #foreign imgui "?PushStyleColor@ImPlot@@YAXHAEBUImVec4@@@Z";
    PushStyleColor :: (idx: ImPlotCol, col: ImVec4) #no_context {
        PushStyleColor(idx, *col);
    }

    // Undo temporary style color modification(s). Undo multiple pushes at once by increasing count.
    PopStyleColor :: (count: s32 = 1) -> void #foreign imgui "?PopStyleColor@ImPlot@@YAXH@Z";

    // Temporarily modify a style variable of float type. Don't forget to call PopStyleVar!
    PushStyleVar :: (idx: ImPlotStyleVar, val: float) -> void #foreign imgui "?PushStyleVar@ImPlot@@YAXHM@Z";

    // Temporarily modify a style variable of int type. Don't forget to call PopStyleVar!
    PushStyleVar :: (idx: ImPlotStyleVar, val: s32) -> void #foreign imgui "?PushStyleVar@ImPlot@@YAXHH@Z";

    // Temporarily modify a style variable of ImVec2 type. Don't forget to call PopStyleVar!
    PushStyleVar :: (idx: ImPlotStyleVar, val: *ImVec2) -> void #foreign imgui "?PushStyleVar@ImPlot@@YAXHAEBUImVec2@@@Z";
    PushStyleVar :: (idx: ImPlotStyleVar, val: ImVec2) #no_context {
        PushStyleVar(idx, *val);
    }

    // Undo temporary style variable modification(s). Undo multiple pushes at once by increasing count.
    PopStyleVar :: (count: s32 = 1) -> void #foreign imgui "?PopStyleVar@ImPlot@@YAXH@Z";

    // Gets the last item primary color (i.e. its legend icon color)
    GetLastItemColor :: () -> ImVec4 #cpp_return_type_is_non_pod #foreign imgui "?GetLastItemColor@ImPlot@@YA?AUImVec4@@XZ";

    // Returns the null terminated string name for an ImPlotCol.
    GetStyleColorName :: (idx: ImPlotCol) -> *u8 #foreign imgui "?GetStyleColorName@ImPlot@@YAPEBDH@Z";

    // Returns the null terminated string name for an ImPlotMarker.
    GetMarkerName :: (idx: ImPlotMarker) -> *u8 #foreign imgui "?GetMarkerName@ImPlot@@YAPEBDH@Z";

    // Returns the next marker and advances the marker for the current plot. You need to call this between Begin/EndPlot!
    NextMarker :: () -> ImPlotMarker #foreign imgui "?NextMarker@ImPlot@@YAHXZ";

    // Add a new colormap. The color data will be copied. The colormap can be used by pushing either the returned index or the
    // string name with PushColormap. The colormap name must be unique and the size must be greater than 1. You will receive
    // an assert otherwise! By default colormaps are considered to be qualitative (i.e. discrete). If you want to create a
    // continuous colormap, set #qual=false. This will treat the colors you provide as keys, and ImPlot will build a linearly
    // interpolated lookup table. The memory footprint of this table will be exactly ((size-1)*255+1)*4 bytes.
    AddColormap :: (name: *u8, cols: *ImVec4, size: s32, qual := true) -> ImPlotColormap #foreign imgui "?AddColormap@ImPlot@@YAHPEBDPEBUImVec4@@H_N@Z";
    AddColormap :: (name: *u8, cols: *ImU32, size: s32, qual := true) -> ImPlotColormap #foreign imgui "?AddColormap@ImPlot@@YAHPEBDPEBIH_N@Z";

    // Returns the number of available colormaps (i.e. the built-in + user-added count).
    GetColormapCount :: () -> s32 #foreign imgui "?GetColormapCount@ImPlot@@YAHXZ";

    // Returns a null terminated string name for a colormap given an index. Returns nullptr if index is invalid.
    GetColormapName :: (cmap: ImPlotColormap) -> *u8 #foreign imgui "?GetColormapName@ImPlot@@YAPEBDH@Z";

    // Returns an index number for a colormap given a valid string name. Returns -1 if name is invalid.
    GetColormapIndex :: (name: *u8) -> ImPlotColormap #foreign imgui "?GetColormapIndex@ImPlot@@YAHPEBD@Z";

    // Temporarily switch to one of the built-in (i.e. ImPlotColormap_XXX) or user-added colormaps (i.e. a return value of AddColormap). Don't forget to call PopColormap!
    PushColormap :: (cmap: ImPlotColormap) -> void #foreign imgui "?PushColormap@ImPlot@@YAXH@Z";

    // Push a colormap by string name. Use built-in names such as "Default", "Deep", "Jet", etc. or a string you provided to AddColormap. Don't forget to call PopColormap!
    PushColormap :: (name: *u8) -> void #foreign imgui "?PushColormap@ImPlot@@YAXPEBD@Z";

    // Undo temporary colormap modification(s). Undo multiple pushes at once by increasing count.
    PopColormap :: (count: s32 = 1) -> void #foreign imgui "?PopColormap@ImPlot@@YAXH@Z";

    // Returns the next color from the current colormap and advances the colormap for the current plot.
    // Can also be used with no return value to skip colors if desired. You need to call this between Begin/EndPlot!
    NextColormapColor :: () -> ImVec4 #cpp_return_type_is_non_pod #foreign imgui "?NextColormapColor@ImPlot@@YA?AUImVec4@@XZ";

    // Returns the size of a colormap.
    GetColormapSize :: (cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> s32 #foreign imgui "?GetColormapSize@ImPlot@@YAHH@Z";

    // Returns a color from a colormap given an index >= 0 (modulo will be performed).
    GetColormapColor :: (idx: s32, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> ImVec4 #cpp_return_type_is_non_pod #foreign imgui "?GetColormapColor@ImPlot@@YA?AUImVec4@@HH@Z";

    // Sample a color from the current colormap given t between 0 and 1.
    SampleColormap :: (t: float, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> ImVec4 #cpp_return_type_is_non_pod #foreign imgui "?SampleColormap@ImPlot@@YA?AUImVec4@@MH@Z";

    // Shows a vertical color scale with linear spaced ticks using the specified color map. Use double hashes to hide label (e.g. "##NoLabel"). If scale_min > scale_max, the scale to color mapping will be reversed.
    ColormapScale :: (label: *u8, scale_min: float64, scale_max: float64, size: *ImVec2, format: *u8 = "%g", flags: ImPlotColormapScaleFlags = .None, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> void #foreign imgui "?ColormapScale@ImPlot@@YAXPEBDNNAEBUImVec2@@0HH@Z";
    ColormapScale :: (label: *u8, scale_min: float64, scale_max: float64, size: ImVec2 = ImVec2.{0, 0}, format: *u8 = "%g", flags: ImPlotColormapScaleFlags = .None, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) #no_context {
        ColormapScale(label, scale_min, scale_max, *size, format, flags, cmap);
    }

    // Shows a horizontal slider with a colormap gradient background. Optionally returns the color sampled at t in [0 1].
    ColormapSlider :: (label: *u8, t: *float, out: *ImVec4 = null, format: *u8 = "", cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> bool #foreign imgui "?ColormapSlider@ImPlot@@YA_NPEBDPEAMPEAUImVec4@@0H@Z";

    // Shows a button with a colormap gradient background.
    ColormapButton :: (label: *u8, size: *ImVec2, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> bool #foreign imgui "?ColormapButton@ImPlot@@YA_NPEBDAEBUImVec2@@H@Z";
    ColormapButton :: (label: *u8, size: ImVec2 = ImVec2.{0, 0}, cmap: ImPlotColormap = cast(ImPlotColormap)xx IMPLOT_AUTO) -> bool #no_context {
        return ColormapButton(label, *size, cmap);
    }

    // When items in a plot sample their color from a colormap, the color is cached and does not change
    // unless explicitly overridden. Therefore, if you change the colormap after the item has already been plotted,
    // item colors will NOT update. If you need item colors to resample the new colormap, then use this
    // function to bust the cached colors. If #plot_title_id is nullptr, then every item in EVERY existing plot
    // will be cache busted. Otherwise only the plot specified by #plot_title_id will be busted. For the
    // latter, this function must be called in the same ImGui ID scope that the plot is in. You should rarely if ever
    // need this function, but it is available for applications that require runtime colormap swaps (e.g. Heatmaps demo).
    BustColorCache :: (plot_title_id: *u8 = null) -> void #foreign imgui "?BustColorCache@ImPlot@@YAXPEBD@Z";

    // Provides access to input mapping structure for permanent modifications to controls for pan, select, etc.
    GetInputMap :: () -> *ImPlotInputMap #foreign imgui "?GetInputMap@ImPlot@@YAAEAUImPlotInputMap@@XZ";

    // Default input mapping: pan = LMB drag, box select = RMB drag, fit = LMB double click, context menu = RMB click, zoom = scroll.
    MapInputDefault :: (dst: *ImPlotInputMap = null) -> void #foreign imgui "?MapInputDefault@ImPlot@@YAXPEAUImPlotInputMap@@@Z";

    // Reverse input mapping: pan = RMB drag, box select = LMB drag, fit = LMB double click, context menu = RMB click, zoom = scroll.
    MapInputReverse :: (dst: *ImPlotInputMap = null) -> void #foreign imgui "?MapInputReverse@ImPlot@@YAXPEAUImPlotInputMap@@@Z";

    // Render icons similar to those that appear in legends (nifty for data lists).
    ItemIcon :: (col: *ImVec4) -> void #foreign imgui "?ItemIcon@ImPlot@@YAXAEBUImVec4@@@Z";
    ItemIcon :: (col: ImVec4) #no_context {
        ItemIcon(*col);
    }
    ItemIcon :: (col: ImU32) -> void #foreign imgui "?ItemIcon@ImPlot@@YAXI@Z";
    ColormapIcon :: (cmap: ImPlotColormap) -> void #foreign imgui "?ColormapIcon@ImPlot@@YAXH@Z";

    // Get the plot draw list for custom rendering to the current plot area. Call between Begin/EndPlot.
    GetPlotDrawList :: () -> *ImDrawList #foreign imgui "?GetPlotDrawList@ImPlot@@YAPEAUImDrawList@@XZ";

    // Push clip rect for rendering to current plot area. The rect can be expanded or contracted by #expand pixels. Call between Begin/EndPlot.
    PushPlotClipRect :: (expand: float = 0) -> void #foreign imgui "?PushPlotClipRect@ImPlot@@YAXM@Z";

    // Pop plot clip rect. Call between Begin/EndPlot.
    PopPlotClipRect :: () -> void #foreign imgui "?PopPlotClipRect@ImPlot@@YAXXZ";

    // Shows ImPlot style selector dropdown menu.
    ShowStyleSelector :: (label: *u8) -> bool #foreign imgui "?ShowStyleSelector@ImPlot@@YA_NPEBD@Z";

    // Shows ImPlot colormap selector dropdown menu.
    ShowColormapSelector :: (label: *u8) -> bool #foreign imgui "?ShowColormapSelector@ImPlot@@YA_NPEBD@Z";

    // Shows ImPlot input map selector dropdown menu.
    ShowInputMapSelector :: (label: *u8) -> bool #foreign imgui "?ShowInputMapSelector@ImPlot@@YA_NPEBD@Z";

    // Shows ImPlot style editor block (not a window).
    ShowStyleEditor :: (ref: *ImPlotStyle = null) -> void #foreign imgui "?ShowStyleEditor@ImPlot@@YAXPEAUImPlotStyle@@@Z";

    // Add basic help/info block for end users (not a window).
    ShowUserGuide :: () -> void #foreign imgui "?ShowUserGuide@ImPlot@@YAXXZ";

    // Shows ImPlot metrics/debug information window.
    ShowMetricsWindow :: (p_popen: *bool = null) -> void #foreign imgui "?ShowMetricsWindow@ImPlot@@YAXPEA_N@Z";

    // Shows the ImPlot demo window (add implot_demo.cpp to your sources!)
    ShowDemoWindow :: (p_open: *bool = null) -> void #foreign imgui "?ShowDemoWindow@ImPlot@@YAXPEA_N@Z";
}

DockRequest :: struct {}

DockNodeSettings :: struct {}

InputTextDeactivateData :: struct {}

TableColumnsSettings :: struct {}

// Enumerations
// Use your programming IDE "Go to definition" facility on the names of the center columns to find the actual flags/enum lists.
LocKey :: enum s32 {
    VersionStr                    :: 0;
    TableSizeOne                  :: 1;
    TableSizeAllFit               :: 2;
    TableSizeAllDefault           :: 3;
    TableResetOrder               :: 4;
    WindowingMainMenuBar          :: 5;
    WindowingPopup                :: 6;
    WindowingUntitled             :: 7;
    OpenLink_s                    :: 8;
    CopyLink                      :: 9;
    DockingHideTabBar             :: 10;
    DockingHoldShiftToDock        :: 11;
    DockingDragToUndockOrMoveNode :: 12;
    COUNT                         :: 13;

    ImGuiLocKey_VersionStr                    :: VersionStr;
    ImGuiLocKey_TableSizeOne                  :: TableSizeOne;
    ImGuiLocKey_TableSizeAllFit               :: TableSizeAllFit;
    ImGuiLocKey_TableSizeAllDefault           :: TableSizeAllDefault;
    ImGuiLocKey_TableResetOrder               :: TableResetOrder;
    ImGuiLocKey_WindowingMainMenuBar          :: WindowingMainMenuBar;
    ImGuiLocKey_WindowingPopup                :: WindowingPopup;
    ImGuiLocKey_WindowingUntitled             :: WindowingUntitled;
    ImGuiLocKey_OpenLink_s                    :: OpenLink_s;
    ImGuiLocKey_CopyLink                      :: CopyLink;
    ImGuiLocKey_DockingHideTabBar             :: DockingHideTabBar;
    ImGuiLocKey_DockingHoldShiftToDock        :: DockingHoldShiftToDock;
    ImGuiLocKey_DockingDragToUndockOrMoveNode :: DockingDragToUndockOrMoveNode;
    ImGuiLocKey_COUNT                         :: COUNT;
}

// Table column indexing
TableColumnIdx :: ImS16;
TableDrawChannelIdx :: ImU16;

GImGui: *ImGuiContext #elsewhere imgui "?GImGui@@3PEAUImGuiContext@@EA"; // Current implicit context pointer

// Helpers: Hashing
ImHashData :: (data: *void, data_size: u64, seed: ID = 0) -> ID #foreign imgui "?ImHashData@@YAIPEBX_KI@Z";
ImHashStr :: (data: *u8, data_size: u64 = 0, seed: ID = 0) -> ID #foreign imgui "?ImHashStr@@YAIPEBD_KI@Z";
ImHashSkipUncontributingPrefix :: (label: *u8) -> *u8 #foreign imgui "?ImHashSkipUncontributingPrefix@@YAPEBDPEBD@Z";

// Helpers: Color Blending
ImAlphaBlendColors :: (col_a: ImU32, col_b: ImU32) -> ImU32 #foreign imgui "?ImAlphaBlendColors@@YAIII@Z";

ImStricmp :: (str1: *u8, str2: *u8) -> s32 #foreign imgui "?ImStricmp@@YAHPEBD0@Z";
ImStrnicmp :: (str1: *u8, str2: *u8, count: u64) -> s32 #foreign imgui "?ImStrnicmp@@YAHPEBD0_K@Z";
ImStrncpy :: (dst: *u8, src: *u8, count: u64) -> void #foreign imgui "?ImStrncpy@@YAXPEADPEBD_K@Z";
ImStrdup :: (str: *u8) -> *u8 #foreign imgui "?ImStrdup@@YAPEADPEBD@Z";
ImMemdup :: (src: *void, size: u64) -> *void #foreign imgui "?ImMemdup@@YAPEAXPEBX_K@Z";
ImStrdupcpy :: (dst: *u8, p_dst_size: *u64, str: *u8) -> *u8 #foreign imgui "?ImStrdupcpy@@YAPEADPEADPEA_KPEBD@Z";
ImStrchrRange :: (str_begin: *u8, str_end: *u8, c: u8) -> *u8 #foreign imgui "?ImStrchrRange@@YAPEBDPEBD0D@Z";
ImStrchrRange :: (str: string, c: u8) -> *u8 #no_context {
    return ImStrchrRange(str.data, str.data + str.count, c);
}
ImStreolRange :: (str: *u8, str_end: *u8) -> *u8 #foreign imgui "?ImStreolRange@@YAPEBDPEBD0@Z";
ImStreolRange :: (str: string) -> *u8 #no_context {
    return ImStreolRange(str.data, str.data + str.count);
}
ImStristr :: (haystack: *u8, haystack_end: *u8, needle: *u8, needle_end: *u8) -> *u8 #foreign imgui "?ImStristr@@YAPEBDPEBD000@Z";
ImStristr :: (haystack: string, needle: string) -> *u8 #no_context {
    return ImStristr(haystack.data, haystack.data + haystack.count, needle.data, needle.data + needle.count);
}
ImStrTrimBlanks :: (str: *u8) -> void #foreign imgui "?ImStrTrimBlanks@@YAXPEAD@Z";
ImStrSkipBlank :: (str: *u8) -> *u8 #foreign imgui "?ImStrSkipBlank@@YAPEBDPEBD@Z";
ImStrlenW :: (str: *ImWchar) -> s32 #foreign imgui "?ImStrlenW@@YAHPEBG@Z";
ImStrbol :: (buf_mid_line: *u8, buf_begin: *u8) -> *u8 #foreign imgui "?ImStrbol@@YAPEBDPEBD0@Z";

// Helpers: Formatting
ImFormatString_CFormat :: (buf: *u8, buf_size: u64, fmt: *u8, __args: ..Any) -> s32 #foreign imgui "?ImFormatString@@YAHPEAD_KPEBDZZ";
ImFormatString :: (buf: *u8, buf_size: u64, fmt: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ImFormatString_CFormat(buf, buf_size, "%s", formatted_text.data);
} @PrintLike

ImFormatStringToTempBuffer_CFormat :: (out_buf: **u8, out_buf_end: **u8, fmt: *u8, __args: ..Any) -> void #foreign imgui "?ImFormatStringToTempBuffer@@YAXPEAPEBD0PEBDZZ";
ImFormatStringToTempBuffer :: (out_buf: **u8, out_buf_end: **u8, fmt: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    ImFormatStringToTempBuffer_CFormat(out_buf, out_buf_end, "%s", formatted_text.data);
} @PrintLike

ImParseFormatFindStart :: (format: *u8) -> *u8 #foreign imgui "?ImParseFormatFindStart@@YAPEBDPEBD@Z";
ImParseFormatFindEnd :: (format: *u8) -> *u8 #foreign imgui "?ImParseFormatFindEnd@@YAPEBDPEBD@Z";
ImParseFormatTrimDecorations :: (format: *u8, buf: *u8, buf_size: u64) -> *u8 #foreign imgui "?ImParseFormatTrimDecorations@@YAPEBDPEBDPEAD_K@Z";
ImParseFormatSanitizeForPrinting :: (fmt_in: *u8, fmt_out: *u8, fmt_out_size: u64) -> void #foreign imgui "?ImParseFormatSanitizeForPrinting@@YAXPEBDPEAD_K@Z";
ImParseFormatSanitizeForScanning :: (fmt_in: *u8, fmt_out: *u8, fmt_out_size: u64) -> *u8 #foreign imgui "?ImParseFormatSanitizeForScanning@@YAPEBDPEBDPEAD_K@Z";
ImParseFormatPrecision :: (format: *u8, default_value: s32) -> s32 #foreign imgui "?ImParseFormatPrecision@@YAHPEBDH@Z";

// Helpers: UTF-8 <> wchar conversions
ImTextCharToUtf8 :: (out_buf: *[5] u8, c: u32) -> s32 #foreign imgui "?ImTextCharToUtf8@@YAHQEADI@Z";
ImTextStrToUtf8 :: (out_buf: *u8, out_buf_size: s32, in_text: *ImWchar, in_text_end: *ImWchar) -> s32 #foreign imgui "?ImTextStrToUtf8@@YAHPEADHPEBG1@Z";
ImTextCharFromUtf8 :: (out_char: *u32, in_text: *u8, in_text_end: *u8) -> s32 #foreign imgui "?ImTextCharFromUtf8@@YAHPEAIPEBD1@Z";
ImTextCharFromUtf8 :: (out_char: *u32, in_text: string) -> s32 #no_context {
    return ImTextCharFromUtf8(out_char, in_text.data, in_text.data + in_text.count);
}
ImTextStrFromUtf8 :: (out_buf: *ImWchar, out_buf_size: s32, in_text: *u8, in_text_end: *u8, in_remaining: **u8 = null) -> s32 #foreign imgui "?ImTextStrFromUtf8@@YAHPEAGHPEBD1PEAPEBD@Z";
ImTextStrFromUtf8 :: (out_buf: *ImWchar, out_buf_size: s32, in_text: string, in_remaining: **u8 = null) -> s32 #no_context {
    return ImTextStrFromUtf8(out_buf, out_buf_size, in_text.data, in_text.data + in_text.count, in_remaining);
}
ImTextCountCharsFromUtf8 :: (in_text: *u8, in_text_end: *u8) -> s32 #foreign imgui "?ImTextCountCharsFromUtf8@@YAHPEBD0@Z";
ImTextCountCharsFromUtf8 :: (in_text: string) -> s32 #no_context {
    return ImTextCountCharsFromUtf8(in_text.data, in_text.data + in_text.count);
}
ImTextCountUtf8BytesFromChar :: (in_text: *u8, in_text_end: *u8) -> s32 #foreign imgui "?ImTextCountUtf8BytesFromChar@@YAHPEBD0@Z";
ImTextCountUtf8BytesFromChar :: (in_text: string) -> s32 #no_context {
    return ImTextCountUtf8BytesFromChar(in_text.data, in_text.data + in_text.count);
}
ImTextCountUtf8BytesFromStr :: (in_text: *ImWchar, in_text_end: *ImWchar) -> s32 #foreign imgui "?ImTextCountUtf8BytesFromStr@@YAHPEBG0@Z";
ImTextFindPreviousUtf8Codepoint :: (in_text_start: *u8, in_p: *u8) -> *u8 #foreign imgui "?ImTextFindPreviousUtf8Codepoint@@YAPEBDPEBD0@Z";
ImTextFindValidUtf8CodepointEnd :: (in_text_start: *u8, in_text_end: *u8, in_p: *u8) -> *u8 #foreign imgui "?ImTextFindValidUtf8CodepointEnd@@YAPEBDPEBD00@Z";
ImTextCountLines :: (in_text: *u8, in_text_end: *u8) -> s32 #foreign imgui "?ImTextCountLines@@YAHPEBD0@Z";
ImTextCountLines :: (in_text: string) -> s32 #no_context {
    return ImTextCountLines(in_text.data, in_text.data + in_text.count);
}

// Helpers: High-level text functions (DO NOT USE!!! THIS IS A MINIMAL SUBSET OF LARGER UPCOMING CHANGES)
ImDrawTextFlags :: enum_flags s32 {
    None           :: 0x0;
    CpuFineClip    :: 0x1;
    WrapKeepBlanks :: 0x2;
    StopOnNewLine  :: 0x4;

    ImDrawTextFlags_None           :: None;
    ImDrawTextFlags_CpuFineClip    :: CpuFineClip;
    ImDrawTextFlags_WrapKeepBlanks :: WrapKeepBlanks;
    ImDrawTextFlags_StopOnNewLine  :: StopOnNewLine;
}

ImFontCalcTextSizeEx :: (font: *ImFont, size: float, max_width: float, wrap_width: float, text_begin: *u8, text_end_display: *u8, text_end: *u8, out_remaining: **u8, out_offset: *ImVec2, flags: ImDrawTextFlags) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImFontCalcTextSizeEx@@YA?AUImVec2@@PEAUImFont@@MMMPEBD11PEAPEBDPEAU1@H@Z";
ImFontCalcWordWrapPositionEx :: (font: *ImFont, size: float, text: *u8, text_end: *u8, wrap_width: float, flags: ImDrawTextFlags = .None) -> *u8 #foreign imgui "?ImFontCalcWordWrapPositionEx@@YAPEBDPEAUImFont@@MPEBD1MH@Z";
ImFontCalcWordWrapPositionEx :: (font: *ImFont, size: float, text: string, wrap_width: float, flags: ImDrawTextFlags = .None) -> *u8 #no_context {
    return ImFontCalcWordWrapPositionEx(font, size, text.data, text.data + text.count, wrap_width, flags);
}
ImTextCalcWordWrapNextLineStart :: (text: *u8, text_end: *u8, flags: ImDrawTextFlags = .None) -> *u8 #foreign imgui "?ImTextCalcWordWrapNextLineStart@@YAPEBDPEBD0H@Z";
ImTextCalcWordWrapNextLineStart :: (text: string, flags: ImDrawTextFlags = .None) -> *u8 #no_context {
    return ImTextCalcWordWrapNextLineStart(text.data, text.data + text.count, flags);
}

// Character classification for word-wrapping logic
ImWcharClass :: enum s32 {
    Blank :: 0;
    Punct :: 1;
    Other :: 2;
    ImWcharClass_Blank :: Blank;
    ImWcharClass_Punct :: Punct;
    ImWcharClass_Other :: Other;
}

ImTextInitClassifiers :: () -> void #foreign imgui "?ImTextInitClassifiers@@YAXXZ";
ImTextClassifierClear :: (bits: *ImU32, codepoint_min: u32, codepoint_end: u32, char_class: ImWcharClass) -> void #foreign imgui "?ImTextClassifierClear@@YAXPEAIIIW4ImWcharClass@@@Z";
ImTextClassifierSetCharClass :: (bits: *ImU32, codepoint_min: u32, codepoint_end: u32, char_class: ImWcharClass, c: u32) -> void #foreign imgui "?ImTextClassifierSetCharClass@@YAXPEAIIIW4ImWcharClass@@I@Z";
ImTextClassifierSetCharClassFromStr :: (bits: *ImU32, codepoint_min: u32, codepoint_end: u32, char_class: ImWcharClass, s: *u8) -> void #foreign imgui "?ImTextClassifierSetCharClassFromStr@@YAXPEAIIIW4ImWcharClass@@PEBD@Z";

ImFileHandle :: *FILE;
ImFileOpen :: (filename: *u8, mode: *u8) -> ImFileHandle #foreign imgui "?ImFileOpen@@YAPEAU_iobuf@@PEBD0@Z";
ImFileClose :: (file: ImFileHandle) -> bool #foreign imgui "?ImFileClose@@YA_NPEAU_iobuf@@@Z";
ImFileGetSize :: (file: ImFileHandle) -> ImU64 #foreign imgui "?ImFileGetSize@@YA_KPEAU_iobuf@@@Z";
ImFileRead :: (data: *void, size: ImU64, count: ImU64, file: ImFileHandle) -> ImU64 #foreign imgui "?ImFileRead@@YA_KPEAX_K1PEAU_iobuf@@@Z";
ImFileWrite :: (data: *void, size: ImU64, count: ImU64, file: ImFileHandle) -> ImU64 #foreign imgui "?ImFileWrite@@YA_KPEBX_K1PEAU_iobuf@@@Z";

ImFileLoadToMemory :: (filename: *u8, mode: *u8, out_file_size: *u64 = null, padding_bytes: s32 = 0) -> *void #foreign imgui "?ImFileLoadToMemory@@YAPEAXPEBD0PEA_KH@Z";

// Helpers: Geometry
ImBezierCubicCalc :: (p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, t: float) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImBezierCubicCalc@@YA?AUImVec2@@AEBU1@000M@Z";
ImBezierCubicCalc :: (p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, t: float) -> ImVec2 #no_context {
    return ImBezierCubicCalc(*p1, *p2, *p3, *p4, t);
}
ImBezierCubicClosestPoint :: (p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, p: *ImVec2, num_segments: s32) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImBezierCubicClosestPoint@@YA?AUImVec2@@AEBU1@0000H@Z";
ImBezierCubicClosestPoint :: (p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, num_segments: s32) -> ImVec2 #no_context {
    return ImBezierCubicClosestPoint(*p1, *p2, *p3, *p4, *p, num_segments);
}
ImBezierCubicClosestPointCasteljau :: (p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, p4: *ImVec2, p: *ImVec2, tess_tol: float) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImBezierCubicClosestPointCasteljau@@YA?AUImVec2@@AEBU1@0000M@Z";
ImBezierCubicClosestPointCasteljau :: (p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, tess_tol: float) -> ImVec2 #no_context {
    return ImBezierCubicClosestPointCasteljau(*p1, *p2, *p3, *p4, *p, tess_tol);
}
ImBezierQuadraticCalc :: (p1: *ImVec2, p2: *ImVec2, p3: *ImVec2, t: float) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImBezierQuadraticCalc@@YA?AUImVec2@@AEBU1@00M@Z";
ImBezierQuadraticCalc :: (p1: ImVec2, p2: ImVec2, p3: ImVec2, t: float) -> ImVec2 #no_context {
    return ImBezierQuadraticCalc(*p1, *p2, *p3, t);
}
ImLineClosestPoint :: (a: *ImVec2, b: *ImVec2, p: *ImVec2) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImLineClosestPoint@@YA?AUImVec2@@AEBU1@00@Z";
ImLineClosestPoint :: (a: ImVec2, b: ImVec2, p: ImVec2) -> ImVec2 #no_context {
    return ImLineClosestPoint(*a, *b, *p);
}
ImTriangleContainsPoint :: (a: *ImVec2, b: *ImVec2, c: *ImVec2, p: *ImVec2) -> bool #foreign imgui "?ImTriangleContainsPoint@@YA_NAEBUImVec2@@000@Z";
ImTriangleContainsPoint :: (a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) -> bool #no_context {
    return ImTriangleContainsPoint(*a, *b, *c, *p);
}
ImTriangleClosestPoint :: (a: *ImVec2, b: *ImVec2, c: *ImVec2, p: *ImVec2) -> ImVec2 #cpp_return_type_is_non_pod #foreign imgui "?ImTriangleClosestPoint@@YA?AUImVec2@@AEBU1@000@Z";
ImTriangleClosestPoint :: (a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) -> ImVec2 #no_context {
    return ImTriangleClosestPoint(*a, *b, *c, *p);
}
ImTriangleBarycentricCoords :: (a: *ImVec2, b: *ImVec2, c: *ImVec2, p: *ImVec2, out_u: *float, out_v: *float, out_w: *float) -> void #foreign imgui "?ImTriangleBarycentricCoords@@YAXAEBUImVec2@@000AEAM11@Z";
ImTriangleBarycentricCoords :: (a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2, out_u: *float, out_v: *float, out_w: *float) #no_context {
    ImTriangleBarycentricCoords(*a, *b, *c, *p, out_u, out_v, out_w);
}

// Helper: ImVec1 (1D vector)
// (this odd construct is used to facilitate the transition between 1D and 2D, and the maintenance of some branches/patches)
ImVec1 :: struct {
    x: float;
}

// Helper: ImVec2i (2D vector, integer)
ImVec2i :: struct {
    x: s32;
    y: s32;
}

// Helper: ImVec2ih (2D vector, half-size integer, for long-term packed storage)
ImVec2ih :: struct {
    x: s16;
    y: s16;
}

// Helper: ImRect (2D axis aligned bounding-box)
// NB: we can't rely on ImVec2 math operators being available here!
ImRect :: struct {
    Min: ImVec2; // Upper-left
    Max: ImVec2; // Lower-right
}

ImBitArrayPtr :: *ImU32;

// Helper: ImBitArray class (wrapper over ImBitArray functions)
// Store 1-bit per value.
ImBitArray :: struct(BITCOUNT: s32, OFFSET: s32 = 0) {
    Data: [(BITCOUNT + 31) >> 5] ImU32;
}

// Utilities
// (other types which are not forwarded declared are: ImBitArray<>, ImSpan<>, ImSpanAllocator<>, ImStableVector<>, ImPool<>, ImChunkStream<>)
ImBitVector :: struct {
    Storage: ImVector(ImU32);
}

// Helper: ImSpan<>
// Pointing to a span of data we don't own.
ImSpan :: struct(T: Type) {
    Data:    *T;
    DataEnd: *T;
}

// Helper: ImSpanAllocator<>
// Facilitate storing multiple chunks into a single large block (the "arena")
// - Usage: call Reserve() N times, allocate GetArenaSizeInBytes() worth, pass it to SetArenaBasePtr(), call GetSpan() N times to retrieve the aligned ranges.
ImSpanAllocator :: struct(CHUNKS: s32) {
    BasePtr: *u8;
    CurrOff: s32;
    CurrIdx: s32;
    Offsets: [CHUNKS] s32;
    Sizes:   [CHUNKS] s32;
}

// Helper: ImStableVector<>
// Allocating chunks of BLOCKSIZE items. Objects pointers are never invalidated when growing, only by clear().
// Important: does not destruct anything!
// Implemented only the minimum set of functions we need for it.
ImStableVector :: struct(T: Type, BLOCKSIZE: s32) {
    Size:     s32 = 0;
    Capacity: s32 = 0;
    Blocks:   ImVector(*T);
}

// Helper: ImPool<>
// Basic keyed storage for contiguous instances, slow/amortized insertion, O(1) indexable, O(Log N) queries by ID over a dense/hot buffer,
// Honor constructor/destructor. Add/remove invalidate all pointers. Indexes have the same lifetime as the associated object.
ImPoolIdx :: s32;

ImPool :: struct(T: Type) {
    Buf:        ImVector(T); // Contiguous data
    Map:        Storage; // ID->Index
    FreeIdx:    ImPoolIdx; // Next free idx to use
    AliveCount: ImPoolIdx; // Number of active/alive items (for display purpose)
}

// Helper: ImChunkStream<>
// Build and iterate a contiguous stream of variable-sized structures.
// This is used by Settings to store persistent data while reducing allocation count.
// We store the chunk size first, and align the final size on 4 bytes boundaries.
// The tedious/zealous amount of casting is to avoid -Wcast-align warnings.
ImChunkStream :: struct(T: Type) {
    Buf: ImVector(u8);
}

// Helper: ImGuiTextIndex
// Maintain a line index for a text buffer. This is a strong candidate to be moved into the public API.
TextIndex :: struct {
    Offsets:   ImVector(s32);
    EndOffset: s32 = 0; // Because we don't own text buffer we need to maintain EndOffset (may bake in LineOffsets?)

    append :: (this: *TextIndex, base: *u8, old_size: s32, new_size: s32) -> void #cpp_method #foreign imgui "?append@ImGuiTextIndex@@QEAAXPEBDHH@Z";
}

// Helper: ImGuiStorage
ImLowerBound :: (in_begin: *StoragePair, in_end: *StoragePair, key: ID) -> *StoragePair #foreign imgui "?ImLowerBound@@YAPEAUImGuiStoragePair@@PEAU1@0I@Z";

// Data shared between all ImDrawList instances
// Conceptually this could have been called e.g. ImDrawListSharedContext
// Typically one ImGui context would create and maintain one of this.
// You may want to create your own instance of you try to ImDrawList completely without ImGui. In that case, watch out for future changes to this structure.
ImDrawListSharedData :: struct {
    TexUvWhitePixel:       ImVec2; // UV of white pixel in the atlas (== FontAtlas->TexUvWhitePixel)
    TexUvLines:            *ImVec4; // UV of anti-aliased lines in the atlas (== FontAtlas->TexUvLines)
    FontAtlas:             *ImFontAtlas; // Current font atlas
    Font:                  *ImFont; // Current font (used for simplified AddText overload)
    FontSize:              float; // Current font size (used for for simplified AddText overload)
    FontScale:             float; // Current font scale (== FontSize / Font->FontSize)
    CurveTessellationTol:  float; // Tessellation tolerance when using PathBezierCurveTo()
    CircleSegmentMaxError: float; // Number of circle segments to use per pixel of radius for AddCircle() etc
    InitialFringeScale:    float; // Initial scale to apply to AA fringe
    InitialFlags:          ImDrawListFlags; // Initial flags at the beginning of the frame (it is possible to alter flags on a per-drawlist basis afterwards)
    ClipRectFullscreen:    ImVec4; // Value for PushClipRectFullscreen()
    TempBuffer:            ImVector(ImVec2); // Temporary write buffer
    DrawLists:             ImVector(*ImDrawList); // All draw lists associated to this ImDrawListSharedData
    Context:               *ImGuiContext; // [OPTIONAL] Link to Dear ImGui context. 99% of ImDrawList/ImFontAtlas can function without an ImGui context, but this facilitate handling one legacy edge case.

    ArcFastVtx:            [48] ImVec2; // Sample points on the quarter of the circle.
    ArcFastRadiusCutoff:   float; // Cutoff radius after which arc drawing will fallback to slower PathArcTo()
    CircleSegmentCounts:   [64] ImU8; // Precomputed segment count for given radius before we calculate it dynamically (to avoid calculation overhead)

    Constructor :: (this: *ImDrawListSharedData) -> void #cpp_method #foreign imgui "??0ImDrawListSharedData@@QEAA@XZ";
    Destructor :: (this: *ImDrawListSharedData) -> void #cpp_method #foreign imgui "??1ImDrawListSharedData@@QEAA@XZ";
    SetCircleTessellationMaxError :: (this: *ImDrawListSharedData, max_error: float) -> void #cpp_method #foreign imgui "?SetCircleTessellationMaxError@ImDrawListSharedData@@QEAAXM@Z";
}

// ImDrawList/ImFontAtlas
ImDrawDataBuilder :: struct {
    Layers:     [2] *ImVector(*ImDrawList); // Pointers to global layers for: regular, tooltip. LayersP[0] is owned by DrawData.
    LayerData1: ImVector(*ImDrawList);
}

ImFontStackData :: struct {
    Font:                  *ImFont;
    FontSizeBeforeScaling: float; // ~~ style.FontSizeBase
    FontSizeAfterScaling:  float; // ~~ g.FontSize
}

//-----------------------------------------------------------------------------
// [SECTION] Style support
//-----------------------------------------------------------------------------
StyleVarInfo :: struct {
    Count:     ImU32; /* 8 bits */ // 1+
    DataType_: DataType #align 1; /* 8 bits */
    Offset:    ImU32 #align 2; /* 16 bits */ // Offset in parent structure
}

// Stacked color modifier, backup of modified data so we can restore it
ColorMod :: struct {
    Col_:        Col;
    BackupValue: ImVec4;
}

// Stacked style modifier, backup of modified data so we can restore it. Data type inferred from the variable.
StyleMod :: struct {
    VarIdx: StyleVar;
    union {
        BackupInt:   [2] s32;
        BackupFloat: [2] float;
    }
}

//-----------------------------------------------------------------------------
// [SECTION] Data types support
//-----------------------------------------------------------------------------
DataTypeStorage :: struct {
    Data: [8] ImU8; // Opaque storage to fit any data up to ImGuiDataType_COUNT
}

// Type information associated to one ImGuiDataType. Retrieve with DataTypeGetInfo().
DataTypeInfo :: struct {
    Size:     u64; // Size in bytes
    Name:     *u8; // Short descriptive name for the type, for debugging
    PrintFmt: *u8; // Default printf format for the type
    ScanFmt:  *u8; // Default scanf format for the type
}

// Extend ImGuiDataType_
DataTypePrivate_ :: enum s32 {
    DataType_Pointer :: 12;
    DataType_ID      :: 13;

    ImGuiDataType_Pointer :: DataType_Pointer;
    ImGuiDataType_ID      :: DataType_ID;
}

// Extend ImGuiItemFlags
// - input: PushItemFlag() manipulates g.CurrentItemFlags, g.NextItemData.ItemFlags, ItemAdd() calls may add extra flags too.
// - output: stored in g.LastItemData.ItemFlags
ItemFlagsPrivate_ :: enum s32 {
    ItemFlags_ReadOnly               :: 2048;
    ItemFlags_MixedValue             :: 4096;
    ItemFlags_NoWindowHoverableCheck :: 8192;
    ItemFlags_AllowOverlap           :: 16384;
    ItemFlags_NoNavDisableMouseHover :: 32768;
    ItemFlags_NoMarkEdited           :: 65536;
    ItemFlags_NoFocus                :: 131072;

    ItemFlags_Inputable              :: 1048576;
    ItemFlags_HasSelectionUserData   :: 2097152;
    ItemFlags_IsMultiSelect          :: 4194304;

    ItemFlags_Default_               :: 16;

    ImGuiItemFlags_ReadOnly               :: ItemFlags_ReadOnly;
    ImGuiItemFlags_MixedValue             :: ItemFlags_MixedValue;
    ImGuiItemFlags_NoWindowHoverableCheck :: ItemFlags_NoWindowHoverableCheck;
    ImGuiItemFlags_AllowOverlap           :: ItemFlags_AllowOverlap;
    ImGuiItemFlags_NoNavDisableMouseHover :: ItemFlags_NoNavDisableMouseHover;
    ImGuiItemFlags_NoMarkEdited           :: ItemFlags_NoMarkEdited;
    ImGuiItemFlags_NoFocus                :: ItemFlags_NoFocus;

    ImGuiItemFlags_Inputable              :: ItemFlags_Inputable;
    ImGuiItemFlags_HasSelectionUserData   :: ItemFlags_HasSelectionUserData;
    ImGuiItemFlags_IsMultiSelect          :: ItemFlags_IsMultiSelect;

    ImGuiItemFlags_Default_               :: ItemFlags_Default_;
}

// Status flags for an already submitted item
// - output: stored in g.LastItemData.StatusFlags
ItemStatusFlags :: enum_flags s32 {
    None             :: 0x0;
    HoveredRect      :: 0x1;
    HasDisplayRect   :: 0x2;
    Edited           :: 0x4;
    ToggledSelection :: 0x8;
    ToggledOpen      :: 0x10;
    HasDeactivated   :: 0x20;
    Deactivated      :: 0x40;
    HoveredWindow    :: 0x80;
    Visible          :: 0x100;
    HasClipRect      :: 0x200;
    HasShortcut      :: 0x400;

    EditedInternal   :: 0x800;

    ImGuiItemStatusFlags_None             :: None;
    ImGuiItemStatusFlags_HoveredRect      :: HoveredRect;
    ImGuiItemStatusFlags_HasDisplayRect   :: HasDisplayRect;
    ImGuiItemStatusFlags_Edited           :: Edited;
    ImGuiItemStatusFlags_ToggledSelection :: ToggledSelection;
    ImGuiItemStatusFlags_ToggledOpen      :: ToggledOpen;
    ImGuiItemStatusFlags_HasDeactivated   :: HasDeactivated;
    ImGuiItemStatusFlags_Deactivated      :: Deactivated;
    ImGuiItemStatusFlags_HoveredWindow    :: HoveredWindow;
    ImGuiItemStatusFlags_Visible          :: Visible;
    ImGuiItemStatusFlags_HasClipRect      :: HasClipRect;
    ImGuiItemStatusFlags_HasShortcut      :: HasShortcut;

    ImGuiItemStatusFlags_EditedInternal   :: EditedInternal;
}

// Extend ImGuiHoveredFlags_
HoveredFlagsPrivate_ :: enum s32 {
    HoveredFlags_DelayMask_                    :: 245760;
    HoveredFlags_AllowedMaskForIsWindowHovered :: 12479;
    HoveredFlags_AllowedMaskForIsItemHovered   :: 262048;

    ImGuiHoveredFlags_DelayMask_                    :: HoveredFlags_DelayMask_;
    ImGuiHoveredFlags_AllowedMaskForIsWindowHovered :: HoveredFlags_AllowedMaskForIsWindowHovered;
    ImGuiHoveredFlags_AllowedMaskForIsItemHovered   :: HoveredFlags_AllowedMaskForIsItemHovered;
}

// Extend ImGuiInputTextFlags_
InputTextFlagsPrivate_ :: enum s32 {
    InputTextFlags_Multiline            :: 67108864;
    InputTextFlags_TempInput            :: 134217728;
    InputTextFlags_LocalizeDecimalPoint :: 268435456;

    ImGuiInputTextFlags_Multiline            :: InputTextFlags_Multiline;
    ImGuiInputTextFlags_TempInput            :: InputTextFlags_TempInput;
    ImGuiInputTextFlags_LocalizeDecimalPoint :: InputTextFlags_LocalizeDecimalPoint;
}

// Extend ImGuiButtonFlags_
ButtonFlagsPrivate_ :: enum s32 {
    ButtonFlags_PressedOnClick                :: 16;
    ButtonFlags_PressedOnClickRelease         :: 32;
    ButtonFlags_PressedOnClickReleaseAnywhere :: 64;
    ButtonFlags_PressedOnRelease              :: 128;
    ButtonFlags_PressedOnDoubleClick          :: 256;
    ButtonFlags_PressedOnDragDropHold         :: 512;

    ButtonFlags_FlattenChildren               :: 2048;

    ButtonFlags_AlignTextBaseLine             :: 32768;
    ButtonFlags_NoKeyModsAllowed              :: 65536;
    ButtonFlags_NoHoldingActiveId             :: 131072;
    ButtonFlags_NoNavFocus                    :: 262144;
    ButtonFlags_NoHoveredOnFocus              :: 524288;
    ButtonFlags_NoSetKeyOwner                 :: 1048576;
    ButtonFlags_NoTestKeyOwner                :: 2097152;
    ButtonFlags_NoFocus                       :: 4194304;
    ButtonFlags_PressedOnMask_                :: 1008;
    ButtonFlags_PressedOnDefault_             :: 32;

    ImGuiButtonFlags_PressedOnClick                :: ButtonFlags_PressedOnClick;
    ImGuiButtonFlags_PressedOnClickRelease         :: ButtonFlags_PressedOnClickRelease;
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere :: ButtonFlags_PressedOnClickReleaseAnywhere;
    ImGuiButtonFlags_PressedOnRelease              :: ButtonFlags_PressedOnRelease;
    ImGuiButtonFlags_PressedOnDoubleClick          :: ButtonFlags_PressedOnDoubleClick;
    ImGuiButtonFlags_PressedOnDragDropHold         :: ButtonFlags_PressedOnDragDropHold;

    ImGuiButtonFlags_FlattenChildren               :: ButtonFlags_FlattenChildren;

    ImGuiButtonFlags_AlignTextBaseLine             :: ButtonFlags_AlignTextBaseLine;
    ImGuiButtonFlags_NoKeyModsAllowed              :: ButtonFlags_NoKeyModsAllowed;
    ImGuiButtonFlags_NoHoldingActiveId             :: ButtonFlags_NoHoldingActiveId;
    ImGuiButtonFlags_NoNavFocus                    :: ButtonFlags_NoNavFocus;
    ImGuiButtonFlags_NoHoveredOnFocus              :: ButtonFlags_NoHoveredOnFocus;
    ImGuiButtonFlags_NoSetKeyOwner                 :: ButtonFlags_NoSetKeyOwner;
    ImGuiButtonFlags_NoTestKeyOwner                :: ButtonFlags_NoTestKeyOwner;
    ImGuiButtonFlags_NoFocus                       :: ButtonFlags_NoFocus;
    ImGuiButtonFlags_PressedOnMask_                :: ButtonFlags_PressedOnMask_;
    ImGuiButtonFlags_PressedOnDefault_             :: ButtonFlags_PressedOnDefault_;
}

// Extend ImGuiComboFlags_
ComboFlagsPrivate_ :: enum s32 {
    ComboFlags_CustomPreview :: 1048576;
    ImGuiComboFlags_CustomPreview :: ComboFlags_CustomPreview;
}

// Extend ImGuiSliderFlags_
SliderFlagsPrivate_ :: enum s32 {
    SliderFlags_Vertical :: 1048576;
    SliderFlags_ReadOnly :: 2097152;

    ImGuiSliderFlags_Vertical :: SliderFlags_Vertical;
    ImGuiSliderFlags_ReadOnly :: SliderFlags_ReadOnly;
}

// Extend ImGuiSelectableFlags_
SelectableFlagsPrivate_ :: enum s32 {
    SelectableFlags_NoHoldingActiveID    :: 1048576;
    SelectableFlags_SelectOnClick        :: 4194304;
    SelectableFlags_SelectOnRelease      :: 8388608;
    SelectableFlags_SpanAvailWidth       :: 16777216;
    SelectableFlags_SetNavIdOnHover      :: 33554432;
    SelectableFlags_NoPadWithHalfSpacing :: 67108864;
    SelectableFlags_NoSetKeyOwner        :: 134217728;

    ImGuiSelectableFlags_NoHoldingActiveID    :: SelectableFlags_NoHoldingActiveID;
    ImGuiSelectableFlags_SelectOnClick        :: SelectableFlags_SelectOnClick;
    ImGuiSelectableFlags_SelectOnRelease      :: SelectableFlags_SelectOnRelease;
    ImGuiSelectableFlags_SpanAvailWidth       :: SelectableFlags_SpanAvailWidth;
    ImGuiSelectableFlags_SetNavIdOnHover      :: SelectableFlags_SetNavIdOnHover;
    ImGuiSelectableFlags_NoPadWithHalfSpacing :: SelectableFlags_NoPadWithHalfSpacing;
    ImGuiSelectableFlags_NoSetKeyOwner        :: SelectableFlags_NoSetKeyOwner;
}

// Extend ImGuiTreeNodeFlags_
TreeNodeFlagsPrivate_ :: enum s32 {
    TreeNodeFlags_NoNavFocus                 :: 134217728;
    TreeNodeFlags_ClipLabelForTrailingButton :: 268435456;
    TreeNodeFlags_UpsideDownArrow            :: 536870912;
    TreeNodeFlags_OpenOnMask_                :: 192;
    TreeNodeFlags_DrawLinesMask_             :: 1835008;

    ImGuiTreeNodeFlags_NoNavFocus                 :: TreeNodeFlags_NoNavFocus;
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton :: TreeNodeFlags_ClipLabelForTrailingButton;
    ImGuiTreeNodeFlags_UpsideDownArrow            :: TreeNodeFlags_UpsideDownArrow;
    ImGuiTreeNodeFlags_OpenOnMask_                :: TreeNodeFlags_OpenOnMask_;
    ImGuiTreeNodeFlags_DrawLinesMask_             :: TreeNodeFlags_DrawLinesMask_;
}

SeparatorFlags :: enum_flags s32 {
    None           :: 0x0;
    Horizontal     :: 0x1;
    Vertical       :: 0x2;
    SpanAllColumns :: 0x4;

    ImGuiSeparatorFlags_None           :: None;
    ImGuiSeparatorFlags_Horizontal     :: Horizontal;
    ImGuiSeparatorFlags_Vertical       :: Vertical;
    ImGuiSeparatorFlags_SpanAllColumns :: SpanAllColumns;
}

// Flags for FocusWindow(). This is not called ImGuiFocusFlags to avoid confusion with public-facing ImGuiFocusedFlags.
// FIXME: Once we finishing replacing more uses of GetTopMostPopupModal()+IsWindowWithinBeginStackOf()
// and FindBlockingModal() with this, we may want to change the flag to be opt-out instead of opt-in.
FocusRequestFlags :: enum_flags s32 {
    None                :: 0x0;
    RestoreFocusedChild :: 0x1;
    UnlessBelowModal    :: 0x2;

    ImGuiFocusRequestFlags_None                :: None;
    ImGuiFocusRequestFlags_RestoreFocusedChild :: RestoreFocusedChild;
    ImGuiFocusRequestFlags_UnlessBelowModal    :: UnlessBelowModal;
}

TextFlags :: enum_flags s32 {
    None                       :: 0x0;
    NoWidthForLargeClippedText :: 0x1;

    ImGuiTextFlags_None                       :: None;
    ImGuiTextFlags_NoWidthForLargeClippedText :: NoWidthForLargeClippedText;
}

TooltipFlags :: enum_flags s32 {
    None             :: 0x0;
    OverridePrevious :: 0x2;

    ImGuiTooltipFlags_None             :: None;
    ImGuiTooltipFlags_OverridePrevious :: OverridePrevious;
}

// FIXME: this is in development, not exposed/functional as a generic feature yet.
// Horizontal/Vertical enums are fixed to 0/1 so they may be used to index ImVec2
LayoutType :: enum s32 {
    Horizontal :: 0;
    Vertical   :: 1;

    ImGuiLayoutType_Horizontal :: Horizontal;
    ImGuiLayoutType_Vertical   :: Vertical;
}

// Flags for LogBegin() text capturing function
LogFlags :: enum_flags s32 {
    None            :: 0x0;

    OutputTTY       :: 0x1;
    OutputFile      :: 0x2;
    OutputBuffer    :: 0x4;
    OutputClipboard :: 0x8;
    OutputMask_     :: 0xf;

    ImGuiLogFlags_None            :: None;

    ImGuiLogFlags_OutputTTY       :: OutputTTY;
    ImGuiLogFlags_OutputFile      :: OutputFile;
    ImGuiLogFlags_OutputBuffer    :: OutputBuffer;
    ImGuiLogFlags_OutputClipboard :: OutputClipboard;
    ImGuiLogFlags_OutputMask_     :: OutputMask_;
}

// X/Y enums are fixed to 0/1 so they may be used to index ImVec2
Axis :: enum s32 {
    None :: -1;
    X    :: 0;
    Y    :: 1;

    ImGuiAxis_None :: None;
    ImGuiAxis_X    :: X;
    ImGuiAxis_Y    :: Y;
}

PlotType :: enum s32 {
    Lines     :: 0;
    Histogram :: 1;

    ImGuiPlotType_Lines     :: Lines;
    ImGuiPlotType_Histogram :: Histogram;
}

// Storage data for BeginComboPreview()/EndComboPreview()
ComboPreviewData :: struct {
    PreviewRect:                  ImRect;
    BackupCursorPos:              ImVec2;
    BackupCursorMaxPos:           ImVec2;
    BackupCursorPosPrevLine:      ImVec2;
    BackupPrevLineTextBaseOffset: float;
    BackupLayout:                 LayoutType;
}

// Stacked storage data for BeginGroup()/EndGroup()
GroupData :: struct {
    WindowID:                             ID;
    BackupCursorPos:                      ImVec2;
    BackupCursorMaxPos:                   ImVec2;
    BackupCursorPosPrevLine:              ImVec2;
    BackupIndent:                         ImVec1;
    BackupGroupOffset:                    ImVec1;
    BackupCurrLineSize:                   ImVec2;
    BackupCurrLineTextBaseOffset:         float;
    BackupActiveIdIsAlive:                ID;
    BackupActiveIdHasBeenEditedThisFrame: bool;
    BackupDeactivatedIdIsAlive:           bool;
    BackupHoveredIdIsAlive:               bool;
    BackupIsSameLine:                     bool;
    EmitItem:                             bool;
}

// Simple column measurement, currently used for MenuItem() only.. This is very short-sighted/throw-away code and NOT a generic helper.
MenuColumns :: struct {
    TotalWidth:     ImU32;
    NextTotalWidth: ImU32;
    Spacing:        ImU16;
    OffsetIcon:     ImU16; // Always zero for now
    OffsetLabel:    ImU16; // Offsets are locked in Update()
    OffsetShortcut: ImU16;
    OffsetMark:     ImU16;
    Widths:         [4] ImU16; // Width of:   Icon, Label, Shortcut, Mark  (accumulators for current frame)

    Update :: (this: *MenuColumns, spacing: float, window_reappearing: bool) -> void #cpp_method #foreign imgui "?Update@ImGuiMenuColumns@@QEAAXM_N@Z";
    DeclColumns :: (this: *MenuColumns, w_icon: float, w_label: float, w_shortcut: float, w_mark: float) -> float #cpp_method #foreign imgui "?DeclColumns@ImGuiMenuColumns@@QEAAMMMMM@Z";
    CalcNextTotalWidth :: (this: *MenuColumns, update_offsets: bool) -> void #cpp_method #foreign imgui "?CalcNextTotalWidth@ImGuiMenuColumns@@QEAAX_N@Z";
}

// Internal temporary state for deactivating InputText() instances.
// Store as part of ImGuiDeactivatedItemData?
InputTextDeactivatedState :: struct {
    ID_:   ID; // widget id owning the text state (which just got deactivated)
    TextA: ImVector(u8); // text buffer
}

ImStb :: struct {
    STB_TexteditState :: struct {}
}
ImStbTexteditState :: ImStb.STB_TexteditState;

// Internal state of the currently focused/edited text input box
// For a given item ID, access with ImGui::GetInputTextState()
InputTextState :: struct {
    Ctx:                  *ImGuiContext; // parent UI context (needs to be set explicitly by parent).
    Stb:                  *ImStbTexteditState; // State for stb_textedit.h
    Flags:                InputTextFlags; // copy of InputText() flags. may be used to check if e.g. ImGuiInputTextFlags_Password is set.
    ID_:                  ID; // widget id owning the text state
    TextLen:              s32; // UTF-8 length of the string in TextA (in bytes)
    TextSrc:              *u8; // == TextA.Data unless read-only, in which case == buf passed to InputText(). For _ReadOnly fields, pointer will be null outside the InputText() call.
    TextA:                ImVector(u8); // main UTF8 buffer. TextA.Size is a buffer size! Should always be >= buf_size passed by user (and of course >= CurLenA + 1).
    TextToRevertTo:       ImVector(u8); // value to revert to when pressing Escape = backup of end-user buffer at the time of focus (in UTF-8, unaltered)
    CallbackTextBackup:   ImVector(u8); // temporary storage for callback to support automatic reconcile of undo-stack
    BufCapacity:          s32; // end-user buffer capacity (include zero terminator)
    Scroll:               ImVec2; // horizontal offset (managed manually) + vertical scrolling (pulled from child window's own Scroll.y)
    LineCount:            s32; // last line count (solely for debugging)
    WrapWidth:            float; // word-wrapping width
    CursorAnim:           float; // timer for cursor blink, reset on every user action so the cursor reappears immediately
    CursorFollow:         bool; // set when we want scrolling to follow the current cursor position (not always!)
    CursorCenterY:        bool; // set when we want scrolling to be centered over the cursor position (while resizing a word-wrapping field)
    SelectedAllMouseLock: bool; // after a double-click to select all, we ignore further mouse drags to update selection
    EditedBefore:         bool; // edited since activated
    EditedThisFrame:      bool; // edited this frame
    WantReloadUserBuf:    bool; // force a reload of user buf so it may be modified externally. may be automatic in future version.
    LastMoveDirectionLR:  ImS8; // ImGuiDir_Left or ImGuiDir_Right. track last movement direction so when cursor cross over a word-wrapping boundaries we can display it on either line depending on last move.s
    ReloadSelectionStart: s32;
    ReloadSelectionEnd:   s32;

    Constructor :: (this: *InputTextState) -> void #cpp_method #foreign imgui "??0ImGuiInputTextState@@QEAA@XZ";
    Destructor :: (this: *InputTextState) -> void #cpp_method #foreign imgui "??1ImGuiInputTextState@@QEAA@XZ";

    OnKeyPressed :: (this: *InputTextState, key: s32) -> void #cpp_method #foreign imgui "?OnKeyPressed@ImGuiInputTextState@@QEAAXH@Z";
    OnCharPressed :: (this: *InputTextState, c: u32) -> void #cpp_method #foreign imgui "?OnCharPressed@ImGuiInputTextState@@QEAAXI@Z";
    GetPreferredOffsetX :: (this: *InputTextState) -> float #cpp_method #foreign imgui "?GetPreferredOffsetX@ImGuiInputTextState@@QEBAMXZ";

    // Cursor & Selection
    CursorAnimReset :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?CursorAnimReset@ImGuiInputTextState@@QEAAXXZ";
    CursorClamp :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?CursorClamp@ImGuiInputTextState@@QEAAXXZ";
    HasSelection :: (this: *InputTextState) -> bool #cpp_method #foreign imgui "?HasSelection@ImGuiInputTextState@@QEBA_NXZ";
    ClearSelection :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?ClearSelection@ImGuiInputTextState@@QEAAXXZ";
    GetCursorPos :: (this: *InputTextState) -> s32 #cpp_method #foreign imgui "?GetCursorPos@ImGuiInputTextState@@QEBAHXZ";
    GetSelectionStart :: (this: *InputTextState) -> s32 #cpp_method #foreign imgui "?GetSelectionStart@ImGuiInputTextState@@QEBAHXZ";
    GetSelectionEnd :: (this: *InputTextState) -> s32 #cpp_method #foreign imgui "?GetSelectionEnd@ImGuiInputTextState@@QEBAHXZ";
    SetSelection :: (this: *InputTextState, start: s32, end: s32) -> void #cpp_method #foreign imgui "?SetSelection@ImGuiInputTextState@@QEAAXHH@Z";
    SelectAll :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?SelectAll@ImGuiInputTextState@@QEAAXXZ";

    // Reload user buf (WIP #2890)
    // If you modify underlying user-passed const char* while active you need to call this (InputText V2 may lift this)
    //   strcpy(my_buf, "hello");
    //   if (ImGuiInputTextState* state = ImGui::GetInputTextState(id)) // id may be ImGui::GetItemID() is last item
    //       state->ReloadUserBufAndSelectAll();
    ReloadUserBufAndSelectAll :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?ReloadUserBufAndSelectAll@ImGuiInputTextState@@QEAAXXZ";
    ReloadUserBufAndKeepSelection :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?ReloadUserBufAndKeepSelection@ImGuiInputTextState@@QEAAXXZ";
    ReloadUserBufAndMoveToEnd :: (this: *InputTextState) -> void #cpp_method #foreign imgui "?ReloadUserBufAndMoveToEnd@ImGuiInputTextState@@QEAAXXZ";
}

WindowRefreshFlags :: enum_flags s32 {
    None              :: 0x0;
    TryToAvoidRefresh :: 0x1;
    RefreshOnHover    :: 0x2;
    RefreshOnFocus    :: 0x4;

    ImGuiWindowRefreshFlags_None              :: None;
    ImGuiWindowRefreshFlags_TryToAvoidRefresh :: TryToAvoidRefresh;
    ImGuiWindowRefreshFlags_RefreshOnHover    :: RefreshOnHover;
    ImGuiWindowRefreshFlags_RefreshOnFocus    :: RefreshOnFocus;
}

WindowBgClickFlags :: enum_flags s32 {
    None :: 0x0;
    Move :: 0x1;

    ImGuiWindowBgClickFlags_None :: None;
    ImGuiWindowBgClickFlags_Move :: Move;
}

NextWindowDataFlags :: enum_flags s32 {
    None              :: 0x0;
    HasPos            :: 0x1;
    HasSize           :: 0x2;
    HasContentSize    :: 0x4;
    HasCollapsed      :: 0x8;
    HasSizeConstraint :: 0x10;
    HasFocus          :: 0x20;
    HasBgAlpha        :: 0x40;
    HasScroll         :: 0x80;
    HasWindowFlags    :: 0x100;
    HasChildFlags     :: 0x200;
    HasRefreshPolicy  :: 0x400;
    HasViewport       :: 0x800;
    HasDock           :: 0x1000;
    HasWindowClass    :: 0x2000;

    ImGuiNextWindowDataFlags_None              :: None;
    ImGuiNextWindowDataFlags_HasPos            :: HasPos;
    ImGuiNextWindowDataFlags_HasSize           :: HasSize;
    ImGuiNextWindowDataFlags_HasContentSize    :: HasContentSize;
    ImGuiNextWindowDataFlags_HasCollapsed      :: HasCollapsed;
    ImGuiNextWindowDataFlags_HasSizeConstraint :: HasSizeConstraint;
    ImGuiNextWindowDataFlags_HasFocus          :: HasFocus;
    ImGuiNextWindowDataFlags_HasBgAlpha        :: HasBgAlpha;
    ImGuiNextWindowDataFlags_HasScroll         :: HasScroll;
    ImGuiNextWindowDataFlags_HasWindowFlags    :: HasWindowFlags;
    ImGuiNextWindowDataFlags_HasChildFlags     :: HasChildFlags;
    ImGuiNextWindowDataFlags_HasRefreshPolicy  :: HasRefreshPolicy;
    ImGuiNextWindowDataFlags_HasViewport       :: HasViewport;
    ImGuiNextWindowDataFlags_HasDock           :: HasDock;
    ImGuiNextWindowDataFlags_HasWindowClass    :: HasWindowClass;
}

// Storage for SetNexWindow** functions
NextWindowData :: struct {
    HasFlags:             NextWindowDataFlags;

    // Members below are NOT cleared. Always rely on HasFlags.
    PosCond:              Cond;
    SizeCond:             Cond;
    CollapsedCond:        Cond;
    DockCond:             Cond;
    PosVal:               ImVec2;
    PosPivotVal:          ImVec2;
    SizeVal:              ImVec2;
    ContentSizeVal:       ImVec2;
    ScrollVal:            ImVec2;
    WindowFlags_:         WindowFlags; // Only honored by BeginTable()
    ChildFlags_:          ChildFlags;
    PosUndock:            bool;
    CollapsedVal:         bool;
    SizeConstraintRect:   ImRect;
    SizeCallback_:        SizeCallback;
    SizeCallbackUserData: *void;
    BgAlphaVal:           float; // Override background alpha
    ViewportId:           ID;
    DockId:               ID;
    WindowClass_:         WindowClass;
    MenuBarOffsetMinVal:  ImVec2; // (Always on) This is not exposed publicly, so we don't clear it and it doesn't have a corresponding flag (could we? for consistency?)
    RefreshFlagsVal:      WindowRefreshFlags;
}

NextItemDataFlags :: enum_flags s32 {
    None           :: 0x0;
    HasWidth       :: 0x1;
    HasOpen        :: 0x2;
    HasShortcut    :: 0x4;
    HasRefVal      :: 0x8;
    HasStorageID   :: 0x10;
    HasColorMarker :: 0x20;

    ImGuiNextItemDataFlags_None           :: None;
    ImGuiNextItemDataFlags_HasWidth       :: HasWidth;
    ImGuiNextItemDataFlags_HasOpen        :: HasOpen;
    ImGuiNextItemDataFlags_HasShortcut    :: HasShortcut;
    ImGuiNextItemDataFlags_HasRefVal      :: HasRefVal;
    ImGuiNextItemDataFlags_HasStorageID   :: HasStorageID;
    ImGuiNextItemDataFlags_HasColorMarker :: HasColorMarker;
}

NextItemData :: struct {
    HasFlags:           NextItemDataFlags; // Called HasFlags instead of Flags to avoid mistaking this
    ItemFlags_:         ItemFlags; // Currently only tested/used for ImGuiItemFlags_AllowOverlap and ImGuiItemFlags_HasSelectionUserData.

    FocusScopeId:       ID; // Set by SetNextItemSelectionUserData()
    SelectionUserData_: SelectionUserData; // Set by SetNextItemSelectionUserData() (note that NULL/0 is a valid value, we use -1 == ImGuiSelectionUserData_Invalid to mark invalid values)
    Width:              float; // Set by SetNextItemWidth()
    Shortcut:           KeyChord; // Set by SetNextItemShortcut()
    ShortcutFlags:      InputFlags; // Set by SetNextItemShortcut()
    OpenVal:            bool; // Set by SetNextItemOpen()
    OpenCond:           ImU8; // Set by SetNextItemOpen()
    RefVal:             DataTypeStorage; // Not exposed yet, for ImGuiInputTextFlags_ParseEmptyAsRefVal
    StorageId:          ID; // Set by SetNextItemStorageID()
    ColorMarker:        ImU32; // Set by SetNextItemColorMarker(). Not exposed yet, supported by DragScalar,SliderScalar and for ImGuiSliderFlags_ColorMarkers.
}

// Status storage for the last submitted item
LastItemData :: struct {
    ID_:         ID;
    ItemFlags_:  ItemFlags; // See ImGuiItemFlags_ (called 'InFlags' before v1.91.4).
    StatusFlags: ItemStatusFlags; // See ImGuiItemStatusFlags_
    Rect:        ImRect; // Full rectangle
    NavRect:     ImRect; // Navigation scoring rectangle (not displayed)

    DisplayRect: ImRect; // Display rectangle. ONLY VALID IF (StatusFlags & ImGuiItemStatusFlags_HasDisplayRect) is set.
    ClipRect:    ImRect; // Clip rectangle at the time of submitting item. ONLY VALID IF (StatusFlags & ImGuiItemStatusFlags_HasClipRect) is set..
    Shortcut:    KeyChord; // Shortcut at the time of submitting item. ONLY VALID IF (StatusFlags & ImGuiItemStatusFlags_HasShortcut) is set..
}

// Store data emitted by TreeNode() for usage by TreePop()
// - To implement ImGuiTreeNodeFlags_NavLeftJumpsToParent: store the minimum amount of data
//   which we can't infer in TreePop(), to perform the equivalent of NavApplyItemToResult().
//   Only stored when the node is a potential candidate for landing on a Left arrow jump.
TreeNodeStackData :: struct {
    ID_:                  ID;
    TreeFlags:            TreeNodeFlags;
    ItemFlags_:           ItemFlags; // Used for nav landing
    NavRect:              ImRect; // Used for nav landing
    DrawLinesX1:          float;
    DrawLinesToNodesY2:   float;
    DrawLinesTableColumn: TableColumnIdx;
}

// sizeof() = 20
ErrorRecoveryState :: struct {
    SizeOfWindowStack:     s16;
    SizeOfIDStack:         s16;
    SizeOfTreeStack:       s16;
    SizeOfColorStack:      s16;
    SizeOfStyleVarStack:   s16;
    SizeOfFontStack:       s16;
    SizeOfFocusScopeStack: s16;
    SizeOfGroupStack:      s16;
    SizeOfItemFlagsStack:  s16;
    SizeOfBeginPopupStack: s16;
    SizeOfDisabledStack:   s16;
}

// Data saved for each window pushed into the stack
WindowStackData :: struct {
    Window_:                             *Window;
    ParentLastItemDataBackup:            LastItemData;
    StackSizesInBegin:                   ErrorRecoveryState; // Store size of various stacks for asserting
    DisabledOverrideReenable:            bool; // Non-child window override disabled flag
    DisabledOverrideReenableAlphaBackup: float;
}

ShrinkWidthItem :: struct {
    Index:        s32;
    Width:        float;
    InitialWidth: float;
}

PtrOrIndex :: struct {
    Ptr:   *void; // Either field can be set, not both. e.g. Dock node tab bars are loose while BeginTabBar() ones are in a pool.
    Index: s32; // Usually index in a main pool.
}

// Data used by IsItemDeactivated()/IsItemDeactivatedAfterEdit() functions
// Also see ImGuiInputTextDeactivatedState which is an extension for this for InputText()
DeactivatedItemData :: struct {
    ID_:                 ID;
    ElapseFrame:         s32;
    HasBeenEditedBefore: bool;
    IsAlive:             bool;
}

//-----------------------------------------------------------------------------
// [SECTION] Popup support
//-----------------------------------------------------------------------------
PopupPositionPolicy :: enum s32 {
    Default  :: 0;
    ComboBox :: 1;
    Tooltip  :: 2;

    ImGuiPopupPositionPolicy_Default  :: Default;
    ImGuiPopupPositionPolicy_ComboBox :: ComboBox;
    ImGuiPopupPositionPolicy_Tooltip  :: Tooltip;
}

// Storage for popup stacks (g.OpenPopupStack and g.BeginPopupStack)
PopupData :: struct {
    PopupId:          ID; // Set on OpenPopup()
    Window_:          *Window; // Resolved on BeginPopup() - may stay unresolved if user never calls OpenPopup()
    RestoreNavWindow: *Window; // Set on OpenPopup(), a NavWindow that will be restored on popup close
    ParentNavLayer:   s32; // Resolved on BeginPopup(). Actually a ImGuiNavLayer type (declared down below), initialized to -1 which is not part of an enum, but serves well-enough as "not any of layers" value
    OpenFrameCount:   s32; // Set on OpenPopup()
    OpenParentId:     ID; // Set on OpenPopup(), we need this to differentiate multiple menu sets from each others (e.g. inside menu bar vs loose menu items)
    OpenPopupPos:     ImVec2; // Set on OpenPopup(), preferred popup position (typically == OpenMousePos when using mouse)
    OpenMousePos:     ImVec2; // Set on OpenPopup(), copy of mouse position at the time of opening popup
}

// Bit array for named keys
ImBitArrayForNamedKeys :: ImBitArray(xx Key.NamedKey_COUNT, -xx Key.NamedKey_BEGIN);

InputEventType :: enum s32 {
    None          :: 0;
    MousePos      :: 1;
    MouseWheel    :: 2;
    MouseButton   :: 3;
    MouseViewport :: 4;
    Key           :: 5;
    Text          :: 6;
    Focus         :: 7;
    COUNT         :: 8;

    ImGuiInputEventType_None          :: None;
    ImGuiInputEventType_MousePos      :: MousePos;
    ImGuiInputEventType_MouseWheel    :: MouseWheel;
    ImGuiInputEventType_MouseButton   :: MouseButton;
    ImGuiInputEventType_MouseViewport :: MouseViewport;
    ImGuiInputEventType_Key           :: Key;
    ImGuiInputEventType_Text          :: Text;
    ImGuiInputEventType_Focus         :: Focus;
    ImGuiInputEventType_COUNT         :: COUNT;
}

InputSource :: enum s32 {
    None     :: 0;
    Mouse    :: 1;
    Keyboard :: 2;
    Gamepad  :: 3;
    COUNT    :: 4;

    ImGuiInputSource_None     :: None;
    ImGuiInputSource_Mouse    :: Mouse;
    ImGuiInputSource_Keyboard :: Keyboard;
    ImGuiInputSource_Gamepad  :: Gamepad;
    ImGuiInputSource_COUNT    :: COUNT;
}

// FIXME: Structures in the union below need to be declared as anonymous unions appears to be an extension?
// Using ImVec2() would fail on Clang 'union member 'MousePos' has a non-trivial default constructor'
InputEventMousePos :: struct {
    PosX:         float;
    PosY:         float;
    MouseSource_: MouseSource;
}
InputEventMouseWheel :: struct {
    WheelX:       float;
    WheelY:       float;
    MouseSource_: MouseSource;
}
InputEventMouseButton :: struct {
    Button:       s32;
    Down:         bool;
    MouseSource_: MouseSource;
}
InputEventMouseViewport :: struct {
    HoveredViewportID: ID;
}
InputEventKey :: struct {
    Key_:        Key;
    Down:        bool;
    AnalogValue: float;
}
InputEventText :: struct {
    Char: u32;
}
InputEventAppFocused :: struct {
    Focused: bool;
}

InputEvent :: struct {
    Type:              InputEventType;
    Source:            InputSource;
    EventId:           ImU32; // Unique, sequential increasing integer to identify an event (if you need to correlate them to other data).
    union {
        MousePos:      InputEventMousePos; // if Type == ImGuiInputEventType_MousePos
        MouseWheel:    InputEventMouseWheel; // if Type == ImGuiInputEventType_MouseWheel
        MouseButton:   InputEventMouseButton; // if Type == ImGuiInputEventType_MouseButton
        MouseViewport: InputEventMouseViewport; // if Type == ImGuiInputEventType_MouseViewport
        Key:           InputEventKey; // if Type == ImGuiInputEventType_Key
        Text:          InputEventText; // if Type == ImGuiInputEventType_Text
        AppFocused:    InputEventAppFocused; // if Type == ImGuiInputEventType_Focus
    }

    AddedByTestEngine: bool;
}

//#define ImGuiKeyOwner_None ImGuiKeyOwner_NoOwner  // We previously called this 'ImGuiKeyOwner_None' but it was inconsistent with our pattern that _None values == 0 and quite dangerous. Also using _NoOwner makes the IsKeyPressed() calls more explicit.
KeyRoutingIndex :: ImS16;

// Routing table entry (sizeof() == 16 bytes)
KeyRoutingData :: struct {
    NextEntryIndex:   KeyRoutingIndex;
    Mods:             ImU16; // Technically we'd only need 4-bits but for simplify we store ImGuiMod_ values which need 16-bits.
    RoutingCurrScore: ImU16; // [DEBUG] For debug display
    RoutingNextScore: ImU16; // Lower is better (0: perfect score)
    RoutingCurr:      ID;
    RoutingNext:      ID;
}

// Routing table: maintain a desired owner for each possible key-chord (key + mods), and setup owner in NewFrame() when mods are matching.
// Stored in main context (1 instance)
KeyRoutingTable :: struct {
    Index:       [155] KeyRoutingIndex; // Index of first entry in Entries[]
    Entries:     ImVector(KeyRoutingData);
    EntriesNext: ImVector(KeyRoutingData); // Double-buffer to avoid reallocation (could use a shared buffer)
}

// This extends ImGuiKeyData but only for named keys (legacy keys don't support the new features)
// Stored in main context (1 per named key). In the future it might be merged into ImGuiKeyData.
KeyOwnerData :: struct {
    OwnerCurr:        ID;
    OwnerNext:        ID;
    LockThisFrame:    bool; // Reading this key requires explicit owner id (until end of frame). Set by ImGuiInputFlags_LockThisFrame.
    LockUntilRelease: bool; // Reading this key requires explicit owner id (until key is released). Set by ImGuiInputFlags_LockUntilRelease. When this is true LockThisFrame is always true as well.
}

// Extend ImGuiInputFlags_
// Flags for extended versions of IsKeyPressed(), IsMouseClicked(), Shortcut(), SetKeyOwner(), SetItemKeyOwner()
// Don't mistake with ImGuiInputTextFlags! (which is for ImGui::InputText() function)
InputFlagsPrivate_ :: enum s32 {
    InputFlags_RepeatRateDefault                :: 2;
    InputFlags_RepeatRateNavMove                :: 4;
    InputFlags_RepeatRateNavTweak               :: 8;

    InputFlags_RepeatUntilRelease               :: 16;
    InputFlags_RepeatUntilKeyModsChange         :: 32;
    InputFlags_RepeatUntilKeyModsChangeFromNone :: 64;
    InputFlags_RepeatUntilOtherKeyPress         :: 128;

    InputFlags_LockThisFrame                    :: 1048576;
    InputFlags_LockUntilRelease                 :: 2097152;

    InputFlags_CondHovered                      :: 4194304;
    InputFlags_CondActive                       :: 8388608;
    InputFlags_CondDefault_                     :: 12582912;

    InputFlags_RepeatRateMask_                  :: 14;
    InputFlags_RepeatUntilMask_                 :: 240;
    InputFlags_RepeatMask_                      :: 255;
    InputFlags_CondMask_                        :: 12582912;
    InputFlags_RouteTypeMask_                   :: 15360;
    InputFlags_RouteOptionsMask_                :: 245760;
    InputFlags_SupportedByIsKeyPressed          :: 255;
    InputFlags_SupportedByIsMouseClicked        :: 1;
    InputFlags_SupportedByShortcut              :: 261375;
    InputFlags_SupportedBySetNextItemShortcut   :: 523519;
    InputFlags_SupportedBySetKeyOwner           :: 3145728;
    InputFlags_SupportedBySetItemKeyOwner       :: 15728640;

    ImGuiInputFlags_RepeatRateDefault                :: InputFlags_RepeatRateDefault;
    ImGuiInputFlags_RepeatRateNavMove                :: InputFlags_RepeatRateNavMove;
    ImGuiInputFlags_RepeatRateNavTweak               :: InputFlags_RepeatRateNavTweak;

    ImGuiInputFlags_RepeatUntilRelease               :: InputFlags_RepeatUntilRelease;
    ImGuiInputFlags_RepeatUntilKeyModsChange         :: InputFlags_RepeatUntilKeyModsChange;
    ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone :: InputFlags_RepeatUntilKeyModsChangeFromNone;
    ImGuiInputFlags_RepeatUntilOtherKeyPress         :: InputFlags_RepeatUntilOtherKeyPress;

    ImGuiInputFlags_LockThisFrame                    :: InputFlags_LockThisFrame;
    ImGuiInputFlags_LockUntilRelease                 :: InputFlags_LockUntilRelease;

    ImGuiInputFlags_CondHovered                      :: InputFlags_CondHovered;
    ImGuiInputFlags_CondActive                       :: InputFlags_CondActive;
    ImGuiInputFlags_CondDefault_                     :: InputFlags_CondDefault_;

    ImGuiInputFlags_RepeatRateMask_                  :: InputFlags_RepeatRateMask_;
    ImGuiInputFlags_RepeatUntilMask_                 :: InputFlags_RepeatUntilMask_;
    ImGuiInputFlags_RepeatMask_                      :: InputFlags_RepeatMask_;
    ImGuiInputFlags_CondMask_                        :: InputFlags_CondMask_;
    ImGuiInputFlags_RouteTypeMask_                   :: InputFlags_RouteTypeMask_;
    ImGuiInputFlags_RouteOptionsMask_                :: InputFlags_RouteOptionsMask_;
    ImGuiInputFlags_SupportedByIsKeyPressed          :: InputFlags_SupportedByIsKeyPressed;
    ImGuiInputFlags_SupportedByIsMouseClicked        :: InputFlags_SupportedByIsMouseClicked;
    ImGuiInputFlags_SupportedByShortcut              :: InputFlags_SupportedByShortcut;
    ImGuiInputFlags_SupportedBySetNextItemShortcut   :: InputFlags_SupportedBySetNextItemShortcut;
    ImGuiInputFlags_SupportedBySetKeyOwner           :: InputFlags_SupportedBySetKeyOwner;
    ImGuiInputFlags_SupportedBySetItemKeyOwner       :: InputFlags_SupportedBySetItemKeyOwner;
}

// Note that Max is exclusive, so perhaps should be using a Begin/End convention.
ListClipperRange :: struct {
    Min:                 s32;
    Max:                 s32;
    PosToIndexConvert:   bool; // Begin/End are absolute position (will be converted to indices later)
    PosToIndexOffsetMin: ImS8; // Add to Min after converting to indices
    PosToIndexOffsetMax: ImS8; // Add to Min after converting to indices
}

// Temporary clipper data, buffers shared/reused between instances
ListClipperData :: struct {
    ListClipper_:    *ListClipper;
    LossynessOffset: float;
    StepNo:          s32;
    ItemsFrozen:     s32;
    Ranges:          ImVector(ListClipperRange);
}

//-----------------------------------------------------------------------------
// [SECTION] Navigation support
//-----------------------------------------------------------------------------
ActivateFlags :: enum_flags s32 {
    None               :: 0x0;
    PreferInput        :: 0x1;
    PreferTweak        :: 0x2;
    TryToPreserveState :: 0x4;
    FromTabbing        :: 0x8;
    FromShortcut       :: 0x10;
    FromFocusApi       :: 0x20;

    ImGuiActivateFlags_None               :: None;
    ImGuiActivateFlags_PreferInput        :: PreferInput;
    ImGuiActivateFlags_PreferTweak        :: PreferTweak;
    ImGuiActivateFlags_TryToPreserveState :: TryToPreserveState;
    ImGuiActivateFlags_FromTabbing        :: FromTabbing;
    ImGuiActivateFlags_FromShortcut       :: FromShortcut;
    ImGuiActivateFlags_FromFocusApi       :: FromFocusApi;
}

// Early work-in-progress API for ScrollToItem()
ScrollFlags :: enum_flags s32 {
    None               :: 0x0;
    KeepVisibleEdgeX   :: 0x1;
    KeepVisibleEdgeY   :: 0x2;
    KeepVisibleCenterX :: 0x4;
    KeepVisibleCenterY :: 0x8;
    AlwaysCenterX      :: 0x10;
    AlwaysCenterY      :: 0x20;
    NoScrollParent     :: 0x40;
    MaskX_             :: 0x15;
    MaskY_             :: 0x2a;

    ImGuiScrollFlags_None               :: None;
    ImGuiScrollFlags_KeepVisibleEdgeX   :: KeepVisibleEdgeX;
    ImGuiScrollFlags_KeepVisibleEdgeY   :: KeepVisibleEdgeY;
    ImGuiScrollFlags_KeepVisibleCenterX :: KeepVisibleCenterX;
    ImGuiScrollFlags_KeepVisibleCenterY :: KeepVisibleCenterY;
    ImGuiScrollFlags_AlwaysCenterX      :: AlwaysCenterX;
    ImGuiScrollFlags_AlwaysCenterY      :: AlwaysCenterY;
    ImGuiScrollFlags_NoScrollParent     :: NoScrollParent;
    ImGuiScrollFlags_MaskX_             :: MaskX_;
    ImGuiScrollFlags_MaskY_             :: MaskY_;
}

NavRenderCursorFlags :: enum_flags s32 {
    None                         :: 0x0;
    Compact                      :: 0x2;
    AlwaysDraw                   :: 0x4;
    NoRounding                   :: 0x8;

    NavHighlightFlags_None       :: 0x0;
    NavHighlightFlags_Compact    :: 0x2;
    NavHighlightFlags_AlwaysDraw :: 0x4;
    NavHighlightFlags_NoRounding :: 0x8;

    ImGuiNavRenderCursorFlags_None       :: None;
    ImGuiNavRenderCursorFlags_Compact    :: Compact;
    ImGuiNavRenderCursorFlags_AlwaysDraw :: AlwaysDraw;
    ImGuiNavRenderCursorFlags_NoRounding :: NoRounding;

    ImGuiNavHighlightFlags_None          :: NavHighlightFlags_None;
    ImGuiNavHighlightFlags_Compact       :: NavHighlightFlags_Compact;
    ImGuiNavHighlightFlags_AlwaysDraw    :: NavHighlightFlags_AlwaysDraw;
    ImGuiNavHighlightFlags_NoRounding    :: NavHighlightFlags_NoRounding;
}

NavMoveFlags :: enum_flags s32 {
    None                  :: 0x0;
    LoopX                 :: 0x1;
    LoopY                 :: 0x2;
    WrapX                 :: 0x4;
    WrapY                 :: 0x8;
    WrapMask_             :: 0xf;
    AllowCurrentNavId     :: 0x10;
    AlsoScoreVisibleSet   :: 0x20;
    ScrollToEdgeY         :: 0x40;
    Forwarded             :: 0x80;
    DebugNoResult         :: 0x100;
    FocusApi              :: 0x200;
    IsTabbing             :: 0x400;
    IsPageMove            :: 0x800;
    Activate              :: 0x1000;
    NoSelect              :: 0x2000;
    NoSetNavCursorVisible :: 0x4000;
    NoClearActiveId       :: 0x8000;

    ImGuiNavMoveFlags_None                  :: None;
    ImGuiNavMoveFlags_LoopX                 :: LoopX;
    ImGuiNavMoveFlags_LoopY                 :: LoopY;
    ImGuiNavMoveFlags_WrapX                 :: WrapX;
    ImGuiNavMoveFlags_WrapY                 :: WrapY;
    ImGuiNavMoveFlags_WrapMask_             :: WrapMask_;
    ImGuiNavMoveFlags_AllowCurrentNavId     :: AllowCurrentNavId;
    ImGuiNavMoveFlags_AlsoScoreVisibleSet   :: AlsoScoreVisibleSet;
    ImGuiNavMoveFlags_ScrollToEdgeY         :: ScrollToEdgeY;
    ImGuiNavMoveFlags_Forwarded             :: Forwarded;
    ImGuiNavMoveFlags_DebugNoResult         :: DebugNoResult;
    ImGuiNavMoveFlags_FocusApi              :: FocusApi;
    ImGuiNavMoveFlags_IsTabbing             :: IsTabbing;
    ImGuiNavMoveFlags_IsPageMove            :: IsPageMove;
    ImGuiNavMoveFlags_Activate              :: Activate;
    ImGuiNavMoveFlags_NoSelect              :: NoSelect;
    ImGuiNavMoveFlags_NoSetNavCursorVisible :: NoSetNavCursorVisible;
    ImGuiNavMoveFlags_NoClearActiveId       :: NoClearActiveId;
}

NavLayer :: enum s32 {
    Main  :: 0;
    Menu  :: 1;
    COUNT :: 2;

    ImGuiNavLayer_Main  :: Main;
    ImGuiNavLayer_Menu  :: Menu;
    ImGuiNavLayer_COUNT :: COUNT;
}

// Storage for navigation query/results
NavItemData :: struct {
    Window_:            *Window; // Init,Move    // Best candidate window (result->ItemWindow->RootWindowForNav == request->Window)
    ID_:                ID; // Init,Move    // Best candidate item ID
    FocusScopeId:       ID; // Init,Move    // Best candidate focus scope ID
    RectRel:            ImRect; // Init,Move    // Best candidate bounding box in window relative space
    ItemFlags_:         ItemFlags; // ????,Move    // Best candidate item flags
    DistBox:            float; //      Move    // Best candidate box distance to current NavId
    DistCenter:         float; //      Move    // Best candidate center distance to current NavId
    DistAxial:          float; //      Move    // Best candidate axial distance to current NavId
    SelectionUserData_: SelectionUserData; //I+Mov    // Best candidate SetNextItemSelectionUserData() value. Valid if (ItemFlags & ImGuiItemFlags_HasSelectionUserData)
}

// Storage for PushFocusScope(), g.FocusScopeStack[], g.NavFocusRoute[]
FocusScopeData :: struct {
    ID_:      ID;
    WindowID: ID;
}

// Flags for GetTypingSelectRequest()
TypingSelectFlags :: enum_flags s32 {
    None                :: 0x0;
    AllowBackspace      :: 0x1;
    AllowSingleCharMode :: 0x2;

    ImGuiTypingSelectFlags_None                :: None;
    ImGuiTypingSelectFlags_AllowBackspace      :: AllowBackspace;
    ImGuiTypingSelectFlags_AllowSingleCharMode :: AllowSingleCharMode;
}

// Returned by GetTypingSelectRequest(), designed to eventually be public.
TypingSelectRequest :: struct {
    Flags:           TypingSelectFlags; // Flags passed to GetTypingSelectRequest()
    SearchBufferLen: s32;
    SearchBuffer:    *u8; // Search buffer contents (use full string. unless SingleCharMode is set, in which case use SingleCharSize).
    SelectRequest:   bool; // Set when buffer was modified this frame, requesting a selection.
    SingleCharMode:  bool; // Notify when buffer contains same character repeated, to implement special mode. In this situation it preferred to not display any on-screen search indication.
    SingleCharSize:  ImS8; // Length in bytes of first letter codepoint (1 for ascii, 2-4 for UTF-8). If (SearchBufferLen==RepeatCharSize) only 1 letter has been input.
}

// Storage for GetTypingSelectRequest()
TypingSelectState :: struct {
    Request:            TypingSelectRequest; // User-facing data
    SearchBuffer:       [64] u8; // Search buffer: no need to make dynamic as this search is very transient.
    FocusScope:         ID;
    LastRequestFrame:   s32 = 0;
    LastRequestTime:    float = 0.0;
    SingleCharModeLock  := false; // After a certain single char repeat count we lock into SingleCharMode. Two benefits: 1) buffer never fill, 2) we can provide an immediate SingleChar mode without timer elapsing.
}

// Flags for internal's BeginColumns(). This is an obsolete API. Prefer using BeginTable() nowadays!
OldColumnFlags :: enum_flags s32 {
    None                   :: 0x0;
    NoBorder               :: 0x1;
    NoResize               :: 0x2;
    NoPreserveWidths       :: 0x4;
    NoForceWithinWindow    :: 0x8;
    GrowParentContentsSize :: 0x10;

    ImGuiOldColumnFlags_None                   :: None;
    ImGuiOldColumnFlags_NoBorder               :: NoBorder;
    ImGuiOldColumnFlags_NoResize               :: NoResize;
    ImGuiOldColumnFlags_NoPreserveWidths       :: NoPreserveWidths;
    ImGuiOldColumnFlags_NoForceWithinWindow    :: NoForceWithinWindow;
    ImGuiOldColumnFlags_GrowParentContentsSize :: GrowParentContentsSize;
}

OldColumnData :: struct {
    OffsetNorm:             float; // Column start offset, normalized 0.0 (far left) -> 1.0 (far right)
    OffsetNormBeforeResize: float;
    Flags:                  OldColumnFlags; // Not exposed
    ClipRect:               ImRect;
}

OldColumns :: struct {
    ID_:                      ID;
    Flags:                    OldColumnFlags;
    IsFirstFrame:             bool;
    IsBeingResized:           bool;
    Current:                  s32;
    Count:                    s32;
    OffMinX:                  float; // Offsets from HostWorkRect.Min.x
    OffMaxX:                  float; // Offsets from HostWorkRect.Min.x
    LineMinY:                 float;
    LineMaxY:                 float;
    HostCursorPosY:           float; // Backup of CursorPos at the time of BeginColumns()
    HostCursorMaxPosX:        float; // Backup of CursorMaxPos at the time of BeginColumns()
    HostInitialClipRect:      ImRect; // Backup of ClipRect at the time of BeginColumns()
    HostBackupClipRect:       ImRect; // Backup of ClipRect during PushColumnsBackground()/PopColumnsBackground()
    HostBackupParentWorkRect: ImRect; //Backup of WorkRect at the time of BeginColumns()
    Columns:                  ImVector(OldColumnData);
    Splitter:                 ImDrawListSplitter;
}

// ImGui
BoxSelectState :: struct {
    // Active box-selection data (persistent, 1 active at a time)
    ID_:                   ID;
    IsActive:              bool;
    IsStarting:            bool;
    IsStartedFromVoid:     bool; // Starting click was not from an item.
    IsStartedSetNavIdOnce: bool;
    RequestClear:          bool;
    KeyMods:               KeyChord; /* 16 bits */ // Latched key-mods for box-select logic.
    StartPosRel:           ImVec2; // Start position in window-contents relative space (to support scrolling)
    EndPosRel:             ImVec2; // End position in window-contents relative space
    ScrollAccum:           ImVec2; // Scrolling accumulator (to behave at high-frame spaces)
    Window_:               *Window;

    UnclipMode:            bool; // (Temp/Transient, here in hot area). Set/cleared by the BeginMultiSelect()/EndMultiSelect() owning active box-select.
    UnclipRect:            ImRect; // Rectangle where ItemAdd() clipping may be temporarily disabled. Need support by multi-select supporting widgets.
    UnclipRects:           [2] ImRect; // Per-axis versions.
    BoxSelectRectPrev:     ImRect; // Selection rectangle in absolute coordinates (derived every frame from BoxSelectStartPosRel and MousePos)
    BoxSelectRectCurr:     ImRect;
}

// Temporary storage for multi-select
MultiSelectTempData :: struct {
    IO:                 MultiSelectIO; // MUST BE FIRST FIELD. Requests are set and returned by BeginMultiSelect()/EndMultiSelect() + written to by user during the loop.
    Storage:            *MultiSelectState;
    FocusScopeId:       ID; // Copied from g.CurrentFocusScopeId (unless another selection scope was pushed manually)
    Flags:              MultiSelectFlags;
    ScopeRectMin:       ImVec2;
    BackupCursorMaxPos: ImVec2;

    //ImGuiSelectionUserData CurrSubmittedItem; // Copy of last submitted item data, used to merge output ranges.
    //ImGuiSelectionUserData PrevSubmittedItem; // Copy of previous submitted item data, used to merge output ranges.
    BoxSelectId:        ID;
    KeyMods:            KeyChord;
    LoopRequestSetAll:  ImS8; // -1: no operation, 0: clear all, 1: select all.
    IsEndIO:            bool; // Set when switching IO from BeginMultiSelect() to EndMultiSelect() state.
    IsFocused:          bool; // Set if currently focusing the selection scope (any item of the selection). May be used if you have custom shortcut associated to selection.
    IsKeyboardSetRange: bool; // Set by BeginMultiSelect() when using Shift+Navigation. Because scrolling may be affected we can't afford a frame of lag with Shift+Navigation.
    NavIdPassedBy:      bool;
    RangeSrcPassedBy:   bool; // Set by the item that matches RangeSrcItem.
    RangeDstPassedBy:   bool; // Set by the item that matches NavJustMovedToId when IsSetRange is set.
}

// Persistent storage for multi-select (as long as selection is alive)
MultiSelectState :: struct {
    Window_:           *Window;
    ID_:               ID;
    LastFrameActive:   s32; // Last used frame-count, for GC.
    LastSelectionSize: s32; // Set by BeginMultiSelect() based on optional info provided by user. May be -1 if unknown.
    RangeSelected:     ImS8; // -1 (don't have) or true/false
    NavIdSelected:     ImS8; // -1 (don't have) or true/false
    RangeSrcItem:      SelectionUserData; //
    NavIdItem:         SelectionUserData; // SetNextItemSelectionUserData() value for NavId (if part of submitted items)
}

// Extend ImGuiDockNodeFlags_
DockNodeFlagsPrivate_ :: enum s32 {
    DockNodeFlags_DockSpace                 :: 1024;
    DockNodeFlags_CentralNode               :: 2048;
    DockNodeFlags_NoTabBar                  :: 4096;
    DockNodeFlags_HiddenTabBar              :: 8192;
    DockNodeFlags_NoWindowMenuButton        :: 16384;
    DockNodeFlags_NoCloseButton             :: 32768;
    DockNodeFlags_NoResizeX                 :: 65536;
    DockNodeFlags_NoResizeY                 :: 131072;
    DockNodeFlags_DockedWindowsInFocusRoute :: 262144;

    DockNodeFlags_NoDockingSplitOther       :: 524288;
    DockNodeFlags_NoDockingOverMe           :: 1048576;
    DockNodeFlags_NoDockingOverOther        :: 2097152;
    DockNodeFlags_NoDockingOverEmpty        :: 4194304;
    DockNodeFlags_NoDocking                 :: 7864336;

    DockNodeFlags_SharedFlagsInheritMask_   :: -1;
    DockNodeFlags_NoResizeFlagsMask_        :: 196640;

    DockNodeFlags_LocalFlagsTransferMask_   :: 260208;
    DockNodeFlags_SavedFlagsMask_           :: 261152;

    ImGuiDockNodeFlags_DockSpace                 :: DockNodeFlags_DockSpace;
    ImGuiDockNodeFlags_CentralNode               :: DockNodeFlags_CentralNode;
    ImGuiDockNodeFlags_NoTabBar                  :: DockNodeFlags_NoTabBar;
    ImGuiDockNodeFlags_HiddenTabBar              :: DockNodeFlags_HiddenTabBar;
    ImGuiDockNodeFlags_NoWindowMenuButton        :: DockNodeFlags_NoWindowMenuButton;
    ImGuiDockNodeFlags_NoCloseButton             :: DockNodeFlags_NoCloseButton;
    ImGuiDockNodeFlags_NoResizeX                 :: DockNodeFlags_NoResizeX;
    ImGuiDockNodeFlags_NoResizeY                 :: DockNodeFlags_NoResizeY;
    ImGuiDockNodeFlags_DockedWindowsInFocusRoute :: DockNodeFlags_DockedWindowsInFocusRoute;

    ImGuiDockNodeFlags_NoDockingSplitOther       :: DockNodeFlags_NoDockingSplitOther;
    ImGuiDockNodeFlags_NoDockingOverMe           :: DockNodeFlags_NoDockingOverMe;
    ImGuiDockNodeFlags_NoDockingOverOther        :: DockNodeFlags_NoDockingOverOther;
    ImGuiDockNodeFlags_NoDockingOverEmpty        :: DockNodeFlags_NoDockingOverEmpty;
    ImGuiDockNodeFlags_NoDocking                 :: DockNodeFlags_NoDocking;

    ImGuiDockNodeFlags_SharedFlagsInheritMask_   :: DockNodeFlags_SharedFlagsInheritMask_;
    ImGuiDockNodeFlags_NoResizeFlagsMask_        :: DockNodeFlags_NoResizeFlagsMask_;

    ImGuiDockNodeFlags_LocalFlagsTransferMask_   :: DockNodeFlags_LocalFlagsTransferMask_;
    ImGuiDockNodeFlags_SavedFlagsMask_           :: DockNodeFlags_SavedFlagsMask_;
}

// Store the source authority (dock node vs window) of a field
DataAuthority :: enum s32 {
    Auto     :: 0;
    DockNode :: 1;
    Window   :: 2;

    ImGuiDataAuthority_Auto     :: Auto;
    ImGuiDataAuthority_DockNode :: DockNode;
    ImGuiDataAuthority_Window   :: Window;
}

DockNodeState :: enum s32 {
    Unknown                                   :: 0;
    HostWindowHiddenBecauseSingleWindow       :: 1;
    HostWindowHiddenBecauseWindowsAreResizing :: 2;
    HostWindowVisible                         :: 3;

    ImGuiDockNodeState_Unknown                                   :: Unknown;
    ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow       :: HostWindowHiddenBecauseSingleWindow;
    ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing :: HostWindowHiddenBecauseWindowsAreResizing;
    ImGuiDockNodeState_HostWindowVisible                         :: HostWindowVisible;
}

// sizeof() 176~216
DockNode :: struct {
    ID_:                    ID;
    SharedFlags:            DockNodeFlags; // (Write) Flags shared by all nodes of a same dockspace hierarchy (inherited from the root node)
    LocalFlags:             DockNodeFlags; // (Write) Flags specific to this node
    LocalFlagsInWindows:    DockNodeFlags; // (Write) Flags specific to this node, applied from windows
    MergedFlags:            DockNodeFlags; // (Read)  Effective flags (== SharedFlags | LocalFlagsInNode | LocalFlagsInWindows)
    State:                  DockNodeState;
    ParentNode:             *DockNode;
    ChildNodes:             [2] *DockNode; // [Split node only] Child nodes (left/right or top/bottom). Consider switching to an array.
    Windows:                ImVector(*Window); // Note: unordered list! Iterate TabBar->Tabs for user-order.
    TabBar_:                *TabBar;
    Pos:                    ImVec2; // Current position
    Size:                   ImVec2; // Current size
    SizeRef:                ImVec2; // [Split node only] Last explicitly written-to size (overridden when using a splitter affecting the node), used to calculate Size.
    SplitAxis:              Axis; // [Split node only] Split axis (X or Y)
    LastBgColor:            ImU32;
    WindowClass_:           WindowClass; // [Root node only]

    HostWindow:             *Window;
    VisibleWindow:          *Window; // Generally point to window which is ID is == SelectedTabID, but when CTRL+Tabbing this can be a different window.
    CentralNode:            *DockNode; // [Root node only] Pointer to central node.
    OnlyNodeWithWindows:    *DockNode; // [Root node only] Set when there is a single visible node within the hierarchy.
    CountNodeWithWindows:   s32; // [Root node only]
    LastFrameAlive:         s32; // Last frame number the node was updated or kept alive explicitly with DockSpace() + ImGuiDockNodeFlags_KeepAliveOnly
    LastFrameActive:        s32; // Last frame number the node was updated.
    LastFrameFocused:       s32; // Last frame number the node was focused.
    LastFocusedNodeId:      ID; // [Root node only] Which of our child docking node (any ancestor in the hierarchy) was last focused.
    SelectedTabId:          ID; // [Leaf node only] Which of our tab/window is selected.
    WantCloseTabId:         ID; // [Leaf node only] Set when closing a specific tab/window.
    RefViewportId:          ID; // Reference viewport ID from visible window when HostWindow == NULL.
    __bitfield:             DataAuthority;
    /* 
        AuthorityForPos: DataAuthority; /* 3 bits */
        AuthorityForSize: DataAuthority; /* 3 bits */
        AuthorityForViewport: DataAuthority; /* 3 bits */;
    */

    IsVisible:              bool; /* 1 bits */ // Set to false when the node is hidden (usually disabled as it has no active window)
    IsFocused:              bool #align 1; /* 1 bits */
    IsBgDrawnThisFrame:     bool #align 1; /* 1 bits */
    HasCloseButton:         bool #align 1; /* 1 bits */ // Provide space for a close button (if any of the docked window has one). Note that button may be hidden on window without one.
    HasWindowMenuButton:    bool #align 1; /* 1 bits */
    HasCentralNodeChild:    bool #align 1; /* 1 bits */
    WantCloseAll:           bool #align 1; /* 1 bits */ // Set when closing all tabs at once.
    WantLockSizeOnce:       bool #align 1; /* 1 bits */
    WantMouseMove:          bool; /* 1 bits */ // After a node extraction we need to transition toward moving the newly created host window
    WantHiddenTabBarUpdate: bool #align 1; /* 1 bits */
    WantHiddenTabBarToggle: bool #align 1; /* 1 bits */

    Constructor :: (this: *DockNode, id: ID) -> void #cpp_method #foreign imgui "??0ImGuiDockNode@@QEAA@I@Z";
    Destructor :: (this: *DockNode) -> void #cpp_method #foreign imgui "??1ImGuiDockNode@@QEAA@XZ";
}

set_AuthorityForPos :: (fields: *DockNode, value: DataAuthority) {
    MASK0: DataAuthority : 0b111;
    fields.__bitfield = (fields.__bitfield & ~MASK0) | (value & MASK0);
}
get_AuthorityForPos :: (fields: DockNode) -> DataAuthority {
    return (fields.__bitfield & 0b111);
}

set_AuthorityForSize :: (fields: *DockNode, value: DataAuthority) {
    MASK0: DataAuthority : (0b111 << 3);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 3) & MASK0);
}
get_AuthorityForSize :: (fields: DockNode) -> DataAuthority {
    return ((fields.__bitfield & (0b111 << 3)) >> 3);
}

set_AuthorityForViewport :: (fields: *DockNode, value: DataAuthority) {
    MASK0: DataAuthority : (0b111 << 6);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 6) & MASK0);
}
get_AuthorityForViewport :: (fields: DockNode) -> DataAuthority {
    return ((fields.__bitfield & (0b111 << 6)) >> 6);
}


// List of colors that are stored at the time of Begin() into Docked Windows.
// We currently store the packed colors in a simple array window->DockStyle.Colors[].
// A better solution may involve appending into a log of colors in ImGuiContext + store offsets into those arrays in ImGuiWindow,
// but it would be more complex as we'd need to double-buffer both as e.g. drop target may refer to window from last frame.
WindowDockStyleCol :: enum s32 {
    Text                      :: 0;
    TabHovered                :: 1;
    TabFocused                :: 2;
    TabSelected               :: 3;
    TabSelectedOverline       :: 4;
    TabDimmed                 :: 5;
    TabDimmedSelected         :: 6;
    TabDimmedSelectedOverline :: 7;
    UnsavedMarker             :: 8;
    COUNT                     :: 9;

    ImGuiWindowDockStyleCol_Text                      :: Text;
    ImGuiWindowDockStyleCol_TabHovered                :: TabHovered;
    ImGuiWindowDockStyleCol_TabFocused                :: TabFocused;
    ImGuiWindowDockStyleCol_TabSelected               :: TabSelected;
    ImGuiWindowDockStyleCol_TabSelectedOverline       :: TabSelectedOverline;
    ImGuiWindowDockStyleCol_TabDimmed                 :: TabDimmed;
    ImGuiWindowDockStyleCol_TabDimmedSelected         :: TabDimmedSelected;
    ImGuiWindowDockStyleCol_TabDimmedSelectedOverline :: TabDimmedSelectedOverline;
    ImGuiWindowDockStyleCol_UnsavedMarker             :: UnsavedMarker;
    ImGuiWindowDockStyleCol_COUNT                     :: COUNT;
}

// We don't store style.Alpha: dock_node->LastBgColor embeds it and otherwise it would only affect the docking tab, which intuitively I would say we don't want to.
WindowDockStyle :: struct {
    Colors: [9] ImU32;
}

DockContext :: struct {
    Nodes:           Storage; // Map ID -> ImGuiDockNode*: Active nodes
    Requests:        ImVector(DockRequest);
    NodesSettings:   ImVector(DockNodeSettings);
    WantFullRebuild: bool;
}

// ImGuiViewport Private/Internals fields (cardinal sin: we are using inheritance!)
// Every instance of ImGuiViewport is in fact a ImGuiViewportP.
ViewportP :: struct {
    #as using imguiviewport:     Viewport;

    Window_:                     *Window; // Set when the viewport is owned by a window (and ImGuiViewportFlags_CanHostOtherWindows is NOT set)
    Idx:                         s32;
    LastFrameActive:             s32; // Last frame number this viewport was activated by a window
    LastFocusedStampCount:       s32; // Last stamp number from when a window hosted by this viewport was focused (by comparing this value between two viewport we have an implicit viewport z-order we use as fallback)
    LastNameHash:                ID;
    LastPos:                     ImVec2;
    LastSize:                    ImVec2;
    Alpha:                       float; // Window opacity (when dragging dockable windows/viewports we make them transparent)
    LastAlpha:                   float;
    LastFocusedHadNavWindow:     bool; // Instead of maintaining a LastFocusedWindow (which may harder to correctly maintain), we merely store weither NavWindow != NULL last time the viewport was focused.
    PlatformMonitor:             s16;
    BgFgDrawListsLastTimeActive: [2] float; // Last frame number the background (0) and foreground (1) draw lists were used
    BgFgDrawLists:               [2] *ImDrawList; // Convenience background (0) and foreground (1) draw lists. We use them to draw software mouser cursor when io.MouseDrawCursor is set and to draw most debug overlays.
    DrawDataP:                   ImDrawData;
    DrawDataBuilder:             ImDrawDataBuilder; // Temporary data while building final ImDrawData
    LastPlatformPos:             ImVec2;
    LastPlatformSize:            ImVec2;
    LastRendererSize:            ImVec2;

    WorkInsetMin:                ImVec2; // Work Area inset locked for the frame. GetWorkRect() always fits within GetMainRect().
    WorkInsetMax:                ImVec2; // "
    BuildWorkInsetMin:           ImVec2; // Work Area inset accumulator for current frame, to become next frame's WorkInset
    BuildWorkInsetMax:           ImVec2; // "
}

// Windows data saved in imgui.ini file
// Because we never destroy or rename ImGuiWindowSettings, we can store the names in a separate buffer easily.
// (this is designed to be stored in a ImChunkStream buffer, with the variable-length Name following our structure)
WindowSettings :: struct {
    ID_:         ID;
    Pos:         ImVec2ih; // NB: Settings position are stored RELATIVE to the viewport! Whereas runtime ones are absolute positions.
    Size:        ImVec2ih;
    ViewportPos: ImVec2ih;
    ViewportId:  ID;
    DockId:      ID; // ID of last known DockNode (even if the DockNode is invisible because it has only 1 active window), or 0 if none.
    ClassId:     ID; // ID of window class if specified
    DockOrder:   s16; // Order of the last time the window was visible within its DockNode. This is used to reorder windows that are reappearing on the same frame. Same value between windows that were active and windows that were none are possible.
    Collapsed:   bool;
    IsChild:     bool;
    WantApply:   bool; // Set when loaded from .ini data (to enable merging/loading .ini data into an already running context)
    WantDelete:  bool; // Set to invalidate/delete the settings entry
}

SettingsHandler :: struct {
    TypeName:   *u8; // Short description stored in .ini file. Disallowed characters: '[' ']'
    TypeHash:   ID; // == ImHashStr(TypeName)
    ClearAllFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler) -> void #c_call; // Clear all settings data
    ReadInitFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler) -> void #c_call; // Read: Called before reading (in registration order)
    ReadOpenFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler, name: *u8) -> *void #c_call; // Read: Called when entering into a new ini entry e.g. "[Window][Name]"
    ReadLineFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler, entry: *void, line: *u8) -> void #c_call; // Read: Called for every line of text within an ini entry
    ApplyAllFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler) -> void #c_call; // Read: Called after reading (in registration order)
    WriteAllFn: #type (ctx: *ImGuiContext, handler: *SettingsHandler, out_buf: *TextBuffer) -> void #c_call; // Write: Output every entries into 'out_buf'
    UserData:   *void;
}

LocEntry :: struct {
    Key:  LocKey;
    Text: *u8;
}

// The error callback is currently not public, as it is expected that only advanced users will rely on it.
ErrorCallback :: #type (ctx: *ImGuiContext, user_data: *void, msg: *u8) -> void #c_call;

// See IMGUI_DEBUG_LOG() and IMGUI_DEBUG_LOG_XXX() macros.
DebugLogFlags :: enum_flags s32 {
    None               :: 0x0;
    EventError         :: 0x1;
    EventActiveId      :: 0x2;
    EventFocus         :: 0x4;
    EventPopup         :: 0x8;
    EventNav           :: 0x10;
    EventClipper       :: 0x20;
    EventSelection     :: 0x40;
    EventIO            :: 0x80;
    EventFont          :: 0x100;
    EventInputRouting  :: 0x200;
    EventDocking       :: 0x400;
    EventViewport      :: 0x800;

    EventMask_         :: 0xfff;
    OutputToTTY        :: 0x100000;
    OutputToDebugger   :: 0x200000;
    OutputToTestEngine :: 0x400000;

    ImGuiDebugLogFlags_None               :: None;
    ImGuiDebugLogFlags_EventError         :: EventError;
    ImGuiDebugLogFlags_EventActiveId      :: EventActiveId;
    ImGuiDebugLogFlags_EventFocus         :: EventFocus;
    ImGuiDebugLogFlags_EventPopup         :: EventPopup;
    ImGuiDebugLogFlags_EventNav           :: EventNav;
    ImGuiDebugLogFlags_EventClipper       :: EventClipper;
    ImGuiDebugLogFlags_EventSelection     :: EventSelection;
    ImGuiDebugLogFlags_EventIO            :: EventIO;
    ImGuiDebugLogFlags_EventFont          :: EventFont;
    ImGuiDebugLogFlags_EventInputRouting  :: EventInputRouting;
    ImGuiDebugLogFlags_EventDocking       :: EventDocking;
    ImGuiDebugLogFlags_EventViewport      :: EventViewport;

    ImGuiDebugLogFlags_EventMask_         :: EventMask_;
    ImGuiDebugLogFlags_OutputToTTY        :: OutputToTTY;
    ImGuiDebugLogFlags_OutputToDebugger   :: OutputToDebugger;
    ImGuiDebugLogFlags_OutputToTestEngine :: OutputToTestEngine;
}

DebugAllocEntry :: struct {
    FrameCount: s32;
    AllocCount: ImS16;
    FreeCount:  ImS16;
}

DebugAllocInfo :: struct {
    TotalAllocCount: s32; // Number of call to MemAlloc().
    TotalFreeCount:  s32;
    LastEntriesIdx:  ImS16; // Current index in buffer
    LastEntriesBuf:  [6] DebugAllocEntry; // Track last 6 frames that had allocations
}

MetricsConfig :: struct {
    ShowDebugLog              := false;
    ShowIDStackTool           := false;
    ShowWindowsRects          := false;
    ShowWindowsBeginOrder     := false;
    ShowTablesRects           := false;
    ShowDrawCmdMesh           := true;
    ShowDrawCmdBoundingBoxes  := true;
    ShowTextEncodingViewer    := false;
    ShowTextureUsedRect       := false;
    ShowDockingNodes          := false;
    ShowWindowsRectsType:     s32 = -1;
    ShowTablesRectsType:      s32 = -1;
    HighlightMonitorIdx:      s32 = -1;
    HighlightViewportID:      ID = 0;
    ShowFontPreview           := true;
}

StackLevelInfo :: struct {
    ID_:             ID;
    QueryFrameCount: ImS8; // >= 1: Sub-query in progress
    QuerySuccess:    bool; // Sub-query obtained result from DebugHookIdInfo()
    DataType:        ImS8; // ImGuiDataType
    DescOffset:      s32; // -1 or offset into parent's ResultsPathsBuf
}

DebugItemPathQuery :: struct {
    MainID:         ID; // ID to query details for.
    Active:         bool; // Used to disambiguate the case when ID == 0 and e.g. some code calls PushOverrideID(0).
    Complete:       bool; // All sub-queries are finished (some may have failed).
    Step:           ImS8; // -1: query stack + init Results, >= 0: filling individual stack level.
    Results:        ImVector(StackLevelInfo);
    ResultsDescBuf: TextBuffer;
    ResultPathBuf:  TextBuffer;
}

// State for ID Stack tool queries
IDStackTool :: struct {
    OptHexEncodeNonAsciiChars: bool;
    OptCopyToClipboardOnCtrlC: bool;
    LastActiveFrame:           s32;
    CopyToClipboardLastTime:   float;
}

//-----------------------------------------------------------------------------
// [SECTION] Generic context hooks
//-----------------------------------------------------------------------------
ContextHookCallback :: #type (ctx: *ImGuiContext, hook: *ContextHook) -> void #c_call;
ContextHookType :: enum s32 {
    NewFramePre     :: 0;
    NewFramePost    :: 1;
    EndFramePre     :: 2;
    EndFramePost    :: 3;
    RenderPre       :: 4;
    RenderPost      :: 5;
    Shutdown        :: 6;
    PendingRemoval_ :: 7;
    ImGuiContextHookType_NewFramePre     :: NewFramePre;
    ImGuiContextHookType_NewFramePost    :: NewFramePost;
    ImGuiContextHookType_EndFramePre     :: EndFramePre;
    ImGuiContextHookType_EndFramePost    :: EndFramePost;
    ImGuiContextHookType_RenderPre       :: RenderPre;
    ImGuiContextHookType_RenderPost      :: RenderPost;
    ImGuiContextHookType_Shutdown        :: Shutdown;
    ImGuiContextHookType_PendingRemoval_ :: PendingRemoval_;
}

ContextHook :: struct {
    HookId:   ID; // A unique ID assigned by AddContextHook()
    Type:     ContextHookType;
    Owner:    ID;
    Callback: ContextHookCallback;
    UserData: *void;
}

DemoMarkerCallback :: #type (file: *u8, line: s32, section: *u8) -> void #c_call;

// Forward declarations: ImGui layer
ImGuiContext :: struct {
    Initialized:                        bool;
    WithinFrameScope:                   bool; // Set by NewFrame(), cleared by EndFrame()
    WithinFrameScopeWithImplicitWindow: bool; // Set by NewFrame(), cleared by EndFrame() when the implicit debug window has been pushed
    TestEngineHookItems:                bool; // Will call test engine hooks: ImGuiTestEngineHook_ItemAdd(), ImGuiTestEngineHook_ItemInfo(), ImGuiTestEngineHook_Log()
    FrameCount:                         s32;
    FrameCountEnded:                    s32;
    FrameCountPlatformEnded:            s32;
    FrameCountRendered:                 s32;
    Time:                               float64;
    ContextName:                        [16] u8; // Storage for a context name (to facilitate debugging multi-context setups)
    IO_:                                IO;
    PlatformIO_:                        PlatformIO;
    Style_:                             Style;
    ConfigFlagsCurrFrame:               ConfigFlags; // = g.IO.ConfigFlags at the time of NewFrame()
    ConfigFlagsLastFrame:               ConfigFlags;
    FontAtlases:                        ImVector(*ImFontAtlas); // List of font atlases used by the context (generally only contains g.IO.Fonts aka the main font atlas)
    Font:                               *ImFont; // Currently bound font. (== FontStack.back().Font)
    FontBaked:                          *ImFontBaked; // Currently bound font at currently bound size. (== Font->GetFontBaked(FontSize))
    FontSize:                           float; // Currently bound font size == line height (== FontSizeBase + externals scales applied in the UpdateCurrentFontSize() function).
    FontSizeBase:                       float; // Font size before scaling == style.FontSizeBase == value passed to PushFont() when specified.
    FontBakedScale:                     float; // == FontBaked->Size / FontSize. Scale factor over baked size. Rarely used nowadays, very often == 1.0f.
    FontRasterizerDensity:              float; // Current font density. Used by all calls to GetFontBaked().
    CurrentDpiScale:                    float; // Current window/viewport DpiScale == CurrentViewport->DpiScale
    DrawListSharedData:                 ImDrawListSharedData;
    WithinEndChildID:                   ID; // Set within EndChild()
    WithinEndPopupID:                   ID; // Set within EndPopup()
    TestEngine:                         *void; // Test engine user data

    InputEventsQueue:                   ImVector(InputEvent); // Input events which will be trickled/written into IO structure.
    InputEventsTrail:                   ImVector(InputEvent); // Past input events processed in NewFrame(). This is to allow domain-specific application to access e.g mouse/pen trail.
    InputEventsNextMouseSource:         MouseSource;
    InputEventsNextEventId:             ImU32;

    Windows:                            ImVector(*Window); // Windows, sorted in display order, back to front
    WindowsFocusOrder:                  ImVector(*Window); // Root windows, sorted in focus order, back to front.
    WindowsTempSortBuffer:              ImVector(*Window); // Temporary buffer used in EndFrame() to reorder windows so parents are kept before their child
    CurrentWindowStack:                 ImVector(WindowStackData);
    WindowsById:                        Storage; // Map window's ImGuiID to ImGuiWindow*
    WindowsActiveCount:                 s32; // Number of unique windows submitted by frame
    WindowsBorderHoverPadding:          float; // Padding around resizable windows for which hovering on counts as hovering the window == ImMax(style.TouchExtraPadding, style.WindowBorderHoverPadding). This isn't so multi-dpi friendly.
    DebugBreakInWindow:                 ID; // Set to break in Begin() call.
    CurrentWindow:                      *Window; // Window being drawn into
    HoveredWindow:                      *Window; // Window the mouse is hovering. Will typically catch mouse inputs.
    HoveredWindowUnderMovingWindow:     *Window; // Hovered window ignoring MovingWindow. Only set if MovingWindow is set.
    HoveredWindowBeforeClear:           *Window; // Window the mouse is hovering. Filled even with _NoMouse. This is currently useful for multi-context compositors.
    MovingWindow:                       *Window; // Track the window we clicked on (in order to preserve focus). The actual window that is moved is generally MovingWindow->RootWindowDockTree.
    WheelingWindow:                     *Window; // Track the window we started mouse-wheeling on. Until a timer elapse or mouse has moved, generally keep scrolling the same window even if during the course of scrolling the mouse ends up hovering a child window.
    WheelingWindowRefMousePos:          ImVec2;
    WheelingWindowStartFrame:           s32; // This may be set one frame before WheelingWindow is != NULL
    WheelingWindowScrolledFrame:        s32;
    WheelingWindowReleaseTimer:         float;
    WheelingWindowWheelRemainder:       ImVec2;
    WheelingAxisAvg:                    ImVec2;

    DebugDrawIdConflictsId:             ID; // Set when we detect multiple items with the same identifier
    DebugHookIdInfoId:                  ID; // Will call core hooks: DebugHookIdInfo() from GetID functions, used by ID Stack Tool [next HoveredId/ActiveId to not pull in an extra cache-line]
    HoveredId:                          ID; // Hovered widget, filled during the frame
    HoveredIdPreviousFrame:             ID;
    HoveredIdPreviousFrameItemCount:    s32; // Count numbers of items using the same ID as last frame's hovered id
    HoveredIdTimer:                     float; // Measure contiguous hovering time
    HoveredIdNotActiveTimer:            float; // Measure contiguous hovering time where the item has not been active
    HoveredIdAllowOverlap:              bool;
    HoveredIdIsDisabled:                bool; // At least one widget passed the rect test, but has been discarded by disabled flag or popup inhibit. May be true even if HoveredId == 0.
    ItemUnclipByLog:                    bool; // Disable ItemAdd() clipping, essentially a memory-locality friendly copy of LogEnabled
    ActiveId:                           ID; // Active widget
    ActiveIdIsAlive:                    ID; // Active widget has been seen this frame (we can't use a bool as the ActiveId may change within the frame)
    ActiveIdTimer:                      float;
    ActiveIdIsJustActivated:            bool; // Set at the time of activation for one frame
    ActiveIdAllowOverlap:               bool; // Active widget allows another widget to steal active id (generally for overlapping widgets, but not always)
    ActiveIdNoClearOnFocusLoss:         bool; // Disable losing active id if the active id window gets unfocused.
    ActiveIdHasBeenPressedBefore:       bool; // Track whether the active id led to a press (this is to allow changing between PressOnClick and PressOnRelease without pressing twice). Used by range_select branch.
    ActiveIdHasBeenEditedBefore:        bool; // Was the value associated to the widget Edited over the course of the Active state.
    ActiveIdHasBeenEditedThisFrame:     bool;
    ActiveIdFromShortcut:               bool;
    ActiveIdMouseButton:                ImS8;
    ActiveIdDisabledId:                 ID; // When clicking a disabled item we set ActiveId=window->MoveId to avoid interference with widget code. Actual item ID is stored here.
    ActiveIdClickOffset:                ImVec2; // Clicked offset from upper-left corner, if applicable (currently only set by ButtonBehavior)
    ActiveIdSource:                     InputSource; // Activating source: ImGuiInputSource_Mouse OR ImGuiInputSource_Keyboard OR ImGuiInputSource_Gamepad
    ActiveIdWindow:                     *Window;
    ActiveIdPreviousFrame:              ID;
    DeactivatedItemData_:               DeactivatedItemData;
    ActiveIdValueOnActivation:          DataTypeStorage; // Backup of initial value at the time of activation. ONLY SET BY SPECIFIC WIDGETS: DragXXX and SliderXXX.
    LastActiveId:                       ID; // Store the last non-zero ActiveId, useful for animation.
    LastActiveIdTimer:                  float; // Store the last non-zero ActiveId timer since the beginning of activation, useful for animation.

    LastKeyModsChangeTime:              float64; // Record the last time key mods changed (affect repeat delay when using shortcut logic)
    LastKeyModsChangeFromNoneTime:      float64; // Record the last time key mods changed away from being 0 (affect repeat delay when using shortcut logic)
    LastKeyboardKeyPressTime:           float64; // Record the last time a keyboard key (ignore mouse/gamepad ones) was pressed.
    KeysMayBeCharInput:                 ImBitArrayForNamedKeys; // Lookup to tell if a key can emit char input, see IsKeyChordPotentiallyCharInput(). sizeof() = 20 bytes
    KeysOwnerData:                      [155] KeyOwnerData;
    KeysRoutingTable:                   KeyRoutingTable;
    ActiveIdUsingNavDirMask:            ImU32; // Active widget will want to read those nav move requests (e.g. can activate a button and move away from it)
    ActiveIdUsingAllKeyboardKeys:       bool; // Active widget will want to read all keyboard keys inputs. (this is a shortcut for not taking ownership of 100+ keys, frequently used by drag operations)
    DebugBreakInShortcutRouting:        KeyChord; // Set to break in SetShortcutRouting()/Shortcut() calls.

    CurrentFocusScopeId:                ID; // Value for currently appending items == g.FocusScopeStack.back(). Not to be mistaken with g.NavFocusScopeId.
    CurrentItemFlags:                   ItemFlags; // Value for currently appending items == g.ItemFlagsStack.back()
    DebugLocateId:                      ID; // Storage for DebugLocateItemOnHover() feature: this is read by ItemAdd() so we keep it in a hot/cached location
    NextItemData_:                      NextItemData; // Storage for SetNextItem** functions
    LastItemData_:                      LastItemData; // Storage for last submitted item (setup by ItemAdd)
    NextWindowData_:                    NextWindowData; // Storage for SetNextWindow** functions
    DebugShowGroupRects:                bool;
    GcCompactAll:                       bool; // Request full GC

    DebugFlashStyleColorIdx:            Col; // (Keep close to ColorStack to share cache line)
    ColorStack:                         ImVector(ColorMod); // Stack for PushStyleColor()/PopStyleColor() - inherited by Begin()
    StyleVarStack:                      ImVector(StyleMod); // Stack for PushStyleVar()/PopStyleVar() - inherited by Begin()
    FontStack:                          ImVector(ImFontStackData); // Stack for PushFont()/PopFont() - inherited by Begin()
    FocusScopeStack:                    ImVector(FocusScopeData); // Stack for PushFocusScope()/PopFocusScope() - inherited by BeginChild(), pushed into by Begin()
    ItemFlagsStack:                     ImVector(ItemFlags); // Stack for PushItemFlag()/PopItemFlag() - inherited by Begin()
    GroupStack:                         ImVector(GroupData); // Stack for BeginGroup()/EndGroup() - not inherited by Begin()
    OpenPopupStack:                     ImVector(PopupData); // Which popups are open (persistent)
    BeginPopupStack:                    ImVector(PopupData); // Which level of BeginPopup() we are in (reset every frame)
    TreeNodeStack:                      ImVector(TreeNodeStackData); // Stack for TreeNode()

    Viewports:                          ImVector(*ViewportP); // Active viewports (always 1+, and generally 1 unless multi-viewports are enabled). Each viewports hold their copy of ImDrawData.
    CurrentViewport:                    *ViewportP; // We track changes of viewport (happening in Begin) so we can call Platform_OnChangedViewport()
    MouseViewport:                      *ViewportP;
    MouseLastHoveredViewport:           *ViewportP; // Last known viewport that was hovered by mouse (even if we are not hovering any viewport any more) + honoring the _NoInputs flag.
    PlatformLastFocusedViewportId:      ID;
    FallbackMonitor:                    PlatformMonitor; // Virtual monitor used as fallback if backend doesn't provide monitor information.
    PlatformMonitorsFullWorkRect:       ImRect; // Bounding box of all platform monitors
    ViewportCreatedCount:               s32; // Unique sequential creation counter (mostly for testing/debugging)
    PlatformWindowsCreatedCount:        s32; // Unique sequential creation counter (mostly for testing/debugging)
    ViewportFocusedStampCount:          s32; // Every time the front-most window changes, we stamp its viewport with an incrementing counter

    NavCursorVisible:                   bool; // Nav focus cursor/rectangle is visible? We hide it after a mouse click. We show it after a nav move.
    NavHighlightItemUnderNav:           bool; // Disable mouse hovering highlight. Highlight navigation focused item instead of mouse hovered item.

    NavMousePosDirty:                   bool; // When set we will update mouse position if io.ConfigNavMoveSetMousePos is set (not enabled by default)
    NavIdIsAlive:                       bool; // Nav widget has been seen this frame ~~ NavRectRel is valid
    NavId:                              ID; // Focused item for navigation
    NavWindow:                          *Window; // Focused window for navigation. Could be called 'FocusedWindow'
    NavFocusScopeId:                    ID; // Focused focus scope (e.g. selection code often wants to "clear other items" when landing on an item of the same scope)
    NavLayer_:                          NavLayer; // Focused layer (main scrolling layer, or menu/title bar layer)
    NavIdItemFlags:                     ItemFlags;
    NavActivateId:                      ID; // ~~ (g.ActiveId == 0) && (IsKeyPressed(ImGuiKey_Space) || IsKeyDown(ImGuiKey_Enter) || IsKeyPressed(ImGuiKey_NavGamepadActivate)) ? NavId : 0, also set when calling ActivateItemByID()
    NavActivateDownId:                  ID; // ~~ IsKeyDown(ImGuiKey_Space) || IsKeyDown(ImGuiKey_Enter) || IsKeyDown(ImGuiKey_NavGamepadActivate) ? NavId : 0
    NavActivatePressedId:               ID; // ~~ IsKeyPressed(ImGuiKey_Space) || IsKeyPressed(ImGuiKey_Enter) || IsKeyPressed(ImGuiKey_NavGamepadActivate) ? NavId : 0 (no repeat)
    NavActivateFlags:                   ActivateFlags;
    NavFocusRoute:                      ImVector(FocusScopeData); // Reversed copy focus scope stack for NavId (should contains NavFocusScopeId). This essentially follow the window->ParentWindowForFocusRoute chain.
    NavHighlightActivatedId:            ID;
    NavHighlightActivatedTimer:         float;
    NavOpenContextMenuItemId:           ID;
    NavOpenContextMenuWindowId:         ID;
    NavNextActivateId:                  ID; // Set by ActivateItemByID(), queued until next frame.
    NavNextActivateFlags:               ActivateFlags;
    NavInputSource:                     InputSource; // Keyboard or Gamepad mode? THIS CAN ONLY BE ImGuiInputSource_Keyboard or ImGuiInputSource_Gamepad
    NavLastValidSelectionUserData:      SelectionUserData; // Last valid data passed to SetNextItemSelectionUser(), or -1. For current window. Not reset when focusing an item that doesn't have selection data.
    NavCursorHideFrames:                ImS8;

    NavAnyRequest:                      bool; // ~~ NavMoveRequest || NavInitRequest this is to perform early out in ItemAdd()
    NavInitRequest:                     bool; // Init request for appearing window to select first item
    NavInitRequestFromMove:             bool;
    NavInitResult:                      NavItemData; // Init request result (first item of the window, or one for which SetItemDefaultFocus() was called)
    NavMoveSubmitted:                   bool; // Move request submitted, will process result on next NewFrame()
    NavMoveScoringItems:                bool; // Move request submitted, still scoring incoming items
    NavMoveForwardToNextFrame:          bool;
    NavMoveFlags_:                      NavMoveFlags;
    NavMoveScrollFlags:                 ScrollFlags;
    NavMoveKeyMods:                     KeyChord;
    NavMoveDir:                         Dir; // Direction of the move request (left/right/up/down)
    NavMoveDirForDebug:                 Dir;
    NavMoveClipDir:                     Dir; // FIXME-NAV: Describe the purpose of this better. Might want to rename?
    NavScoringRect:                     ImRect; // Rectangle used for scoring, in screen space. Based of window->NavRectRel[], modified for directional navigation scoring.
    NavScoringNoClipRect:               ImRect; // Some nav operations (such as PageUp/PageDown) enforce a region which clipper will attempt to always keep submitted. Unset/invalid if inverted.
    NavScoringDebugCount:               s32; // Metrics for debugging
    NavTabbingDir:                      s32; // Generally -1 or +1, 0 when tabbing without a nav id
    NavTabbingCounter:                  s32; // >0 when counting items for tabbing
    NavMoveResultLocal:                 NavItemData; // Best move request candidate within NavWindow
    NavMoveResultLocalVisible:          NavItemData; // Best move request candidate within NavWindow that are mostly visible (when using ImGuiNavMoveFlags_AlsoScoreVisibleSet flag)
    NavMoveResultOther:                 NavItemData; // Best move request candidate within NavWindow's flattened hierarchy (when using ImGuiWindowFlags_NavFlattened flag)
    NavTabbingResultFirst:              NavItemData; // First tabbing request candidate within NavWindow and flattened hierarchy

    NavJustMovedFromFocusScopeId:       ID; // Just navigated from this focus scope id (result of a successfully MoveRequest).
    NavJustMovedToId:                   ID; // Just navigated to this id (result of a successfully MoveRequest).
    NavJustMovedToFocusScopeId:         ID; // Just navigated to this focus scope id (result of a successfully MoveRequest).
    NavJustMovedToKeyMods:              KeyChord;
    NavJustMovedToIsTabbing:            bool; // Copy of ImGuiNavMoveFlags_IsTabbing. Maybe we should store whole flags.
    NavJustMovedToHasSelectionData:     bool; // Copy of move result's ItemFlags & ImGuiItemFlags_HasSelectionUserData). Maybe we should just store ImGuiNavItemData.

    ConfigNavEnableTabbing:             bool; // = true. Enable tabbing (Tab, Shift+Tab). PLEASE LET ME KNOW IF YOU USE THIS.
    ConfigNavWindowingWithGamepad:      bool; // = true. Enable Ctrl+Tab by holding ImGuiKey_GamepadFaceLeft (== ImGuiKey_NavGamepadMenu). When false, the button may still be used to toggle Menu layer.
    ConfigNavWindowingKeyNext:          KeyChord; // = ImGuiMod_Ctrl | ImGuiKey_Tab (or ImGuiMod_Super | ImGuiKey_Tab on OS X). Set to 0 to disable. For reconfiguration (see #4828)
    ConfigNavWindowingKeyPrev:          KeyChord; // = ImGuiMod_Ctrl | ImGuiMod_Shift | ImGuiKey_Tab (or ImGuiMod_Super | ImGuiMod_Shift | ImGuiKey_Tab on OS X)

    NavWindowingTarget:                 *Window; // Target window when doing Ctrl+Tab (or Pad Menu + FocusPrev/Next), this window is temporarily displayed top-most!
    NavWindowingTargetAnim:             *Window; // Record of last valid NavWindowingTarget until DimBgRatio and NavWindowingHighlightAlpha becomes 0.0f, so the fade-out can stay on it.
    NavWindowingListWindow:             *Window; // Internal window actually listing the Ctrl+Tab contents
    NavWindowingTimer:                  float;
    NavWindowingHighlightAlpha:         float;
    NavWindowingInputSource:            InputSource;
    NavWindowingToggleLayer:            bool; // Set while Alt or GamepadMenu is held, may be cleared by other operations, and processed when releasing the key.
    NavWindowingToggleKey:              Key; // Keyboard/gamepad key used when toggling to menu layer.
    NavWindowingAccumDeltaPos:          ImVec2;
    NavWindowingAccumDeltaSize:         ImVec2;

    DimBgRatio:                         float; // 0.0..1.0 animation when fading in a dimming background (for modal window and Ctrl+Tab list)

    // Drag and Drop
    DragDropActive:                     bool;
    DragDropWithinSource:               bool; // Set when within a BeginDragDropXXX/EndDragDropXXX block for a drag source.
    DragDropWithinTarget:               bool; // Set when within a BeginDragDropXXX/EndDragDropXXX block for a drag target.
    DragDropSourceFlags:                DragDropFlags;
    DragDropSourceFrameCount:           s32;
    DragDropMouseButton:                s32;
    DragDropPayload:                    Payload;
    DragDropTargetRect:                 ImRect; // Store rectangle of current target candidate (we favor small targets when overlapping)
    DragDropTargetClipRect:             ImRect; // Store ClipRect at the time of item's drawing
    DragDropTargetId:                   ID;
    DragDropTargetFullViewport:         ID;
    DragDropAcceptFlagsCurr:            DragDropFlags;
    DragDropAcceptFlagsPrev:            DragDropFlags;
    DragDropAcceptIdCurrRectSurface:    float; // Target item surface (we resolve overlapping targets by prioritizing the smaller surface)
    DragDropAcceptIdCurr:               ID; // Target item id (set at the time of accepting the payload)
    DragDropAcceptIdPrev:               ID; // Target item id from previous frame (we need to store this to allow for overlapping drag and drop targets)
    DragDropAcceptFrameCount:           s32; // Last time a target expressed a desire to accept the source
    DragDropHoldJustPressedId:          ID; // Set when holding a payload just made ButtonBehavior() return a press.
    DragDropPayloadBufHeap:             ImVector(u8); // We don't expose the ImVector<> directly, ImGuiPayload only holds pointer+size
    DragDropPayloadBufLocal:            [16] u8; // Local buffer for small payloads

    // Clipper
    ClipperTempDataStacked:             s32;
    ClipperTempData:                    ImVector(ListClipperData);

    // Tables
    CurrentTable:                       *Table;
    DebugBreakInTable:                  ID; // Set to break in BeginTable() call.
    TablesTempDataStacked:              s32; // Temporary table data size (because we leave previous instances undestructed, we generally don't use TablesTempData.Size)
    TablesTempData:                     ImVector(TableTempData); // Temporary table data (buffers reused/shared across instances, support nesting)
    Tables:                             ImPool(Table); // Persistent table data
    TablesLastTimeActive:               ImVector(float); // Last used timestamp of each tables (SOA, for efficient GC)
    DrawChannelsTempMergeBuffer:        ImVector(ImDrawChannel);

    // Tab bars
    CurrentTabBar:                      *TabBar;
    TabBars:                            ImPool(TabBar);
    CurrentTabBarStack:                 ImVector(PtrOrIndex);
    ShrinkWidthBuffer:                  ImVector(ShrinkWidthItem);

    // Multi-Select state
    BoxSelectState_:                    BoxSelectState;
    CurrentMultiSelect:                 *MultiSelectTempData;
    MultiSelectTempDataStacked:         s32; // Temporary multi-select data size (because we leave previous instances undestructed, we generally don't use MultiSelectTempData.Size)
    MultiSelectTempData_:               ImVector(MultiSelectTempData);
    MultiSelectStorage:                 ImPool(MultiSelectState);

    // Hover Delay system
    HoverItemDelayId:                   ID;
    HoverItemDelayIdPreviousFrame:      ID;
    HoverItemDelayTimer:                float; // Currently used by IsItemHovered()
    HoverItemDelayClearTimer:           float; // Currently used by IsItemHovered(): grace time before g.TooltipHoverTimer gets cleared.
    HoverItemUnlockedStationaryId:      ID; // Mouse has once been stationary on this item. Only reset after departing the item.
    HoverWindowUnlockedStationaryId:    ID; // Mouse has once been stationary on this window. Only reset after departing the window.

    // Mouse state
    MouseCursor_:                       MouseCursor;
    MouseStationaryTimer:               float; // Time the mouse has been stationary (with some loose heuristic)
    MouseLastValidPos:                  ImVec2;

    // Widget state
    InputTextState_:                    InputTextState;
    InputTextLineIndex:                 TextIndex; // Temporary storage
    InputTextDeactivatedState_:         InputTextDeactivatedState;
    InputTextPasswordFontBackupBaked:   ImFontBaked;
    InputTextPasswordFontBackupFlags:   ImFontFlags;
    InputTextReactivateId:              ID; // ID of InputText to reactivate on next frame (for io.ConfigInputTextEnterKeepActive behavior)
    TempInputId:                        ID; // Temporary text input when using Ctrl+Click on a slider, etc.
    DataTypeZeroValue:                  DataTypeStorage; // 0 for all data types
    BeginMenuDepth:                     s32;
    BeginComboDepth:                    s32;
    ColorEditOptions:                   ColorEditFlags; // Store user options for color edit widgets
    ColorEditCurrentID:                 ID; // Set temporarily while inside of the parent-most ColorEdit4/ColorPicker4 (because they call each others).
    ColorEditSavedID:                   ID; // ID we are saving/restoring HS for
    ColorEditSavedHue:                  float; // Backup of last Hue associated to LastColor, so we can restore Hue in lossy RGB<>HSV round trips
    ColorEditSavedSat:                  float; // Backup of last Saturation associated to LastColor, so we can restore Saturation in lossy RGB<>HSV round trips
    ColorEditSavedColor:                ImU32; // RGB value with alpha set to 0.
    ColorPickerRef:                     ImVec4; // Initial/reference color at the time of opening the color picker.
    ComboPreviewData_:                  ComboPreviewData;
    WindowResizeBorderExpectedRect:     ImRect; // Expected border rect, switch to relative edit if moving
    WindowResizeRelativeMode:           bool;
    ScrollbarSeekMode:                  s16; // 0: scroll to clicked location, -1/+1: prev/next page.
    ScrollbarClickDeltaToGrabCenter:    float; // When scrolling to mouse location: distance between mouse and center of grab box, normalized in parent space.
    SliderGrabClickOffset:              float;
    SliderCurrentAccum:                 float; // Accumulated slider delta when using navigation controls.
    SliderCurrentAccumDirty:            bool; // Has the accumulated slider delta changed since last time we tried to apply it?
    DragCurrentAccumDirty:              bool;
    DragCurrentAccum:                   float; // Accumulator for dragging modification. Always high-precision, not rounded by end-user precision settings
    DragSpeedDefaultRatio:              float; // If speed == 0.0f, uses (max-min) * DragSpeedDefaultRatio
    DisabledAlphaBackup:                float; // Backup for style.Alpha for BeginDisabled()
    DisabledStackSize:                  s16;
    TooltipOverrideCount:               s16;
    TooltipPreviousWindow:              *Window; // Window of last tooltip submitted during the frame
    ClipboardHandlerData:               ImVector(u8); // If no custom clipboard handler is defined
    MenusIdSubmittedThisFrame:          ImVector(ID); // A list of menu IDs that were rendered at least once
    TypingSelectState_:                 TypingSelectState; // State for GetTypingSelectRequest()

    PlatformImeData_:                   PlatformImeData; // Data updated by current frame. Will be applied at end of the frame. For some backends, this is required to have WantVisible=true in order to receive text message.
    PlatformImeDataPrev:                PlatformImeData; // Previous frame data. When changed we call the platform_io.Platform_SetImeDataFn() handler.

    UserTextures:                       ImVector(*ImTextureData); // List of textures created/managed by user or third-party extension. Automatically appended into platform_io.Textures[].
    DockContext_:                       DockContext;
    DockNodeWindowMenuHandler:          #type (ctx: *ImGuiContext, node: *DockNode, tab_bar: *TabBar) -> void #c_call;

    // Settings
    SettingsLoaded:                     bool;
    SettingsDirtyTimer:                 float; // Save .ini Settings to memory when time reaches zero
    SettingsIniData:                    TextBuffer; // In memory .ini settings
    SettingsHandlers:                   ImVector(SettingsHandler); // List of .ini settings handlers
    SettingsWindows:                    ImChunkStream(WindowSettings); // ImGuiWindow .ini settings entries
    SettingsTables:                     ImChunkStream(TableSettings); // ImGuiTable .ini settings entries

    Hooks:                              ImVector(ContextHook); // Hooks for extensions (e.g. test engine)
    HookIdNext:                         ID; // Next available HookId
    DemoMarkerCallback_:                DemoMarkerCallback;

    // Localization
    LocalizationTable:                  [13] *u8;

    LogEnabled:                         bool; // Currently capturing
    LogLineFirstItem:                   bool;
    LogFlags_:                          LogFlags; // Capture flags/type
    LogWindow:                          *Window;
    LogFile:                            ImFileHandle; // If != NULL log to stdout/ file
    LogBuffer:                          TextBuffer; // Accumulation buffer when log to clipboard. This is pointer so our GImGui static constructor doesn't call heap allocators.
    LogNextPrefix:                      *u8; // See comment in LogSetNextTextDecoration(): doesn't copy underlying data, use carefully!
    LogNextSuffix:                      *u8;
    LogLinePosY:                        float;
    LogDepthRef:                        s32;
    LogDepthToExpand:                   s32;
    LogDepthToExpandDefault:            s32; // Default/stored value for LogDepthMaxExpand if not specified in the LogXXX function call.

    ErrorCallback_:                     ErrorCallback; // = NULL. May be exposed in public API eventually.
    ErrorCallbackUserData:              *void; // = NULL
    ErrorTooltipLockedPos:              ImVec2;
    ErrorFirst:                         bool;
    ErrorCountCurrentFrame:             s32; // [Internal] Number of errors submitted this frame.
    StackSizesInNewFrame:               ErrorRecoveryState; // [Internal]
    StackSizesInBeginForCurrentWindow:  *ErrorRecoveryState; // [Internal]

    DebugDrawIdConflictsCount:          s32; // Locked count (preserved when holding Ctrl)
    DebugLogFlags_:                     DebugLogFlags;
    DebugLogBuf:                        TextBuffer;
    DebugLogIndex:                      TextIndex;
    DebugLogSkippedErrors:              s32;
    DebugLogAutoDisableFlags:           DebugLogFlags;
    DebugLogAutoDisableFrames:          ImU8;
    DebugLocateFrames:                  ImU8; // For DebugLocateItemOnHover(). This is used together with DebugLocateId which is in a hot/cached spot above.
    DebugBreakInLocateId:               bool; // Debug break in ItemAdd() call for g.DebugLocateId.
    DebugBreakKeyChord:                 KeyChord; // = ImGuiKey_Pause
    DebugBeginReturnValueCullDepth:     ImS8; // Cycle between 0..9 then wrap around.
    DebugItemPickerActive:              bool; // Item picker is active (started with DebugStartItemPicker())
    DebugItemPickerMouseButton:         ImU8;
    DebugItemPickerBreakId:             ID; // Will call IM_DEBUG_BREAK() when encountering this ID
    DebugFlashStyleColorTime:           float;
    DebugFlashStyleColorBackup:         ImVec4;
    DebugMetricsConfig:                 MetricsConfig;
    DebugItemPathQuery_:                DebugItemPathQuery;
    DebugIDStackTool:                   IDStackTool;
    DebugAllocInfo_:                    DebugAllocInfo;
    DebugHoveredDockNode:               *DockNode; // Hovered dock node.

    FramerateSecPerFrame:               [60] float; // Calculate estimate of framerate for user over the last 60 frames..
    FramerateSecPerFrameIdx:            s32;
    FramerateSecPerFrameCount:          s32;
    FramerateSecPerFrameAccum:          float;
    WantCaptureMouseNextFrame:          s32; // Explicit capture override via SetNextFrameWantCaptureMouse()/SetNextFrameWantCaptureKeyboard(). Default to -1.
    WantCaptureKeyboardNextFrame:       s32; // "
    WantTextInputNextFrame:             s32; // Copied in EndFrame() from g.PlatformImeData.WantTextInput. Needs to be set for some backends (SDL3) to emit character inputs.
    TempBuffer:                         ImVector(u8); // Temporary text buffer
    TempKeychordName:                   [64] u8;

    Constructor :: (this: *ImGuiContext, shared_font_atlas: *ImFontAtlas) -> void #cpp_method #foreign imgui "??0ImGuiContext@@QEAA@PEAUImFontAtlas@@@Z";
    Destructor :: (this: *ImGuiContext) -> void #cpp_method #foreign imgui "??1ImGuiContext@@QEAA@XZ";
}

// Transient per-window data, reset at the beginning of the frame. This used to be called ImGuiDrawContext, hence the DC variable name in ImGuiWindow.
// (That's theory, in practice the delimitation between ImGuiWindow and ImGuiWindowTempData is quite tenuous and could be reconsidered..)
// (This doesn't need a constructor because we zero-clear it as part of ImGuiWindow and all frame-temporary data are setup on Begin)
WindowTempData :: struct {
    CursorPos:                     ImVec2; // Current emitting position, in absolute coordinates.
    CursorPosPrevLine:             ImVec2;
    CursorStartPos:                ImVec2; // Initial position after Begin(), generally ~ window position + WindowPadding.
    CursorMaxPos:                  ImVec2; // Used to implicitly calculate ContentSize at the beginning of next frame, for scrolling range and auto-resize. Always growing during the frame.
    IdealMaxPos:                   ImVec2; // Used to implicitly calculate ContentSizeIdeal at the beginning of next frame, for auto-resize only. Always growing during the frame.
    CurrLineSize:                  ImVec2;
    PrevLineSize:                  ImVec2;
    CurrLineTextBaseOffset:        float; // Baseline offset (0.0f by default on a new line, generally == style.FramePadding.y when a framed item has been added).
    PrevLineTextBaseOffset:        float;
    IsSameLine:                    bool;
    IsSetPos:                      bool;
    Indent:                        ImVec1; // Indentation / start position from left of window (increased by TreePush/TreePop, etc.)
    ColumnsOffset:                 ImVec1; // Offset to the current column (if ColumnsCurrent > 0). FIXME: This and the above should be a stack to allow use cases like Tree->Column->Tree. Need revamp columns API.
    GroupOffset:                   ImVec1;
    CursorStartPosLossyness:       ImVec2; // Record the loss of precision of CursorStartPos due to really large scrolling amount. This is used by clipper to compensate and fix the most common use case of large scroll area.

    NavLayerCurrent:               NavLayer; // Current layer, 0..31 (we currently only use 0..1)
    NavLayersActiveMask:           s16; // Which layers have been written to (result from previous frame)
    NavLayersActiveMaskNext:       s16; // Which layers have been written to (accumulator for current frame)
    NavIsScrollPushableX:          bool; // Set when current work location may be scrolled horizontally when moving left / right. This is generally always true UNLESS within a column.
    NavHideHighlightOneFrame:      bool;
    NavWindowHasScrollY:           bool; // Set per window when scrolling can be used (== ScrollMax.y > 0.0f)

    MenuBarAppending:              bool; // FIXME: Remove this
    MenuBarOffset:                 ImVec2; // MenuBarOffset.x is sort of equivalent of a per-layer CursorPos.x, saved/restored as we switch to the menu bar. The only situation when MenuBarOffset.y is > 0 if when (SafeAreaPadding.y > FramePadding.y), often used on TVs.
    MenuColumns_:                  MenuColumns; // Simplified columns storage for menu items measurement
    TreeDepth:                     s32; // Current tree depth.
    TreeHasStackDataDepthMask:     ImU32; // Store whether given depth has ImGuiTreeNodeStackData data. Could be turned into a ImU64 if necessary.
    TreeRecordsClippedNodesY2Mask: ImU32; // Store whether we should keep recording Y2. Cleared when passing clip max. Equivalent TreeHasStackDataDepthMask value should always be set.
    ChildWindows:                  ImVector(*Window);
    StateStorage:                  *Storage; // Current persistent per-window storage (store e.g. tree node open/close state)
    CurrentColumns:                *OldColumns; // Current columns set
    CurrentTableIdx:               s32; // Current table index (into g.Tables)
    LayoutType_:                   LayoutType;
    ParentLayoutType:              LayoutType; // Layout type of parent window at the time of Begin()
    ModalDimBgColor:               ImU32;

    // Status flags
    WindowItemStatusFlags:         ItemStatusFlags;
    ChildItemStatusFlags:          ItemStatusFlags;
    DockTabItemStatusFlags:        ItemStatusFlags;
    DockTabItemRect:               ImRect;

    ItemWidth:                     float; // Current item width (>0.0: width in pixels, <0.0: align xx pixels to the right of window).
    ItemWidthDefault:              float;
    TextWrapPos:                   float; // Current text wrap pos.
    ItemWidthStack:                ImVector(float); // Store item widths to restore (attention: .back() is not == ItemWidth)
    TextWrapPosStack:              ImVector(float); // Store text wrap pos to restore (attention: .back() is not == TextWrapPos)
}

// Storage for one window
Window :: struct {
    Ctx:                                *ImGuiContext; // Parent UI context (needs to be set explicitly by parent).
    Name:                               *u8; // Window name, owned by the window.
    ID_:                                ID; // == ImHashStr(Name)
    Flags:                              WindowFlags; // See enum ImGuiWindowFlags_
    FlagsPreviousFrame:                 WindowFlags; // See enum ImGuiWindowFlags_
    ChildFlags_:                        ChildFlags; // Set when window is a child window. See enum ImGuiChildFlags_
    WindowClass_:                       WindowClass; // Advanced users only. Set with SetNextWindowClass()
    Viewport:                           *ViewportP; // Always set in Begin(). Inactive windows may have a NULL value here if their viewport was discarded.
    ViewportId:                         ID; // We backup the viewport id (since the viewport may disappear or never be created if the window is inactive)
    ViewportPos:                        ImVec2; // We backup the viewport position (since the viewport may disappear or never be created if the window is inactive)
    ViewportAllowPlatformMonitorExtend: s32; // Reset to -1 every frame (index is guaranteed to be valid between NewFrame..EndFrame), only used in the Appearing frame of a tooltip/popup to enforce clamping to a given monitor
    Pos:                                ImVec2; // Position (always rounded-up to nearest pixel)
    Size:                               ImVec2; // Current size (==SizeFull or collapsed title bar size)
    SizeFull:                           ImVec2; // Size when non collapsed
    ContentSize:                        ImVec2; // Size of contents/scrollable client area (calculated from the extents reach of the cursor) from previous frame. Does not include window decoration or window padding.
    ContentSizeIdeal:                   ImVec2;
    ContentSizeExplicit:                ImVec2; // Size of contents/scrollable client area explicitly request by the user via SetNextWindowContentSize().
    WindowPadding:                      ImVec2; // Window padding at the time of Begin().
    WindowRounding:                     float; // Window rounding at the time of Begin(). May be clamped lower to avoid rendering artifacts with title bar, menu bar etc.
    WindowBorderSize:                   float; // Window border size at the time of Begin().
    TitleBarHeight:                     float; // Note that those used to be function before 2024/05/28. If you have old code calling TitleBarHeight() you can change it to TitleBarHeight.
    MenuBarHeight:                      float; // Note that those used to be function before 2024/05/28. If you have old code calling TitleBarHeight() you can change it to TitleBarHeight.
    DecoOuterSizeX1:                    float; // Left/Up offsets. Sum of non-scrolling outer decorations (X1 generally == 0.0f. Y1 generally = TitleBarHeight + MenuBarHeight). Locked during Begin().
    DecoOuterSizeY1:                    float; // Left/Up offsets. Sum of non-scrolling outer decorations (X1 generally == 0.0f. Y1 generally = TitleBarHeight + MenuBarHeight). Locked during Begin().
    DecoOuterSizeX2:                    float; // Right/Down offsets (X2 generally == ScrollbarSize.x, Y2 == ScrollbarSizes.y).
    DecoOuterSizeY2:                    float; // Right/Down offsets (X2 generally == ScrollbarSize.x, Y2 == ScrollbarSizes.y).
    DecoInnerSizeX1:                    float; // Applied AFTER/OVER InnerRect. Specialized for Tables as they use specialized form of clipping and frozen rows/columns are inside InnerRect (and not part of regular decoration sizes).
    DecoInnerSizeY1:                    float; // Applied AFTER/OVER InnerRect. Specialized for Tables as they use specialized form of clipping and frozen rows/columns are inside InnerRect (and not part of regular decoration sizes).
    NameBufLen:                         s32; // Size of buffer storing Name. May be larger than strlen(Name)!
    MoveId:                             ID; // == window->GetID("#MOVE")
    TabId:                              ID; // == window->GetID("#TAB")
    ChildId:                            ID; // ID of corresponding item in parent window (for navigation to return from child window to parent window)
    PopupId:                            ID; // ID in the popup stack when this window is used as a popup/menu (because we use generic Name/ID for recycling)
    Scroll:                             ImVec2;
    ScrollMax:                          ImVec2;
    ScrollTarget:                       ImVec2; // target scroll position. stored as cursor position with scrolling canceled out, so the highest point is always 0.0f. (FLT_MAX for no change)
    ScrollTargetCenterRatio:            ImVec2; // 0.0f = scroll so that target position is at top, 0.5f = scroll so that target position is centered
    ScrollTargetEdgeSnapDist:           ImVec2; // 0.0f = no snapping, >0.0f snapping threshold
    ScrollbarSizes:                     ImVec2; // Size taken by each scrollbars on their smaller axis. Pay attention! ScrollbarSizes.x == width of the vertical scrollbar, ScrollbarSizes.y = height of the horizontal scrollbar.
    ScrollbarX:                         bool; // Are scrollbars visible?
    ScrollbarY:                         bool; // Are scrollbars visible?
    ScrollbarXStabilizeEnabled:         bool; // Was ScrollbarX previously auto-stabilized?
    ScrollbarXStabilizeToggledHistory:  ImU8; // Used to stabilize scrollbar visibility in case of feedback loops
    ViewportOwned:                      bool;
    Active:                             bool; // Set to true on Begin(), unless Collapsed
    WasActive:                          bool;
    WriteAccessed:                      bool; // Set to true when any widget access the current window
    Collapsed:                          bool; // Set when collapsing window to become only title-bar
    WantCollapseToggle:                 bool;
    SkipItems:                          bool; // Set when items can safely be all clipped (e.g. window not visible or collapsed)
    SkipRefresh:                        bool; // [EXPERIMENTAL] Reuse previous frame drawn contents, Begin() returns false.
    Appearing:                          bool; // Set during the frame where the window is appearing (or re-appearing)
    Hidden:                             bool; // Do not display (== HiddenFrames*** > 0)
    IsFallbackWindow:                   bool; // Set on the "Debug##Default" window.
    IsExplicitChild:                    bool; // Set when passed _ChildWindow, left to false by BeginDocked()
    HasCloseButton:                     bool; // Set when the window has a close button (p_open != NULL)
    ResizeBorderHovered:                s8; // Current border being hovered for resize (-1: none, otherwise 0-3)
    ResizeBorderHeld:                   s8; // Current border being held for resize (-1: none, otherwise 0-3)
    BeginCount:                         s16; // Number of Begin() during the current frame (generally 0 or 1, 1+ if appending via multiple Begin/End pairs)
    BeginCountPreviousFrame:            s16; // Number of Begin() during the previous frame
    BeginOrderWithinParent:             s16; // Begin() order within immediate parent window, if we are a child window. Otherwise 0.
    BeginOrderWithinContext:            s16; // Begin() order within entire imgui context. This is mostly used for debugging submission order related issues.
    FocusOrder:                         s16; // Order within WindowsFocusOrder[], altered when windows are focused.
    AutoPosLastDirection:               Dir;
    AutoFitFramesX:                     ImS8;
    AutoFitFramesY:                     ImS8;
    AutoFitOnlyGrows:                   bool;
    HiddenFramesCanSkipItems:           ImS8; // Hide the window for N frames
    HiddenFramesCannotSkipItems:        ImS8; // Hide the window for N frames while allowing items to be submitted so we can measure their size
    HiddenFramesForRenderOnly:          ImS8; // Hide the window until frame N at Render() time only
    DisableInputsFrames:                ImS8; // Disable window interactions for N frames
    __bitfield:                         [5] u8 #align 2;
    /* 
        BgClickFlags: WindowBgClickFlags; /* 8 bits */ // Configure behavior of click+dragging on window bg/void or over items. Default sets by io.ConfigWindowsMoveFromTitleBarOnly. If you use this please report in #3379.
        SetWindowPosAllowFlags: Cond; /* 8 bits */ // store acceptable condition flags for SetNextWindowPos() use.
        SetWindowSizeAllowFlags: Cond; /* 8 bits */ // store acceptable condition flags for SetNextWindowSize() use.
        SetWindowCollapsedAllowFlags: Cond; /* 8 bits */ // store acceptable condition flags for SetNextWindowCollapsed() use.
        SetWindowDockAllowFlags: Cond; /* 8 bits */ // store acceptable condition flags for SetNextWindowDock() use.;
    */

    SetWindowPosVal:                    ImVec2; // store window position when using a non-zero Pivot (position set needs to be processed when we know the window size)
    SetWindowPosPivot:                  ImVec2; // store window pivot for positioning. ImVec2(0, 0) when positioning from top-left corner; ImVec2(0.5f, 0.5f) for centering; ImVec2(1, 1) for bottom right.

    IDStack:                            ImVector(ID); // ID stack. ID are hashes seeded with the value at the top of the stack. (In theory this should be in the TempData structure)
    DC:                                 WindowTempData; // Temporary per-window data, reset at the beginning of the frame. This used to be called ImGuiDrawContext, hence the "DC" variable name.

    OuterRectClipped:                   ImRect; // == Window->Rect() just after setup in Begin(). == window->Rect() for root window.
    InnerRect:                          ImRect; // Inner rectangle (omit title bar, menu bar, scroll bar)
    InnerClipRect:                      ImRect; // == InnerRect shrunk by WindowPadding*0.5f on each side, clipped within viewport or parent clip rect.
    WorkRect:                           ImRect; // Initially covers the whole scrolling region. Reduced by containers e.g columns/tables when active. Shrunk by WindowPadding*1.0f on each side. This is meant to replace ContentRegionRect over time (from 1.71+ onward).
    ParentWorkRect:                     ImRect; // Backup of WorkRect before entering a container such as columns/tables. Used by e.g. SpanAllColumns functions to easily access. Stacked containers are responsible for maintaining this. // FIXME-WORKRECT: Could be a stack?
    ClipRect:                           ImRect; // Current clipping/scissoring rectangle, evolve as we are using PushClipRect(), etc. == DrawList->clip_rect_stack.back().
    ContentRegionRect:                  ImRect; // FIXME: This is currently confusing/misleading. It is essentially WorkRect but not handling of scrolling. We currently rely on it as right/bottom aligned sizing operation need some size to rely on.
    HitTestHoleSize:                    ImVec2ih; // Define an optional rectangular hole where mouse will pass-through the window.
    HitTestHoleOffset:                  ImVec2ih;

    LastFrameActive:                    s32; // Last frame number the window was Active.
    LastFrameJustFocused:               s32; // Last frame number the window was made Focused.
    LastTimeActive:                     float; // Last timestamp the window was Active (using float as we don't need high precision there)
    StateStorage:                       Storage;
    ColumnsStorage:                     ImVector(OldColumns);
    FontWindowScale:                    float; // User scale multiplier per-window, via SetWindowFontScale()
    FontWindowScaleParents:             float;
    FontRefSize:                        float; // This is a copy of window->CalcFontSize() at the time of Begin(), trying to phase out CalcFontSize() especially as it may be called on non-current window.
    SettingsOffset:                     s32; // Offset into SettingsWindows[] (offsets are always valid as we only grow the array from the back)

    DrawList:                           *ImDrawList; // == &DrawListInst (for backward compatibility reason with code using imgui_internal.h we keep this a pointer)
    DrawListInst:                       ImDrawList;
    ParentWindow:                       *Window; // If we are a child _or_ popup _or_ docked window, this is pointing to our parent. Otherwise NULL.
    ParentWindowInBeginStack:           *Window;
    RootWindow:                         *Window; // Point to ourself or first ancestor that is not a child window. Doesn't cross through popups/dock nodes.
    RootWindowPopupTree:                *Window; // Point to ourself or first ancestor that is not a child window. Cross through popups parent<>child.
    RootWindowDockTree:                 *Window; // Point to ourself or first ancestor that is not a child window. Cross through dock nodes.
    RootWindowForTitleBarHighlight:     *Window; // Point to ourself or first ancestor which will display TitleBgActive color when this window is active.
    RootWindowForNav:                   *Window; // Point to ourself or first ancestor which doesn't have the NavFlattened flag.
    ParentWindowForFocusRoute:          *Window; // Set to manual link a window to its logical parent so that Shortcut() chain are honored (e.g. Tool linked to Document)

    NavLastChildNavWindow:              *Window; // When going to the menu bar, we remember the child window we came from. (This could probably be made implicit if we kept g.Windows sorted by last focused including child window.)
    NavLastIds:                         [2] ID; // Last known NavId for this window, per layer (0/1)
    NavRectRel:                         [2] ImRect; // Reference rectangle, in window relative space
    NavPreferredScoringPosRel:          [2] ImVec2; // Preferred X/Y position updated when moving on a given axis, reset to FLT_MAX.
    NavRootFocusScopeId:                ID; // Focus Scope ID at the time of Begin()

    MemoryDrawListIdxCapacity:          s32; // Backup of last idx/vtx count, so when waking up the window we can preallocate and avoid iterative alloc/copy
    MemoryDrawListVtxCapacity:          s32;
    MemoryCompacted:                    bool; // Set when window extraneous data have been garbage collected

    DockIsActive:                       bool; /* 1 bits */ // When docking artifacts are actually visible. When this is set, DockNode is guaranteed to be != NULL. ~~ (DockNode != NULL) && (DockNode->Windows.Size > 1).
    DockNodeIsVisible:                  bool #align 1; /* 1 bits */
    DockTabIsVisible:                   bool #align 1; /* 1 bits */ // Is our window visible this frame? ~~ is the corresponding tab selected?
    DockTabWantClose:                   bool #align 1; /* 1 bits */
    DockOrder:                          s16; // Order of the last time the window was visible within its DockNode. This is used to reorder windows that are reappearing on the same frame. Same value between windows that were active and windows that were none are possible.
    DockStyle:                          WindowDockStyle;
    DockNode_:                          *DockNode; // Which node are we docked into. Important: Prefer testing DockIsActive in many cases as this will still be set when the dock node is hidden.
    DockNodeAsHost:                     *DockNode; // Which node are we owning (for parent windows)
    DockId:                             ID; // Backup of last valid DockNode->ID, so single window remember their dock node id even when they are not bound any more

    Constructor :: (this: *Window, _context: *ImGuiContext, name: *u8) -> void #cpp_method #foreign imgui "??0ImGuiWindow@@QEAA@PEAUImGuiContext@@PEBD@Z";
    Destructor :: (this: *Window) -> void #cpp_method #foreign imgui "??1ImGuiWindow@@QEAA@XZ";

    GetID :: (this: *Window, str: *u8, str_end: *u8 = null) -> ID #cpp_method #foreign imgui "?GetID@ImGuiWindow@@QEAAIPEBD0@Z";
    GetID :: (this: *Window, str: string) -> ID #no_context {
        return GetID(this, str.data, str.data + str.count);
    }
    GetID :: (this: *Window, ptr: *void) -> ID #cpp_method #foreign imgui "?GetID@ImGuiWindow@@QEAAIPEBX@Z";
    GetID :: (this: *Window, n: s32) -> ID #cpp_method #foreign imgui "?GetID@ImGuiWindow@@QEAAIH@Z";
    GetIDFromPos :: (this: *Window, p_abs: *ImVec2) -> ID #cpp_method #foreign imgui "?GetIDFromPos@ImGuiWindow@@QEAAIAEBUImVec2@@@Z";
    GetIDFromPos :: (this: *Window, p_abs: ImVec2) -> ID #no_context {
        return GetIDFromPos(this, *p_abs);
    }
    GetIDFromRectangle :: (this: *Window, r_abs: *ImRect) -> ID #cpp_method #foreign imgui "?GetIDFromRectangle@ImGuiWindow@@QEAAIAEBUImRect@@@Z";
    GetIDFromRectangle :: (this: *Window, r_abs: ImRect) -> ID #no_context {
        return GetIDFromRectangle(this, *r_abs);
    }

    _:                                  [0] u64; // Force Window alignment to match the C/C++ equivalent
}

set_BgClickFlags :: (fields: *Window, value: WindowBgClickFlags) {
    MASK0: u8 : 0b1111_1111;
    fields.__bitfield[0] = (fields.__bitfield[0] & ~MASK0) | ((cast,no_check(u8) value) & MASK0);
}
get_BgClickFlags :: (fields: Window) -> WindowBgClickFlags {
    return (cast,no_check(WindowBgClickFlags) (fields.__bitfield[0] & 0b1111_1111));
}

set_SetWindowPosAllowFlags :: (fields: *Window, value: Cond) {
    MASK0: u8 : 0b1111_1111;
    fields.__bitfield[1] = (fields.__bitfield[1] & ~MASK0) | ((cast,no_check(u8) value) & MASK0);
}
get_SetWindowPosAllowFlags :: (fields: Window) -> Cond {
    return (cast,no_check(Cond) (fields.__bitfield[1] & 0b1111_1111));
}

set_SetWindowSizeAllowFlags :: (fields: *Window, value: Cond) {
    MASK0: u8 : 0b1111_1111;
    fields.__bitfield[2] = (fields.__bitfield[2] & ~MASK0) | ((cast,no_check(u8) value) & MASK0);
}
get_SetWindowSizeAllowFlags :: (fields: Window) -> Cond {
    return (cast,no_check(Cond) (fields.__bitfield[2] & 0b1111_1111));
}

set_SetWindowCollapsedAllowFlags :: (fields: *Window, value: Cond) {
    MASK0: u8 : 0b1111_1111;
    fields.__bitfield[3] = (fields.__bitfield[3] & ~MASK0) | ((cast,no_check(u8) value) & MASK0);
}
get_SetWindowCollapsedAllowFlags :: (fields: Window) -> Cond {
    return (cast,no_check(Cond) (fields.__bitfield[3] & 0b1111_1111));
}

set_SetWindowDockAllowFlags :: (fields: *Window, value: Cond) {
    MASK0: u8 : 0b1111_1111;
    fields.__bitfield[4] = (fields.__bitfield[4] & ~MASK0) | ((cast,no_check(u8) value) & MASK0);
}
get_SetWindowDockAllowFlags :: (fields: Window) -> Cond {
    return (cast,no_check(Cond) (fields.__bitfield[4] & 0b1111_1111));
}


// Extend ImGuiTabBarFlags_
TabBarFlagsPrivate_ :: enum s32 {
    TabBarFlags_DockNode     :: 1048576;
    TabBarFlags_IsFocused    :: 2097152;
    TabBarFlags_SaveSettings :: 4194304;

    ImGuiTabBarFlags_DockNode     :: TabBarFlags_DockNode;
    ImGuiTabBarFlags_IsFocused    :: TabBarFlags_IsFocused;
    ImGuiTabBarFlags_SaveSettings :: TabBarFlags_SaveSettings;
}

// Extend ImGuiTabItemFlags_
TabItemFlagsPrivate_ :: enum s32 {
    TabItemFlags_SectionMask_  :: 192;
    TabItemFlags_NoCloseButton :: 1048576;
    TabItemFlags_Button        :: 2097152;
    TabItemFlags_Invisible     :: 4194304;
    TabItemFlags_Unsorted      :: 8388608;

    ImGuiTabItemFlags_SectionMask_  :: TabItemFlags_SectionMask_;
    ImGuiTabItemFlags_NoCloseButton :: TabItemFlags_NoCloseButton;
    ImGuiTabItemFlags_Button        :: TabItemFlags_Button;
    ImGuiTabItemFlags_Invisible     :: TabItemFlags_Invisible;
    ImGuiTabItemFlags_Unsorted      :: TabItemFlags_Unsorted;
}

// Storage for one active tab item (sizeof() 48 bytes)
TabItem :: struct {
    ID_:               ID;
    Flags:             TabItemFlags;
    Window_:           *Window; // When TabItem is part of a DockNode's TabBar, we hold on to a window.
    LastFrameVisible:  s32;
    LastFrameSelected: s32; // This allows us to infer an ordered list of the last activated tabs with little maintenance
    Offset:            float; // Position relative to beginning of tab bar
    Width:             float; // Width currently displayed
    ContentWidth:      float; // Width of label + padding, stored during BeginTabItem() call (misnamed as "Content" would normally imply width of label only)
    RequestedWidth:    float; // Width optionally requested by caller, -1.0f is unused
    NameOffset:        ImS32; // When Window==NULL, offset to name within parent ImGuiTabBar::TabsNames
    BeginOrder:        ImS16; // BeginTabItem() order, used to re-order tabs after toggling ImGuiTabBarFlags_Reorderable
    IndexDuringLayout: ImS16; // Index only used during TabBarLayout(). Tabs gets reordered so 'Tabs[n].IndexDuringLayout == n' but may mismatch during additions.
    WantClose:         bool; // Marked as closed by SetTabItemClosed()
}

// Storage for a tab bar (sizeof() 160 bytes)
TabBar :: struct {
    Window_:                         *Window;
    Tabs:                            ImVector(TabItem);
    Flags:                           TabBarFlags;
    ID_:                             ID; // Zero for tab-bars used by docking
    SelectedTabId:                   ID; // Selected tab/window
    NextSelectedTabId:               ID; // Next selected tab/window. Will also trigger a scrolling animation
    NextScrollToTabId:               ID;
    VisibleTabId:                    ID; // Can occasionally be != SelectedTabId (e.g. when previewing contents for Ctrl+Tab preview)
    CurrFrameVisible:                s32;
    PrevFrameVisible:                s32;
    BarRect:                         ImRect;
    BarRectPrevWidth:                float; // Backup of previous width. When width change we enforce keep horizontal scroll on focused tab.
    CurrTabsContentsHeight:          float;
    PrevTabsContentsHeight:          float; // Record the height of contents submitted below the tab bar
    WidthAllTabs:                    float; // Actual width of all tabs (locked during layout)
    WidthAllTabsIdeal:               float; // Ideal width if all tabs were visible and not clipped
    ScrollingAnim:                   float;
    ScrollingTarget:                 float;
    ScrollingTargetDistToVisibility: float;
    ScrollingSpeed:                  float;
    ScrollingRectMinX:               float;
    ScrollingRectMaxX:               float;
    SeparatorMinX:                   float;
    SeparatorMaxX:                   float;
    ReorderRequestTabId:             ID;
    ReorderRequestOffset:            ImS16;
    BeginCount:                      ImS8;
    WantLayout:                      bool;
    VisibleTabWasSubmitted:          bool;
    TabsAddedNew:                    bool; // Set to true when a new tab item or button has been added to the tab bar during last frame
    ScrollButtonEnabled:             bool;
    TabsActiveCount:                 ImS16; // Number of tabs submitted this frame.
    LastTabItemIdx:                  ImS16; // Index of last BeginTabItem() tab for use by EndTabItem()
    ItemSpacingY:                    float;
    FramePadding:                    ImVec2; // style.FramePadding locked at the time of BeginTabBar()
    BackupCursorPos:                 ImVec2;
    TabsNames:                       TextBuffer; // For non-docking tab bar we re-append names in a contiguous buffer.

    Constructor :: (this: *TabBar) -> void #cpp_method #foreign imgui "??0ImGuiTabBar@@QEAA@XZ";
}

// [Internal] sizeof() ~ 112
// We use the terminology "Enabled" to refer to a column that is not Hidden by user/api.
// We use the terminology "Clipped" to refer to a column that is out of sight because of scrolling/clipping.
// This is in contrast with some user-facing api such as IsItemVisible() / IsRectVisible() which use "Visible" to mean "not clipped".
TableColumn :: struct {
    Flags:                    TableColumnFlags; // Flags after some patching (not directly same as provided by user). See ImGuiTableColumnFlags_
    WidthGiven:               float; // Final/actual width visible == (MaxX - MinX), locked in TableUpdateLayout(). May be > WidthRequest to honor minimum width, may be < WidthRequest to honor shrinking columns down in tight space.
    MinX:                     float; // Absolute positions
    MaxX:                     float;
    WidthRequest:             float; // Master width absolute value when !(Flags & _WidthStretch). When Stretch this is derived every frame from StretchWeight in TableUpdateLayout()
    WidthAuto:                float; // Automatic width
    WidthMax:                 float; // Maximum width (FIXME: overwritten by each instance)
    StretchWeight:            float; // Master width weight when (Flags & _WidthStretch). Often around ~1.0f initially.
    InitStretchWeightOrWidth: float; // Value passed to TableSetupColumn(). For Width it is a content width (_without padding_).
    ClipRect:                 ImRect; // Clipping rectangle for the column
    UserID:                   ID; // Optional, value passed to TableSetupColumn()
    WorkMinX:                 float; // Contents region min ~(MinX + CellPaddingX + CellSpacingX1) == cursor start position when entering column
    WorkMaxX:                 float; // Contents region max ~(MaxX - CellPaddingX - CellSpacingX2)
    ItemWidth:                float; // Current item width for the column, preserved across rows
    ContentMaxXFrozen:        float; // Contents maximum position for frozen rows (apart from headers), from which we can infer content width.
    ContentMaxXUnfrozen:      float;
    ContentMaxXHeadersUsed:   float; // Contents maximum position for headers rows (regardless of freezing). TableHeader() automatically softclip itself + report ideal desired size, to avoid creating extraneous draw calls
    ContentMaxXHeadersIdeal:  float;
    NameOffset:               ImS16; // Offset into parent ColumnsNames[]
    DisplayOrder:             TableColumnIdx; // Index within Table's IndexToDisplayOrder[] (column may be reordered by users)
    IndexWithinEnabledSet:    TableColumnIdx; // Index within enabled/visible set (<= IndexToDisplayOrder)
    PrevEnabledColumn:        TableColumnIdx; // Index of prev enabled/visible column within Columns[], -1 if first enabled/visible column
    NextEnabledColumn:        TableColumnIdx; // Index of next enabled/visible column within Columns[], -1 if last enabled/visible column
    SortOrder:                TableColumnIdx; // Index of this column within sort specs, -1 if not sorting on this column, 0 for single-sort, may be >0 on multi-sort
    DrawChannelCurrent:       TableDrawChannelIdx; // Index within DrawSplitter.Channels[]
    DrawChannelFrozen:        TableDrawChannelIdx; // Draw channels for frozen rows (often headers)
    DrawChannelUnfrozen:      TableDrawChannelIdx; // Draw channels for unfrozen rows
    IsEnabled:                bool; // IsUserEnabled && (Flags & ImGuiTableColumnFlags_Disabled) == 0
    IsUserEnabled:            bool; // Is the column not marked Hidden by the user? (unrelated to being off view, e.g. clipped by scrolling).
    IsUserEnabledNextFrame:   bool;
    IsVisibleX:               bool; // Is actually in view (e.g. overlapping the host window clipping rectangle, not scrolled).
    IsVisibleY:               bool;
    IsRequestOutput:          bool; // Return value for TableSetColumnIndex() / TableNextColumn(): whether we request user to output contents or not.
    IsSkipItems:              bool; // Do we want item submissions to this column to be completely ignored (no layout will happen).
    IsPreserveWidthAuto:      bool;
    NavLayerCurrent:          ImS8; // ImGuiNavLayer in 1 byte
    AutoFitQueue:             ImU8; // Queue of 8 values for the next 8 frames to request auto-fit
    CannotSkipItemsQueue:     ImU8; // Queue of 8 values for the next 8 frames to disable Clipped/SkipItem
    __bitfield:               ImU8;
    /* 
        SortDirection: ImU8; /* 2 bits */ // ImGuiSortDirection_Ascending or ImGuiSortDirection_Descending
        SortDirectionsAvailCount: ImU8; /* 2 bits */ // Number of available sort directions (0 to 3)
        SortDirectionsAvailMask: ImU8; /* 4 bits */ // Mask of available sort directions (1-bit each);
    */

    SortDirectionsAvailList:  ImU8; // Ordered list of available sort directions (2-bits each, total 8-bits)
}

set_SortDirection :: (fields: *TableColumn, value: ImU8) {
    MASK0: ImU8 : 0b11;
    fields.__bitfield = (fields.__bitfield & ~MASK0) | (value & MASK0);
}
get_SortDirection :: (fields: TableColumn) -> ImU8 {
    return (fields.__bitfield & 0b11);
}

set_SortDirectionsAvailCount :: (fields: *TableColumn, value: ImU8) {
    MASK0: ImU8 : (0b11 << 2);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 2) & MASK0);
}
get_SortDirectionsAvailCount :: (fields: TableColumn) -> ImU8 {
    return ((fields.__bitfield & (0b11 << 2)) >> 2);
}

set_SortDirectionsAvailMask :: (fields: *TableColumn, value: ImU8) {
    MASK0: ImU8 : (0b1111 << 4);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 4) & MASK0);
}
get_SortDirectionsAvailMask :: (fields: TableColumn) -> ImU8 {
    return ((fields.__bitfield & (0b1111 << 4)) >> 4);
}


// Transient cell data stored per row.
// sizeof() ~ 6 bytes
TableCellData :: struct {
    BgColor: ImU32; // Actual color
    Column:  TableColumnIdx; // Column number
}

// Parameters for TableAngledHeadersRowEx()
// This may end up being refactored for more general purpose.
// sizeof() ~ 12 bytes
TableHeaderData :: struct {
    Index:     TableColumnIdx; // Column index
    TextColor: ImU32;
    BgColor0:  ImU32;
    BgColor1:  ImU32;
}

// Per-instance data that needs preserving across frames (seemingly most others do not need to be preserved aside from debug needs. Does that means they could be moved to ImGuiTableTempData?)
// sizeof() ~ 24 bytes
TableInstanceData :: struct {
    TableInstanceID:         ID;
    LastOuterHeight:         float; // Outer height from last frame
    LastTopHeadersRowHeight: float; // Height of first consecutive header rows from last frame (FIXME: this is used assuming consecutive headers are in same frozen set)
    LastFrozenHeight:        float; // Height of frozen section from last frame
    HoveredRowLast:          s32; // Index of row which was hovered last frame.
    HoveredRowNext:          s32; // Index of row hovered this frame, set after encountering it.
}

// sizeof() ~ 592 bytes + heap allocs described in TableBeginInitMemory()
Table :: struct {
    ID_:                        ID;
    Flags:                      TableFlags;
    RawData:                    *void; // Single allocation to hold Columns[], DisplayOrderToIndex[], and RowCellData[]
    TempData:                   *TableTempData; // Transient data while table is active. Point within g.CurrentTableStack[]
    Columns:                    ImSpan(TableColumn); // Point within RawData[]
    DisplayOrderToIndex:        ImSpan(TableColumnIdx); // Point within RawData[]. Store display order of columns (when not reordered, the values are 0...Count-1)
    RowCellData:                ImSpan(TableCellData); // Point within RawData[]. Store cells background requests for current row.
    EnabledMaskByDisplayOrder:  ImBitArrayPtr; // Column DisplayOrder -> IsEnabled map
    EnabledMaskByIndex:         ImBitArrayPtr; // Column Index -> IsEnabled map (== not hidden by user/api) in a format adequate for iterating column without touching cold data
    VisibleMaskByIndex:         ImBitArrayPtr; // Column Index -> IsVisibleX|IsVisibleY map (== not hidden by user/api && not hidden by scrolling/cliprect)
    SettingsLoadedFlags:        TableFlags; // Which data were loaded from the .ini file (e.g. when order is not altered we won't save order)
    SettingsOffset:             s32; // Offset in g.SettingsTables
    LastFrameActive:            s32;
    ColumnsCount:               s32; // Number of columns declared in BeginTable()
    CurrentRow:                 s32;
    CurrentColumn:              s32;
    InstanceCurrent:            ImS16; // Count of BeginTable() calls with same ID in the same frame (generally 0). This is a little bit similar to BeginCount for a window, but multiple tables with the same ID are multiple tables, they are just synced.
    InstanceInteracted:         ImS16; // Mark which instance (generally 0) of the same ID is being interacted with
    RowPosY1:                   float;
    RowPosY2:                   float;
    RowMinHeight:               float; // Height submitted to TableNextRow()
    RowCellPaddingY:            float; // Top and bottom padding. Reloaded during row change.
    RowTextBaseline:            float;
    RowIndentOffsetX:           float;
    __bitfield:                 TableRowFlags;
    /* 
        RowFlags: TableRowFlags; /* 16 bits */ // Current row flags, see ImGuiTableRowFlags_
        LastRowFlags: TableRowFlags; /* 16 bits */;
    */

    RowBgColorCounter:          s32; // Counter for alternating background colors (can be fast-forwarded by e.g clipper), not same as CurrentRow because header rows typically don't increase this.
    RowBgColor:                 [2] ImU32; // Background color override for current row.
    BorderColorStrong:          ImU32;
    BorderColorLight:           ImU32;
    BorderX1:                   float;
    BorderX2:                   float;
    HostIndentX:                float;
    MinColumnWidth:             float;
    OuterPaddingX:              float;
    CellPaddingX:               float; // Padding from each borders. Locked in BeginTable()/Layout.
    CellSpacingX1:              float; // Spacing between non-bordered cells. Locked in BeginTable()/Layout.
    CellSpacingX2:              float;
    InnerWidth:                 float; // User value passed to BeginTable(), see comments at the top of BeginTable() for details.
    ColumnsGivenWidth:          float; // Sum of current column width
    ColumnsAutoFitWidth:        float; // Sum of ideal column width in order nothing to be clipped, used for auto-fitting and content width submission in outer window
    ColumnsStretchSumWeights:   float; // Sum of weight of all enabled stretching columns
    ResizedColumnNextWidth:     float;
    ResizeLockMinContentsX2:    float; // Lock minimum contents width while resizing down in order to not create feedback loops. But we allow growing the table.
    RefScale:                   float; // Reference scale to be able to rescale columns on font/dpi changes.
    AngledHeadersHeight:        float; // Set by TableAngledHeadersRow(), used in TableUpdateLayout()
    AngledHeadersSlope:         float; // Set by TableAngledHeadersRow(), used in TableUpdateLayout()
    OuterRect:                  ImRect; // Note: for non-scrolling table, OuterRect.Max.y is often FLT_MAX until EndTable(), unless a height has been specified in BeginTable().
    InnerRect:                  ImRect; // InnerRect but without decoration. As with OuterRect, for non-scrolling tables, InnerRect.Max.y is "
    WorkRect:                   ImRect;
    InnerClipRect:              ImRect;
    BgClipRect:                 ImRect; // We use this to cpu-clip cell background color fill, evolve during the frame as we cross frozen rows boundaries
    Bg0ClipRectForDrawCmd:      ImRect; // Actual ImDrawCmd clip rect for BG0/1 channel. This tends to be == OuterWindow->ClipRect at BeginTable() because output in BG0/BG1 is cpu-clipped
    Bg2ClipRectForDrawCmd:      ImRect; // Actual ImDrawCmd clip rect for BG2 channel. This tends to be a correct, tight-fit, because output to BG2 are done by widgets relying on regular ClipRect.
    HostClipRect:               ImRect; // This is used to check if we can eventually merge our columns draw calls into the current draw call of the current window.
    HostBackupInnerClipRect:    ImRect; // Backup of InnerWindow->ClipRect during PushTableBackground()/PopTableBackground()
    OuterWindow:                *Window; // Parent window for the table
    InnerWindow:                *Window; // Window holding the table data (== OuterWindow or a child window)
    ColumnsNames:               TextBuffer; // Contiguous buffer holding columns names
    DrawSplitter:               *ImDrawListSplitter; // Shortcut to TempData->DrawSplitter while in table. Isolate draw commands per columns to avoid switching clip rect constantly
    InstanceDataFirst:          TableInstanceData;
    InstanceDataExtra:          ImVector(TableInstanceData); // FIXME-OPT: Using a small-vector pattern would be good.
    SortSpecsSingle:            TableColumnSortSpecs;
    SortSpecsMulti:             ImVector(TableColumnSortSpecs); // FIXME-OPT: Using a small-vector pattern would be good.
    SortSpecs:                  TableSortSpecs; // Public facing sorts specs, this is what we return in TableGetSortSpecs()
    SortSpecsCount:             TableColumnIdx;
    ColumnsEnabledCount:        TableColumnIdx; // Number of enabled columns (<= ColumnsCount)
    ColumnsEnabledFixedCount:   TableColumnIdx; // Number of enabled columns using fixed width (<= ColumnsCount)
    DeclColumnsCount:           TableColumnIdx; // Count calls to TableSetupColumn()
    AngledHeadersCount:         TableColumnIdx; // Count columns with angled headers
    HoveredColumnBody:          TableColumnIdx; // Index of column whose visible region is being hovered. Important: == ColumnsCount when hovering empty region after the right-most column!
    HoveredColumnBorder:        TableColumnIdx; // Index of column whose right-border is being hovered (for resizing).
    HighlightColumnHeader:      TableColumnIdx; // Index of column which should be highlighted.
    AutoFitSingleColumn:        TableColumnIdx; // Index of single column requesting auto-fit.
    ResizedColumn:              TableColumnIdx; // Index of column being resized. Reset when InstanceCurrent==0.
    LastResizedColumn:          TableColumnIdx; // Index of column being resized from previous frame.
    HeldHeaderColumn:           TableColumnIdx; // Index of column header being held.
    LastHeldHeaderColumn:       TableColumnIdx; // Index of column header being held from previous frame.
    ReorderColumn:              TableColumnIdx; // Index of column being reordered. (not cleared)
    ReorderColumnDstOrder:      TableColumnIdx; // Requested display order of column being reordered.
    LeftMostEnabledColumn:      TableColumnIdx; // Index of left-most non-hidden column.
    RightMostEnabledColumn:     TableColumnIdx; // Index of right-most non-hidden column.
    LeftMostStretchedColumn:    TableColumnIdx; // Index of left-most stretched column.
    RightMostStretchedColumn:   TableColumnIdx; // Index of right-most stretched column.
    ContextPopupColumn:         TableColumnIdx; // Column right-clicked on, of -1 if opening context menu from a neutral/empty spot
    FreezeRowsRequest:          TableColumnIdx; // Requested frozen rows count
    FreezeRowsCount:            TableColumnIdx; // Actual frozen row count (== FreezeRowsRequest, or == 0 when no scrolling offset)
    FreezeColumnsRequest:       TableColumnIdx; // Requested frozen columns count
    FreezeColumnsCount:         TableColumnIdx; // Actual frozen columns count (== FreezeColumnsRequest, or == 0 when no scrolling offset)
    RowCellDataCurrent:         TableColumnIdx; // Index of current RowCellData[] entry in current row
    DummyDrawChannel:           TableDrawChannelIdx; // Redirect non-visible columns here.
    Bg2DrawChannelCurrent:      TableDrawChannelIdx; // For Selectable() and other widgets drawing across columns after the freezing line. Index within DrawSplitter.Channels[]
    Bg2DrawChannelUnfrozen:     TableDrawChannelIdx;
    NavLayer:                   ImS8; // ImGuiNavLayer at the time of BeginTable().
    IsLayoutLocked:             bool; // Set by TableUpdateLayout() which is called when beginning the first row.
    IsInsideRow:                bool; // Set when inside TableBeginRow()/TableEndRow().
    IsInitializing:             bool;
    IsSortSpecsDirty:           bool;
    IsUsingHeaders:             bool; // Set when the first row had the ImGuiTableRowFlags_Headers flag.
    IsContextPopupOpen:         bool; // Set when default context menu is open (also see: ContextPopupColumn, InstanceInteracted).
    DisableDefaultContextMenu:  bool; // Disable default context menu. You may submit your own using TableBeginContextMenuPopup()/EndPopup()
    IsSettingsRequestLoad:      bool;
    IsSettingsDirty:            bool; // Set when table settings have changed and needs to be reported into ImGuiTableSettings data.
    IsDefaultDisplayOrder:      bool; // Set when display order is unchanged from default (DisplayOrder contains 0...Count-1)
    IsResetAllRequest:          bool;
    IsResetDisplayOrderRequest: bool;
    IsUnfrozenRows:             bool; // Set when we got past the frozen row.
    IsDefaultSizingPolicy:      bool; // Set if user didn't explicitly set a sizing policy in BeginTable()
    IsActiveIdAliveBeforeTable: bool;
    IsActiveIdInTable:          bool;
    HasScrollbarYCurr:          bool; // Whether ANY instance of this table had a vertical scrollbar during the current frame.
    HasScrollbarYPrev:          bool; // Whether ANY instance of this table had a vertical scrollbar during the previous.
    MemoryCompacted:            bool;
    HostSkipItems:              bool; // Backup of InnerWindow->SkipItem at the end of BeginTable(), because we will overwrite InnerWindow->SkipItem on a per-column basis
}

set_RowFlags :: (fields: *Table, value: TableRowFlags) {
    MASK0: TableRowFlags : 0b1111_1111_1111_1111;
    fields.__bitfield = (fields.__bitfield & ~MASK0) | (value & MASK0);
}
get_RowFlags :: (fields: Table) -> TableRowFlags {
    return (fields.__bitfield & 0b1111_1111_1111_1111);
}

set_LastRowFlags :: (fields: *Table, value: TableRowFlags) {
    MASK0: TableRowFlags : (0b1111_1111_1111_1111 << 16);
    fields.__bitfield = (fields.__bitfield & ~MASK0) | ((value << 16) & MASK0);
}
get_LastRowFlags :: (fields: Table) -> TableRowFlags {
    return ((fields.__bitfield & (0b1111_1111_1111_1111 << 16)) >> 16);
}


// Transient data that are only needed between BeginTable() and EndTable(), those buffers are shared (1 per level of stacked table).
// - Accessing those requires chasing an extra pointer so for very frequently used data we leave them in the main table structure.
// - We also leave out of this structure data that tend to be particularly useful for debugging/metrics.
// FIXME-TABLE: more transient data could be stored in a stacked ImGuiTableTempData: e.g. SortSpecs.
// sizeof() ~ 136 bytes.
TableTempData :: struct {
    WindowID:                     ID; // Shortcut to g.Tables[TableIndex]->OuterWindow->ID.
    TableIndex:                   s32; // Index in g.Tables.Buf[] pool
    LastTimeActive:               float; // Last timestamp this structure was used
    AngledHeadersExtraWidth:      float; // Used in EndTable()
    AngledHeadersRequests:        ImVector(TableHeaderData); // Used in TableAngledHeadersRow()

    UserOuterSize:                ImVec2; // outer_size.x passed to BeginTable()
    DrawSplitter:                 ImDrawListSplitter;

    HostBackupWorkRect:           ImRect; // Backup of InnerWindow->WorkRect at the end of BeginTable()
    HostBackupParentWorkRect:     ImRect; // Backup of InnerWindow->ParentWorkRect at the end of BeginTable()
    HostBackupPrevLineSize:       ImVec2; // Backup of InnerWindow->DC.PrevLineSize at the end of BeginTable()
    HostBackupCurrLineSize:       ImVec2; // Backup of InnerWindow->DC.CurrLineSize at the end of BeginTable()
    HostBackupCursorMaxPos:       ImVec2; // Backup of InnerWindow->DC.CursorMaxPos at the end of BeginTable()
    HostBackupColumnsOffset:      ImVec1; // Backup of OuterWindow->DC.ColumnsOffset at the end of BeginTable()
    HostBackupItemWidth:          float; // Backup of OuterWindow->DC.ItemWidth at the end of BeginTable()
    HostBackupItemWidthStackSize: s32; //Backup of OuterWindow->DC.ItemWidthStack.Size at the end of BeginTable()
}

// sizeof() ~ 16
TableColumnSettings :: struct {
    WidthOrWeight: float;
    UserID:        ID;
    Index:         TableColumnIdx;
    DisplayOrder:  TableColumnIdx;
    SortOrder:     TableColumnIdx;
    SortDirection: ImU8; /* 2 bits */
    IsEnabled:     ImS8 #align 1; /* 2 bits */ // "Visible" in ini file
    IsStretch:     ImU8 #align 1; /* 1 bits */
}

// This is designed to be stored in a single ImChunkStream (1 header followed by N ImGuiTableColumnSettings, etc.)
TableSettings :: struct {
    ID_:             ID; // Set to 0 to invalidate/delete the setting
    SaveFlags:       TableFlags; // Indicate data we want to save using the Resizable/Reorderable/Sortable/Hideable flags (could be using its own flags..)
    RefScale:        float; // Reference scale to be able to rescale columns on font/dpi changes.
    ColumnsCount:    TableColumnIdx;
    ColumnsCountMax: TableColumnIdx; // Maximum number of columns this settings instance can store, we can recycle a settings instance with lower number of columns but not higher
    WantApply:       bool; // Set when loaded from .ini data (to enable merging/loading .ini data into an already running context)
}

// Hooks and storage for a given font backend.
// This structure is likely to evolve as we add support for incremental atlas updates.
// Conceptually this could be public, but API is still going to be evolve.
ImFontLoader :: struct {
    Name:                       *u8;
    LoaderInit:                 #type (atlas: *ImFontAtlas) -> bool #c_call;
    LoaderShutdown:             #type (atlas: *ImFontAtlas) -> void #c_call;
    FontSrcInit:                #type (atlas: *ImFontAtlas, src: *ImFontConfig) -> bool #c_call;
    FontSrcDestroy:             #type (atlas: *ImFontAtlas, src: *ImFontConfig) -> void #c_call;
    FontSrcContainsGlyph:       #type (atlas: *ImFontAtlas, src: *ImFontConfig, codepoint: ImWchar) -> bool #c_call;
    FontBakedInit:              #type (atlas: *ImFontAtlas, src: *ImFontConfig, baked: *ImFontBaked, loader_data_for_baked_src: *void) -> bool #c_call;
    FontBakedDestroy:           #type (atlas: *ImFontAtlas, src: *ImFontConfig, baked: *ImFontBaked, loader_data_for_baked_src: *void) -> void #c_call;
    FontBakedLoadGlyph:         #type (atlas: *ImFontAtlas, src: *ImFontConfig, baked: *ImFontBaked, loader_data_for_baked_src: *void, codepoint: ImWchar, out_glyph: *ImFontGlyph, out_advance_x: *float) -> bool #c_call;

    // Size of backend data, Per Baked * Per Source. Buffers are managed by core to avoid excessive allocations.
    // FIXME: At this point the two other types of buffers may be managed by core to be consistent?
    FontBakedSrcLoaderDataSize: u64;
}

ImFontAtlasGetFontLoaderForStbTruetype :: () -> *ImFontLoader #foreign imgui "?ImFontAtlasGetFontLoaderForStbTruetype@@YAPEBUImFontLoader@@XZ";

ImFontBuilderIO :: ImFontLoader;

// Packed rectangle lookup entry (we need an indirection to allow removing/reordering rectangles)
// User are returned ImFontAtlasRectId values which are meant to be persistent.
// We handle this with an indirection. While Rects[] may be in theory shuffled, compacted etc., RectsIndex[] cannot it is keyed by ImFontAtlasRectId.
// RectsIndex[] is used both as an index into Rects[] and an index into itself. This is basically a free-list. See ImFontAtlasBuildAllocRectIndexEntry() code.
// Having this also makes it easier to e.g. sort rectangles during repack.
ImFontAtlasRectEntry :: struct {
    TargetIndex: s32; /* 20 bits */ // When Used: ImFontAtlasRectId -> into Rects[]. When unused: index to next unused RectsIndex[] slot to consume free-list.
    __bitfield:  u32 #align 2;
    /* 
        Generation: u32; /* 10 bits */ // Increased each time the entry is reused for a new rectangle.
        IsUsed: u32; /* 1 bits */;
    */
}

set_Generation :: (fields: *ImFontAtlasRectEntry, value: u32) {
    MASK0: u32 : 0b11_1111_1111;
    fields.__bitfield = (fields.__bitfield & ~MASK0) | (value & MASK0);
}
get_Generation :: (fields: ImFontAtlasRectEntry) -> u32 {
    return (fields.__bitfield & 0b11_1111_1111);
}

set_IsUsed :: (fields: *ImFontAtlasRectEntry, value: bool) {
    if value fields.__bitfield |= 1 << 10;
    else     fields.__bitfield &= ~cast(u32)(1 << 10);
}
get_IsUsed :: (fields: ImFontAtlasRectEntry) -> bool {
    return (fields.__bitfield & (1 << 10)) != 0;
}


// Data available to potential texture post-processing functions
ImFontAtlasPostProcessData :: struct {
    FontAtlas: *ImFontAtlas;
    Font:      *ImFont;
    FontSrc:   *ImFontConfig;
    FontBaked: *ImFontBaked;
    Glyph:     *ImFontGlyph;

    // Pixel data
    Pixels:    *void;
    Format:    ImTextureFormat;
    Pitch:     s32;
    Width:     s32;
    Height:    s32;
}

stbrp_node :: struct {}
stbrp_node_im :: stbrp_node;

stbrp_context_opaque :: struct {
    data: [80] u8;
}

// Internal storage for incrementally packing and building a ImFontAtlas
ImFontAtlasBuilder :: struct {
    PackContext:              stbrp_context_opaque; // Actually 'stbrp_context' but we don't want to define this in the header file.
    PackNodes:                ImVector(stbrp_node_im);
    Rects:                    ImVector(ImTextureRect);
    RectsIndex:               ImVector(ImFontAtlasRectEntry); // ImFontAtlasRectId -> index into Rects[]
    TempBuffer:               ImVector(u8); // Misc scratch buffer
    RectsIndexFreeListStart:  s32; // First unused entry
    RectsPackedCount:         s32; // Number of packed rectangles.
    RectsPackedSurface:       s32; // Number of packed pixels. Used when compacting to heuristically find the ideal texture size.
    RectsDiscardedCount:      s32;
    RectsDiscardedSurface:    s32;
    FrameCount:               s32; // Current frame count
    MaxRectSize:              ImVec2i; // Largest rectangle to pack (de-facto used as a "minimum texture size")
    MaxRectBounds:            ImVec2i; // Bottom-right most used pixels
    LockDisableResize:        bool; // Disable resizing texture
    PreloadedAllGlyphsRanges: bool; // Set when missing ImGuiBackendFlags_RendererHasTextures features forces atlas to preload everything.

    // Cache of all ImFontBaked
    BakedPool:                ImStableVector(ImFontBaked, 32) = 32;
    BakedMap:                 Storage; // BakedId --> ImFontBaked*
    BakedDiscardedCount:      s32;

    PackIdMouseCursors:       ImFontAtlasRectId; // White pixel + mouse cursors. Also happen to be fallback in case of packing failure.
    PackIdLinesTexData:       ImFontAtlasRectId;
}

ImFontAtlasBuildInit :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildInit@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasBuildDestroy :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildDestroy@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasBuildMain :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildMain@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasBuildSetupFontLoader :: (atlas: *ImFontAtlas, font_loader: *ImFontLoader) -> void #foreign imgui "?ImFontAtlasBuildSetupFontLoader@@YAXPEAUImFontAtlas@@PEBUImFontLoader@@@Z";
ImFontAtlasBuildNotifySetFont :: (atlas: *ImFontAtlas, old_font: *ImFont, new_font: *ImFont) -> void #foreign imgui "?ImFontAtlasBuildNotifySetFont@@YAXPEAUImFontAtlas@@PEAUImFont@@1@Z";
ImFontAtlasBuildUpdatePointers :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildUpdatePointers@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasBuildRenderBitmapFromString :: (atlas: *ImFontAtlas, x: s32, y: s32, w: s32, h: s32, in_str: *u8, in_marker_char: u8) -> void #foreign imgui "?ImFontAtlasBuildRenderBitmapFromString@@YAXPEAUImFontAtlas@@HHHHPEBDD@Z";
ImFontAtlasBuildClear :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildClear@@YAXPEAUImFontAtlas@@@Z";

ImFontAtlasTextureAdd :: (atlas: *ImFontAtlas, w: s32, h: s32) -> *ImTextureData #foreign imgui "?ImFontAtlasTextureAdd@@YAPEAUImTextureData@@PEAUImFontAtlas@@HH@Z";
ImFontAtlasTextureMakeSpace :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasTextureMakeSpace@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasTextureRepack :: (atlas: *ImFontAtlas, w: s32, h: s32) -> void #foreign imgui "?ImFontAtlasTextureRepack@@YAXPEAUImFontAtlas@@HH@Z";
ImFontAtlasTextureGrow :: (atlas: *ImFontAtlas, old_w: s32 = -1, old_h: s32 = -1) -> void #foreign imgui "?ImFontAtlasTextureGrow@@YAXPEAUImFontAtlas@@HH@Z";
ImFontAtlasTextureCompact :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasTextureCompact@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasTextureGetSizeEstimate :: (atlas: *ImFontAtlas) -> ImVec2i #cpp_return_type_is_non_pod #foreign imgui "?ImFontAtlasTextureGetSizeEstimate@@YA?AUImVec2i@@PEAUImFontAtlas@@@Z";

ImFontAtlasBuildSetupFontSpecialGlyphs :: (atlas: *ImFontAtlas, font: *ImFont, src: *ImFontConfig) -> void #foreign imgui "?ImFontAtlasBuildSetupFontSpecialGlyphs@@YAXPEAUImFontAtlas@@PEAUImFont@@PEAUImFontConfig@@@Z";
ImFontAtlasBuildLegacyPreloadAllGlyphRanges :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasBuildLegacyPreloadAllGlyphRanges@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasBuildGetOversampleFactors :: (src: *ImFontConfig, baked: *ImFontBaked, out_oversample_h: *s32, out_oversample_v: *s32) -> void #foreign imgui "?ImFontAtlasBuildGetOversampleFactors@@YAXPEAUImFontConfig@@PEAUImFontBaked@@PEAH2@Z";
ImFontAtlasBuildDiscardBakes :: (atlas: *ImFontAtlas, unused_frames: s32) -> void #foreign imgui "?ImFontAtlasBuildDiscardBakes@@YAXPEAUImFontAtlas@@H@Z";

ImFontAtlasFontSourceInit :: (atlas: *ImFontAtlas, src: *ImFontConfig) -> bool #foreign imgui "?ImFontAtlasFontSourceInit@@YA_NPEAUImFontAtlas@@PEAUImFontConfig@@@Z";
ImFontAtlasFontSourceAddToFont :: (atlas: *ImFontAtlas, font: *ImFont, src: *ImFontConfig) -> void #foreign imgui "?ImFontAtlasFontSourceAddToFont@@YAXPEAUImFontAtlas@@PEAUImFont@@PEAUImFontConfig@@@Z";
ImFontAtlasFontDestroySourceData :: (atlas: *ImFontAtlas, src: *ImFontConfig) -> void #foreign imgui "?ImFontAtlasFontDestroySourceData@@YAXPEAUImFontAtlas@@PEAUImFontConfig@@@Z";
ImFontAtlasFontInitOutput :: (atlas: *ImFontAtlas, font: *ImFont) -> bool #foreign imgui "?ImFontAtlasFontInitOutput@@YA_NPEAUImFontAtlas@@PEAUImFont@@@Z";
ImFontAtlasFontDestroyOutput :: (atlas: *ImFontAtlas, font: *ImFont) -> void #foreign imgui "?ImFontAtlasFontDestroyOutput@@YAXPEAUImFontAtlas@@PEAUImFont@@@Z";
ImFontAtlasFontRebuildOutput :: (atlas: *ImFontAtlas, font: *ImFont) -> void #foreign imgui "?ImFontAtlasFontRebuildOutput@@YAXPEAUImFontAtlas@@PEAUImFont@@@Z";
ImFontAtlasFontDiscardBakes :: (atlas: *ImFontAtlas, font: *ImFont, unused_frames: s32) -> void #foreign imgui "?ImFontAtlasFontDiscardBakes@@YAXPEAUImFontAtlas@@PEAUImFont@@H@Z";

ImFontAtlasBakedGetId :: (font_id: ID, baked_size: float, rasterizer_density: float) -> ID #foreign imgui "?ImFontAtlasBakedGetId@@YAIIMM@Z";
ImFontAtlasBakedGetOrAdd :: (atlas: *ImFontAtlas, font: *ImFont, font_size: float, font_rasterizer_density: float) -> *ImFontBaked #foreign imgui "?ImFontAtlasBakedGetOrAdd@@YAPEAUImFontBaked@@PEAUImFontAtlas@@PEAUImFont@@MM@Z";
ImFontAtlasBakedGetClosestMatch :: (atlas: *ImFontAtlas, font: *ImFont, font_size: float, font_rasterizer_density: float) -> *ImFontBaked #foreign imgui "?ImFontAtlasBakedGetClosestMatch@@YAPEAUImFontBaked@@PEAUImFontAtlas@@PEAUImFont@@MM@Z";
ImFontAtlasBakedAdd :: (atlas: *ImFontAtlas, font: *ImFont, font_size: float, font_rasterizer_density: float, baked_id: ID) -> *ImFontBaked #foreign imgui "?ImFontAtlasBakedAdd@@YAPEAUImFontBaked@@PEAUImFontAtlas@@PEAUImFont@@MMI@Z";
ImFontAtlasBakedDiscard :: (atlas: *ImFontAtlas, font: *ImFont, baked: *ImFontBaked) -> void #foreign imgui "?ImFontAtlasBakedDiscard@@YAXPEAUImFontAtlas@@PEAUImFont@@PEAUImFontBaked@@@Z";
ImFontAtlasBakedAddFontGlyph :: (atlas: *ImFontAtlas, baked: *ImFontBaked, src: *ImFontConfig, in_glyph: *ImFontGlyph) -> *ImFontGlyph #foreign imgui "?ImFontAtlasBakedAddFontGlyph@@YAPEAUImFontGlyph@@PEAUImFontAtlas@@PEAUImFontBaked@@PEAUImFontConfig@@PEBU1@@Z";
ImFontAtlasBakedAddFontGlyphAdvancedX :: (atlas: *ImFontAtlas, baked: *ImFontBaked, src: *ImFontConfig, codepoint: ImWchar, advance_x: float) -> void #foreign imgui "?ImFontAtlasBakedAddFontGlyphAdvancedX@@YAXPEAUImFontAtlas@@PEAUImFontBaked@@PEAUImFontConfig@@GM@Z";
ImFontAtlasBakedDiscardFontGlyph :: (atlas: *ImFontAtlas, font: *ImFont, baked: *ImFontBaked, glyph: *ImFontGlyph) -> void #foreign imgui "?ImFontAtlasBakedDiscardFontGlyph@@YAXPEAUImFontAtlas@@PEAUImFont@@PEAUImFontBaked@@PEAUImFontGlyph@@@Z";
ImFontAtlasBakedSetFontGlyphBitmap :: (atlas: *ImFontAtlas, baked: *ImFontBaked, src: *ImFontConfig, glyph: *ImFontGlyph, r: *ImTextureRect, src_pixels: *u8, src_fmt: ImTextureFormat, src_pitch: s32) -> void #foreign imgui "?ImFontAtlasBakedSetFontGlyphBitmap@@YAXPEAUImFontAtlas@@PEAUImFontBaked@@PEAUImFontConfig@@PEAUImFontGlyph@@PEAUImTextureRect@@PEBEW4ImTextureFormat@@H@Z";

ImFontAtlasPackInit :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasPackInit@@YAXPEAUImFontAtlas@@@Z";
ImFontAtlasPackAddRect :: (atlas: *ImFontAtlas, w: s32, h: s32, overwrite_entry: *ImFontAtlasRectEntry = null) -> ImFontAtlasRectId #foreign imgui "?ImFontAtlasPackAddRect@@YAHPEAUImFontAtlas@@HHPEAUImFontAtlasRectEntry@@@Z";
ImFontAtlasPackGetRect :: (atlas: *ImFontAtlas, id: ImFontAtlasRectId) -> *ImTextureRect #foreign imgui "?ImFontAtlasPackGetRect@@YAPEAUImTextureRect@@PEAUImFontAtlas@@H@Z";
ImFontAtlasPackGetRectSafe :: (atlas: *ImFontAtlas, id: ImFontAtlasRectId) -> *ImTextureRect #foreign imgui "?ImFontAtlasPackGetRectSafe@@YAPEAUImTextureRect@@PEAUImFontAtlas@@H@Z";
ImFontAtlasPackDiscardRect :: (atlas: *ImFontAtlas, id: ImFontAtlasRectId) -> void #foreign imgui "?ImFontAtlasPackDiscardRect@@YAXPEAUImFontAtlas@@H@Z";

ImFontAtlasUpdateNewFrame :: (atlas: *ImFontAtlas, frame_count: s32, renderer_has_textures: bool) -> void #foreign imgui "?ImFontAtlasUpdateNewFrame@@YAXPEAUImFontAtlas@@H_N@Z";
ImFontAtlasAddDrawListSharedData :: (atlas: *ImFontAtlas, data: *ImDrawListSharedData) -> void #foreign imgui "?ImFontAtlasAddDrawListSharedData@@YAXPEAUImFontAtlas@@PEAUImDrawListSharedData@@@Z";
ImFontAtlasRemoveDrawListSharedData :: (atlas: *ImFontAtlas, data: *ImDrawListSharedData) -> void #foreign imgui "?ImFontAtlasRemoveDrawListSharedData@@YAXPEAUImFontAtlas@@PEAUImDrawListSharedData@@@Z";
ImFontAtlasUpdateDrawListsTextures :: (atlas: *ImFontAtlas, old_tex: ImTextureRef, new_tex: ImTextureRef) -> void #foreign imgui "?ImFontAtlasUpdateDrawListsTextures@@YAXPEAUImFontAtlas@@UImTextureRef@@1@Z";
ImFontAtlasUpdateDrawListsSharedData :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasUpdateDrawListsSharedData@@YAXPEAUImFontAtlas@@@Z";

ImFontAtlasTextureBlockConvert :: (src_pixels: *u8, src_fmt: ImTextureFormat, src_pitch: s32, dst_pixels: *u8, dst_fmt: ImTextureFormat, dst_pitch: s32, w: s32, h: s32) -> void #foreign imgui "?ImFontAtlasTextureBlockConvert@@YAXPEBEW4ImTextureFormat@@HPEAE1HHH@Z";
ImFontAtlasTextureBlockPostProcess :: (data: *ImFontAtlasPostProcessData) -> void #foreign imgui "?ImFontAtlasTextureBlockPostProcess@@YAXPEAUImFontAtlasPostProcessData@@@Z";
ImFontAtlasTextureBlockPostProcessMultiply :: (data: *ImFontAtlasPostProcessData, multiply_factor: float) -> void #foreign imgui "?ImFontAtlasTextureBlockPostProcessMultiply@@YAXPEAUImFontAtlasPostProcessData@@M@Z";
ImFontAtlasTextureBlockFill :: (dst_tex: *ImTextureData, dst_x: s32, dst_y: s32, w: s32, h: s32, col: ImU32) -> void #foreign imgui "?ImFontAtlasTextureBlockFill@@YAXPEAUImTextureData@@HHHHI@Z";
ImFontAtlasTextureBlockCopy :: (src_tex: *ImTextureData, src_x: s32, src_y: s32, dst_tex: *ImTextureData, dst_x: s32, dst_y: s32, w: s32, h: s32) -> void #foreign imgui "?ImFontAtlasTextureBlockCopy@@YAXPEAUImTextureData@@HH0HHHH@Z";
ImFontAtlasTextureBlockQueueUpload :: (atlas: *ImFontAtlas, tex: *ImTextureData, x: s32, y: s32, w: s32, h: s32) -> void #foreign imgui "?ImFontAtlasTextureBlockQueueUpload@@YAXPEAUImFontAtlas@@PEAUImTextureData@@HHHH@Z";

ImTextureDataQueueUpload :: (tex: *ImTextureData, x: s32, y: s32, w: s32, h: s32) -> void #foreign imgui "?ImTextureDataQueueUpload@@YAXPEAUImTextureData@@HHHH@Z";
ImTextureDataGetFormatBytesPerPixel :: (format: ImTextureFormat) -> s32 #foreign imgui "?ImTextureDataGetFormatBytesPerPixel@@YAHW4ImTextureFormat@@@Z";
ImTextureDataGetStatusName :: (status: ImTextureStatus) -> *u8 #foreign imgui "?ImTextureDataGetStatusName@@YAPEBDW4ImTextureStatus@@@Z";
ImTextureDataGetFormatName :: (format: ImTextureFormat) -> *u8 #foreign imgui "?ImTextureDataGetFormatName@@YAPEBDW4ImTextureFormat@@@Z";

ImFontAtlasDebugLogTextureRequests :: (atlas: *ImFontAtlas) -> void #foreign imgui "?ImFontAtlasDebugLogTextureRequests@@YAXPEAUImFontAtlas@@@Z";

ImFontAtlasGetMouseCursorTexData :: (atlas: *ImFontAtlas, cursor_type: MouseCursor, out_offset: *ImVec2, out_size: *ImVec2, out_uv_border: *[2] ImVec2, out_uv_fill: *[2] ImVec2) -> bool #foreign imgui "?ImFontAtlasGetMouseCursorTexData@@YA_NPEAUImFontAtlas@@HPEAUImVec2@@1QEAU2@2@Z";

//-----------------------------------------------------------------------------
// ImDrawDataSnapshot - HEADERS
//-----------------------------------------------------------------------------
ImDrawDataSnapshotEntry :: struct {
    SrcCopy:      *ImDrawList = null; // Drawlist owned by main context
    OurCopy:      *ImDrawList = null; // Our copy
    LastUsedTime: float64 = 0.0;
}

ImDrawDataSnapshot :: struct {
    // Members
    DrawData:           ImDrawData;
    Cache:              ImPool(ImDrawDataSnapshotEntry);
    MemoryCompactTimer: float = 20.0; // Discard unused data after 20 seconds

    // NOTE: reshen@ removing inline so jai generate sees this function
    // inline void ImDrawDataSnapshot::Clear()
    Clear :: (this: *ImDrawDataSnapshot) -> void #cpp_method #foreign imgui "?Clear@ImDrawDataSnapshot@@QEAAXXZ";

    // NOTE: reshen@ removing inline so jai generate sees this function
    // inline void ImDrawDataSnapshot::SnapUsingSwap(ImDrawData* src, double current_time)
    SnapUsingSwap :: (this: *ImDrawDataSnapshot, src: *ImDrawData, current_time: float64) -> void #cpp_method #foreign imgui "?SnapUsingSwap@ImDrawDataSnapshot@@QEAAXPEAUImDrawData@@N@Z";
}

#scope_file

#import "Basic"; // For print_to_builder

imgui :: #library,no_dll "ImGui.static";
