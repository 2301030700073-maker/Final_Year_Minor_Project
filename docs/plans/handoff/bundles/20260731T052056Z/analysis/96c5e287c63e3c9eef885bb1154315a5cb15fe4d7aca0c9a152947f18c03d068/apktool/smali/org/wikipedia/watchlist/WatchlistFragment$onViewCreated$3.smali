.class public final Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/watchlist/WatchlistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

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
    iget p1, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-eq v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lorg/wikipedia/watchlist/WatchlistViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    .line 37
    new-instance v1, Landroidx/paging/ChannelFlowCollector;

    .line 38
    .line 39
    const/16 v5, 0x1a

    .line 40
    .line 41
    invoke-direct {v1, v5, v2}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->label:I

    .line 45
    .line 46
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-ne p0, v0, :cond_2

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v4

    .line 60
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 61
    .line 62
    iget v5, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->label:I

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    if-ne v5, v3, :cond_3

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 80
    .line 81
    new-instance v1, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;

    .line 82
    .line 83
    invoke-direct {v1, v2, v4, v3}, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lkotlin/coroutines/Continuation;I)V

    .line 84
    .line 85
    .line 86
    iput v3, p0, Lorg/wikipedia/watchlist/WatchlistFragment$onViewCreated$3;->label:I

    .line 87
    .line 88
    invoke-static {v2, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-ne p0, v0, :cond_5

    .line 93
    .line 94
    move-object v4, v0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    :goto_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    :goto_3
    return-object v4

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
