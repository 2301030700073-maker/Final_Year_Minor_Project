.class public final Lorg/wikipedia/edit/richtext/ColorSpanEx;
.super Landroid/text/style/ForegroundColorSpan;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# instance fields
.field public final backColor:I

.field public end:I

.field public start:I

.field public final syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# direct methods
.method public constructor <init>(IIILorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->start:I

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->end:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStart()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->start:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->end:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->start:I

    .line 2
    .line 3
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;->backColor:I

    .line 5
    .line 6
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
