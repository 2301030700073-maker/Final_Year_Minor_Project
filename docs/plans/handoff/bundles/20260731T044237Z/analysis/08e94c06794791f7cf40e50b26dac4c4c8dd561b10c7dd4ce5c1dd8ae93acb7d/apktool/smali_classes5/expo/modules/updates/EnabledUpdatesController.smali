.class public final Lexpo/modules/updates/EnabledUpdatesController;
.super Ljava/lang/Object;
.source "EnabledUpdatesController.kt"

# interfaces
.implements Lexpo/modules/updates/IUpdatesController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/EnabledUpdatesController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnabledUpdatesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnabledUpdatesController.kt\nexpo/modules/updates/EnabledUpdatesController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,285:1\n1#2:286\n314#3,11:287\n314#3,11:298\n314#3,11:309\n314#3,11:320\n314#3,11:331\n*S KotlinDebug\n*F\n+ 1 EnabledUpdatesController.kt\nexpo/modules/updates/EnabledUpdatesController\n*L\n200#1:287,11\n220#1:298,11\n227#1:309,11\n234#1:320,11\n258#1:331,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 f2\u00020\u0001:\u0001fB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010$\u001a\u00020!H\u0002J\u0008\u0010,\u001a\u00020!H\u0002J\u0008\u0010D\u001a\u00020!H\u0016J\u0010\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020JH\u0016J\u0014\u0010K\u001a\u00020!2\n\u0010L\u001a\u00060Mj\u0002`NH\u0016J\u0008\u0010P\u001a\u00020!H\u0016J\u0018\u0010Q\u001a\u00020!2\u0006\u0010R\u001a\u00020&2\u0006\u0010S\u001a\u00020TH\u0002J\u0008\u0010U\u001a\u00020VH\u0016J\u000e\u0010W\u001a\u00020!H\u0096@\u00a2\u0006\u0002\u0010XJ\u000e\u0010Y\u001a\u00020ZH\u0096@\u00a2\u0006\u0002\u0010XJ\u000e\u0010[\u001a\u00020\\H\u0096@\u00a2\u0006\u0002\u0010XJ\u000e\u0010]\u001a\u00020^H\u0096@\u00a2\u0006\u0002\u0010XJ \u0010_\u001a\u00020!2\u0006\u0010`\u001a\u00020<2\u0008\u0010a\u001a\u0004\u0018\u00010<H\u0096@\u00a2\u0006\u0002\u0010bJ\u0012\u0010c\u001a\u00020!2\u0008\u0010d\u001a\u0004\u0018\u00010eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010*R\u0012\u0010+\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010*R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010/\u001a\u0004\u0018\u0001008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0016\u00103\u001a\u0004\u0018\u0001048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0014\u00107\u001a\u00020&8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\"\u00109\u001a\u0010\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0018\u00010:8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0016\u0010?\u001a\u0004\u0018\u00010<8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0016\u0010B\u001a\u0004\u0018\u00010<8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010AR\u0014\u0010O\u001a\u00020&X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u00108\u00a8\u0006g"
    }
    d2 = {
        "Lexpo/modules/updates/EnabledUpdatesController;",
        "Lexpo/modules/updates/IUpdatesController;",
        "context",
        "Landroid/content/Context;",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "updatesDirectory",
        "Ljava/io/File;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;)V",
        "getUpdatesDirectory",
        "()Ljava/io/File;",
        "weakActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "eventManager",
        "Lexpo/modules/updates/events/IUpdatesEventManager;",
        "getEventManager",
        "()Lexpo/modules/updates/events/IUpdatesEventManager;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "stateMachine",
        "Lexpo/modules/updates/statemachine/UpdatesStateMachine;",
        "controllerScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "startupFinishedDeferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "startupFinishedMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "purgeUpdatesLogsOlderThanOneDay",
        "isStarted",
        "",
        "isStartupFinished",
        "startupStartTimeMillis",
        "",
        "Ljava/lang/Long;",
        "startupEndTimeMillis",
        "onStartupProcedureFinished",
        "startupProcedure",
        "Lexpo/modules/updates/procedures/StartupProcedure;",
        "launchedUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "getLaunchedUpdate",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "launchDuration",
        "Lkotlin/time/Duration;",
        "getLaunchDuration-FghU774",
        "()Lkotlin/time/Duration;",
        "isUsingEmbeddedAssets",
        "()Z",
        "localAssetFiles",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "",
        "getLocalAssetFiles",
        "()Ljava/util/Map;",
        "launchAssetFile",
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
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "isActiveController",
        "start",
        "relaunchReactApplication",
        "shouldRunReaper",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
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
.field public static final Companion:Lexpo/modules/updates/EnabledUpdatesController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllerScope:Lkotlinx/coroutines/CoroutineScope;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private final eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private final isActiveController:Z

.field private isStarted:Z

.field private isStartupFinished:Z

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private startupEndTimeMillis:Ljava/lang/Long;

.field private final startupFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final startupFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

.field private startupStartTimeMillis:Ljava/lang/Long;

.field private final stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

.field private final updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesDirectory:Ljava/io/File;

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
.method public static synthetic $r8$lambda$IrYE9p_4OrrwGjPcQ6WBUVkZfw4(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/launcher/Launcher;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->relaunchReactApplication$lambda$3(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Su_q_psXqg_CgMf8F-vRvAKiL8w(Lexpo/modules/updates/EnabledUpdatesController;Lexpo/modules/updates/launcher/Launcher;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/updates/EnabledUpdatesController;->relaunchReactApplication$lambda$4(Lexpo/modules/updates/EnabledUpdatesController;Lexpo/modules/updates/launcher/Launcher;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t5WCEWLwsPZ2MIPKk_map6-kyrQ(Lexpo/modules/updates/EnabledUpdatesController;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/updates/EnabledUpdatesController;->purgeUpdatesLogsOlderThanOneDay$lambda$0(Lexpo/modules/updates/EnabledUpdatesController;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/EnabledUpdatesController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/EnabledUpdatesController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/EnabledUpdatesController;->Companion:Lexpo/modules/updates/EnabledUpdatesController$Companion;

    .line 282
    const-string v0, "EnabledUpdatesController"

    sput-object v0, Lexpo/modules/updates/EnabledUpdatesController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "updatesConfiguration"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "updatesDirectory"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, v0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    .line 49
    iput-object v3, v0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 50
    iput-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->updatesDirectory:Ljava/io/File;

    .line 54
    new-instance v8, Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "getFilesDir(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v1}, Lexpo/modules/updates/logging/UpdatesLogger;-><init>(Ljava/io/File;)V

    iput-object v8, v0, Lexpo/modules/updates/EnabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 55
    new-instance v1, Lexpo/modules/updates/events/UpdatesEventManager;

    invoke-direct {v1, v8}, Lexpo/modules/updates/events/UpdatesEventManager;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;)V

    check-cast v1, Lexpo/modules/updates/events/IUpdatesEventManager;

    iput-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    .line 57
    new-instance v6, Lexpo/modules/updates/loader/FileDownloader;

    invoke-direct {v6, v2, v3, v8}, Lexpo/modules/updates/loader/FileDownloader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V

    iput-object v6, v0, Lexpo/modules/updates/EnabledUpdatesController;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 59
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicyFactory;->createFilterAwarePolicy(Ljava/lang/String;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v7

    iput-object v7, v0, Lexpo/modules/updates/EnabledUpdatesController;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 61
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getEventManager()Lexpo/modules/updates/events/IUpdatesEventManager;

    move-result-object v4

    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v8, v4, v5}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V

    iput-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->controllerScope:Lkotlinx/coroutines/CoroutineScope;

    .line 63
    new-instance v4, Lexpo/modules/updates/db/DatabaseHolder;

    sget-object v1, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getInstance(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v1

    invoke-direct {v4, v1}, Lexpo/modules/updates/db/DatabaseHolder;-><init>(Lexpo/modules/updates/db/UpdatesDatabase;)V

    iput-object v4, v0, Lexpo/modules/updates/EnabledUpdatesController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    const/4 v1, 0x0

    const/4 v13, 0x1

    .line 64
    invoke-static {v1, v13, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    iput-object v5, v0, Lexpo/modules/updates/EnabledUpdatesController;->startupFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v5, 0x0

    .line 65
    invoke-static {v5, v13, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iput-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->startupFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 93
    new-instance v14, Lexpo/modules/updates/procedures/StartupProcedure;

    .line 97
    invoke-virtual {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v5

    .line 101
    new-instance v1, Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;)V

    move-object v9, v1

    check-cast v9, Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v1, v14

    .line 93
    invoke-direct/range {v1 .. v12}, Lexpo/modules/updates/procedures/StartupProcedure;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v14, v0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    .line 148
    iput-boolean v13, v0, Lexpo/modules/updates/EnabledUpdatesController;->isActiveController:Z

    return-void
.end method

.method public static final synthetic access$getContext$p(Lexpo/modules/updates/EnabledUpdatesController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getControllerScope$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->controllerScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getDatabaseHolder$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/DatabaseHolder;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    return-object p0
.end method

.method public static final synthetic access$getFileDownloader$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/loader/FileDownloader;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    return-object p0
.end method

.method public static final synthetic access$getLaunchedUpdate(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 0

    .line 47
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPolicy$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getStartupFinishedDeferred$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupFinishedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getStartupFinishedMutex$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupFinishedMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getStateMachine$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/statemachine/UpdatesStateMachine;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesConfiguration$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$onStartupProcedureFinished(Lexpo/modules/updates/EnabledUpdatesController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->onStartupProcedureFinished()V

    return-void
.end method

.method public static final synthetic access$relaunchReactApplication(Lexpo/modules/updates/EnabledUpdatesController;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/EnabledUpdatesController;->relaunchReactApplication(ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method private final getLaunchDuration-FghU774()Lkotlin/time/Duration;
    .locals 4

    .line 115
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupStartTimeMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupEndTimeMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private final getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 113
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    return-object v0
.end method

.method private final getLocalAssetFiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final isUsingEmbeddedAssets()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->isUsingEmbeddedAssets()Z

    move-result v0

    return v0
.end method

.method private final declared-synchronized onStartupProcedureFinished()V
    .locals 6

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->controllerScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/updates/EnabledUpdatesController$onStartupProcedureFinished$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->isStartupFinished:Z

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupEndTimeMillis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
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

.method private final purgeUpdatesLogsOlderThanOneDay()V
    .locals 4

    .line 68
    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogReader;

    iget-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getFilesDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lexpo/modules/updates/logging/UpdatesLogReader;-><init>(Ljava/io/File;)V

    new-instance v1, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/EnabledUpdatesController;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lexpo/modules/updates/logging/UpdatesLogReader;->purgeLogEntries$default(Lexpo/modules/updates/logging/UpdatesLogReader;Ljava/util/Date;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final purgeUpdatesLogsOlderThanOneDay$lambda$0(Lexpo/modules/updates/EnabledUpdatesController;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v0, "UpdatesLogReader: error in purgeLogEntries"

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {p0, v0, p1, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 72
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final relaunchReactApplication(ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 18

    move-object/from16 v0, p0

    .line 166
    new-instance v17, Lexpo/modules/updates/procedures/RelaunchProcedure;

    .line 167
    iget-object v2, v0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    .line 168
    iget-object v3, v0, Lexpo/modules/updates/EnabledUpdatesController;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 169
    iget-object v4, v0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 170
    iget-object v5, v0, Lexpo/modules/updates/EnabledUpdatesController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 171
    iget-object v6, v0, Lexpo/modules/updates/EnabledUpdatesController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/updates/EnabledUpdatesController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v7

    .line 173
    iget-object v8, v0, Lexpo/modules/updates/EnabledUpdatesController;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 174
    iget-object v9, v0, Lexpo/modules/updates/EnabledUpdatesController;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 166
    new-instance v10, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;)V

    new-instance v11, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lexpo/modules/updates/EnabledUpdatesController$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/updates/EnabledUpdatesController;)V

    const/16 v15, 0x1000

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, v17

    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v16}, Lexpo/modules/updates/procedures/RelaunchProcedure;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    iget-object v1, v0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    move-object/from16 v2, v17

    check-cast v2, Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-virtual {v1, v2}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V

    return-void
.end method

.method private static final relaunchReactApplication$lambda$3(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/launcher/Launcher;
    .locals 0

    .line 175
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {p0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLauncher()Lexpo/modules/updates/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final relaunchReactApplication$lambda$4(Lexpo/modules/updates/EnabledUpdatesController;Lexpo/modules/updates/launcher/Launcher;)Lkotlin/Unit;
    .locals 1

    const-string v0, "currentLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {p0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->setLauncher(Lexpo/modules/updates/launcher/Launcher;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public checkForUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    .line 299
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 305
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 306
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 221
    new-instance v11, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getContext$p(Lexpo/modules/updates/EnabledUpdatesController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getDatabaseHolder$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v5

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getLogger$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getFileDownloader$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v7

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getSelectionPolicy$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v8

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getLaunchedUpdate(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v9

    new-instance v2, Lexpo/modules/updates/EnabledUpdatesController$checkForUpdate$2$procedure$1;

    invoke-direct {v2, v1}, Lexpo/modules/updates/EnabledUpdatesController$checkForUpdate$2$procedure$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V

    .line 224
    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getStateMachine$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    move-result-object v1

    check-cast v11, Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-virtual {v1, v11}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V

    .line 307
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 298
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public fetchUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    .line 310
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 316
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 317
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 228
    new-instance v12, Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getContext$p(Lexpo/modules/updates/EnabledUpdatesController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getLogger$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v5

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getDatabaseHolder$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v6

    invoke-virtual {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getFileDownloader$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v8

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getSelectionPolicy$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v9

    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getLaunchedUpdate(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v10

    new-instance v2, Lexpo/modules/updates/EnabledUpdatesController$fetchUpdate$2$procedure$1;

    invoke-direct {v2, v1}, Lexpo/modules/updates/EnabledUpdatesController$fetchUpdate$2$procedure$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V

    .line 231
    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getStateMachine$p(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    move-result-object v1

    check-cast v12, Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-virtual {v1, v12}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V

    .line 318
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 309
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getBundleAssetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantsForModule()Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;
    .locals 15

    .line 184
    new-instance v14, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;

    .line 185
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v1

    .line 186
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getLaunchDuration-FghU774()Lkotlin/time/Duration;

    move-result-object v2

    .line 187
    sget-object v0, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    iget-object v3, p0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0, v3, v4}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 188
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getEmergencyLaunchException()Ljava/lang/Exception;

    move-result-object v4

    .line 190
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->isUsingEmbeddedAssets()Z

    move-result v6

    .line 191
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersionRaw()Ljava/lang/String;

    move-result-object v7

    .line 192
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getCheckOnLaunch()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v8

    .line 193
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v9

    .line 194
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v10

    .line 196
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->getContext()Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v0, v14

    .line 184
    invoke-direct/range {v0 .. v13}, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/time/Duration;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;ZZLjava/lang/String;Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;Ljava/util/Map;Ljava/util/Map;ZLexpo/modules/updates/statemachine/UpdatesStateContext;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public getEventManager()Lexpo/modules/updates/events/IUpdatesEventManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    return-object v0
.end method

.method public getExtraParams(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 321
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 327
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 328
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 235
    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getControllerScope$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v3, Lexpo/modules/updates/EnabledUpdatesController$getExtraParams$2$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lexpo/modules/updates/EnabledUpdatesController$getExtraParams$2$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 329
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 320
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public getLaunchAssetFile()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Lexpo/modules/updates/EnabledUpdatesController$launchAssetFile$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/updates/EnabledUpdatesController$launchAssetFile$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatesDirectory()Ljava/io/File;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesDirectory:Ljava/io/File;

    return-object v0
.end method

.method public isActiveController()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->isActiveController:Z

    return v0
.end method

.method public onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method public onDidCreateReactInstance(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->weakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onEventListenerStartObserving()V
    .locals 1

    .line 133
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->sendContextToJS()V

    return-void
.end method

.method public onReactInstanceException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->onReactInstanceException(Ljava/lang/Exception;)V

    return-void
.end method

.method public relaunchReactApplicationForModule(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    .line 288
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 294
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 295
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 201
    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getLaunchedUpdate(Lexpo/modules/updates/EnabledUpdatesController;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 207
    new-instance v3, Lexpo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$2;

    invoke-direct {v3, v1}, Lexpo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 205
    invoke-static {p0, v2, v3}, Lexpo/modules/updates/EnabledUpdatesController;->access$relaunchReactApplication(Lexpo/modules/updates/EnabledUpdatesController;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    goto :goto_0

    .line 203
    :cond_0
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Lexpo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$1;

    invoke-direct {v2}, Lexpo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$1;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 296
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 287
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return-object v0

    .line 297
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setExtraParam(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    .line 332
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 338
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 339
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .line 259
    invoke-static {p0}, Lexpo/modules/updates/EnabledUpdatesController;->access$getControllerScope$p(Lexpo/modules/updates/EnabledUpdatesController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lexpo/modules/updates/EnabledUpdatesController$setExtraParam$2$1;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lexpo/modules/updates/EnabledUpdatesController$setExtraParam$2$1;-><init>(Lexpo/modules/updates/EnabledUpdatesController;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 340
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 331
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    .line 341
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setUpdateURLAndRequestHeadersOverride(Lexpo/modules/updates/UpdatesConfigurationOverride;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getDisableAntiBrickingMeasures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lexpo/modules/updates/UpdatesConfigurationOverride;->Companion:Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;

    iget-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;->save$expo_updates_release(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfigurationOverride;)V

    return-void

    .line 276
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/CodedException;

    const-string v0, "Must set disableAntiBrickingMeasures configuration to use updates overriding"

    const/4 v1, 0x0

    const-string v2, "ERR_UPDATES_RUNTIME_OVERRIDE"

    invoke-direct {p1, v2, v0, v1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    :try_start_1
    iput-boolean v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->isStarted:Z

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupStartTimeMillis:Ljava/lang/Long;

    .line 158
    invoke-direct {p0}, Lexpo/modules/updates/EnabledUpdatesController;->purgeUpdatesLogsOlderThanOneDay()V

    .line 160
    sget-object v0, Lexpo/modules/updates/db/BuildData;->INSTANCE:Lexpo/modules/updates/db/BuildData;

    iget-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v2, p0, Lexpo/modules/updates/EnabledUpdatesController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/updates/db/BuildData;->ensureBuildDataIsConsistent(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/UpdatesDatabase;)V

    .line 162
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController;->stateMachine:Lexpo/modules/updates/statemachine/UpdatesStateMachine;

    iget-object v1, p0, Lexpo/modules/updates/EnabledUpdatesController;->startupProcedure:Lexpo/modules/updates/procedures/StartupProcedure;

    check-cast v1, Lexpo/modules/updates/procedures/StateMachineProcedure;

    invoke-virtual {v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
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
