.class public final Landroidx/compose/foundation/VerticalScrollableClipShape;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/VerticalScrollableClipShape;

.field public static final INSTANCE$1:Landroidx/compose/foundation/VerticalScrollableClipShape;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/VerticalScrollableClipShape;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/VerticalScrollableClipShape;->INSTANCE$1:Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/foundation/VerticalScrollableClipShape;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/VerticalScrollableClipShape;->INSTANCE:Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/VerticalScrollableClipShape;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/foundation/VerticalScrollableClipShape;->$r8$classId:I

    .line 2
    .line 3
    const-wide v0, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 p3, 0x20

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/high16 v3, 0x41f00000    # 30.0f

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-float p0, p0

    .line 21
    new-instance p4, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 22
    .line 23
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 24
    .line 25
    neg-float v4, p0

    .line 26
    shr-long v5, p1, p3

    .line 27
    .line 28
    long-to-int p3, v5

    .line 29
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    and-long/2addr p1, v0

    .line 34
    long-to-int p1, p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-float/2addr p1, p0

    .line 40
    invoke-direct {v3, v2, v4, p3, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p4, v3}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 44
    .line 45
    .line 46
    return-object p4

    .line 47
    :pswitch_0
    invoke-interface {p4, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    int-to-float p0, p0

    .line 52
    new-instance p4, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 53
    .line 54
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 55
    .line 56
    neg-float v4, p0

    .line 57
    shr-long v5, p1, p3

    .line 58
    .line 59
    long-to-int p3, v5

    .line 60
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    add-float/2addr p3, p0

    .line 65
    and-long/2addr p1, v0

    .line 66
    long-to-int p0, p1

    .line 67
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-direct {v3, v4, v2, p3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p4, v3}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 75
    .line 76
    .line 77
    return-object p4

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
