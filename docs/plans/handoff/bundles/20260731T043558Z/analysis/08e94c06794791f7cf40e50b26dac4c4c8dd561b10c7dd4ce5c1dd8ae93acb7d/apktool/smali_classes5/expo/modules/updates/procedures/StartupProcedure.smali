.class public final Lexpo/modules/updates/procedures/StartupProcedure;
.super Lexpo/modules/updates/procedures/StateMachineProcedure;
.source "StartupProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001IBQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010!\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010>\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010?J\u0008\u0010@\u001a\u00020\"H\u0002J\u000e\u0010A\u001a\u00020\"2\u0006\u0010B\u001a\u00020CJ\u0012\u0010D\u001a\u00020\"2\n\u0010E\u001a\u000603j\u0002`4J\u0010\u0010F\u001a\u00020\"2\u0006\u0010G\u001a\u00020;H\u0002J\u0008\u0010H\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010#\u001a\u0004\u0018\u00010\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0019R\u0013\u0010%\u001a\u0004\u0018\u00010\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0019R\u001f\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0017\u0018\u00010(8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0011\u0010,\u001a\u00020-8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010.R\u0013\u0010/\u001a\u0004\u0018\u0001008F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R.\u00105\u001a\n\u0018\u000103j\u0004\u0018\u0001`42\u000e\u0010\u001c\u001a\n\u0018\u000103j\u0004\u0018\u0001`4@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u000e\u00108\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/StartupProcedure;",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "context",
        "Landroid/content/Context;",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "updatesDirectory",
        "Ljava/io/File;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "callback",
        "Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;",
        "procedureScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;)V",
        "loggerTimerLabel",
        "",
        "getLoggerTimerLabel",
        "()Ljava/lang/String;",
        "procedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "value",
        "Lexpo/modules/updates/launcher/Launcher;",
        "launcher",
        "getLauncher",
        "()Lexpo/modules/updates/launcher/Launcher;",
        "setLauncher",
        "",
        "launchAssetFile",
        "getLaunchAssetFile",
        "bundleAssetName",
        "getBundleAssetName",
        "localAssetFiles",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "getLocalAssetFiles",
        "()Ljava/util/Map;",
        "isUsingEmbeddedAssets",
        "",
        "()Z",
        "launchedUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "getLaunchedUpdate",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "emergencyLaunchException",
        "getEmergencyLaunchException",
        "()Ljava/lang/Exception;",
        "errorRecovery",
        "Lexpo/modules/updates/errorrecovery/ErrorRecovery;",
        "remoteLoadStatus",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;",
        "loaderTask",
        "Lexpo/modules/updates/loader/LoaderTask;",
        "run",
        "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "notifyController",
        "onDidCreateDevSupportManager",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "onReactInstanceException",
        "exception",
        "setRemoteLoadStatus",
        "status",
        "initializeErrorRecovery",
        "StartupProcedureCallback",
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


# instance fields
.field private final callback:Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private emergencyLaunchException:Ljava/lang/Exception;

.field private final errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private launcher:Lexpo/modules/updates/launcher/Launcher;

.field private final loaderTask:Lexpo/modules/updates/loader/LoaderTask;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final loggerTimerLabel:Ljava/lang/String;

.field private procedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

.field private final procedureScope:Lkotlinx/coroutines/CoroutineScope;

.field private remoteLoadStatus:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 11

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    move-object/from16 v9, p9

    const-string v10, "context"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "updatesConfiguration"

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "databaseHolder"

    invoke-static {p3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "updatesDirectory"

    invoke-static {p4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fileDownloader"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "selectionPolicy"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "logger"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "callback"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "procedureScope"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StateMachineProcedure;-><init>()V

    .line 32
    iput-object v2, v0, Lexpo/modules/updates/procedures/StartupProcedure;->context:Landroid/content/Context;

    .line 33
    iput-object v3, v0, Lexpo/modules/updates/procedures/StartupProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 34
    iput-object v4, v0, Lexpo/modules/updates/procedures/StartupProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 35
    iput-object v5, v0, Lexpo/modules/updates/procedures/StartupProcedure;->updatesDirectory:Ljava/io/File;

    .line 36
    iput-object v6, v0, Lexpo/modules/updates/procedures/StartupProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 37
    iput-object v7, v0, Lexpo/modules/updates/procedures/StartupProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 38
    iput-object v8, v0, Lexpo/modules/updates/procedures/StartupProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 39
    iput-object v1, v0, Lexpo/modules/updates/procedures/StartupProcedure;->callback:Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

    .line 40
    iput-object v9, v0, Lexpo/modules/updates/procedures/StartupProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    .line 42
    const-string v1, "timer-startup"

    iput-object v1, v0, Lexpo/modules/updates/procedures/StartupProcedure;->loggerTimerLabel:Ljava/lang/String;

    .line 70
    new-instance v1, Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    sget-object v9, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v9}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v9

    invoke-direct {v1, v8, v9}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;-><init>(Lexpo/modules/updates/logging/UpdatesLogger;Z)V

    iput-object v1, v0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    .line 71
    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    iput-object v1, v0, Lexpo/modules/updates/procedures/StartupProcedure;->remoteLoadStatus:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    .line 73
    new-instance v10, Lexpo/modules/updates/loader/LoaderTask;

    .line 81
    new-instance v1, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;-><init>(Lexpo/modules/updates/procedures/StartupProcedure;)V

    move-object v9, v1

    check-cast v9, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-object v1, v10

    .line 73
    invoke-direct/range {v1 .. v9}, Lexpo/modules/updates/loader/LoaderTask;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V

    iput-object v10, v0, Lexpo/modules/updates/procedures/StartupProcedure;->loaderTask:Lexpo/modules/updates/loader/LoaderTask;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 31
    invoke-direct/range {v1 .. v10}, Lexpo/modules/updates/procedures/StartupProcedure;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->callback:Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDatabaseHolder$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/db/DatabaseHolder;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    return-object p0
.end method

.method public static final synthetic access$getErrorRecovery$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecovery;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    return-object p0
.end method

.method public static final synthetic access$getFileDownloader$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/loader/FileDownloader;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    return-object p0
.end method

.method public static final synthetic access$getLoaderTask$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/loader/LoaderTask;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->loaderTask:Lexpo/modules/updates/loader/LoaderTask;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->procedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    return-object p0
.end method

.method public static final synthetic access$getProcedureScope$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->procedureScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->remoteLoadStatus:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/StartupProcedure;)Ljava/io/File;
    .locals 0

    .line 31
    iget-object p0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->updatesDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$notifyController(Lexpo/modules/updates/procedures/StartupProcedure;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StartupProcedure;->notifyController()V

    return-void
.end method

.method public static final synthetic access$setEmergencyLaunchException$p(Lexpo/modules/updates/procedures/StartupProcedure;Ljava/lang/Exception;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->emergencyLaunchException:Ljava/lang/Exception;

    return-void
.end method

.method public static final synthetic access$setLauncher$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/launcher/Launcher;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-void
.end method

.method public static final synthetic access$setRemoteLoadStatus(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->setRemoteLoadStatus(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method

.method public static final synthetic access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->remoteLoadStatus:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    return-void
.end method

.method private final initializeErrorRecovery()V
    .locals 2

    .line 236
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    new-instance v1, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;-><init>(Lexpo/modules/updates/procedures/StartupProcedure;)V

    check-cast v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-virtual {v0, v1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->initialize(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;)V

    return-void
.end method

.method private final declared-synchronized notifyController()V
    .locals 2

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->callback:Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

    invoke-interface {v0}, Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;->onFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UpdatesController.notifyController was called with a null launcher, which is an error. This method should only be called when an update is ready to launch."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final setRemoteLoadStatus(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->remoteLoadStatus:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    .line 232
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->notifyNewRemoteLoadStatus(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method


# virtual methods
.method public final getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getBundleAssetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getEmergencyLaunchException()Ljava/lang/Exception;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->emergencyLaunchException:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getLaunchAssetFile()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 66
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getLauncher()Lexpo/modules/updates/launcher/Launcher;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-object v0
.end method

.method public final getLocalAssetFiles()Ljava/util/Map;
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

    .line 62
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLoggerTimerLabel()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final isUsingEmbeddedAssets()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->isUsingEmbeddedAssets()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->emergencyLaunchException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->startMonitoring(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method public final onReactInstanceException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure;->errorRecovery:Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->onReactInstanceException$expo_updates_release(Ljava/lang/Exception;)V

    return-void
.end method

.method public run(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->procedureContext:Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    .line 205
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$StartStartup;

    invoke-direct {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$StartStartup;-><init>()V

    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p1, v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 206
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StartupProcedure;->initializeErrorRecovery()V

    .line 207
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->loaderTask:Lexpo/modules/updates/loader/LoaderTask;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/loader/LoaderTask;->start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setLauncher(Lexpo/modules/updates/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-void
.end method
