.class public final Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $supportedGames:Ljava/util/ArrayList;

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public L$1:Lkotlinx/coroutines/flow/FlowCollector;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/feed/HomeViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/HomeViewModel;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->$supportedGames:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p2, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->$supportedGames:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2, v0, p0, p3}, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p2, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->label:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    if-eq v2, v6, :cond_2

    .line 14
    .line 15
    if-eq v2, v4, :cond_1

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v5

    .line 29
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 43
    .line 44
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-direct {p1, v7, v7, v2, v6}, Lorg/wikipedia/feed/ForYouModule$Games;-><init>(IILjava/util/List;Z)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    .line 52
    iput v6, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->label:I

    .line 53
    .line 54
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    :goto_0
    iput-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 64
    .line 65
    iput v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->label:I

    .line 66
    .line 67
    iget-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 68
    .line 69
    iget-object v2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->$supportedGames:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1, v2, p0}, Lorg/wikipedia/feed/HomeViewModel;->buildGameModule(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v1, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    iput-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 79
    .line 80
    iput-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 81
    .line 82
    iput v3, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$1$1;->label:I

    .line 83
    .line 84
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-ne p0, v1, :cond_6

    .line 89
    .line 90
    :goto_2
    return-object v1

    .line 91
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0
.end method
