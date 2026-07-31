.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/NoCopySpan;


# instance fields
.field public cachedMaxWidth:I

.field public layout:Lcom/fsck/k9/view/RecipientSelectView;

.field public token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

.field public view:Landroid/view/View;


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->prepView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    int-to-float p2, p6

    .line 8
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->prepView()V

    .line 4
    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 p3, -0x1

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    move p2, p0

    .line 20
    :cond_0
    neg-int p3, p2

    .line 21
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 22
    .line 23
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 24
    .line 25
    sub-int/2addr p0, p2

    .line 26
    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 27
    .line 28
    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final prepView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->layout:Lcom/fsck/k9/view/RecipientSelectView;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getMaxViewSpanWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->cachedMaxWidth:I

    .line 10
    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getMaxViewSpanWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->cachedMaxWidth:I

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    move v2, p0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/high16 v2, -0x80000000

    .line 33
    .line 34
    :goto_1
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, p0, p0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
