.class final Landroidx/compose/ui/viewinterop/BringIntoViewElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/ui/viewinterop/BringIntoViewNode;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 4
    .line 5
    iput-object p0, p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->onRequesterReady:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 6
    .line 7
    iget-boolean v0, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->requester:Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
