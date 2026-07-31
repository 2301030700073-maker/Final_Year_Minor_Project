.class public final Lorg/wikipedia/feed/HomeViewModel$gameModule$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic L$1:Ljava/lang/Throwable;

.field public label:I


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Throwable;

    .line 9
    .line 10
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 22
    .line 23
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 37
    .line 38
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_1
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 52
    .line 53
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

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
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 13
    .line 14
    iget-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 15
    .line 16
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v7, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 40
    .line 41
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 42
    .line 43
    iput v3, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 44
    .line 45
    invoke-interface {v0, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-ne p0, v6, :cond_2

    .line 50
    .line 51
    move-object v1, v6

    .line 52
    :cond_2
    :goto_0
    return-object v1

    .line 53
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 54
    .line 55
    iget-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 56
    .line 57
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 58
    .line 59
    iget v7, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    if-ne v7, v3, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v1, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v5}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 81
    .line 82
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 83
    .line 84
    iput v3, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 85
    .line 86
    invoke-interface {v0, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-ne p0, v6, :cond_5

    .line 91
    .line 92
    move-object v1, v6

    .line 93
    :cond_5
    :goto_1
    return-object v1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 95
    .line 96
    iget-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 97
    .line 98
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 99
    .line 100
    iget v7, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 101
    .line 102
    if-eqz v7, :cond_7

    .line 103
    .line 104
    if-ne v7, v3, :cond_6

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v1, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v5}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 122
    .line 123
    iput-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->L$1:Ljava/lang/Throwable;

    .line 124
    .line 125
    iput v3, p0, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;->label:I

    .line 126
    .line 127
    invoke-interface {v0, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-ne p0, v6, :cond_8

    .line 132
    .line 133
    move-object v1, v6

    .line 134
    :cond_8
    :goto_2
    return-object v1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
