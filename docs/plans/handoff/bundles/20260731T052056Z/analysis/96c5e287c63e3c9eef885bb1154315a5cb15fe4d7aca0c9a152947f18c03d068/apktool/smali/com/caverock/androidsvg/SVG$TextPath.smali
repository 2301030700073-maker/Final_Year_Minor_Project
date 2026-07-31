.class public final Lcom/caverock/androidsvg/SVG$TextPath;
.super Lcom/caverock/androidsvg/SVG$TextContainer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# instance fields
.field public href:Ljava/lang/String;

.field public startOffset:Lcom/caverock/androidsvg/SVG$Length;

.field public textRoot:Lcom/caverock/androidsvg/SVG$Text;


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "textPath"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextRoot()Lcom/caverock/androidsvg/SVG$Text;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    .line 2
    .line 3
    return-object p0
.end method
