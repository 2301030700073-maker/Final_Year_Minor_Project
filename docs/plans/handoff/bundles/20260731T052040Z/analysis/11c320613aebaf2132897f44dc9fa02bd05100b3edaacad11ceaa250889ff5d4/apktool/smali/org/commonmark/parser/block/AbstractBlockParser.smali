.class public abstract Lorg/commonmark/parser/block/AbstractBlockParser;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lorg/commonmark/internal/BlockQuoteParser;

    .line 2
    .line 3
    return p0
.end method

.method public closeBlock()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract getBlock()Lorg/commonmark/node/Block;
.end method

.method public isContainer()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lorg/commonmark/internal/BlockQuoteParser;

    .line 2
    .line 3
    return p0
.end method

.method public parseInlines(Lorg/commonmark/internal/InlineParserImpl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
.end method
