.class public abstract Lcom/fasterxml/jackson/databind/ObjectWriter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public isInline()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/fasterxml/jackson/core/util/DefaultIndenter;

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public abstract writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V
.end method
