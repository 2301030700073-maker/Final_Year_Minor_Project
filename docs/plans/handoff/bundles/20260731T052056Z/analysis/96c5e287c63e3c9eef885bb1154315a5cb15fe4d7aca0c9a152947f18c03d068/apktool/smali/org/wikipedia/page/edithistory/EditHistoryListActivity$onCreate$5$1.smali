.class public final Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

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
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/paging/PagingData;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 21
    .line 22
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_0
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryEmptyMessagesAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 36
    .line 37
    iget-object v0, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 38
    .line 39
    iget-object v6, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 40
    .line 41
    iget-object v7, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 51
    .line 52
    .line 53
    iget-object v6, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 54
    .line 55
    const-string v8, "binding"

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v6, Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-le v9, v2, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {v5, v6, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->enableCompareButton(Landroid/widget/TextView;Z)V

    .line 72
    .line 73
    .line 74
    instance-of v1, v7, Landroidx/paging/LoadState$NotLoading;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->source:Landroidx/paging/LoadStates;

    .line 79
    .line 80
    iget-object p0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 81
    .line 82
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 83
    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_2

    .line 91
    .line 92
    iget-object p0, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 93
    .line 94
    if-eqz p0, :cond_1

    .line 95
    .line 96
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v3

    .line 117
    :cond_2
    iget-object p0, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 118
    .line 119
    if-eqz p0, :cond_3

    .line 120
    .line 121
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-object v4

    .line 138
    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v3

    .line 142
    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v3

    .line 146
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;

    .line 152
    .line 153
    invoke-direct {p1, v5, v3, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x3

    .line 157
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 158
    .line 159
    .line 160
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;

    .line 161
    .line 162
    invoke-direct {p1, v5, v3, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 163
    .line 164
    .line 165
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 166
    .line 167
    .line 168
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;

    .line 169
    .line 170
    invoke-direct {p1, v5, v3, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 174
    .line 175
    .line 176
    return-object v4

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
