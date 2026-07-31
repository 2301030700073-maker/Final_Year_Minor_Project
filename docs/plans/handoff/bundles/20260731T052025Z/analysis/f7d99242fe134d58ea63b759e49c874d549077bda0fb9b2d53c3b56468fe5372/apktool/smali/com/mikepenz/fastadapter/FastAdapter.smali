.class public final Lcom/mikepenz/fastadapter/FastAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public _eventHooks:Ljava/util/LinkedList;

.field public final adapterSizes:Landroid/util/SparseArray;

.field public final adapters:Ljava/util/ArrayList;

.field public final attachDefaultListeners:Z

.field public final extensionsCache:Landroidx/collection/ArrayMap;

.field public globalSize:I

.field public final itemVHFactoryCache:Lokhttp3/ConnectionPool;

.field public final logger:Lcom/mikepenz/fastadapter/VerboseLogger;

.field public final onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

.field public onClickListener:Lkotlin/jvm/functions/Function4;

.field public final onCreateViewHolderListener:Lcom/bumptech/glide/load/Option$1;

.field public final viewClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;

.field public final viewLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

.field public final viewTouchListener:Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 12
    .line 13
    const/16 v1, 0x13

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lokhttp3/ConnectionPool;

    .line 19
    .line 20
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 26
    .line 27
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    .line 37
    .line 38
    new-instance v1, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 44
    .line 45
    new-instance v1, Lcom/bumptech/glide/load/Option$1;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/bumptech/glide/load/Option$1;

    .line 51
    .line 52
    new-instance v1, Lcom/bumptech/glide/GlideBuilder$1;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 58
    .line 59
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;

    .line 65
    .line 66
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

    .line 72
    .line 73
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewTouchListener:Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/LinkedList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/LinkedList;

    .line 14
    .line 15
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final cacheSizes()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_3

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 25
    .line 26
    iget-boolean v6, v5, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->active:Z

    .line 27
    .line 28
    iget-object v7, v5, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    iget-object v6, v7, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v6, v3

    .line 42
    :goto_1
    if-lez v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v5, v5, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->active:Z

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object v5, v7, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v5, v3

    .line 61
    :goto_2
    add-int/2addr v4, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-nez v4, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lez v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iput v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 79
    .line 80
    return-void
.end method

.method public final getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 5
    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gez v1, :cond_1

    .line 16
    .line 17
    not-int v1, v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    sub-int/2addr p1, p0

    .line 31
    iget-object p0, v2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string p0, "A normal ModelAdapter does not allow null items."

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-wide/16 p0, -0x1

    .line 13
    .line 14
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lokhttp3/ConnectionPool;

    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-gez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getType()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public final notifyAdapterDataSetChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final notifyAdapterItemRangeRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 67
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    const v1, 0x7f0901de

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    instance-of v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p0, v2

    .line 35
    :goto_0
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    :goto_1
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    instance-of p2, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    move-object v2, p1

    .line 53
    check-cast v2, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .line 54
    .line 55
    :cond_3
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2, p0, p3}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    const p1, 0x7f0901dd

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lokhttp3/ConnectionPool;

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p2, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/bumptech/glide/load/Option$1;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f0901de

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;

    .line 57
    .line 58
    invoke-static {v0, p1, p2}, Landroidx/room/util/RelationUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

    .line 62
    .line 63
    invoke-static {v0, p1, p2}, Landroidx/room/util/RelationUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewTouchListener:Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;

    .line 67
    .line 68
    invoke-static {v0, p1, p2}, Landroidx/room/util/RelationUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/LinkedList;

    .line 72
    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    new-instance p2, Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/LinkedList;

    .line 81
    .line 82
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 97
    .line 98
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-static {p2, p1, v0}, Landroidx/room/util/RelationUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBindMany(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0901dd

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const v1, 0x7f0901de

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p0, p1

    .line 29
    :goto_0
    instance-of v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    move-object p1, p0

    .line 34
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 35
    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0901dd

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/bumptech/glide/GlideBuilder$1;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f0901dd

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v1

    .line 31
    :goto_0
    instance-of v3, v2, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v2, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v2, v1

    .line 39
    :goto_1
    if-eqz v2, :cond_4

    .line 40
    .line 41
    instance-of v3, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object p1, v1

    .line 49
    :goto_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0901de

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    const-string p0, "FastAdapter"

    .line 65
    .line 66
    const-string p1, "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.kt#L22)"

    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void
.end method
