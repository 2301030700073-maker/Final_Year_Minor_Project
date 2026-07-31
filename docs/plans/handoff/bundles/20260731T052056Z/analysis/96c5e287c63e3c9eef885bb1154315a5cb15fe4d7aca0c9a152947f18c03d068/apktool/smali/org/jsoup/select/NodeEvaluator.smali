.class public abstract Lorg/jsoup/select/NodeEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public abstract evaluateMatch(Lorg/jsoup/nodes/Node;)Z
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Node;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 6
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Node;)Z

    move-result p0

    return p0
.end method

.method public final wantsNodes()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
