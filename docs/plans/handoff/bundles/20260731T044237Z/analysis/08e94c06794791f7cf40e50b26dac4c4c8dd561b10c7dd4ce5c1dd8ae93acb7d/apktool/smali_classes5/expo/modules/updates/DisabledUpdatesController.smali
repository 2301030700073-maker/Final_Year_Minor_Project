.class public final Lexpo/modules/updates/DisabledUpdatesController;
.super Ljava/lang/Object;
.source "DisabledUpdatesController.kt"

# interfaces
.implements Lexpo/modules/updates/IUpdatesController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/DisabledUpdatesController$Companion;,
        Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisabledUpdatesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisabledUpdatesController.kt\nexpo/modules/updates/DisabledUpdatesController\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,188:1\n314#2,11:189\n*S KotlinDebug\n*F\n+ 1 DisabledUpdatesController.kt\nexpo/modules/updates/DisabledUpdatesController\n*L\n130#1:189,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 R2\u00020\u0001:\u0002QRB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u00103\u001a\u00020*H\u0016J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020*2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020*2\u0006\u0010;\u001a\u00020\u0005H\u0016J\u0008\u0010>\u001a\u00020*H\u0016J\u0008\u0010?\u001a\u00020@H\u0016J\u000e\u0010A\u001a\u00020*H\u0096@\u00a2\u0006\u0002\u0010BJ\u000e\u0010C\u001a\u00020DH\u0096@\u00a2\u0006\u0002\u0010BJ\u000e\u0010E\u001a\u00020FH\u0096@\u00a2\u0006\u0002\u0010BJ\u000e\u0010G\u001a\u00020HH\u0096@\u00a2\u0006\u0002\u0010BJ \u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020.2\u0008\u0010K\u001a\u0004\u0018\u00010.H\u0096@\u00a2\u0006\u0002\u0010LJ\u0012\u0010M\u001a\u00020*2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0016J\u0008\u0010P\u001a\u00020*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010-\u001a\u0004\u0018\u00010.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0016\u00101\u001a\u0004\u0018\u00010.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00100R\u0014\u0010<\u001a\u00020\u0017X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=\u00a8\u0006S"
    }
    d2 = {
        "Lexpo/modules/updates/DisabledUpdatesController;",
        "Lexpo/modules/updates/IUpdatesController;",
        "context",
        "Landroid/content/Context;",
        "fatalException",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/Exception;)V",
        "weakActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "controllerScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "eventManager",
        "Lexpo/modules/updates/events/IUpdatesEventManager;",
        "getEventManager",
        "()Lexpo/modules/updates/events/IUpdatesEventManager;",
        "stateMachine",
        "Lexpo/modules/updates/statemachine/UpdatesStateMachine;",
        "isStarted",
        "",
        "startupStartTimeMillis",
        "",
        "Ljava/lang/Long;",
        "startupEndTimeMillis",
        "launchDuration",
        "Lkotlin/time/Duration;",
        "getLaunchDuration-FghU774",
        "()Lkotlin/time/Duration;",
        "launcher",
        "Lexpo/modules/updates/launcher/Launcher;",
        "updatesDirectory",
        "Ljava/io/File;",
        "getUpdatesDirectory",
        "()Ljava/io/File;",
        "setUpdatesDirectory",
        "(Ljava/io/File;)V",
        "loaderTaskFinishedDeferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "loaderTaskFinishedMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "launchAssetFile",
        "",
        "getLaunchAssetFile",
        "()Ljava/lang/String;",
        "bundleAssetName",
        "getBundleAssetName",
        "onEventListenerStartObserving",
        "onDidCreateDevSupportManager",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "onDidCreateReactInstance",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onReactInstanceException",
        "exception",
        "isActiveController",
        "()Z",
        "start",
        "getConstantsForModule",
        "Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;",
        "relaunchReactApplicationForModule",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkForUpdate",
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
        "fetchUpdate",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
        "getExtraParams",
        "Landroid/os/Bundle;",
        "setExtraParam",
        "key",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setUpdateURLAndRequestHeadersOverride",
        "configOverride",
        "Lexpo/modules/updates/UpdatesConfigurationOverride;",
        "notifyController",
        "UpdatesDisabledException",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/DisabledUpdatesController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllerScope:Lkotlinx/coroutines/CoroutineScope;

.field private final eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

.field private final fatalException:Ljava/lang/Exception;

.field private final isActiveController:Z

.field private isStarted:Z

.field private launcher:Lexpo/modules/updates/launcher/Launcher;

.field private final loaderTaskFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderTaskFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private startupEndTimeMillis:Ljava/lang/Long;

.field private startupStartTimeMillis:Ljava/lang/Long;

.field private final stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

.field private updatesDirectory:Ljava/io/File;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/DisabledUpdatesController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/DisabledUpdatesController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/DisabledUpdatesController;->Companion:Lexpo/modules/updates/DisabledUpdatesController$Companion;

    .line 185
    const-string v0, "DisabledUpdatesController"

    sput-object v0, Lexpo/modules/updates/DisabledUpdatesController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lexpo/modules/updates/DisabledUpdatesController;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lexpo/modules/updates/DisabledUpdatesController;->fatalException:Ljava/lang/Exception;

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/updates/DisabledUpdatesController;->controllerScope:Lkotlinx/coroutines/CoroutineScope;

    .line 48
    new-instance p2, Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "getFilesDir(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lexpo/modules/updates/logging/UpdatesLogger;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lexpo/modules/updates/DisabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 49
    new-instance p1, Lexpo/modules/updates/events/UpdatesEventManager;

    invoke-direct {p1, p2}, Lexpo/modules/updates/events/UpdatesEventManager;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;)V

    check-cast p1, Lexpo/modules/updates/events/IUpdatesEventManager;

    iput-object p1, p0, Lexpo/modules/updates/DisabledUpdatesController;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    .line 52
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {p0}, Lexpo/modules/updates/DisabledUpdatesController;->getEventManager()Lexpo/modules/updates/events/IUpdatesEventManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lexpo/modules/updates/statemachine/UpdatesStateValue;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V

    iput-object p1, p0, Lexpo/modules/updates/DisabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    const/4 p1, 0x0

    .line 69
    invoke-static {p1, v4, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/updates/DisabledUpdatesController;->loaderTaskFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 70
    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/DisabledUpdatesController;->loaderTaskFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lexpo/modules/updates/DisabledUpdatesController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLauncher$p(Lexpo/modules/updates/DisabledUpdatesController;)Lexpo/modules/updates/launcher/Launcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getLoaderTaskFinishedDeferred$p(Lexpo/modules/updates/DisabledUpdatesController;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->loaderTaskFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getLoaderTaskFinishedMutex$p(Lexpo/modules/updates/DisabledUpdatesController;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->loaderTaskFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getStateMachine$p(Lexpo/modules/updates/DisabledUpdatesController;)Lexpo/modules/updates/statemachine/UpdatesStateMachine;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    return-object p0
.end method

.method public static final synthetic access$getWeakActivity$p(Lexpo/modules/updates/DisabledUpdatesController;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lexpo/modules/updates/DisabledUpdatesController;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private final getLaunchDuration-FghU774()Lkotlin/time/Duration;
    .locals 4

    .line 59
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->startupStartTimeMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 60
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->startupEndTimeMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 62
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 61
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private final declared-synchronized notifyController()V
    .locals 6

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->controllerScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/updates/DisabledUpdatesController$notifyController$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/updates/DisabledUpdatesController$notifyController$1;-><init>(Lexpo/modules/updates/DisabledUpdatesController;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkForUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    new-instance p1, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;

    const-string v0, "Updates.checkForUpdateAsync() is not supported when expo-updates is not enabled."

    invoke-direct {p1, v0}, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetchUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 152
    new-instance p1, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;

    const-string v0, "Updates.fetchUpdateAsync() is not supported when expo-updates is not enabled."

    invoke-direct {p1, v0}, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getBundleAssetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConstantsForModule()Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;
    .locals 17

    move-object/from16 v0, p0

    .line 114
    new-instance v15, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;

    .line 115
    iget-object v1, v0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 116
    :goto_0
    invoke-direct/range {p0 .. p0}, Lexpo/modules/updates/DisabledUpdatesController;->getLaunchDuration-FghU774()Lkotlin/time/Duration;

    move-result-object v4

    .line 118
    iget-object v5, v0, Lexpo/modules/updates/DisabledUpdatesController;->fatalException:Ljava/lang/Exception;

    .line 120
    iget-object v1, v0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lexpo/modules/updates/launcher/Launcher;->isUsingEmbeddedAssets()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v7, v1

    .line 122
    sget-object v9, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->NEVER:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    .line 123
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v10

    .line 124
    iget-object v1, v0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lexpo/modules/updates/launcher/Launcher;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v1

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object v11, v2

    .line 126
    :goto_2
    iget-object v1, v0, Lexpo/modules/updates/DisabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->getContext()Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move v6, v8

    move-object v8, v12

    move/from16 v12, v16

    .line 114
    invoke-direct/range {v1 .. v14}, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/time/Duration;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;ZZLjava/lang/String;Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;Ljava/util/Map;Ljava/util/Map;ZLexpo/modules/updates/statemachine/UpdatesStateContext;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15
.end method

.method public getEventManager()Lexpo/modules/updates/events/IUpdatesEventManager;
    .locals 1

    .line 49
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    return-object v0
.end method

.method public getExtraParams(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 156
    new-instance p1, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;

    const-string v0, "Updates.getExtraParamsAsync() is not supported when expo-updates is not enabled."

    invoke-direct {p1, v0}, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLaunchAssetFile()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Lexpo/modules/updates/DisabledUpdatesController$launchAssetFile$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/updates/DisabledUpdatesController$launchAssetFile$1;-><init>(Lexpo/modules/updates/DisabledUpdatesController;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getUpdatesDirectory()Ljava/io/File;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->updatesDirectory:Ljava/io/File;

    return-object v0
.end method

.method public isActiveController()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->isActiveController:Z

    return v0
.end method

.method public onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDidCreateReactInstance(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->weakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onEventListenerStartObserving()V
    .locals 1

    .line 84
    iget-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->sendContextToJS()V

    return-void
.end method

.method public onReactInstanceException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public relaunchReactApplicationForModule(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 190
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 196
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 197
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 131
    new-instance v9, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;

    .line 132
    invoke-static {p0}, Lexpo/modules/updates/DisabledUpdatesController;->access$getContext$p(Lexpo/modules/updates/DisabledUpdatesController;)Landroid/content/Context;

    move-result-object v3

    .line 133
    invoke-static {p0}, Lexpo/modules/updates/DisabledUpdatesController;->access$getWeakActivity$p(Lexpo/modules/updates/DisabledUpdatesController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    .line 134
    new-instance v2, Lexpo/modules/updates/DisabledUpdatesController$relaunchReactApplicationForModule$2$procedure$1;

    invoke-direct {v2, v1}, Lexpo/modules/updates/DisabledUpdatesController$relaunchReactApplicationForModule$2$procedure$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v5, v2

    check-cast v5, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    .line 131
    invoke-direct/range {v2 .. v8}, Lexpo/modules/updates/procedures/RecreateReactContextProcedure;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-static {p0}, Lexpo/modules/updates/DisabledUpdatesController;->access$getStateMachine$p(Lexpo/modules/updates/DisabledUpdatesController;)Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    move-result-object v1

    check-cast v9, Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-virtual {v1, v9}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V

    .line 198
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_1

    return-object v0

    .line 199
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setExtraParam(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 163
    new-instance p1, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;

    const-string p2, "Updates.setExtraParamAsync() is not supported when expo-updates is not enabled."

    invoke-direct {p1, p2}, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpdateURLAndRequestHeadersOverride(Lexpo/modules/updates/UpdatesConfigurationOverride;)V
    .locals 1

    .line 167
    new-instance p1, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;

    const-string v0, "Updates.setUpdateURLAndRequestHeadersOverride() is not supported when expo-updates is not enabled."

    invoke-direct {p1, v0}, Lexpo/modules/updates/DisabledUpdatesController$UpdatesDisabledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpdatesDirectory(Ljava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lexpo/modules/updates/DisabledUpdatesController;->updatesDirectory:Ljava/io/File;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 100
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    :try_start_1
    iput-boolean v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->isStarted:Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->startupStartTimeMillis:Ljava/lang/Long;

    .line 105
    new-instance v0, Lexpo/modules/updates/launcher/NoDatabaseLauncher;

    iget-object v2, p0, Lexpo/modules/updates/DisabledUpdatesController;->context:Landroid/content/Context;

    iget-object v3, p0, Lexpo/modules/updates/DisabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v4, p0, Lexpo/modules/updates/DisabledUpdatesController;->fatalException:Ljava/lang/Exception;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lexpo/modules/updates/launcher/Launcher;

    iput-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/DisabledUpdatesController;->startupEndTimeMillis:Ljava/lang/Long;

    .line 108
    invoke-direct {p0}, Lexpo/modules/updates/DisabledUpdatesController;->notifyController()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
