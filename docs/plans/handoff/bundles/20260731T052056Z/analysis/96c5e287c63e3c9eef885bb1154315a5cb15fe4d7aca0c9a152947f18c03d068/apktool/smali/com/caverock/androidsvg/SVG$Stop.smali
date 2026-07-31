.class public final Lcom/caverock/androidsvg/SVG$Stop;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# instance fields
.field public offset:Ljava/lang/Float;


# virtual methods
.method public final addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "stop"

    .line 2
    .line 3
    return-object p0
.end method
