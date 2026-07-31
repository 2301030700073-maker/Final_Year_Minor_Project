.class public final Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;
.super Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)Z
    .locals 0

    .line 1
    iget-object p0, p4, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return p2

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 31
    .line 32
    .line 33
    return p2
.end method
