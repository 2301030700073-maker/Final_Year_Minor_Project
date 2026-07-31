.class public final Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

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
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    iget-object v5, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-ne v1, v6, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v3, v7

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget p1, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {v5}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 43
    .line 44
    new-instance v1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 45
    .line 46
    invoke-direct {v1, v5, v7, v2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    iput v6, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 50
    .line 51
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-ne p0, v0, :cond_2

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    :cond_2
    :goto_0
    return-object v3

    .line 59
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 60
    .line 61
    iget v1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    if-ne v1, v6, :cond_3

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v3, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v5, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 80
    .line 81
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 82
    .line 83
    new-instance v1, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 84
    .line 85
    invoke-direct {v1, v5, v7, v6}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 86
    .line 87
    .line 88
    iput v6, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 89
    .line 90
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-ne p0, v0, :cond_5

    .line 95
    .line 96
    move-object v3, v0

    .line 97
    :cond_5
    :goto_1
    return-object v3

    .line 98
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 99
    .line 100
    iget v8, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 101
    .line 102
    if-eqz v8, :cond_7

    .line 103
    .line 104
    if-ne v8, v6, :cond_6

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v3, v7

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, v5, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 119
    .line 120
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 121
    .line 122
    new-instance v4, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v4, v2}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Lkotlinx/coroutines/flow/StateFlowKt;->defaultAreEquivalent:Lkotlinx/coroutines/CoroutineContextKt$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    invoke-static {p1, v4, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v2, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1;

    .line 134
    .line 135
    invoke-direct {v2, p1, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;I)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 139
    .line 140
    const/16 v1, 0xd

    .line 141
    .line 142
    invoke-direct {p1, v1, v5, v7}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 143
    .line 144
    .line 145
    iput v6, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 146
    .line 147
    invoke-static {v2, p1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    if-ne p0, v0, :cond_8

    .line 152
    .line 153
    move-object v3, v0

    .line 154
    :cond_8
    :goto_2
    return-object v3

    .line 155
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 156
    .line 157
    iget v2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 158
    .line 159
    if-eqz v2, :cond_a

    .line 160
    .line 161
    if-ne v2, v6, :cond_9

    .line 162
    .line 163
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v3, v7

    .line 171
    goto :goto_3

    .line 172
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 176
    .line 177
    new-instance v2, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;

    .line 178
    .line 179
    invoke-direct {v2, v5, v7, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 180
    .line 181
    .line 182
    iput v6, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;->label:I

    .line 183
    .line 184
    invoke-static {v5, p1, v2, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-ne p0, v0, :cond_b

    .line 189
    .line 190
    move-object v3, v0

    .line 191
    :cond_b
    :goto_3
    return-object v3

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
