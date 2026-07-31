.class public final Landroidx/paging/PagingDataAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    check-cast p0, Lokhttp3/Cache$RealCacheRequest;

    .line 11
    .line 12
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    check-cast p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 29
    .line 30
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->hasPendingUpdates()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_3
    check-cast p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 58
    .line 59
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    iget-object v1, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    check-cast v1, Lokhttp3/Cache$RealCacheRequest;

    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    return-void

    .line 82
    :pswitch_2
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->onChanged()V

    return-void

    .line 83
    :pswitch_3
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 85
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p1, v0

    .line 86
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast v1, Lokhttp3/Cache$RealCacheRequest;

    .line 13
    .line 14
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->onChanged()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 29
    .line 30
    iget-object v1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-ge p2, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x4

    .line 39
    invoke-virtual {v0, p3, v3, p1, p2}, Landroidx/compose/ui/node/RulerTrackingMap;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 47
    .line 48
    or-int/2addr p1, v3

    .line 49
    iput p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->triggerUpdateProcessor()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void

    .line 61
    :pswitch_3
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 62
    .line 63
    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 72
    .line 73
    add-int/2addr p1, v0

    .line 74
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lokhttp3/Cache$RealCacheRequest;

    .line 9
    .line 10
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->onChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-ge p2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1, v0, v3, p1, p2}, Landroidx/compose/ui/node/RulerTrackingMap;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget p1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 42
    .line 43
    or-int/2addr p1, v3

    .line 44
    iput p1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->triggerUpdateProcessor()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void

    .line 56
    :pswitch_2
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 57
    .line 58
    iget p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 59
    .line 60
    add-int/2addr p0, p2

    .line 61
    iput p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 62
    .line 63
    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 72
    .line 73
    add-int/2addr p1, v0

    .line 74
    invoke-virtual {v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 75
    .line 76
    .line 77
    iget p1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 78
    .line 79
    if-lez p1, :cond_2

    .line 80
    .line 81
    iget-object p1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 82
    .line 83
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 84
    .line 85
    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 86
    .line 87
    if-ne p1, p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void

    .line 93
    :pswitch_3
    check-cast v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 94
    .line 95
    invoke-static {v1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->_init_$considerAllowingStateRestoration(Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemRangeMoved(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast v1, Lokhttp3/Cache$RealCacheRequest;

    .line 10
    .line 11
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->onChanged()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 26
    .line 27
    iget-object v2, v1, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v3, 0x8

    .line 35
    .line 36
    invoke-virtual {v1, v0, v3, p1, p2}, Landroidx/compose/ui/node/RulerTrackingMap;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget p1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 44
    .line 45
    or-int/2addr p1, v3

    .line 46
    iput p1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 p2, 0x1

    .line 53
    if-ne p1, p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->triggerUpdateProcessor()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void

    .line 59
    :pswitch_3
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 60
    .line 61
    iget-object p0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 70
    .line 71
    add-int/2addr p1, v0

    .line 72
    add-int/2addr p2, v0

    .line 73
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemRangeRemoved(II)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    check-cast v2, Lokhttp3/Cache$RealCacheRequest;

    .line 11
    .line 12
    invoke-virtual {v2}, Lokhttp3/Cache$RealCacheRequest;->populateTabsFromPagerAdapter()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    if-ge p2, v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v4, 0x2

    .line 36
    invoke-virtual {v2, v0, v4, p1, p2}, Landroidx/compose/ui/node/RulerTrackingMap;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget p1, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 44
    .line 45
    or-int/2addr p1, v4

    .line 46
    iput p1, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-ne p1, v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/paging/PagingDataAdapter$1;->triggerUpdateProcessor()V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    :pswitch_3
    check-cast v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 59
    .line 60
    iget p0, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 61
    .line 62
    sub-int/2addr p0, p2

    .line 63
    iput p0, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 64
    .line 65
    iget-object p0, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 74
    .line 75
    add-int/2addr p1, v0

    .line 76
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 77
    .line 78
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 79
    .line 80
    .line 81
    iget p1, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 82
    .line 83
    if-ge p1, v1, :cond_2

    .line 84
    .line 85
    iget-object p1, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 86
    .line 87
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 88
    .line 89
    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 90
    .line 91
    if-ne p1, p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    if-eq v1, v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void

    .line 43
    :pswitch_1
    check-cast p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public triggerUpdateProcessor()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    .line 14
    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
