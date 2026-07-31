.class public final Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/categories/CategoryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

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
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_3
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, v0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Landroidx/paging/PagingData;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_2
    check-cast p1, Landroidx/paging/PagingData;

    .line 51
    .line 52
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 65
    .line 66
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 29
    .line 30
    .line 31
    instance-of p1, p0, Landroidx/paging/LoadState$NotLoading;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-boolean p0, p0, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    iget-object p0, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 48
    .line 49
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$EmptyItemAdapter;

    .line 50
    .line 51
    const v0, 0x7f12087e

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v2, v0}, Lorg/wikipedia/categories/CategoryActivity$EmptyItemAdapter;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-object v1

    .line 61
    :pswitch_0
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 78
    .line 79
    .line 80
    instance-of p1, p0, Landroidx/paging/LoadState$NotLoading;

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-boolean p0, p0, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 85
    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    iget-object p0, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_1

    .line 95
    .line 96
    iget-object p0, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 97
    .line 98
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$EmptyItemAdapter;

    .line 99
    .line 100
    const v0, 0x7f1200b6

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v2, v0}, Lorg/wikipedia/categories/CategoryActivity$EmptyItemAdapter;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-object v1

    .line 110
    :pswitch_1
    check-cast p0, Landroidx/paging/PagingData;

    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 116
    .line 117
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :pswitch_2
    check-cast p0, Landroidx/paging/PagingData;

    .line 126
    .line 127
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 131
    .line 132
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :pswitch_3
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 141
    .line 142
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 146
    .line 147
    const/4 v0, 0x1

    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 150
    .line 151
    .line 152
    const/4 v0, 0x3

    .line 153
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 154
    .line 155
    .line 156
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 157
    .line 158
    const/4 v4, 0x2

    .line 159
    invoke-direct {p1, v2, v3, v4}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 163
    .line 164
    .line 165
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 166
    .line 167
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 171
    .line 172
    .line 173
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 174
    .line 175
    const/4 v4, 0x4

    .line 176
    invoke-direct {p1, v2, v3, v4}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
