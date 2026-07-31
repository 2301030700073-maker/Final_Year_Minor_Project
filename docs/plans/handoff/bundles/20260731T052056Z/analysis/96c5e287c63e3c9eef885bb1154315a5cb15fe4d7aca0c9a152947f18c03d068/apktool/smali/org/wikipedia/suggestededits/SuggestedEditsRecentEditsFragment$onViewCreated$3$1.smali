.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/paging/PagingData;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/paging/PagingData;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsEmptyMessagesAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 33
    .line 34
    iget-object v0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 46
    .line 47
    .line 48
    instance-of v0, v3, Landroidx/paging/LoadState$NotLoading;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->source:Landroidx/paging/LoadStates;

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 55
    .line 56
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 57
    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    iget-object p0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_0

    .line 67
    .line 68
    const-string p0, "pt_filters"

    .line 69
    .line 70
    const-string v0, ""

    .line 71
    .line 72
    const-string v3, "filter_empty_impression"

    .line 73
    .line 74
    invoke-static {v3, p0, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-object v1

    .line 121
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x3

    .line 134
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 135
    .line 136
    .line 137
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 138
    .line 139
    const/4 v4, 0x2

    .line 140
    invoke-direct {p1, v2, v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 147
    .line 148
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
