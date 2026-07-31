.class public final Lexpo/modules/kotlin/AppContext;
.super Ljava/lang/Object;
.source "AppContext.kt"

# interfaces
.implements Lexpo/modules/kotlin/providers/CurrentActivityProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n+ 6 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n+ 7 Utils.kt\nexpo/modules/kotlin/Utils\n*L\n1#1,364:1\n134#1,4:373\n134#1,4:377\n134#1,4:381\n134#1,4:385\n134#1,4:389\n134#1,4:393\n134#1,4:397\n134#1,4:401\n134#1,4:405\n134#1,4:411\n134#1,4:415\n1#2:365\n1#2:420\n14#3:366\n25#3:367\n14#3:421\n25#3:422\n27#4,5:368\n27#4,3:423\n31#4:427\n29#5:409\n29#5:410\n29#5:426\n29#5:428\n29#5:429\n29#5:437\n56#6:419\n10#7,7:430\n*S KotlinDebug\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n145#1:373,4\n151#1:377,4\n157#1:381,4\n177#1:385,4\n183#1:389,4\n189#1:393,4\n195#1:397,4\n201#1:401,4\n207#1:405,4\n225#1:411,4\n238#1:415,4\n244#1:420\n118#1:366\n118#1:367\n246#1:421\n246#1:422\n118#1:368,5\n246#1:423,3\n246#1:427\n213#1:409\n219#1:410\n247#1:426\n320#1:428\n325#1:429\n344#1:437\n244#1:419\n337#1:430,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u000200J\u0018\u00102\u001a\u0004\u0018\u0001H3\"\u0006\u0008\u0000\u00103\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u00104J\u0010\u0010f\u001a\u0004\u0018\u00010g2\u0006\u0010h\u001a\u00020iJ\r\u0010q\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008rJ\r\u0010s\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008tJ\r\u0010u\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008vJ\r\u0010w\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008xJ\r\u0010y\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008zJ3\u0010{\u001a\u0002002\u0006\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0000\u00a2\u0006\u0003\u0008\u0083\u0001J\u001b\u0010\u0084\u0001\u001a\u0002002\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0000\u00a2\u0006\u0003\u0008\u0086\u0001J\'\u0010\u0087\u0001\u001a\u0005\u0018\u0001H\u0088\u0001\"\n\u0008\u0000\u0010\u0088\u0001*\u00030\u0089\u00012\u0007\u0010\u008a\u0001\u001a\u00020\u007fH\u0007\u00a2\u0006\u0003\u0010\u008b\u0001J\u001f\u0010\u008c\u0001\u001a\u0002002\u000e\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u0002000\u008e\u0001H\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\u000f\u0010\u0090\u0001\u001a\u000200H\u0000\u00a2\u0006\u0003\u0008\u0091\u0001J\u0011\u0010\u0092\u0001\u001a\u0002002\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\"\u0010#\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u00020,X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0013\u00105\u001a\u0004\u0018\u0001068F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0013\u00109\u001a\u0004\u0018\u00010:8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0016\u0010=\u001a\u0004\u0018\u00010>8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\u0011\u0010A\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u0011\u0010E\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010DR\u0013\u0010G\u001a\u0004\u0018\u00010H8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010JR\u0013\u0010K\u001a\u0004\u0018\u00010L8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0013\u0010O\u001a\u0004\u0018\u00010P8F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\u0013\u0010S\u001a\u0004\u0018\u00010T8F\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR\u0013\u0010W\u001a\u0004\u0018\u00010X8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010ZR\u0013\u0010[\u001a\u0004\u0018\u00010\\8F\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010^R\u0013\u0010_\u001a\u0004\u0018\u00010`8F\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010bR\u0011\u0010c\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010eR\u0016\u0010j\u001a\u0004\u0018\u00010g8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010lR\u0013\u0010m\u001a\u0004\u0018\u00010n8F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR\u0019\u0010\u0095\u0001\u001a\u0004\u0018\u00010}8VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0014\u0010\u0098\u0001\u001a\u00020}8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0001\u0010\u0097\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/providers/CurrentActivityProvider;",
        "modulesProvider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "legacyModuleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V",
        "getLegacyModuleRegistry",
        "()Lexpo/modules/core/ModuleRegistry;",
        "hostingRuntimeContext",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "getHostingRuntimeContext",
        "()Lexpo/modules/kotlin/RuntimeContext;",
        "reactLifecycleDelegate",
        "Lexpo/modules/kotlin/ReactLifecycleDelegate;",
        "hostWasDestroyed",
        "",
        "modulesQueueDispatcher",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "backgroundCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getBackgroundCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "modulesQueue",
        "getModulesQueue",
        "mainQueue",
        "getMainQueue",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "legacyModulesProxyHolder",
        "Lexpo/modules/adapters/react/NativeModulesProxy;",
        "getLegacyModulesProxyHolder$expo_modules_core_release",
        "()Ljava/lang/ref/WeakReference;",
        "setLegacyModulesProxyHolder$expo_modules_core_release",
        "(Ljava/lang/ref/WeakReference;)V",
        "activityResultsManager",
        "Lexpo/modules/kotlin/activityresult/ActivityResultsManager;",
        "appContextActivityResultCaller",
        "Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "getAppContextActivityResultCaller$expo_modules_core_release",
        "()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "onCreate",
        "",
        "installJSIInterop",
        "legacyModule",
        "Module",
        "()Ljava/lang/Object;",
        "constants",
        "Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "getConstants",
        "()Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "filePermission",
        "Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;",
        "getFilePermission",
        "()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;",
        "appDirectories",
        "Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;",
        "getAppDirectories",
        "()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;",
        "persistentFilesDirectory",
        "Ljava/io/File;",
        "getPersistentFilesDirectory",
        "()Ljava/io/File;",
        "cacheDirectory",
        "getCacheDirectory",
        "permissions",
        "Lexpo/modules/interfaces/permissions/Permissions;",
        "getPermissions",
        "()Lexpo/modules/interfaces/permissions/Permissions;",
        "imageLoader",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "getImageLoader",
        "()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "camera",
        "Lexpo/modules/interfaces/camera/CameraViewInterface;",
        "getCamera",
        "()Lexpo/modules/interfaces/camera/CameraViewInterface;",
        "font",
        "Lexpo/modules/interfaces/font/FontManagerInterface;",
        "getFont",
        "()Lexpo/modules/interfaces/font/FontManagerInterface;",
        "taskManager",
        "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "getTaskManager",
        "()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "activityProvider",
        "Lexpo/modules/core/interfaces/ActivityProvider;",
        "getActivityProvider",
        "()Lexpo/modules/core/interfaces/ActivityProvider;",
        "reactContext",
        "Landroid/content/Context;",
        "getReactContext",
        "()Landroid/content/Context;",
        "hasActiveReactInstance",
        "getHasActiveReactInstance",
        "()Z",
        "eventEmitter",
        "Lexpo/modules/kotlin/events/EventEmitter;",
        "module",
        "Lexpo/modules/kotlin/modules/Module;",
        "callbackInvoker",
        "getCallbackInvoker$expo_modules_core_release",
        "()Lexpo/modules/kotlin/events/EventEmitter;",
        "errorManager",
        "Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "getErrorManager",
        "()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "onDestroy",
        "onDestroy$expo_modules_core_release",
        "onHostResume",
        "onHostResume$expo_modules_core_release",
        "onHostPause",
        "onHostPause$expo_modules_core_release",
        "onUserLeaveHint",
        "onUserLeaveHint$expo_modules_core_release",
        "onHostDestroy",
        "onHostDestroy$expo_modules_core_release",
        "onActivityResult",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onActivityResult$expo_modules_core_release",
        "onNewIntent",
        "intent",
        "onNewIntent$expo_modules_core_release",
        "findView",
        "T",
        "Landroid/view/View;",
        "viewTag",
        "(I)Landroid/view/View;",
        "dispatchOnMainUsingUIManager",
        "block",
        "Lkotlin/Function0;",
        "dispatchOnMainUsingUIManager$expo_modules_core_release",
        "assertMainThread",
        "assertMainThread$expo_modules_core_release",
        "executeOnJavaScriptThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "currentActivity",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "throwingActivity",
        "getThrowingActivity",
        "expo-modules-core_release"
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
.field private final activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

.field private final appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

.field private final backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private hostWasDestroyed:Z

.field private final hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

.field private final legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

.field private legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mainQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

.field private final reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;


# direct methods
.method public static synthetic $r8$lambda$cVeADq2DvA1DGrrixCVG0La1UhU(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/AppContext;->dispatchOnMainUsingUIManager$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModulesProvider;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modulesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyModuleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 57
    new-instance p2, Lexpo/modules/kotlin/RuntimeContext;

    invoke-direct {p2, p0, p3}, Lexpo/modules/kotlin/RuntimeContext;-><init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 59
    new-instance v0, Lexpo/modules/kotlin/ReactLifecycleDelegate;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/ReactLifecycleDelegate;-><init>(Lexpo/modules/kotlin/AppContext;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    .line 63
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "expo.modules.AsyncFunctionQueue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 65
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-static {v3, v1, v4, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v3

    iput-object v3, p0, Lexpo/modules/kotlin/AppContext;->modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 72
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    .line 73
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 72
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 74
    new-instance v6, Lkotlinx/coroutines/CoroutineName;

    const-string v7, "expo.modules.BackgroundCoroutineScope"

    invoke-direct {v6, v7}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 72
    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 71
    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    iput-object v5, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 82
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 81
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/android/HandlerDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 83
    new-instance v5, Lkotlinx/coroutines/CoroutineName;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 81
    invoke-interface {v3, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    iput-object v2, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 87
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    .line 88
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 89
    new-instance v2, Lkotlinx/coroutines/CoroutineName;

    const-string v3, "expo.modules.MainQueue"

    invoke-direct {v2, v3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 97
    new-instance v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    move-object v2, p0

    check-cast v2, Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;-><init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V

    iput-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    .line 98
    new-instance v2, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;-><init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)V

    iput-object v2, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    .line 101
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 103
    check-cast p3, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p3, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 105
    check-cast v0, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 110
    invoke-virtual {p2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object p3

    new-instance v0, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    invoke-direct {v0}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {p3, v0}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 111
    invoke-virtual {p2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object p3

    new-instance v0, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;

    invoke-direct {v0}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {p3, v0}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 112
    invoke-virtual {p2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object p2

    invoke-virtual {p2, p1}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;

    .line 114
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    const-string p2, "\u2705 AppContext was initialized"

    invoke-virtual {p1, p2}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The app context should be created with valid react context."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;
    .locals 0

    .line 49
    iget-object p0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    return-object p0
.end method

.method private static final dispatchOnMainUsingUIManager$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;
    .locals 2

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 381
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    return-object v0
.end method


# virtual methods
.method public final assertMainThread$expo_modules_core_release()V
    .locals 4

    .line 337
    sget-object v0, Lexpo/modules/kotlin/Utils;->INSTANCE:Lexpo/modules/kotlin/Utils;

    .line 430
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;

    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-direct {v0, v1, v3}, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatchOnMainUsingUIManager$expo_modules_core_release(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 429
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_0

    .line 327
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const/4 v1, 0x1

    .line 326
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.UIManagerModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 331
    new-instance v1, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void

    .line 325
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw p1
.end method

.method public final eventEmitter(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/events/EventEmitter;
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-class v2, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v1, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 225
    :goto_0
    check-cast v1, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v1, :cond_0

    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 227
    new-instance v2, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;

    invoke-direct {v2, p1, v1, v0}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;-><init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v2

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create an event emitter for the module that isn\'t present in the module registry."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final executeOnJavaScriptThread(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 437
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final findView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 428
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v1, p1

    :cond_2
    return-object v1
.end method

.method public final getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;
    .locals 2

    .line 406
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/core/interfaces/ActivityProvider;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    check-cast v0, Lexpo/modules/core/interfaces/ActivityProvider;

    return-object v0
.end method

.method public final getAppContextActivityResultCaller$expo_modules_core_release()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;
    .locals 1

    .line 98
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    return-object v0
.end method

.method public final getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 71
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getCacheDirectory()Ljava/io/File;
    .locals 2

    .line 170
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Lexpo/modules/core/errors/ModuleNotFoundException;

    const-string v1, "expo.modules.interfaces.filesystem.AppDirectories"

    invoke-direct {v0, v1}, Lexpo/modules/core/errors/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCallbackInvoker$expo_modules_core_release()Lexpo/modules/kotlin/events/EventEmitter;
    .locals 3

    const/4 v0, 0x0

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-class v2, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v1, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 238
    :goto_0
    check-cast v1, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v1, :cond_0

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;

    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;-><init>(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v0, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v0
.end method

.method public final getCamera()Lexpo/modules/interfaces/camera/CameraViewInterface;
    .locals 2

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/camera/CameraViewInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/camera/CameraViewInterface;

    return-object v0
.end method

.method public final getConstants()Lexpo/modules/interfaces/constants/ConstantsInterface;
    .locals 2

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/constants/ConstantsInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 351
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 352
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    .locals 4

    .line 244
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v3, v3, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    instance-of v1, v0, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v0

    :goto_3
    check-cast v2, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    return-object v2
.end method

.method public final getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;
    .locals 2

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    return-object v0
.end method

.method public final getFont()Lexpo/modules/interfaces/font/FontManagerInterface;
    .locals 2

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/font/FontManagerInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/font/FontManagerInterface;

    return-object v0
.end method

.method public final getHasActiveReactInstance()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 410
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    return-object v0
.end method

.method public final getImageLoader()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;
    .locals 2

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 389
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    return-object v0
.end method

.method public final getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-object v0
.end method

.method public final getLegacyModulesProxyHolder$expo_modules_core_release()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getMainQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 86
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getModulesQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getPermissions()Lexpo/modules/interfaces/permissions/Permissions;
    .locals 2

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/permissions/Permissions;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/permissions/Permissions;

    return-object v0
.end method

.method public final getPersistentFilesDirectory()Ljava/io/File;
    .locals 2

    .line 163
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;->getPersistentFilesDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lexpo/modules/core/errors/ModuleNotFoundException;

    const-string v1, "expo.modules.interfaces.filesystem.AppDirectories"

    invoke-direct {v0, v1}, Lexpo/modules/core/errors/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReactContext()Landroid/content/Context;
    .locals 1

    .line 213
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 409
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 93
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final getTaskManager()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 2

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    return-object v0
.end method

.method public final getThrowingActivity()Landroid/app/Activity;
    .locals 3

    .line 357
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 358
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    .line 359
    :cond_4
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    throw v0
.end method

.method public final installJSIInterop()V
    .locals 1

    .line 127
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->installJSIContext()V

    return-void
.end method

.method public final synthetic legacyModule()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Module:",
            "Ljava/lang/Object;",
            ">()TModule;"
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-string v1, "Module"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onActivityResult$expo_modules_core_release(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    invoke-virtual {v0, p2, p3, p4}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 300
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 302
    new-instance v2, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-direct {v2, p2, p3, p4}, Lexpo/modules/kotlin/events/OnActivityResultPayload;-><init>(IILandroid/content/Intent;)V

    .line 299
    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 367
    const-string v0, "[ExpoModulesCore] AppContext.onCreate"

    .line 368
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->postOnCreate()V

    .line 120
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final onDestroy$expo_modules_core_release()V
    .locals 4

    .line 422
    const-string v0, "[ExpoModulesCore] AppContext.onDestroy"

    .line 423
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 249
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->cleanUp()V

    .line 250
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getModulesQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 251
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 252
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 253
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->deallocate()V

    .line 254
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 AppContext was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 255
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final onHostDestroy$expo_modules_core_release()V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_1
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostDestroy(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_DESTROYS:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    return-void
.end method

.method public final onHostPause$expo_modules_core_release()V
    .locals 2

    .line 276
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final onHostResume$expo_modules_core_release()V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_2

    .line 262
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_2
    iget-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 267
    iput-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    .line 268
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleRegistry;->registerActivityContracts$expo_modules_core_release()V

    .line 271
    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostResume(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 272
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final onNewIntent$expo_modules_core_release(Landroid/content/Intent;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 312
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_NEW_INTENT:Lexpo/modules/kotlin/events/EventName;

    .line 311
    invoke-virtual {v0, v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserLeaveHint$expo_modules_core_release()V
    .locals 2

    .line 280
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_USER_LEAVES_ACTIVITY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final setLegacyModulesProxyHolder$expo_modules_core_release(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method
