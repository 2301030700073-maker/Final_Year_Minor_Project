.class public abstract Lorg/commonmark/node/Block;
.super Lorg/commonmark/node/Node;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final getParent()Lorg/commonmark/node/Node;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/commonmark/node/Node;

    .line 4
    .line 5
    check-cast p0, Lorg/commonmark/node/Block;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setParent(Lorg/commonmark/node/Node;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/commonmark/node/Block;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Parent of block must also be block (can not be inline)"

    .line 9
    .line 10
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
