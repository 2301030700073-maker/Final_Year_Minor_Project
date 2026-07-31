.class public abstract Landroidx/compose/material3/tokens/SwitchTokens;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledSelectedHandleOpacity:F

.field public static final DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledSelectedIconOpacity:F

.field public static final DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledTrackOpacity:F

.field public static final DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledUnselectedHandleOpacity:F

.field public static final DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledUnselectedIconOpacity:F

.field public static final DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final PressedHandleWidth:F

.field public static final SelectedHandleWidth:F

.field public static final SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final StateLayerSize:F

.field public static final TrackHeight:F

.field public static final TrackOutlineWidth:F

.field public static final TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final TrackWidth:F

.field public static final UnselectedHandleWidth:F

.field public static final UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Surface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleOpacity:F

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 12
    .line 13
    const v1, 0x3ec28f5c    # 0.38f

    .line 14
    .line 15
    .line 16
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconOpacity:F

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 19
    .line 20
    const v2, 0x3df5c28f    # 0.12f

    .line 21
    .line 22
    .line 23
    sput v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledTrackOpacity:F

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    .line 27
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleOpacity:F

    .line 28
    .line 29
    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainerHighest:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    .line 31
    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    .line 33
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconOpacity:F

    .line 34
    .line 35
    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 36
    .line 37
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    .line 39
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 40
    .line 41
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 42
    .line 43
    const/high16 v1, 0x41e00000    # 28.0f

    .line 44
    .line 45
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->PressedHandleWidth:F

    .line 46
    .line 47
    const/high16 v1, 0x41c00000    # 24.0f

    .line 48
    .line 49
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleWidth:F

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    .line 55
    const/high16 v1, 0x42200000    # 40.0f

    .line 56
    .line 57
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->StateLayerSize:F

    .line 58
    .line 59
    const/high16 v1, 0x42000000    # 32.0f

    .line 60
    .line 61
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->TrackHeight:F

    .line 62
    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    .line 64
    .line 65
    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->TrackOutlineWidth:F

    .line 66
    .line 67
    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 68
    .line 69
    const/high16 v0, 0x42500000    # 52.0f

    .line 70
    .line 71
    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackWidth:F

    .line 72
    .line 73
    const/high16 v0, 0x41800000    # 16.0f

    .line 74
    .line 75
    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleWidth:F

    .line 76
    .line 77
    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 78
    .line 79
    return-void
.end method
