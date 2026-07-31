.class public final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 2
    .line 3
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, v0, v1

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpl-float v3, v0, v2

    .line 14
    .line 15
    if-lez v3, :cond_1

    .line 16
    .line 17
    move v0, v2

    .line 18
    :cond_1
    iget v3, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 19
    .line 20
    const/high16 v4, -0x41000000    # -0.5f

    .line 21
    .line 22
    cmpg-float v5, v3, v4

    .line 23
    .line 24
    if-gez v5, :cond_2

    .line 25
    .line 26
    move v3, v4

    .line 27
    :cond_2
    const/high16 v5, 0x3f000000    # 0.5f

    .line 28
    .line 29
    cmpl-float v6, v3, v5

    .line 30
    .line 31
    if-lez v6, :cond_3

    .line 32
    .line 33
    move v3, v5

    .line 34
    :cond_3
    iget v6, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 35
    .line 36
    cmpg-float v7, v6, v4

    .line 37
    .line 38
    if-gez v7, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    move v4, v6

    .line 42
    :goto_0
    cmpl-float v6, v4, v5

    .line 43
    .line 44
    if-lez v6, :cond_5

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_5
    move v5, v4

    .line 48
    :goto_1
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 49
    .line 50
    cmpg-float v4, p1, v1

    .line 51
    .line 52
    if-gez v4, :cond_6

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_6
    move v1, p1

    .line 56
    :goto_2
    cmpl-float p1, v1, v2

    .line 57
    .line 58
    if-lez p1, :cond_7

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_7
    move v2, v1

    .line 62
    :goto_3
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 63
    .line 64
    invoke-static {v0, v3, v5, v2, p1}, Landroidx/compose/ui/graphics/Brush;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iget-object p0, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 69
    .line 70
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 71
    .line 72
    .line 73
    move-result-wide p0

    .line 74
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method
