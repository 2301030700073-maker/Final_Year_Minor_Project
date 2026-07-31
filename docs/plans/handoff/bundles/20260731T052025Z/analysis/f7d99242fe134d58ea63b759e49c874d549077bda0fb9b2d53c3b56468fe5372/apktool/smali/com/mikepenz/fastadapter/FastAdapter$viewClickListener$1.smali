.class public final Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;
.super Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 2

    .line 1
    iget-boolean p0, p4, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    if-ltz p2, :cond_3

    .line 7
    .line 8
    iget p0, p3, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 9
    .line 10
    if-lt p2, p0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p3, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p3, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gez v0, :cond_2

    .line 25
    .line 26
    not-int v0, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 37
    :goto_1
    if-nez p0, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    iget-object v0, p3, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_6

    .line 59
    .line 60
    iget-object p3, p3, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 61
    .line 62
    if-eqz p3, :cond_5

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p3, p1, p0, p4, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_2
    return-void

    .line 78
    :cond_6
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
