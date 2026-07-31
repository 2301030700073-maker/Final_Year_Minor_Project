.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

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
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    if-ne v7, v5, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v2, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->recentEditsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 40
    .line 41
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 42
    .line 43
    invoke-direct {v3, v4, v6, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    iput v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 47
    .line 48
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-ne p0, v0, :cond_2

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    :cond_2
    :goto_0
    return-object v2

    .line 56
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-ne v1, v5, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v2, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 77
    .line 78
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 79
    .line 80
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 81
    .line 82
    invoke-direct {v1, v4, v6, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 83
    .line 84
    .line 85
    iput v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 86
    .line 87
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-ne p0, v0, :cond_5

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    :cond_5
    :goto_1
    return-object v2

    .line 95
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 96
    .line 97
    iget v7, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 98
    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    if-ne v7, v5, :cond_6

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object v2, v6

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 116
    .line 117
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 118
    .line 119
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/16 v7, 0x1b

    .line 122
    .line 123
    invoke-direct {v3, v7}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    sget-object v7, Lkotlinx/coroutines/flow/StateFlowKt;->defaultAreEquivalent:Lkotlinx/coroutines/CoroutineContextKt$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-static {p1, v3, v7}, Lkotlinx/coroutines/flow/StateFlowKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v3, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1;

    .line 133
    .line 134
    invoke-direct {v3, p1, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;I)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 138
    .line 139
    const/16 v1, 0xc

    .line 140
    .line 141
    invoke-direct {p1, v1, v4, v6}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 142
    .line 143
    .line 144
    iput v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 145
    .line 146
    invoke-static {v3, p1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-ne p0, v0, :cond_8

    .line 151
    .line 152
    move-object v2, v0

    .line 153
    :cond_8
    :goto_2
    return-object v2

    .line 154
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 155
    .line 156
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 157
    .line 158
    if-eqz v1, :cond_a

    .line 159
    .line 160
    if-ne v1, v5, :cond_9

    .line 161
    .line 162
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v2, v6

    .line 170
    goto :goto_3

    .line 171
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 175
    .line 176
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    invoke-direct {v1, v4, v6, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 180
    .line 181
    .line 182
    iput v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3;->label:I

    .line 183
    .line 184
    invoke-static {v4, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-ne p0, v0, :cond_b

    .line 189
    .line 190
    move-object v2, v0

    .line 191
    :cond_b
    :goto_3
    return-object v2

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
