.class public final Lexpo/modules/updates/UpdatesDevLauncherController;
.super Ljava/lang/Object;
.source "UpdatesDevLauncherController.kt"

# interfaces
.implements Lexpo/modules/updates/IUpdatesController;
.implements Lexpo/modules/updatesinterface/UpdatesInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/UpdatesDevLauncherController$Companion;,
        Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;,
        Lexpo/modules/updates/UpdatesDevLauncherController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesDevLauncherController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesDevLauncherController.kt\nexpo/modules/updates/UpdatesDevLauncherController\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,371:1\n314#2,11:372\n*S KotlinDebug\n*F\n+ 1 UpdatesDevLauncherController.kt\nexpo/modules/updates/UpdatesDevLauncherController\n*L\n339#1:372,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 t2\u00020\u00012\u00020\u0002:\u0002stB3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010)\u001a\u00020*2\u0008\u0010&\u001a\u0004\u0018\u00010$H\u0002J\u0008\u0010+\u001a\u00020*H\u0002J\u0010\u0010,\u001a\u00020*2\u0006\u0010&\u001a\u00020$H\u0002J\u0008\u00103\u001a\u00020*H\u0016J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020*2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020*2\u0006\u0010;\u001a\u00020\nH\u0016J\u0008\u0010?\u001a\u00020*H\u0016J\u0008\u0010J\u001a\u00020*H\u0016J4\u0010Q\u001a\u00020*2\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`U2\u0006\u0010V\u001a\u00020WH\u0016J,\u0010X\u001a\u00020=2\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`UH\u0016J,\u0010Y\u001a\u00020\u00062\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`UH\u0002J\u0008\u0010Z\u001a\u00020*H\u0002J(\u0010[\u001a\u00020*2\u0006\u0010\\\u001a\u00020A2\u0006\u0010R\u001a\u00020\u00062\u0006\u0010]\u001a\u00020^2\u0006\u0010V\u001a\u00020WH\u0002J\u0008\u0010_\u001a\u00020`H\u0002J\u0008\u0010a\u001a\u00020*H\u0002J\u0008\u0010b\u001a\u00020cH\u0016J\u000e\u0010d\u001a\u00020*H\u0096@\u00a2\u0006\u0002\u0010eJ\u000e\u0010f\u001a\u00020gH\u0096@\u00a2\u0006\u0002\u0010eJ\u000e\u0010h\u001a\u00020iH\u0096@\u00a2\u0006\u0002\u0010eJ\u000e\u0010j\u001a\u00020kH\u0096@\u00a2\u0006\u0002\u0010eJ \u0010l\u001a\u00020*2\u0006\u0010m\u001a\u00020.2\u0008\u0010n\u001a\u0004\u0018\u00010.H\u0096@\u00a2\u0006\u0002\u0010oJ\u0012\u0010p\u001a\u00020*2\u0008\u0010q\u001a\u0004\u0018\u00010rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0016\u0010-\u001a\u0004\u0018\u00010.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00100R\u0014\u0010<\u001a\u00020=X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010>R\u0013\u0010@\u001a\u0004\u0018\u00010A8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\"\u0010D\u001a\u0010\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020.\u0018\u00010E8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0014\u0010I\u001a\u00020=8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010>R\u0016\u0010K\u001a\u0004\u0018\u00010.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u00100R\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010P\u00a8\u0006u"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesDevLauncherController;",
        "Lexpo/modules/updates/IUpdatesController;",
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "context",
        "Landroid/content/Context;",
        "initialUpdatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "updatesDirectory",
        "Ljava/io/File;",
        "updatesDirectoryException",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Ljava/lang/Exception;)V",
        "getUpdatesDirectory",
        "()Ljava/io/File;",
        "eventManager",
        "Lexpo/modules/updates/events/NoOpUpdatesEventManager;",
        "getEventManager",
        "()Lexpo/modules/updates/events/NoOpUpdatesEventManager;",
        "updatesInterfaceCallbacks",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
        "getUpdatesInterfaceCallbacks",
        "()Ljava/lang/ref/WeakReference;",
        "setUpdatesInterfaceCallbacks",
        "(Ljava/lang/ref/WeakReference;)V",
        "launcher",
        "Lexpo/modules/updates/launcher/Launcher;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "previousUpdatesConfiguration",
        "updatesConfiguration",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "mSelectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "defaultSelectionPolicy",
        "selectionPolicy",
        "getSelectionPolicy",
        "()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "setNextSelectionPolicy",
        "",
        "resetSelectionPolicyToDefault",
        "setDefaultSelectionPolicy",
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
        "",
        "()Z",
        "start",
        "launchedUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "getLaunchedUpdate",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "localAssetFiles",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "getLocalAssetFiles",
        "()Ljava/util/Map;",
        "isUsingEmbeddedAssets",
        "reset",
        "runtimeVersion",
        "getRuntimeVersion",
        "updateUrl",
        "Landroid/net/Uri;",
        "getUpdateUrl",
        "()Landroid/net/Uri;",
        "fetchUpdateWithConfiguration",
        "configuration",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "callback",
        "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
        "isValidUpdatesConfiguration",
        "createUpdatesConfiguration",
        "setDevelopmentSelectionPolicy",
        "launchUpdate",
        "update",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "getDatabase",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "runReaper",
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
        "NotAvailableInDevClientException",
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
.field public static final Companion:Lexpo/modules/updates/UpdatesDevLauncherController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private defaultSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final eventManager:Lexpo/modules/updates/events/NoOpUpdatesEventManager;

.field private final isActiveController:Z

.field private launcher:Lexpo/modules/updates/launcher/Launcher;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private mSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private previousUpdatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesDirectory:Ljava/io/File;

.field private final updatesDirectoryException:Ljava/lang/Exception;

.field private updatesInterfaceCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$yUdcEGj7IkyaoUHA5oV_OlvJMQ4(Lexpo/modules/updates/UpdatesDevLauncherController;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->runReaper$lambda$1(Lexpo/modules/updates/UpdatesDevLauncherController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/UpdatesDevLauncherController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/UpdatesDevLauncherController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/UpdatesDevLauncherController;->Companion:Lexpo/modules/updates/UpdatesDevLauncherController$Companion;

    .line 368
    const-string v0, "UpdatesDevLauncherController"

    sput-object v0, Lexpo/modules/updates/UpdatesDevLauncherController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesDirectory:Ljava/io/File;

    .line 53
    iput-object p4, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesDirectoryException:Ljava/lang/Exception;

    .line 55
    new-instance p3, Lexpo/modules/updates/events/NoOpUpdatesEventManager;

    invoke-direct {p3}, Lexpo/modules/updates/events/NoOpUpdatesEventManager;-><init>()V

    iput-object p3, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->eventManager:Lexpo/modules/updates/events/NoOpUpdatesEventManager;

    .line 60
    new-instance p3, Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p4

    const-string v0, "getFilesDir(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lexpo/modules/updates/logging/UpdatesLogger;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 63
    iput-object p2, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 65
    new-instance p3, Lexpo/modules/updates/db/DatabaseHolder;

    sget-object p4, Lexpo/modules/updates/db/UpdatesDatabase;->Companion:Lexpo/modules/updates/db/UpdatesDatabase$Companion;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lexpo/modules/updates/db/UpdatesDatabase$Companion;->getInstance(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object p1

    invoke-direct {p3, p1}, Lexpo/modules/updates/db/DatabaseHolder;-><init>(Lexpo/modules/updates/db/UpdatesDatabase;)V

    iput-object p3, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "1"

    .line 68
    :cond_1
    invoke-static {p1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicyFactory;->createFilterAwarePolicy(Ljava/lang/String;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->defaultSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-void
.end method

.method public static final synthetic access$getPreviousUpdatesConfiguration$p(Lexpo/modules/updates/UpdatesDevLauncherController;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 49
    iget-object p0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->previousUpdatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesConfiguration$p(Lexpo/modules/updates/UpdatesDevLauncherController;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 49
    iget-object p0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$launchUpdate(Lexpo/modules/updates/UpdatesDevLauncherController;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/updates/UpdatesDevLauncherController;->launchUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V

    return-void
.end method

.method public static final synthetic access$runReaper(Lexpo/modules/updates/UpdatesDevLauncherController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->runReaper()V

    return-void
.end method

.method public static final synthetic access$setLauncher$p(Lexpo/modules/updates/UpdatesDevLauncherController;Lexpo/modules/updates/launcher/Launcher;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-void
.end method

.method public static final synthetic access$setUpdatesConfiguration$p(Lexpo/modules/updates/UpdatesDevLauncherController;Lexpo/modules/updates/UpdatesConfiguration;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-void
.end method

.method private final createUpdatesConfiguration(Ljava/util/HashMap;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/updates/UpdatesConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    sget-object v0, Lexpo/modules/updates/UpdatesConfiguration;->Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->getUpdatesConfigurationValidationResult(Landroid/content/Context;Ljava/util/Map;)Lexpo/modules/updates/UpdatesConfigurationValidationResult;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/UpdatesDevLauncherController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfigurationValidationResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to load update: UpdatesConfiguration object must include a valid runtime version"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to load update: UpdatesConfiguration object must include a valid update URL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to load update: UpdatesConfiguration object is not enabled"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_3
    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lexpo/modules/updates/UpdatesConfiguration;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0

    .line 220
    :cond_4
    iget-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesDirectoryException:Ljava/lang/Exception;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p1
.end method

.method private final getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;
    .locals 1

    .line 303
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v0}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

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

    .line 116
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getSelectionPolicy()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->mSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->defaultSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    :cond_0
    return-object v0
.end method

.method private final isUsingEmbeddedAssets()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->isUsingEmbeddedAssets()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final launchUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V
    .locals 15

    move-object v0, p0

    .line 259
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getSelectionPolicy()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v1

    .line 265
    new-instance v2, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 266
    new-instance v3, Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;

    invoke-virtual/range {p1 .. p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;-><init>(Ljava/util/UUID;)V

    check-cast v3, Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;

    .line 267
    invoke-virtual {v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->getLoaderSelectionPolicy()Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;

    move-result-object v4

    .line 268
    invoke-virtual {v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->getReaperSelectionPolicy()Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;

    move-result-object v1

    .line 265
    invoke-direct {v2, v3, v4, v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;-><init>(Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;)V

    .line 264
    invoke-direct {p0, v2}, Lexpo/modules/updates/UpdatesDevLauncherController;->setNextSelectionPolicy(Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V

    .line 272
    new-instance v1, Lexpo/modules/updates/launcher/DatabaseLauncher;

    .line 273
    iget-object v6, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    .line 275
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getSelectionPolicy()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v10

    .line 278
    iget-object v11, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const/16 v13, 0x40

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    .line 272
    invoke-direct/range {v5 .. v14}, Lexpo/modules/updates/launcher/DatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 281
    iget-object v2, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v2

    .line 282
    new-instance v3, Lexpo/modules/updates/UpdatesDevLauncherController$launchUpdate$1;

    move-object/from16 v4, p4

    invoke-direct {v3, p0, v4, v1}, Lexpo/modules/updates/UpdatesDevLauncherController$launchUpdate$1;-><init>(Lexpo/modules/updates/UpdatesDevLauncherController;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;Lexpo/modules/updates/launcher/DatabaseLauncher;)V

    check-cast v3, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 280
    invoke-virtual {v1, v2, v3}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method private final resetSelectionPolicyToDefault()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->mSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-void
.end method

.method private final runReaper()V
    .locals 1

    .line 306
    new-instance v0, Lexpo/modules/updates/UpdatesDevLauncherController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/updates/UpdatesDevLauncherController$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/UpdatesDevLauncherController;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final runReaper$lambda$1(Lexpo/modules/updates/UpdatesDevLauncherController;)V
    .locals 4

    .line 307
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v2

    .line 313
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    .line 314
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getSelectionPolicy()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object p0

    .line 309
    invoke-static {v0, v1, v2, v3, p0}, Lexpo/modules/updates/db/Reaper;->reapUnusedUpdates(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V

    :cond_0
    return-void
.end method

.method private final setDefaultSelectionPolicy(Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->defaultSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-void
.end method

.method private final setDevelopmentSelectionPolicy()V
    .locals 7

    .line 240
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->resetSelectionPolicyToDefault()V

    .line 241
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getSelectionPolicy()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v0

    .line 243
    new-instance v1, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 244
    invoke-virtual {v0}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->getLauncherSelectionPolicy()Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;

    move-result-object v2

    .line 245
    invoke-virtual {v0}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->getLoaderSelectionPolicy()Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;

    move-result-object v0

    .line 246
    new-instance v3, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;

    .line 243
    invoke-direct {v1, v2, v0, v3}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;-><init>(Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;)V

    .line 242
    invoke-direct {p0, v1}, Lexpo/modules/updates/UpdatesDevLauncherController;->setDefaultSelectionPolicy(Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V

    .line 249
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->resetSelectionPolicyToDefault()V

    return-void
.end method

.method private final setNextSelectionPolicy(Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->mSelectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-void
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

    .line 345
    new-instance p1, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;

    const-string v0, "Updates.checkForUpdateAsync() is not supported in development builds."

    invoke-direct {p1, v0}, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;-><init>(Ljava/lang/String;)V

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

    .line 349
    new-instance p1, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;

    const-string v0, "Updates.fetchUpdateAsync() is not supported in development builds."

    invoke-direct {p1, v0}, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetchUpdateWithConfiguration(Ljava/util/HashMap;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/updates/UpdatesDevLauncherController;->createUpdatesConfiguration(Ljava/util/HashMap;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    iput-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->previousUpdatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 150
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 152
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->setDevelopmentSelectionPolicy()V

    .line 154
    new-instance p1, Lexpo/modules/updates/loader/FileDownloader;

    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-direct {p1, v0, v1, v2}, Lexpo/modules/updates/loader/FileDownloader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V

    .line 155
    new-instance v0, Lexpo/modules/updates/loader/RemoteLoader;

    .line 156
    iget-object v2, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->context:Landroid/content/Context;

    .line 157
    iget-object v3, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    iget-object v4, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 159
    iget-object v1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v1}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v5

    .line 161
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesDirectory()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    .line 155
    invoke-direct/range {v1 .. v8}, Lexpo/modules/updates/loader/RemoteLoader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 164
    new-instance v1, Lexpo/modules/updates/UpdatesDevLauncherController$fetchUpdateWithConfiguration$1;

    invoke-direct {v1, p0, p2, p1}, Lexpo/modules/updates/UpdatesDevLauncherController$fetchUpdateWithConfiguration$1;-><init>(Lexpo/modules/updates/UpdatesDevLauncherController;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;Lexpo/modules/updates/loader/FileDownloader;)V

    check-cast v1, Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-virtual {v0, v1}, Lexpo/modules/updates/loader/RemoteLoader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 143
    invoke-interface {p2, p1}, Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "IUpdatesController.bundleAssetName should not be called in dev client"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstantsForModule()Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;
    .locals 32

    move-object/from16 v0, p0

    .line 323
    new-instance v15, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;

    .line 324
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    .line 327
    iget-object v5, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesDirectoryException:Ljava/lang/Exception;

    .line 329
    invoke-direct/range {p0 .. p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->isUsingEmbeddedAssets()Z

    move-result v7

    .line 330
    iget-object v1, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersionRaw()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "1"

    :cond_1
    move-object v8, v1

    .line 331
    iget-object v1, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration;->getCheckOnLaunch()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ALWAYS:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    :cond_3
    move-object v9, v1

    .line 332
    iget-object v1, v0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_5
    move-object v10, v1

    .line 333
    invoke-direct/range {p0 .. p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v11

    .line 335
    new-instance v13, Lexpo/modules/updates/statemachine/UpdatesStateContext;

    const/16 v30, 0x1fff

    const/16 v31, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v31}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x1

    move-object v1, v15

    .line 323
    invoke-direct/range {v1 .. v14}, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/time/Duration;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;ZZLjava/lang/String;Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;Ljava/util/Map;Ljava/util/Map;ZLexpo/modules/updates/statemachine/UpdatesStateContext;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15
.end method

.method public bridge synthetic getEventManager()Lexpo/modules/updates/events/IUpdatesEventManager;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getEventManager()Lexpo/modules/updates/events/NoOpUpdatesEventManager;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/events/IUpdatesEventManager;

    return-object v0
.end method

.method public getEventManager()Lexpo/modules/updates/events/NoOpUpdatesEventManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->eventManager:Lexpo/modules/updates/events/NoOpUpdatesEventManager;

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

    .line 353
    new-instance p1, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;

    const-string v0, "Updates.getExtraParamsAsync() is not supported in development builds."

    invoke-direct {p1, v0}, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getLaunchAssetFile()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "launchAssetFile should not be called from expo-dev-client build, except for Detox testing"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->warn$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 113
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRuntimeVersion()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUpdateUrl()Landroid/net/Uri;
    .locals 1

    .line 129
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getUpdateUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUpdatesDirectory()Ljava/io/File;
    .locals 1

    .line 52
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getUpdatesInterfaceCallbacks()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesInterfaceCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public isActiveController()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->isActiveController:Z

    return v0
.end method

.method public isValidUpdatesConfiguration(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/updates/UpdatesDevLauncherController;->createUpdatesConfiguration(Ljava/util/HashMap;)Lexpo/modules/updates/UpdatesConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    iget-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "Invalid updates configuration"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->InitializationError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    const/4 p1, 0x0

    :goto_0
    return p1
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

    return-void
.end method

.method public onEventListenerStartObserving()V
    .locals 0

    return-void
.end method

.method public onReactInstanceException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public relaunchReactApplicationForModule(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 373
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 379
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 380
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 340
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesDevLauncherController;->getUpdatesInterfaceCallbacks()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;->onRequestRelaunch()V

    .line 341
    :cond_0
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 372
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return-object v0

    .line 382
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->launcher:Lexpo/modules/updates/launcher/Launcher;

    return-void
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

    .line 360
    new-instance p1, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;

    const-string p2, "Updates.setExtraParamAsync() is not supported in development builds."

    invoke-direct {p1, p2}, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpdateURLAndRequestHeadersOverride(Lexpo/modules/updates/UpdatesConfigurationOverride;)V
    .locals 1

    .line 364
    new-instance p1, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;

    const-string v0, "Updates.setUpdateURLAndRequestHeadersOverride() is not supported in development builds."

    invoke-direct {p1, v0}, Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpdatesInterfaceCallbacks(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lexpo/modules/updates/UpdatesDevLauncherController;->updatesInterfaceCallbacks:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
