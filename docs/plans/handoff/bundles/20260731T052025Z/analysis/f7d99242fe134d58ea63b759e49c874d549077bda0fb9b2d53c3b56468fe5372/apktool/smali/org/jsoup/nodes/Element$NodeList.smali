.class public final Lorg/jsoup/nodes/Element$NodeList;
.super Ljava/util/ArrayList;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final owner:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 10
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 10
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onContentsChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    return-void
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 10
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final removeRange(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element$NodeList;->onContentsChanged()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
