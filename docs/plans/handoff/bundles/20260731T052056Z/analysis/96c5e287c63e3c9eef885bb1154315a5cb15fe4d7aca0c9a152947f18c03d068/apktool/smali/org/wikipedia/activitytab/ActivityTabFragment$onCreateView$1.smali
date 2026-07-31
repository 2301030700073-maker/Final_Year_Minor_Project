.class public final Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/activitytab/ActivityTabFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

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
    iget p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_4
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 7
    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

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
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-ne v1, v5, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

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
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    .line 37
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    invoke-direct {v1, v3, v6, v4}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 44
    .line 45
    invoke-static {v3, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    :cond_2
    :goto_0
    return-object v2

    .line 53
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 54
    .line 55
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    if-ne v1, v5, :cond_3

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v2, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Lorg/wikipedia/activitytab/ActivityTabViewModel;->impactUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 78
    .line 79
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1$1$1;

    .line 80
    .line 81
    invoke-direct {v1, v3, v6, v5}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 82
    .line 83
    .line 84
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 85
    .line 86
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-ne p0, v0, :cond_5

    .line 91
    .line 92
    move-object v2, v0

    .line 93
    :cond_5
    :goto_1
    return-object v2

    .line 94
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 95
    .line 96
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    if-ne v1, v5, :cond_6

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v2, v6

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 115
    .line 116
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    invoke-direct {v1, v3, v6, v4}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 120
    .line 121
    .line 122
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 123
    .line 124
    invoke-static {v3, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-ne p0, v0, :cond_8

    .line 129
    .line 130
    move-object v2, v0

    .line 131
    :cond_8
    :goto_2
    return-object v2

    .line 132
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 133
    .line 134
    iget v7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 135
    .line 136
    if-eqz v7, :cond_a

    .line 137
    .line 138
    if-ne v7, v5, :cond_9

    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move-object v2, v6

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p1, p1, Lorg/wikipedia/activitytab/ActivityTabViewModel;->allDataLoaded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 157
    .line 158
    new-instance v4, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 159
    .line 160
    invoke-direct {v4, v1, v3, v6}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 161
    .line 162
    .line 163
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 164
    .line 165
    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-ne p0, v0, :cond_b

    .line 170
    .line 171
    move-object v2, v0

    .line 172
    :cond_b
    :goto_3
    return-object v2

    .line 173
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 174
    .line 175
    iget v7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 176
    .line 177
    if-eqz v7, :cond_d

    .line 178
    .line 179
    if-ne v7, v5, :cond_c

    .line 180
    .line 181
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_c
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object v2, v6

    .line 189
    goto :goto_4

    .line 190
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 194
    .line 195
    new-instance v4, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1$1$1;

    .line 196
    .line 197
    invoke-direct {v4, v3, v6, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 198
    .line 199
    .line 200
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 201
    .line 202
    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p0, v0, :cond_e

    .line 207
    .line 208
    move-object v2, v0

    .line 209
    :cond_e
    :goto_4
    return-object v2

    .line 210
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 211
    .line 212
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 213
    .line 214
    if-eqz v1, :cond_10

    .line 215
    .line 216
    if-ne v1, v5, :cond_f

    .line 217
    .line 218
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_f
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    move-object v2, v6

    .line 226
    goto :goto_5

    .line 227
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 231
    .line 232
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 233
    .line 234
    invoke-direct {v1, v3, v6, v5}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 235
    .line 236
    .line 237
    iput v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;->label:I

    .line 238
    .line 239
    invoke-static {v3, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    if-ne p0, v0, :cond_11

    .line 244
    .line 245
    move-object v2, v0

    .line 246
    :cond_11
    :goto_5
    return-object v2

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
