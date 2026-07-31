.class public final Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final differ:Landroidx/paging/AsyncPagingDataDiffer;

.field public final loadStateFlow:Lkotlinx/coroutines/flow/Flow;

.field public submitCompleted:Z

.field public final synthetic this$0:Ljava/lang/Object;

.field public userSetRestorationPolicy:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil;)V
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroidx/paging/AsyncPagingDataDiffer;

    .line 17
    .line 18
    new-instance v3, Lcoil3/memory/MemoryCacheService;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, v4, p0}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p1, v3, v0, v1}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil;Lcoil3/memory/MemoryCacheService;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 28
    .line 29
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroidx/paging/PagingDataAdapter$1;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, v0, p0}, Landroidx/paging/PagingDataAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroidx/paging/PagingDataAdapter$2;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Landroidx/paging/PagingDataAdapter$2;-><init>(Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v2, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 56
    .line 57
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 58
    .line 59
    iput-boolean v4, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitCompleted:Z

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/categories/CategoryActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 65
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 66
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 67
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 83
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 84
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 85
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 68
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 69
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 70
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 79
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    .line 80
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 81
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 82
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 75
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    .line 76
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 77
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 78
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 62
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 63
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 64
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 71
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    .line 72
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;

    .line 73
    invoke-direct {p1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;-><init>(I)V

    .line 74
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    return-void
.end method

.method public static final _init_$considerAllowingStateRestoration(Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 2
    .line 3
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->userSetRestorationPolicy:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->userSetRestorationPolicy:Z

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final addLoadStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lkotlin/collections/IndexingIterable;

    .line 35
    .line 36
    iget-object v2, v2, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iput p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/paging/PageStore;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    if-ltz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/paging/PageStore;->getSize()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge p1, v2, :cond_2

    .line 43
    .line 44
    iget v2, v1, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 45
    .line 46
    sub-int/2addr p1, v2

    .line 47
    if-ltz p1, :cond_4

    .line 48
    .line 49
    iget v2, v1, Landroidx/paging/PageStore;->dataCount:I

    .line 50
    .line 51
    if-lt p1, v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "Index: "

    .line 60
    .line 61
    const-string v3, ", Size: "

    .line 62
    .line 63
    invoke-static {p1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1}, Landroidx/paging/PageStore;->getSize()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1, p1}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    move-object v1, p1

    .line 88
    check-cast v1, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    return-object p0

    .line 102
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    move-object v1, p1

    .line 107
    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    throw p0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/paging/PageStore;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/paging/PageStore;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, -0x1

    .line 2
    .line 3
    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 16
    .line 17
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    instance-of p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 8
    .line 9
    const-string v7, "hh:mm a"

    .line 10
    .line 11
    const-string v8, "HH:mm"

    .line 12
    .line 13
    const v11, 0x7f12051f

    .line 14
    .line 15
    .line 16
    const/4 v12, 0x2

    .line 17
    const v13, 0x7f0401c3

    .line 18
    .line 19
    .line 20
    const v15, 0x7f04054f

    .line 21
    .line 22
    .line 23
    const v4, 0x7f090195

    .line 24
    .line 25
    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;

    .line 34
    .line 35
    instance-of v2, v1, Lorg/wikipedia/usercontrib/UserContribListActivity$SeparatorViewHolder;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribListActivity$SeparatorViewHolder;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 45
    .line 46
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;->date:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_0
    instance-of v2, v1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;

    .line 62
    .line 63
    if-eqz v2, :cond_7

    .line 64
    .line 65
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 71
    .line 72
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;->item:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iput-object v0, v1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->contrib:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 78
    .line 79
    iget-object v2, v1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->view:Lorg/wikipedia/usercontrib/UserContribItemView;

    .line 80
    .line 81
    iget-object v3, v1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 82
    .line 83
    sget v4, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 84
    .line 85
    invoke-virtual {v3}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v3, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v16, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget v6, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->sizediff:I

    .line 103
    .line 104
    invoke-static {v14, v6}, Lorg/wikipedia/util/StringUtil;->getDiffBytesText(Landroid/content/Context;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    iget-object v5, v2, Lorg/wikipedia/usercontrib/UserContribItemView;->binding:Lretrofit2/Retrofit;

    .line 109
    .line 110
    iget-object v10, v5, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v10, Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v9, v5, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v9, Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-static {v10, v14, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-ltz v6, :cond_2

    .line 122
    .line 123
    if-lez v6, :cond_1

    .line 124
    .line 125
    const v14, 0x7f0405d1

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    move v14, v15

    .line 130
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v6, v14}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v6, v13}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    iget-object v6, v5, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v6, Landroid/widget/TextView;

    .line 162
    .line 163
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v10}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-static {v6, v10, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-nez v6, :cond_3

    .line 177
    .line 178
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 179
    .line 180
    invoke-virtual {v9, v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v3, v15}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 210
    .line 211
    const/4 v10, 0x0

    .line 212
    invoke-virtual {v9, v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const v11, 0x7f04051a

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v11}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    .line 231
    .line 232
    iget-boolean v6, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->minor:Z

    .line 233
    .line 234
    if-eqz v6, :cond_4

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const/4 v11, 0x1

    .line 241
    new-array v12, v11, [Ljava/lang/Object;

    .line 242
    .line 243
    aput-object v4, v12, v10

    .line 244
    .line 245
    const v4, 0x7f120527

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v4, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    :cond_4
    invoke-static {v9, v4, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_2
    iget-object v3, v5, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v3, Landroid/widget/TextView;

    .line 262
    .line 263
    iget-boolean v4, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->top:Z

    .line 264
    .line 265
    if-eqz v4, :cond_5

    .line 266
    .line 267
    const/4 v9, 0x0

    .line 268
    goto :goto_3

    .line 269
    :cond_5
    const/16 v9, 0x8

    .line 270
    .line 271
    :goto_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    iget-object v3, v5, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v3, Landroid/widget/TextView;

    .line 277
    .line 278
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 279
    .line 280
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 288
    .line 289
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lj$/time/LocalDateTime;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_6

    .line 303
    .line 304
    move-object v7, v8

    .line 305
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    const/4 v11, 0x1

    .line 313
    invoke-static {v7, v4, v11}, Lorg/wikipedia/util/DateUtil;->getCachedDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;Z)Lj$/time/format/DateTimeFormatter;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4, v0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v1}, Lorg/wikipedia/usercontrib/UserContribItemView;->setListener(Lorg/wikipedia/usercontrib/UserContribItemView$Listener;)V

    .line 328
    .line 329
    .line 330
    :cond_7
    :goto_4
    return-void

    .line 331
    :pswitch_0
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 336
    .line 337
    if-eqz v0, :cond_a

    .line 338
    .line 339
    check-cast v1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$ArchivedTalkPageItemHolder;

    .line 340
    .line 341
    iget-object v1, v1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$ArchivedTalkPageItemHolder;->view:Lorg/wikipedia/views/PageItemView;

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 359
    .line 360
    if-eqz v2, :cond_9

    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_8

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_8
    const/4 v9, 0x0

    .line 370
    :goto_5
    const/16 v18, 0x1

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_9
    :goto_6
    const/4 v9, 0x1

    .line 374
    goto :goto_5

    .line 375
    :goto_7
    xor-int/lit8 v2, v9, 0x1

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setImageVisible(Z)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    :cond_a
    return-void

    .line 386
    :pswitch_1
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;

    .line 391
    .line 392
    instance-of v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SeparatorViewHolder;

    .line 393
    .line 394
    if-eqz v2, :cond_b

    .line 395
    .line 396
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SeparatorViewHolder;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 402
    .line 403
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;->date:Ljava/lang/String;

    .line 404
    .line 405
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 406
    .line 407
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    check-cast v1, Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_13

    .line 417
    .line 418
    :cond_b
    instance-of v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;

    .line 419
    .line 420
    if-eqz v2, :cond_16

    .line 421
    .line 422
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 428
    .line 429
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;->view:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;

    .line 435
    .line 436
    iget-object v3, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 437
    .line 438
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    iget-object v3, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 443
    .line 444
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 445
    .line 446
    iput-object v0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 447
    .line 448
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 449
    .line 450
    iget-object v5, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->binding:Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;

    .line 451
    .line 452
    iget-object v6, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->titleText:Landroid/widget/TextView;

    .line 453
    .line 454
    iget-object v9, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->containerView:Lorg/wikipedia/views/WikiCardView;

    .line 455
    .line 456
    iget-object v10, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->tagsText:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 457
    .line 458
    iget-object v14, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->diffText:Lcom/google/android/material/button/MaterialButton;

    .line 459
    .line 460
    iget-object v15, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->userNameText:Lcom/google/android/material/button/MaterialButton;

    .line 461
    .line 462
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    .line 463
    .line 464
    invoke-static {v6, v12, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v6, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->summaryText:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 468
    .line 469
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedComment:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v12}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 476
    .line 477
    .line 478
    move-result v17

    .line 479
    if-nez v17, :cond_c

    .line 480
    .line 481
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object v12

    .line 485
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v12

    .line 489
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    const/4 v11, 0x1

    .line 493
    goto :goto_8

    .line 494
    :cond_c
    const/4 v11, 0x0

    .line 495
    :goto_8
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 499
    .line 500
    if-eqz v11, :cond_d

    .line 501
    .line 502
    const/4 v13, 0x2

    .line 503
    goto :goto_9

    .line 504
    :cond_d
    const/4 v13, 0x0

    .line 505
    :goto_9
    invoke-virtual {v6, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    if-eqz v11, :cond_e

    .line 516
    .line 517
    const v11, 0x7f04054f

    .line 518
    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_e
    const v11, 0x7f04051a

    .line 522
    .line 523
    .line 524
    :goto_a
    invoke-static {v13, v11}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 525
    .line 526
    .line 527
    move-result v11

    .line 528
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    .line 530
    .line 531
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->joinedTags$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 532
    .line 533
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    check-cast v6, Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    if-nez v11, :cond_f

    .line 544
    .line 545
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    const v11, 0x7f12056f

    .line 550
    .line 551
    .line 552
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    const/4 v11, 0x1

    .line 560
    goto :goto_b

    .line 561
    :cond_f
    const/4 v11, 0x0

    .line 562
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 563
    .line 564
    .line 565
    move-result-object v13

    .line 566
    move-object/from16 p0, v6

    .line 567
    .line 568
    move-object/from16 v20, v7

    .line 569
    .line 570
    const/4 v6, 0x1

    .line 571
    new-array v7, v6, [Ljava/lang/Object;

    .line 572
    .line 573
    const/16 v19, 0x0

    .line 574
    .line 575
    aput-object p0, v7, v19

    .line 576
    .line 577
    const v6, 0x7f12056e

    .line 578
    .line 579
    .line 580
    invoke-virtual {v13, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v10, v6, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    if-eqz v11, :cond_10

    .line 591
    .line 592
    const/4 v6, 0x2

    .line 593
    goto :goto_c

    .line 594
    :cond_10
    const/4 v6, 0x0

    .line 595
    :goto_c
    invoke-virtual {v10, v12, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    if-eqz v11, :cond_11

    .line 606
    .line 607
    const v7, 0x7f04054f

    .line 608
    .line 609
    .line 610
    goto :goto_d

    .line 611
    :cond_11
    const v7, 0x7f04051a

    .line 612
    .line 613
    .line 614
    :goto_d
    invoke-static {v6, v7}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    .line 620
    .line 621
    iget-object v5, v5, Lorg/wikipedia/databinding/ItemSuggestedEditsRecentEditsBinding;->timeText:Landroid/widget/TextView;

    .line 622
    .line 623
    sget-object v6, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 624
    .line 625
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 626
    .line 627
    .line 628
    move-result-object v6

    .line 629
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_12

    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_12
    move-object/from16 v8, v20

    .line 644
    .line 645
    :goto_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    const/4 v11, 0x1

    .line 653
    invoke-static {v8, v6, v11}, Lorg/wikipedia/util/DateUtil;->getCachedDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;Z)Lj$/time/format/DateTimeFormatter;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    invoke-virtual {v6, v7}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    invoke-static {v5, v6, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    .line 669
    .line 670
    invoke-static {v15, v4, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    new-array v5, v11, [Ljava/lang/Object;

    .line 678
    .line 679
    const/16 v19, 0x0

    .line 680
    .line 681
    aput-object v4, v5, v19

    .line 682
    .line 683
    const v4, 0x7f12097e

    .line 684
    .line 685
    .line 686
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v15, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 691
    .line 692
    .line 693
    iget-boolean v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 694
    .line 695
    if-eqz v3, :cond_13

    .line 696
    .line 697
    const v4, 0x7f080111

    .line 698
    .line 699
    .line 700
    goto :goto_f

    .line 701
    :cond_13
    const v4, 0x7f08020a

    .line 702
    .line 703
    .line 704
    :goto_f
    invoke-virtual {v15, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 705
    .line 706
    .line 707
    iget v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->newlen:I

    .line 708
    .line 709
    iget v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oldlen:I

    .line 710
    .line 711
    sub-int/2addr v3, v0

    .line 712
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    invoke-static {v0, v3}, Lorg/wikipedia/util/StringUtil;->getDiffBytesText(Landroid/content/Context;I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    const v5, 0x7f040094

    .line 731
    .line 732
    .line 733
    invoke-static {v4, v5}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 741
    .line 742
    .line 743
    const/4 v10, 0x0

    .line 744
    invoke-virtual {v14, v10}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v14, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 748
    .line 749
    .line 750
    if-ltz v3, :cond_15

    .line 751
    .line 752
    if-lez v3, :cond_14

    .line 753
    .line 754
    const v0, 0x7f0405d1

    .line 755
    .line 756
    .line 757
    goto :goto_10

    .line 758
    :cond_14
    const v0, 0x7f04054f

    .line 759
    .line 760
    .line 761
    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    invoke-static {v3, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    .line 774
    .line 775
    :goto_11
    const/4 v10, 0x0

    .line 776
    goto :goto_12

    .line 777
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    const v3, 0x7f0401c3

    .line 785
    .line 786
    .line 787
    invoke-static {v0, v3}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 792
    .line 793
    .line 794
    goto :goto_11

    .line 795
    :goto_12
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 796
    .line 797
    .line 798
    const/high16 v0, 0x3f800000    # 1.0f

    .line 799
    .line 800
    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 801
    .line 802
    .line 803
    const/4 v11, 0x1

    .line 804
    invoke-virtual {v9, v11}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->setCallback(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$Callback;)V

    .line 808
    .line 809
    .line 810
    :cond_16
    :goto_13
    return-void

    .line 811
    :pswitch_2
    move-object/from16 v20, v7

    .line 812
    .line 813
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;

    .line 818
    .line 819
    instance-of v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SeparatorViewHolder;

    .line 820
    .line 821
    if-eqz v2, :cond_17

    .line 822
    .line 823
    check-cast v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SeparatorViewHolder;

    .line 824
    .line 825
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 829
    .line 830
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;->date:Ljava/lang/String;

    .line 831
    .line 832
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 833
    .line 834
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    check-cast v1, Landroid/widget/TextView;

    .line 839
    .line 840
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_19

    .line 844
    .line 845
    :cond_17
    instance-of v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 846
    .line 847
    if-eqz v2, :cond_1f

    .line 848
    .line 849
    check-cast v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 855
    .line 856
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 857
    .line 858
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    iput-object v0, v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 862
    .line 863
    iget-object v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->view:Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 864
    .line 865
    iget-object v3, v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 866
    .line 867
    sget v4, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 868
    .line 869
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    iget-object v3, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 874
    .line 875
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 876
    .line 877
    iget v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 878
    .line 879
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 880
    .line 881
    iget-object v6, v2, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 882
    .line 883
    iget-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast v7, Landroid/widget/TextView;

    .line 886
    .line 887
    iget-object v9, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 890
    .line 891
    iget-object v10, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v10, Landroid/widget/TextView;

    .line 894
    .line 895
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 896
    .line 897
    .line 898
    move-result-object v12

    .line 899
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    .line 901
    .line 902
    invoke-static {v12, v5}, Lorg/wikipedia/util/StringUtil;->getDiffBytesText(Landroid/content/Context;I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v12

    .line 906
    invoke-static {v7, v12, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    if-ltz v5, :cond_19

    .line 910
    .line 911
    if-lez v5, :cond_18

    .line 912
    .line 913
    const v14, 0x7f0405d1

    .line 914
    .line 915
    .line 916
    goto :goto_14

    .line 917
    :cond_18
    const v14, 0x7f04054f

    .line 918
    .line 919
    .line 920
    :goto_14
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 921
    .line 922
    .line 923
    move-result-object v5

    .line 924
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    invoke-static {v5, v14}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 928
    .line 929
    .line 930
    move-result v5

    .line 931
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    .line 933
    .line 934
    goto :goto_15

    .line 935
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    .line 941
    .line 942
    const v12, 0x7f0401c3

    .line 943
    .line 944
    .line 945
    invoke-static {v5, v12}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    .line 951
    .line 952
    :goto_15
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 953
    .line 954
    if-eqz v5, :cond_1a

    .line 955
    .line 956
    const v5, 0x7f080111

    .line 957
    .line 958
    .line 959
    goto :goto_16

    .line 960
    :cond_1a
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 961
    .line 962
    if-eqz v5, :cond_1b

    .line 963
    .line 964
    const v5, 0x7f0801f6

    .line 965
    .line 966
    .line 967
    goto :goto_16

    .line 968
    :cond_1b
    const v5, 0x7f08020a

    .line 969
    .line 970
    .line 971
    :goto_16
    invoke-virtual {v9, v5}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    if-nez v5, :cond_1c

    .line 979
    .line 980
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 981
    .line 982
    const/4 v5, 0x2

    .line 983
    invoke-virtual {v10, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    const v5, 0x7f04054f

    .line 994
    .line 995
    .line 996
    invoke-static {v4, v5}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_17

    .line 1015
    :cond_1c
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1016
    .line 1017
    const/4 v7, 0x0

    .line 1018
    invoke-virtual {v10, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1026
    .line 1027
    .line 1028
    const v11, 0x7f04051a

    .line 1029
    .line 1030
    .line 1031
    invoke-static {v5, v11}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 1032
    .line 1033
    .line 1034
    move-result v5

    .line 1035
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1036
    .line 1037
    .line 1038
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->minor:Z

    .line 1039
    .line 1040
    if-eqz v5, :cond_1d

    .line 1041
    .line 1042
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v5

    .line 1046
    const/4 v11, 0x1

    .line 1047
    new-array v11, v11, [Ljava/lang/Object;

    .line 1048
    .line 1049
    aput-object v4, v11, v7

    .line 1050
    .line 1051
    const v4, 0x7f120527

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v5, v4, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v4

    .line 1058
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    :cond_1d
    invoke-static {v10, v4, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    :goto_17
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 1066
    .line 1067
    invoke-static {v9, v4, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    iget-object v3, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v3, Landroid/widget/TextView;

    .line 1073
    .line 1074
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1075
    .line 1076
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v4

    .line 1080
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 1084
    .line 1085
    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v4

    .line 1093
    if-eqz v4, :cond_1e

    .line 1094
    .line 1095
    move-object v7, v8

    .line 1096
    goto :goto_18

    .line 1097
    :cond_1e
    move-object/from16 v7, v20

    .line 1098
    .line 1099
    :goto_18
    invoke-static {v7, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->updateSelectState()V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v2, v1}, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->setListener(Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;)V

    .line 1110
    .line 1111
    .line 1112
    :cond_1f
    :goto_19
    return-void

    .line 1113
    :pswitch_3
    const/4 v7, 0x0

    .line 1114
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1119
    .line 1120
    if-eqz v0, :cond_24

    .line 1121
    .line 1122
    check-cast v1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$TemplatesSearchItemHolder;

    .line 1123
    .line 1124
    iget-object v2, v1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$TemplatesSearchItemHolder;->this$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1125
    .line 1126
    iget-object v3, v1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$TemplatesSearchItemHolder;->binding:Lokhttp3/MultipartBody$Builder;

    .line 1127
    .line 1128
    iget-object v4, v3, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 1129
    .line 1130
    check-cast v4, Landroid/widget/TextView;

    .line 1131
    .line 1132
    iget-object v3, v3, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v3, Landroid/widget/TextView;

    .line 1135
    .line 1136
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1137
    .line 1138
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v5

    .line 1142
    const/16 v6, 0x3a

    .line 1143
    .line 1144
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v5

    .line 1148
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v5, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1152
    .line 1153
    if-eqz v5, :cond_21

    .line 1154
    .line 1155
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1156
    .line 1157
    .line 1158
    move-result v5

    .line 1159
    if-nez v5, :cond_20

    .line 1160
    .line 1161
    goto :goto_1a

    .line 1162
    :cond_20
    move v9, v7

    .line 1163
    goto :goto_1b

    .line 1164
    :cond_21
    :goto_1a
    const/16 v9, 0x8

    .line 1165
    .line 1166
    :goto_1b
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v5, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1170
    .line 1171
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v3

    .line 1178
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    invoke-virtual {v2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v5

    .line 1186
    iget-object v5, v5, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchQuery:Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-static {v4, v3, v5}, Lorg/wikipedia/util/StringUtil;->boldenKeywordText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v3

    .line 1195
    iget-object v3, v3, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchQuery:Ljava/lang/String;

    .line 1196
    .line 1197
    if-eqz v3, :cond_23

    .line 1198
    .line 1199
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1200
    .line 1201
    .line 1202
    move-result v3

    .line 1203
    if-nez v3, :cond_22

    .line 1204
    .line 1205
    goto :goto_1c

    .line 1206
    :cond_22
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1207
    .line 1208
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1209
    .line 1210
    .line 1211
    goto :goto_1d

    .line 1212
    :cond_23
    :goto_1c
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1213
    .line 1214
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1215
    .line 1216
    .line 1217
    :goto_1d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1218
    .line 1219
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 1220
    .line 1221
    const/16 v4, 0x9

    .line 1222
    .line 1223
    invoke-direct {v3, v4, v2, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    .line 1228
    .line 1229
    :cond_24
    return-void

    .line 1230
    :pswitch_4
    const/4 v7, 0x0

    .line 1231
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1236
    .line 1237
    if-eqz v0, :cond_28

    .line 1238
    .line 1239
    check-cast v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;

    .line 1240
    .line 1241
    iget-object v2, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 1242
    .line 1243
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;->binding:Lokio/internal/DefaultSocket;

    .line 1244
    .line 1245
    iget-object v3, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 1246
    .line 1247
    check-cast v3, Landroid/widget/ImageView;

    .line 1248
    .line 1249
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 1250
    .line 1251
    const/4 v5, 0x0

    .line 1252
    const/16 v6, 0x1c

    .line 1253
    .line 1254
    invoke-static {v3, v4, v5, v6}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 1255
    .line 1256
    .line 1257
    iget-object v3, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 1258
    .line 1259
    check-cast v3, Landroid/widget/TextView;

    .line 1260
    .line 1261
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1262
    .line 1263
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1264
    .line 1265
    if-nez v4, :cond_25

    .line 1266
    .line 1267
    const-string v4, ""

    .line 1268
    .line 1269
    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1270
    .line 1271
    .line 1272
    move-result v5

    .line 1273
    if-nez v5, :cond_26

    .line 1274
    .line 1275
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v4

    .line 1279
    :cond_26
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v4

    .line 1283
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    .line 1285
    .line 1286
    iget-object v3, v1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v3, Landroid/widget/ImageView;

    .line 1289
    .line 1290
    invoke-virtual {v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v4

    .line 1294
    iget-object v4, v4, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 1295
    .line 1296
    invoke-virtual {v0, v4}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v4

    .line 1300
    if-eqz v4, :cond_27

    .line 1301
    .line 1302
    move v9, v7

    .line 1303
    goto :goto_1e

    .line 1304
    :cond_27
    const/16 v9, 0x8

    .line 1305
    .line 1306
    :goto_1e
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    .line 1308
    .line 1309
    iget-object v1, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 1310
    .line 1311
    check-cast v1, Landroid/widget/FrameLayout;

    .line 1312
    .line 1313
    new-instance v3, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;

    .line 1314
    .line 1315
    invoke-direct {v3, v2, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lorg/wikipedia/page/PageTitle;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    .line 1320
    .line 1321
    :cond_28
    return-void

    .line 1322
    :pswitch_5
    const/4 v7, 0x0

    .line 1323
    invoke-virtual {v0, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItem(I)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1328
    .line 1329
    if-eqz v0, :cond_2c

    .line 1330
    .line 1331
    check-cast v1, Lorg/wikipedia/categories/CategoryActivity$CategoryItemHolder;

    .line 1332
    .line 1333
    iget-object v1, v1, Lorg/wikipedia/categories/CategoryActivity$CategoryItemHolder;->view:Lorg/wikipedia/views/PageItemView;

    .line 1334
    .line 1335
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v2

    .line 1342
    sget-object v3, Lorg/wikipedia/page/Namespace;->CATEGORY:Lorg/wikipedia/page/Namespace;

    .line 1343
    .line 1344
    if-eq v2, v3, :cond_29

    .line 1345
    .line 1346
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v2

    .line 1350
    goto :goto_1f

    .line 1351
    :cond_29
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1352
    .line 1353
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    const-string v3, "_"

    .line 1358
    .line 1359
    const-string v4, " "

    .line 1360
    .line 1361
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v2

    .line 1365
    :goto_1f
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 1369
    .line 1370
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 1374
    .line 1375
    if-eqz v2, :cond_2b

    .line 1376
    .line 1377
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1378
    .line 1379
    .line 1380
    move-result v2

    .line 1381
    if-nez v2, :cond_2a

    .line 1382
    .line 1383
    goto :goto_21

    .line 1384
    :cond_2a
    move v9, v7

    .line 1385
    :goto_20
    const/16 v18, 0x1

    .line 1386
    .line 1387
    goto :goto_22

    .line 1388
    :cond_2b
    :goto_21
    const/4 v9, 0x1

    .line 1389
    goto :goto_20

    .line 1390
    :goto_22
    xor-int/lit8 v2, v9, 0x1

    .line 1391
    .line 1392
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/PageItemView;->setImageVisible(Z)V

    .line 1393
    .line 1394
    .line 1395
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1396
    .line 1397
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 1398
    .line 1399
    .line 1400
    :cond_2c
    return-void

    .line 1401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "Missing required view with ID: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f0c02fd

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$SeparatorViewHolder;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;

    .line 37
    .line 38
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribItemView;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lorg/wikipedia/usercontrib/UserContribItemView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lorg/wikipedia/usercontrib/UserContribItemView;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p2

    .line 47
    :pswitch_0
    new-instance p1, Lorg/wikipedia/views/PageItemView;

    .line 48
    .line 49
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->itemCallback:Lorg/wikipedia/media/AvPlayer;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$ArchivedTalkPageItemHolder;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$ArchivedTalkPageItemHolder;-><init>(Lorg/wikipedia/views/PageItemView;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_1
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SeparatorViewHolder;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;

    .line 87
    .line 88
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-object p2

    .line 101
    :pswitch_2
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 102
    .line 103
    if-nez p2, :cond_2

    .line 104
    .line 105
    new-instance p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SeparatorViewHolder;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    new-instance p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 123
    .line 124
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lorg/wikipedia/page/edithistory/EditHistoryItemView;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lorg/wikipedia/page/edithistory/EditHistoryItemView;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    return-object p2

    .line 133
    :pswitch_3
    new-instance p2, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$TemplatesSearchItemHolder;

    .line 134
    .line 135
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const v3, 0x7f0c031d

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const v0, 0x7f090300

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v3, :cond_3

    .line 158
    .line 159
    const v0, 0x7f090301

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Landroid/widget/TextView;

    .line 167
    .line 168
    if-eqz v4, :cond_3

    .line 169
    .line 170
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 171
    .line 172
    check-cast p1, Landroid/widget/LinearLayout;

    .line 173
    .line 174
    invoke-direct {v0, p1, v3, v4}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$TemplatesSearchItemHolder;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lokhttp3/MultipartBody$Builder;)V

    .line 178
    .line 179
    .line 180
    move-object v2, p2

    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_3
    return-object v2

    .line 198
    :pswitch_4
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;

    .line 199
    .line 200
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    const v0, 0x7f0c0302

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const v0, 0x7f0902be

    .line 214
    .line 215
    .line 216
    invoke-static {p2, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    move-object v6, v3

    .line 221
    check-cast v6, Landroid/widget/TextView;

    .line 222
    .line 223
    if-eqz v6, :cond_4

    .line 224
    .line 225
    const v0, 0x7f0902de

    .line 226
    .line 227
    .line 228
    invoke-static {p2, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object v7, v3

    .line 233
    check-cast v7, Landroid/widget/ImageView;

    .line 234
    .line 235
    if-eqz v7, :cond_4

    .line 236
    .line 237
    const v0, 0x7f0905e5

    .line 238
    .line 239
    .line 240
    invoke-static {p2, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    move-object v8, v3

    .line 245
    check-cast v8, Landroid/widget/ImageView;

    .line 246
    .line 247
    if-eqz v8, :cond_4

    .line 248
    .line 249
    new-instance v4, Lokio/internal/DefaultSocket;

    .line 250
    .line 251
    move-object v5, p2

    .line 252
    check-cast v5, Landroid/widget/FrameLayout;

    .line 253
    .line 254
    const/16 v9, 0x13

    .line 255
    .line 256
    invoke-direct/range {v4 .. v9}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    invoke-direct {p1, p0, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lokio/internal/DefaultSocket;)V

    .line 260
    .line 261
    .line 262
    move-object v2, p1

    .line 263
    goto :goto_4

    .line 264
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :goto_4
    return-object v2

    .line 280
    :pswitch_5
    new-instance p1, Lorg/wikipedia/views/PageItemView;

    .line 281
    .line 282
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity;

    .line 283
    .line 284
    invoke-direct {p1, p0}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity;->itemCallback:Lokhttp3/ConnectionPool;

    .line 288
    .line 289
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 290
    .line 291
    .line 292
    new-instance p0, Lorg/wikipedia/categories/CategoryActivity$CategoryItemHolder;

    .line 293
    .line 294
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryItemHolder;-><init>(Lorg/wikipedia/views/PageItemView;)V

    .line 295
    .line 296
    .line 297
    return-object p0

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final refresh()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->refresh()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final retry()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Paging"

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "Retry signal received"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/paging/UiReceiver;->retry()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, p2, v2, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p0, v1, v2

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    aput-object p1, v1, p0

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    const/16 v1, 0x18

    .line 10
    .line 11
    invoke-direct {v0, v1, p1, p2}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object p0, v1, p1

    .line 27
    .line 28
    const/4 p0, 0x2

    .line 29
    aput-object p2, v1, p0

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
