.class public final Landroidx/compose/ui/Alignment$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

.field public static final Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final BottomCenter:Landroidx/compose/ui/BiasAlignment;

.field public static final BottomEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final BottomStart:Landroidx/compose/ui/BiasAlignment;

.field public static final Center:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final CenterStart:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final End:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final Top:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final TopCenter:Landroidx/compose/ui/BiasAlignment;

.field public static final TopEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final TopStart:Landroidx/compose/ui/BiasAlignment;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 35
    .line 36
    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 42
    .line 43
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 49
    .line 50
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    .line 54
    .line 55
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    .line 61
    .line 62
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 63
    .line 64
    invoke-direct {v0, v3, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 82
    .line 83
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 84
    .line 85
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 89
    .line 90
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 98
    .line 99
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 103
    .line 104
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 105
    .line 106
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 110
    .line 111
    new-instance v0, Landroidx/compose/ui/Alignment$Companion;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    .line 117
    .line 118
    return-void
.end method
