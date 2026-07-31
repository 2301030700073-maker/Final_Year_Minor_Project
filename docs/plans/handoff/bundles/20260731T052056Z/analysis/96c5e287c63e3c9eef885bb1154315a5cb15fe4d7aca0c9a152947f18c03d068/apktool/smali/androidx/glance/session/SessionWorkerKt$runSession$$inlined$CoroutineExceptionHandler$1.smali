.class public final Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $context$inlined:Landroid/content/Context;

.field public final synthetic $session$inlined:Landroidx/glance/appwidget/AppWidgetSession;

.field public final synthetic $this_runSession$inlined:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;


# direct methods
.method public constructor <init>(Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$this_runSession$inlined:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$session$inlined:Landroidx/glance/appwidget/AppWidgetSession;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$context$inlined:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 2
    .line 3
    const/16 v6, 0xe

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    iget-object v1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$session$inlined:Landroidx/glance/appwidget/AppWidgetSession;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$context$inlined:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;->$this_runSession$inlined:Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v3, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {v4, p1, p1, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 20
    .line 21
    .line 22
    return-void
.end method
