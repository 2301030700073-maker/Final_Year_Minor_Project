.class public final Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $it:Lnet/thunderbird/core/logging/file/FileLogSink;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/logging/file/FileLogSink;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$it:Lnet/thunderbird/core/logging/file/FileLogSink;

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
    iget p1, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;

    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$it:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;-><init>(Lnet/thunderbird/core/logging/file/FileLogSink;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$it:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;-><init>(Lnet/thunderbird/core/logging/file/FileLogSink;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 7

    .line 1
    iget v0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->$it:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v3, v5

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput v6, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->label:I

    .line 35
    .line 36
    check-cast v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;

    .line 37
    .line 38
    iget-object p1, v1, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->accumulatedLogs:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lnet/thunderbird/core/logging/file/AndroidFileLogSink;->writeToLogFile(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object p0, v4

    .line 52
    :goto_0
    if-ne p0, v3, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    move-object v3, v4

    .line 56
    :goto_2
    return-object v3

    .line 57
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->label:I

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    if-ne v0, v6, :cond_4

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v3, v5

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 76
    .line 77
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 78
    .line 79
    new-instance v0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;

    .line 80
    .line 81
    invoke-direct {v0, v1, v5, v6}, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;-><init>(Lnet/thunderbird/core/logging/file/FileLogSink;Lkotlin/coroutines/Continuation;I)V

    .line 82
    .line 83
    .line 84
    iput v6, p0, Lnet/thunderbird/app/common/feature/LoggerLifecycleObserver$onStop$1$1;->label:I

    .line 85
    .line 86
    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-ne p0, v3, :cond_6

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    :goto_3
    move-object v3, v4

    .line 94
    :goto_4
    return-object v3

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
