.class public final Landroidx/glance/session/SessionWorkerKt$runSession$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $lastRecomposeCount:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $recomposer:Landroidx/compose/runtime/Recomposer;

.field public final synthetic $root:Landroidx/glance/appwidget/RemoteViewsRoot;

.field public final synthetic $session:Landroidx/glance/appwidget/AppWidgetSession;

.field public final synthetic $this_runSession:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

.field public final synthetic $timeouts:Landroidx/glance/session/TimeoutOptions;

.field public final synthetic $uiReady:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/AppWidgetSession;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$session:Landroidx/glance/appwidget/AppWidgetSession;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$lastRecomposeCount:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$uiReady:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$root:Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$this_runSession:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$timeouts:Landroidx/glance/session/TimeoutOptions;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    new-instance v0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;

    .line 2
    .line 3
    iget-object v8, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$timeouts:Landroidx/glance/session/TimeoutOptions;

    .line 4
    .line 5
    iget-object v9, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$session:Landroidx/glance/appwidget/AppWidgetSession;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$lastRecomposeCount:Lkotlin/jvm/internal/Ref$LongRef;

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$uiReady:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$context:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$root:Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 18
    .line 19
    iget-object v7, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$this_runSession:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 20
    .line 21
    move-object v10, p2

    .line 22
    invoke-direct/range {v0 .. v10}, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Recomposer$State;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$lastRecomposeCount:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$uiReady:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-eq v1, v8, :cond_1

    .line 19
    .line 20
    if-ne v1, v7, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/runtime/Recomposer$State;

    .line 42
    .line 43
    sget-object v1, Landroidx/glance/session/SessionWorkerKt$runSession$4$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    aget p1, v1, p1

    .line 50
    .line 51
    if-eq p1, v8, :cond_4

    .line 52
    .line 53
    if-eq p1, v7, :cond_3

    .line 54
    .line 55
    return-object v3

    .line 56
    :cond_3
    iget-object p0, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    .line 57
    .line 58
    invoke-static {p0, v2}, Lkotlinx/coroutines/AwaitKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_4
    iget-wide v1, v5, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 63
    .line 64
    iget-wide v9, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 65
    .line 66
    cmp-long p1, v1, v9

    .line 67
    .line 68
    if-gtz p1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_8

    .line 81
    .line 82
    :cond_5
    iget-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$root:Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/glance/appwidget/RemoteViewsRoot;->copy()Landroidx/glance/Emittable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/glance/EmittableWithChildren;

    .line 89
    .line 90
    iput v8, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->label:I

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$session:Landroidx/glance/appwidget/AppWidgetSession;

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$context:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v1, v2, p1, p0}, Landroidx/glance/appwidget/AppWidgetSession;->processEmittableTree(Landroid/content/Context;Landroidx/glance/EmittableWithChildren;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v0, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_8

    .line 120
    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    iput v7, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->label:I

    .line 126
    .line 127
    invoke-virtual {v6, p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    if-ne v3, v0, :cond_7

    .line 131
    .line 132
    :goto_1
    return-object v0

    .line 133
    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$timeouts:Landroidx/glance/session/TimeoutOptions;

    .line 134
    .line 135
    iget-wide v0, p1, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 136
    .line 137
    iget-object p0, p0, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;->$this_runSession:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;->startTimer-LRDsOJo(J)V

    .line 140
    .line 141
    .line 142
    :cond_8
    iget-wide p0, v5, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 143
    .line 144
    iput-wide p0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 145
    .line 146
    return-object v3
.end method
