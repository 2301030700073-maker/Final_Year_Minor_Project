.class public final Lorg/wikipedia/activity/BaseActivity$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->this$0:Lorg/wikipedia/activity/BaseActivity;

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
    iget p1, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v4, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    .line 36
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    iput v4, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 43
    .line 44
    invoke-static {v2, p1, v3, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, v0, :cond_2

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    :cond_2
    :goto_0
    return-object v1

    .line 52
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 53
    .line 54
    iget v6, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 55
    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    if-ne v6, v4, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object v1, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 73
    .line 74
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 75
    .line 76
    invoke-direct {v3, v2, v5, v4}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 77
    .line 78
    .line 79
    iput v4, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 80
    .line 81
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-ne p0, v0, :cond_5

    .line 86
    .line 87
    move-object v1, v0

    .line 88
    :cond_5
    :goto_1
    return-object v1

    .line 89
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 90
    .line 91
    iget v6, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    if-ne v6, v4, :cond_6

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v1, v5

    .line 105
    goto :goto_2

    .line 106
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 110
    .line 111
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/activity/BaseActivity$onCreate$2$1$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    iput v4, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 118
    .line 119
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-ne p0, v0, :cond_8

    .line 124
    .line 125
    move-object v1, v0

    .line 126
    :cond_8
    :goto_2
    return-object v1

    .line 127
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 128
    .line 129
    iget v6, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 130
    .line 131
    if-eqz v6, :cond_a

    .line 132
    .line 133
    if-ne v6, v4, :cond_9

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_9
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v1, v5

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 148
    .line 149
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 150
    .line 151
    invoke-direct {v3, v2, v5, v4}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 152
    .line 153
    .line 154
    iput v4, p0, Lorg/wikipedia/activity/BaseActivity$onCreate$2;->label:I

    .line 155
    .line 156
    invoke-static {v2, p1, v3, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-ne p0, v0, :cond_b

    .line 161
    .line 162
    move-object v1, v0

    .line 163
    :cond_b
    :goto_3
    return-object v1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
