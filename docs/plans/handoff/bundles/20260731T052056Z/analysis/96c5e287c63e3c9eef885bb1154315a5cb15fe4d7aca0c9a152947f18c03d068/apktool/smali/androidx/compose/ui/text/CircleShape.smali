.class public final Landroidx/compose/ui/text/CircleShape;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/CircleShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/CircleShape;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/CircleShape;->INSTANCE:Landroidx/compose/ui/text/CircleShape;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;
    .locals 18

    .line 1
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-long v1, v1

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-long v3, v0

    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    shl-long v0, v1, v0

    .line 21
    .line 22
    const-wide v5, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v3, v5

    .line 28
    or-long v10, v0, v3

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    move-wide/from16 v3, p1

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v4}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v5, Landroidx/compose/ui/geometry/RoundRect;

    .line 41
    .line 42
    iget v6, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 43
    .line 44
    iget v7, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 45
    .line 46
    iget v8, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 47
    .line 48
    iget v9, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 49
    .line 50
    move-wide v12, v10

    .line 51
    move-wide v14, v10

    .line 52
    move-wide/from16 v16, v10

    .line 53
    .line 54
    invoke-direct/range {v5 .. v17}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v5}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method
