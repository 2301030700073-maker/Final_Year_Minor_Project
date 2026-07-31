.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

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
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

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
    iget v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

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
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 35
    .line 36
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 37
    .line 38
    invoke-direct {v3, v2, v5, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    iput v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

    .line 42
    .line 43
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    :cond_2
    :goto_0
    return-object v1

    .line 51
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 52
    .line 53
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    if-eq v1, v4, :cond_3

    .line 58
    .line 59
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 75
    .line 76
    new-instance v1, Landroidx/paging/ChannelFlowCollector;

    .line 77
    .line 78
    const/16 v3, 0x17

    .line 79
    .line 80
    invoke-direct {v1, v3, v2}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

    .line 84
    .line 85
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 86
    .line 87
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-ne p0, v0, :cond_5

    .line 92
    .line 93
    move-object v5, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    :goto_1
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-object v5

    .line 99
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 100
    .line 101
    iget v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

    .line 102
    .line 103
    if-eqz v6, :cond_7

    .line 104
    .line 105
    if-ne v6, v4, :cond_6

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v1, v5

    .line 115
    goto :goto_3

    .line 116
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 120
    .line 121
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    iput v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;->label:I

    .line 128
    .line 129
    invoke-static {v2, p1, v3, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-ne p0, v0, :cond_8

    .line 134
    .line 135
    move-object v1, v0

    .line 136
    :cond_8
    :goto_3
    return-object v1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
