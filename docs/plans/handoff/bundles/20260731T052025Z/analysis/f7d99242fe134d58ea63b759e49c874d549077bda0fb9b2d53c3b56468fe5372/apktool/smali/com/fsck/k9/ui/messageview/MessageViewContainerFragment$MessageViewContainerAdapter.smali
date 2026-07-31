.class public final Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mFragmentEventDispatcher:Landroidx/fragment/app/Fragment$7;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

.field public final mFragments:Landroidx/collection/LongSparseArray;

.field public mHasStaleFragments:Z

.field public mIsInGracePeriod:Z

.field public final mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public final mSavedStates:Landroidx/collection/LongSparseArray;

.field public messageList:Ljava/util/List;

.field public final showAccountIndicator:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 17
    .line 18
    new-instance v1, Landroidx/collection/LongSparseArray;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    .line 24
    .line 25
    new-instance v1, Landroidx/collection/LongSparseArray;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 31
    .line 32
    new-instance v1, Landroidx/fragment/app/Fragment$7;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, v1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentEventDispatcher:Landroidx/fragment/app/Fragment$7;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mIsInGracePeriod:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mHasStaleFragments:Z

    .line 50
    .line 51
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 57
    .line 58
    .line 59
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->showAccountIndicator:Z

    .line 60
    .line 61
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 64
    .line 65
    return-void
.end method

.method public static addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    const-string p0, "Design assumption violated."

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final containsItem(J)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 27
    .line 28
    iget-wide v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 29
    .line 30
    cmp-long v0, v0, p1

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final gcFragments()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mHasStaleFragments:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 19
    .line 20
    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 29
    .line 30
    if-ge v2, v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->containsItem(J)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v0, v6}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mIsInGracePeriod:Z

    .line 56
    .line 57
    if-nez v2, :cond_7

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mHasStaleFragments:Z

    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v1, v2, :cond_7

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ltz v2, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual {v3, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 88
    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    new-instance v1, Landroidx/collection/ArrayMap$KeyIterator;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 112
    .line 113
    .line 114
    :goto_4
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->removeFragment(J)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    :goto_5
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 10
    .line 11
    return-wide p0
.end method

.method public final itemForViewHolder(I)Ljava/lang/Long;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-ge v1, v4, :cond_2

    .line 11
    .line 12
    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ne v4, p1, :cond_1

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string p0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v2
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Landroidx/room/util/RelationUtil;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p0, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 18
    .line 19
    const-wide/16 v2, -0x1

    .line 20
    .line 21
    iput-wide v2, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 22
    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 24
    .line 25
    invoke-static {p1}, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v2, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 32
    .line 33
    invoke-direct {v2, v1, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logger:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 39
    .line 40
    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 48
    .line 49
    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->clock:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroidx/savedstate/Recreator;

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    invoke-direct {p1, v1, v0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logTag:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v2, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    cmp-long v6, v6, v0

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->removeFragment(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v5, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->getItemId(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 55
    .line 56
    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ltz v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-ltz p2, :cond_5

    .line 64
    .line 65
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ge p2, v4, :cond_5

    .line 72
    .line 73
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    new-instance v4, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 86
    .line 87
    invoke-direct {v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v5, Lkotlin/Pair;

    .line 95
    .line 96
    const-string v6, "reference"

    .line 97
    .line 98
    invoke-direct {v5, v6, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->showAccountIndicator:Z

    .line 102
    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-instance v6, Lkotlin/Pair;

    .line 108
    .line 109
    const-string v7, "showAccountIndicator"

    .line 110
    .line 111
    invoke-direct {v6, v7, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/4 p2, 0x2

    .line 115
    new-array p2, p2, [Lkotlin/Pair;

    .line 116
    .line 117
    const/4 v7, 0x0

    .line 118
    aput-object v5, p2, v7

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    aput-object v6, p2, v5

    .line 122
    .line 123
    invoke-static {v4, p2}, Landroidx/work/OperationKt;->withArguments(Landroidx/fragment/app/Fragment;[Lkotlin/Pair;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    .line 127
    .line 128
    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroidx/fragment/app/Fragment$SavedState;

    .line 133
    .line 134
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 135
    .line 136
    if-nez v5, :cond_4

    .line 137
    .line 138
    if-eqz p2, :cond_2

    .line 139
    .line 140
    iget-object p2, p2, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 141
    .line 142
    if-eqz p2, :cond_2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    const/4 p2, 0x0

    .line 146
    :goto_0
    iput-object p2, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-virtual {v3, v0, v1, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_3

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->gcFragments()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_4
    const-string p0, "Fragment already added"

    .line 167
    .line 168
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_5
    const-string p0, "Check failed."

    .line 173
    .line 174
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    sget p0, Landroidx/viewpager2/adapter/FragmentViewHolder;->$r8$clinit:I

    .line 2
    .line 3
    new-instance p0, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 p2, -0x1

    .line 15
    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logger:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 26
    .line 27
    iget-object v1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->clock:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 30
    .line 31
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    iget-object v1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logTag:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroidx/savedstate/Recreator;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, v0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 49
    .line 50
    return-void
.end method

.method public final bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->gcFragments()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->removeFragment(J)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 8

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 4
    .line 5
    iget-wide v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6
    .line 7
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    const-string v2, "Design assumption violated."

    .line 14
    .line 15
    if-eqz v1, :cond_9

    .line 16
    .line 17
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    check-cast v3, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 47
    .line 48
    invoke-direct {p1, p0, v1, v3}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v5, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/compose/ui/platform/WeakCache;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Lcom/beetstra/jutf7/Base64Util;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eq p0, v3, :cond_7

    .line 86
    .line 87
    invoke-static {v4, v3}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-static {v4, v3}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    new-instance v2, Lcom/beetstra/jutf7/Base64Util;

    .line 108
    .line 109
    invoke-direct {v2, p0, v1, v3}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v5, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/compose/ui/platform/WeakCache;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    .line 121
    new-instance v4, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 122
    .line 123
    invoke-direct {v4, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Lcom/beetstra/jutf7/Base64Util;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentEventDispatcher:Landroidx/fragment/app/Fragment$7;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    new-instance v3, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v2, v2, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_5

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 155
    .line 156
    .line 157
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 158
    .line 159
    invoke-direct {v4, v5}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 160
    .line 161
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-wide v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 168
    .line 169
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const/4 v0, 0x1

    .line 177
    invoke-virtual {v4, v2, v1, p1, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 181
    .line 182
    invoke-virtual {v4, v1, p1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentMaxLifecycleEnforcer:Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->updateFragmentMaxLifecycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    invoke-static {v3}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_5
    invoke-static {v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    throw p0

    .line 207
    :cond_6
    iget-boolean v0, v5, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 208
    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    :cond_7
    return-void

    .line 212
    :cond_8
    new-instance v0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 213
    .line 214
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final removeFragment(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    check-cast v2, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->containsItem(J)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mHasStaleFragments:Z

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentEventDispatcher:Landroidx/fragment/app/Fragment$7;

    .line 65
    .line 66
    if-eqz v4, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->containsItem(J)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance p0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v4, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {p0}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p1, p2, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    invoke-static {v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    throw p0

    .line 112
    :cond_6
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance p0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v3, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_7

    .line 133
    .line 134
    :try_start_0
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 135
    .line 136
    invoke-direct {v3, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception p1

    .line 153
    invoke-static {p0}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_7
    invoke-static {v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    throw p0
.end method
