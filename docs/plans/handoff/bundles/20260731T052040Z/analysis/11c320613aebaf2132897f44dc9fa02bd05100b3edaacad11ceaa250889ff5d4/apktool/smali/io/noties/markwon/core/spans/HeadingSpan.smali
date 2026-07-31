.class public final Lio/noties/markwon/core/spans/HeadingSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final level:I

.field public final paint:Landroid/graphics/Paint;

.field public final rect:Landroid/graphics/Rect;

.field public final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    .line 5
    .line 6
    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    .line 7
    .line 8
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object p1, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 13
    .line 14
    iput p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final apply(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    iget p0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    .line 12
    .line 13
    sget-object v2, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    .line 14
    .line 15
    if-lt v1, p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr p0, v0

    .line 22
    aget p0, v2, p0

    .line 23
    .line 24
    mul-float/2addr v1, p0

    .line 25
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Supplied heading level: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " is invalid, where configured heading sizes are: `"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "`"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    .line 1
    const/4 p5, 0x1

    .line 2
    iget p6, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    .line 3
    .line 4
    if-eq p6, p5, :cond_0

    .line 5
    .line 6
    const/4 p5, 0x2

    .line 7
    if-ne p6, p5, :cond_3

    .line 8
    .line 9
    :cond_0
    instance-of p5, p8, Landroid/text/Spanned;

    .line 10
    .line 11
    if-eqz p5, :cond_3

    .line 12
    .line 13
    check-cast p8, Landroid/text/Spanned;

    .line 14
    .line 15
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p5

    .line 19
    if-ne p5, p10, :cond_3

    .line 20
    .line 21
    iget-object p5, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    .line 32
    .line 33
    .line 34
    move-result p6

    .line 35
    const/16 p8, 0x4b

    .line 36
    .line 37
    invoke-static {p6, p8}, Lkotlin/text/CharsKt;->applyAlpha(II)I

    .line 38
    .line 39
    .line 40
    move-result p6

    .line 41
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    sget-object p6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iget p2, p2, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 50
    .line 51
    if-ltz p2, :cond_1

    .line 52
    .line 53
    int-to-float p2, p2

    .line 54
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 p6, 0x0

    .line 62
    cmpl-float p6, p2, p6

    .line 63
    .line 64
    if-lez p6, :cond_3

    .line 65
    .line 66
    int-to-float p6, p7

    .line 67
    sub-float/2addr p6, p2

    .line 68
    const/high16 p2, 0x3f000000    # 0.5f

    .line 69
    .line 70
    add-float/2addr p6, p2

    .line 71
    float-to-int p2, p6

    .line 72
    if-lez p4, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    sub-int p4, p3, p4

    .line 84
    .line 85
    move v0, p4

    .line 86
    move p4, p3

    .line 87
    move p3, v0

    .line 88
    :goto_0
    iget-object p0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {p0, p3, p2, p4, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
