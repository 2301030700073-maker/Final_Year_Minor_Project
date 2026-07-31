.class public final Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

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
    iget v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->L$0:Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Landroidx/paging/PagingData;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 19
    .line 20
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :pswitch_0
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribEmptyMessagesAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 34
    .line 35
    iget-object v0, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 47
    .line 48
    .line 49
    instance-of v0, v4, Landroidx/paging/LoadState$NotLoading;

    .line 50
    .line 51
    const-string v4, "binding"

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->source:Landroidx/paging/LoadStates;

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 58
    .line 59
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    iget-object p0, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    iget-object p0, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_1
    iget-object p0, v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 97
    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-object v2

    .line 117
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    invoke-direct {p1, v3, v1, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x3

    .line 133
    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 137
    .line 138
    const/4 v4, 0x2

    .line 139
    invoke-direct {p1, v3, v1, v4}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 140
    .line 141
    .line 142
    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 143
    .line 144
    .line 145
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 146
    .line 147
    invoke-direct {p1, v3, v1, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
