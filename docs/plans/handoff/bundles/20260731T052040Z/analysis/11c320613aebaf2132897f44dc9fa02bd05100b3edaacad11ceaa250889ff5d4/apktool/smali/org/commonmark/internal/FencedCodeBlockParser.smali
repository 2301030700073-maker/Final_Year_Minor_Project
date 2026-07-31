.class public final Lorg/commonmark/internal/FencedCodeBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final block:Lorg/commonmark/node/FencedCodeBlock;

.field public firstLine:Ljava/lang/String;

.field public final otherLines:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(CII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/commonmark/node/FencedCodeBlock;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/commonmark/node/Node;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iput-char p1, v0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    .line 19
    .line 20
    iput p2, v0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    .line 21
    .line 22
    iput p3, v0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final addLine(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 p1, 0xa

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final closeBlock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 12
    .line 13
    iput-object v0, v1, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, v1, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 2
    .line 3
    return-object p0
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 5

    .line 1
    iget v0, p1, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 2
    .line 3
    iget v1, p1, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 4
    .line 5
    iget-object v2, p1, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget p1, p1, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    iget-object p0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 11
    .line 12
    if-ge p1, v3, :cond_1

    .line 13
    .line 14
    iget-char p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    .line 15
    .line 16
    iget v3, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {p1, v0, v4, v2}, Lkotlin/math/MathKt;->skip(CIILjava/lang/CharSequence;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-int/2addr p1, v0

    .line 27
    if-ge p1, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-int/2addr v0, p1

    .line 31
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {v2, v0, p1}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    new-instance p0, Lorg/commonmark/internal/BlockContinueImpl;

    .line 46
    .line 47
    const/4 p1, -0x1

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p1, v0}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    :goto_0
    iget p0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    :goto_1
    if-lez p0, :cond_2

    .line 60
    .line 61
    if-ge v1, p1, :cond_2

    .line 62
    .line 63
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v3, 0x20

    .line 68
    .line 69
    if-ne v0, v3, :cond_2

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    add-int/lit8 p0, p0, -0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {v1}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
