.class final Landroidx/compose/ui/platform/TestTagElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1
    new-instance p0, Landroidx/compose/ui/platform/TestTagNode;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "TEST_TAG_LICENSE_TEXT"

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/platform/TestTagNode;->tag:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Landroidx/compose/ui/platform/TestTagElement;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, -0x6a5674c3

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/platform/TestTagNode;

    .line 2
    .line 3
    const-string p0, "TEST_TAG_LICENSE_TEXT"

    .line 4
    .line 5
    iput-object p0, p1, Landroidx/compose/ui/platform/TestTagNode;->tag:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
