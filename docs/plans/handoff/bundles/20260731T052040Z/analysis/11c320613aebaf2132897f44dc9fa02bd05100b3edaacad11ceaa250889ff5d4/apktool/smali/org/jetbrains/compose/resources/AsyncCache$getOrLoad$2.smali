.class public final Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $load:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/jetbrains/compose/resources/AsyncCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/compose/resources/AsyncCache;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/AsyncCache;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->this$0:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$key:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$load:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->this$0:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$key:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$load:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jetbrains/compose/resources/AsyncCache;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    iget v1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lkotlinx/coroutines/Deferred;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v4

    .line 32
    :cond_1
    iget-object v1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$4:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    iget-object v6, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$3:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v7, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$2:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v7, Lorg/jetbrains/compose/resources/AsyncCache;

    .line 41
    .line 42
    iget-object v8, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->this$0:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 54
    .line 55
    iget-object v8, v7, Lorg/jetbrains/compose/resources/AsyncCache;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 56
    .line 57
    iget-object v6, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$key:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->$load:Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    iput-object v0, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v8, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object v7, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v6, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$3:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$4:Ljava/lang/Object;

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->I$0:I

    .line 73
    .line 74
    iput v3, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->label:I

    .line 75
    .line 76
    invoke-virtual {v8, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v5, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    :try_start_0
    iget-object p1, v7, Lorg/jetbrains/compose/resources/AsyncCache;->cache:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    move-object v9, p1

    .line 94
    check-cast v9, Lkotlinx/coroutines/JobSupport;

    .line 95
    .line 96
    invoke-virtual {v9}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_5

    .line 101
    .line 102
    :cond_4
    new-instance p1, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2$deferred$1$1;

    .line 103
    .line 104
    invoke-direct {p1, v4, v1}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2$deferred$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v4, p1, v3}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, v7, Lorg/jetbrains/compose/resources/AsyncCache;->cache:Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-interface {v0, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-interface {v8, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iput-object v4, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v4, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$1:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v4, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$2:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v4, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$3:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v4, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->L$4:Ljava/lang/Object;

    .line 128
    .line 129
    iput v2, p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;->label:I

    .line 130
    .line 131
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v5, :cond_6

    .line 136
    .line 137
    :goto_1
    return-object v5

    .line 138
    :cond_6
    return-object p0

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    invoke-interface {v8, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    throw p0
.end method
