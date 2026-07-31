.class public final Lorg/wikipedia/edit/richtext/StyleSpanEx;
.super Landroid/text/style/StyleSpan;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# instance fields
.field public end:I

.field public start:I

.field public syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# virtual methods
.method public final getEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->end:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStart()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->start:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->end:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/StyleSpanEx;->start:I

    .line 2
    .line 3
    return-void
.end method
