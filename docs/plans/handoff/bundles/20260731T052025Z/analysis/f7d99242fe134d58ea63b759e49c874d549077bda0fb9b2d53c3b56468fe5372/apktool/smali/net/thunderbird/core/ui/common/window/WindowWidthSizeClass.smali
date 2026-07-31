.class public final enum Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

.field public static final BREAKPOINT_COMPACT:F

.field public static final BREAKPOINT_MEDIUM:F

.field public static final BREAKPOINT_SMALL:F

.field public static final enum Compact:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

.field public static final Companion:Landroidx/transition/Transition$1;

.field public static final enum Expanded:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

.field public static final enum Medium:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

.field public static final enum Small:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 2
    .line 3
    const-string v1, "Small"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Small:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 12
    .line 13
    const-string v3, "Compact"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 22
    .line 23
    const-string v5, "Medium"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Medium:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 32
    .line 33
    const-string v7, "Expanded"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Expanded:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->$VALUES:[Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 53
    .line 54
    new-instance v0, Landroidx/transition/Transition$1;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Companion:Landroidx/transition/Transition$1;

    .line 60
    .line 61
    const/high16 v0, 0x43af0000    # 350.0f

    .line 62
    .line 63
    sput v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_SMALL:F

    .line 64
    .line 65
    const/high16 v0, 0x44160000    # 600.0f

    .line 66
    .line 67
    sput v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_COMPACT:F

    .line 68
    .line 69
    const/high16 v0, 0x44520000    # 840.0f

    .line 70
    .line 71
    sput v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_MEDIUM:F

    .line 72
    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->$VALUES:[Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 8
    .line 9
    return-object v0
.end method
