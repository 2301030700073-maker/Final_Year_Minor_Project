.class public final Lorg/wikipedia/edit/richtext/TypefaceSpanEx;
.super Landroid/text/style/TypefaceSpan;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SpanExtents;


# instance fields
.field public end:I

.field public start:I

.field public final syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;


# direct methods
.method public constructor <init>(ILorg/wikipedia/edit/richtext/SyntaxRule;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->start:I

    .line 10
    .line 11
    iput-object p2, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->end:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStart()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->start:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->end:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/richtext/TypefaceSpanEx;->start:I

    .line 2
    .line 3
    return-void
.end method
