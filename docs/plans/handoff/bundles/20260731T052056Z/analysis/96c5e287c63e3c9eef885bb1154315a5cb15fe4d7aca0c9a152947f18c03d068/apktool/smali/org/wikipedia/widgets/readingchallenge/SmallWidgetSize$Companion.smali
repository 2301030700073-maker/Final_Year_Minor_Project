.class public final Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static from-EaSLcWc(J)Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p1}, Landroidx/work/Operation$State;->minOf(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 26
    .line 27
    const/high16 p1, 0x430c0000    # 140.0f

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-gtz p1, :cond_0

    .line 34
    .line 35
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->TINY:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    const/high16 p1, 0x43300000    # 176.0f

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-gtz p1, :cond_1

    .line 45
    .line 46
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->EXTRA_COMPACT:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    const/high16 p1, 0x43660000    # 230.0f

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-gtz p0, :cond_2

    .line 56
    .line 57
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->COMPACT:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->FULL:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 61
    .line 62
    return-object p0
.end method
