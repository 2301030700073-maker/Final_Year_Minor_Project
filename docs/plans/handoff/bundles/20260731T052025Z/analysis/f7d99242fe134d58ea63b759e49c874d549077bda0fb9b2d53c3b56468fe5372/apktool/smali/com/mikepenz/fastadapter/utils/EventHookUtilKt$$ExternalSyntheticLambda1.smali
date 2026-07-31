.class public final synthetic Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda1;->f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda1;->f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    const v2, 0x7f0901de

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v4

    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v5, -0x1

    .line 35
    if-eq p0, v5, :cond_9

    .line 36
    .line 37
    const v5, 0x7f0901dd

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    instance-of v5, v1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    check-cast v1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, v4

    .line 52
    :goto_1
    if-eqz v1, :cond_9

    .line 53
    .line 54
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-boolean p1, v1, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    if-ltz p0, :cond_6

    .line 65
    .line 66
    iget p1, v2, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 67
    .line 68
    if-lt p0, p1, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    iget-object p1, v2, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object p1, v2, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-gez p0, :cond_5

    .line 83
    .line 84
    not-int p0, p0

    .line 85
    add-int/lit8 p0, p0, -0x1

    .line 86
    .line 87
    :cond_5
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    move-object v4, p0

    .line 92
    check-cast v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 93
    .line 94
    :cond_6
    :goto_2
    if-nez v4, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    iget-object p0, v2, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 126
    .line 127
    .line 128
    :cond_9
    :goto_3
    return v3
.end method
