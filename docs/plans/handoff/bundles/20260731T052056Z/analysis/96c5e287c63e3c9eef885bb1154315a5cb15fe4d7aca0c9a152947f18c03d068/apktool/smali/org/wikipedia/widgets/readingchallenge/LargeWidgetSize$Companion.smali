.class public final Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static from-EaSLcWc(J)Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x430c0000    # 140.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->TINY:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/high16 v1, 0x43300000    # 176.0f

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->EXTRA_COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/high16 p1, 0x43660000    # 230.0f

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-gtz p0, :cond_2

    .line 42
    .line 43
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->FULL:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 47
    .line 48
    return-object p0
.end method
