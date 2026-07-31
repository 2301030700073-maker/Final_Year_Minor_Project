.class public final Lorg/wikipedia/edit/richtext/SubscriptSpanEx;
.super Landroid/text/style/MetricAffectingSpan;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# instance fields
.field public final synthetic $r8$classId:I

.field public end:I

.field public start:I

.field public syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->end:I

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->end:I

    .line 10
    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->start:I

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->start:I

    .line 10
    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setEnd(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->end:I

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iput p1, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->end:I

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setStart(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->start:I

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iput p1, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->start:I

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v0, 0x40800000    # 4.0f

    .line 4
    .line 5
    const v1, 0x3f4ccccd    # 0.8f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    mul-float/2addr p0, v1

    .line 19
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    div-float/2addr v1, v0

    .line 29
    float-to-int v0, v1

    .line 30
    add-int/2addr p0, v0

    .line 31
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    mul-float/2addr p0, v1

    .line 39
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    .line 41
    .line 42
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    div-float/2addr v1, v0

    .line 49
    float-to-int v0, v1

    .line 50
    sub-int/2addr p0, v0

    .line 51
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v0, 0x40800000    # 4.0f

    .line 4
    .line 5
    const v1, 0x3f4ccccd    # 0.8f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    mul-float/2addr p0, v1

    .line 19
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    div-float/2addr v1, v0

    .line 29
    float-to-int v0, v1

    .line 30
    add-int/2addr p0, v0

    .line 31
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    mul-float/2addr p0, v1

    .line 39
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    .line 41
    .line 42
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    div-float/2addr v1, v0

    .line 49
    float-to-int v0, v1

    .line 50
    sub-int/2addr p0, v0

    .line 51
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
