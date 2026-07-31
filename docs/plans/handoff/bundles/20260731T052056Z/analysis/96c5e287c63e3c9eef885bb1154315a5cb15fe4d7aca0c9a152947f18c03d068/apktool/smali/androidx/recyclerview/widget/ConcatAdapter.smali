.class public final Landroidx/recyclerview/widget/ConcatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mController:Lorg/wikipedia/databinding/FragmentNewsBinding;


# direct methods
.method public varargs constructor <init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroidx/recyclerview/widget/ConcatAdapter;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 42
    .line 43
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 44
    .line 45
    if-eq p1, v0, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 15
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    return-void
.end method

.method public final addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sub-int/2addr p3, p0

    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ltz p3, :cond_1

    .line 29
    .line 30
    if-ge p3, p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, " which is out of bounds for the adapter with size "

    .line 40
    .line 41
    const-string v2, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    .line 42
    .line 43
    const-string v3, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    .line 44
    .line 45
    invoke-static {p3, p0, v3, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, "adapter:"

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 23
    .line 24
    iget v1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method

.method public final getItemId(I)J
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->findWrapperAndLocalPosition(I)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 10
    .line 11
    iget v1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    iput v2, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 33
    .line 34
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 35
    .line 36
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->findWrapperAndLocalPosition(I)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 10
    .line 11
    iget v1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Lcoil3/ImageLoader$Builder;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, v2, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    if-le v3, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v3, v2, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lokio/PriorityQueue;

    .line 40
    .line 41
    iget-object v5, v2, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v5, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 44
    .line 45
    iget v6, v3, Lokio/PriorityQueue;->size:I

    .line 46
    .line 47
    add-int/lit8 v7, v6, 0x1

    .line 48
    .line 49
    iput v7, v3, Lokio/PriorityQueue;->size:I

    .line 50
    .line 51
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Landroid/util/SparseIntArray;

    .line 64
    .line 65
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    .line 67
    .line 68
    move v0, v6

    .line 69
    :goto_0
    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    iput-object v1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 74
    .line 75
    iput v4, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 76
    .line 77
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 78
    .line 79
    return v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-ne v2, p1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->findWrapperAndLocalPosition(I)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 10
    .line 11
    iget-object v1, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 21
    .line 22
    iget v1, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 p1, -0x1

    .line 36
    iput p1, p2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 37
    .line 38
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lokio/PriorityQueue;

    .line 6
    .line 7
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Lcoil3/ImageLoader$Builder;

    .line 20
    .line 21
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ltz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "requested global type "

    .line 37
    .line 38
    const-string v2, " does not belong to the adapter:"

    .line 39
    .line 40
    invoke-static {p2, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    .line 50
    invoke-static {p2, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_1
    const-string p0, "Cannot find the wrapper for global view type "

    .line 62
    .line 63
    invoke-static {p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-ne v2, p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_2
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 63
    .line 64
    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    const-string v0, "Cannot find wrapper for "

    .line 26
    .line 27
    const-string v1, ", seems like it is not bound by this adapter: "

    .line 28
    .line 29
    invoke-static {v0, p1, v1, p0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->getWrapper(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->getWrapper(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "Cannot find wrapper for "

    .line 25
    .line 26
    const-string v1, ", seems like it is not bound by this adapter: "

    .line 27
    .line 28
    invoke-static {v0, p1, v1, p0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->indexOfWrapper(Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 31
    .line 32
    iget v1, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 72
    .line 73
    iget-object v0, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/paging/PagingDataAdapter$1;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Lcoil3/ImageLoader$Builder;

    .line 79
    .line 80
    iget-object v0, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lokio/PriorityQueue;

    .line 83
    .line 84
    iget-object p1, p1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 87
    .line 88
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/lit8 v1, v1, -0x1

    .line 97
    .line 98
    :goto_1
    if-ltz v1, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 105
    .line 106
    if-ne v2, p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
