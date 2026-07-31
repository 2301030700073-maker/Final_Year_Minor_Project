.class public final Lexpo/modules/ReactActivityDelegateWrapper;
.super Lcom/facebook/react/ReactActivityDelegate;
.source "ReactActivityDelegateWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ReactActivityDelegateWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactActivityDelegateWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1368#2:506\n1454#2,5:507\n1368#2:512\n1454#2,5:513\n1863#2,2:518\n1557#2:520\n1628#2,3:521\n1797#2,3:524\n1557#2:527\n1628#2,3:528\n1797#2,3:531\n1557#2:534\n1628#2,3:535\n1797#2,3:538\n1557#2:541\n1628#2,3:542\n1797#2,3:545\n1557#2:548\n1628#2,3:549\n1797#2,3:552\n1863#2,2:555\n1863#2,2:557\n1863#2,2:559\n*S KotlinDebug\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper\n*L\n54#1:506\n54#1:507,5\n56#1:512\n56#1:513,5\n190#1:518,2\n302#1:520\n302#1:521,3\n303#1:524,3\n313#1:527\n313#1:528,3\n314#1:531,3\n324#1:534\n324#1:535,3\n325#1:538,3\n333#1:541\n333#1:542,3\n334#1:545,3\n344#1:548\n344#1:549,3\n345#1:552,3\n446#1:555,2\n455#1:557,2\n462#1:559,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ea\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\tJ\n\u00102\u001a\u0004\u0018\u000103H\u0014J\n\u00104\u001a\u0004\u0018\u000105H\u0014J\n\u00106\u001a\u0004\u0018\u000107H\u0014J\u0008\u00108\u001a\u00020\u0019H\u0014J\n\u00109\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010:\u001a\u00020;H\u0016J\n\u0010<\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010=\u001a\u00020*2\u0008\u0010>\u001a\u0004\u0018\u00010\u0016H\u0014J\u0012\u0010?\u001a\u00020*2\u0008\u0010@\u001a\u0004\u0018\u000103H\u0017J\u0008\u0010A\u001a\u00020*H\u0016J\u0008\u0010B\u001a\u00020*H\u0016J\u0008\u0010C\u001a\u00020*H\u0016J\u0008\u0010D\u001a\u00020*H\u0016J\"\u0010E\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020G2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u001a\u0010K\u001a\u00020\u00052\u0006\u0010L\u001a\u00020G2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u001a\u0010O\u001a\u00020\u00052\u0006\u0010L\u001a\u00020G2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u001a\u0010P\u001a\u00020\u00052\u0006\u0010L\u001a\u00020G2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010Q\u001a\u00020\u0005H\u0016J\u0012\u0010R\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010JH\u0016J\u0010\u0010T\u001a\u00020*2\u0006\u0010U\u001a\u00020\u0005H\u0016J1\u0010V\u001a\u00020*2\u0010\u0010W\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0016\u0018\u00010X2\u0006\u0010F\u001a\u00020G2\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016\u00a2\u0006\u0002\u0010[J1\u0010\\\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\u0010\u0010W\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0016\u0018\u00010X2\u0008\u0010]\u001a\u0004\u0018\u00010^H\u0016\u00a2\u0006\u0002\u0010_J\u0008\u0010`\u001a\u00020aH\u0014J\u0008\u0010b\u001a\u00020cH\u0014J\u0008\u0010d\u001a\u00020\u0005H\u0014J\u0008\u0010e\u001a\u00020\u0005H\u0014J\n\u0010f\u001a\u0004\u0018\u000103H\u0014J\u0012\u0010g\u001a\u00020*2\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0016J\u001b\u0010j\u001a\u0002Hk\"\u0004\u0008\u0000\u0010k2\u0006\u0010l\u001a\u00020\u0016H\u0002\u00a2\u0006\u0002\u0010mJC\u0010j\u001a\u0002Hk\"\u0004\u0008\u0000\u0010k\"\u0004\u0008\u0001\u0010n2\u0006\u0010l\u001a\u00020\u00162\u0010\u0010o\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030p0X2\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u0002Hn0XH\u0001\u00a2\u0006\u0004\u0008r\u0010sJ \u0010t\u001a\u00020*2\u0008\u0010>\u001a\u0004\u0018\u00010\u00162\u0006\u0010u\u001a\u00020\u0005H\u0082@\u00a2\u0006\u0002\u0010vJ\u0018\u0010w\u001a\u00020*2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0082@\u00a2\u0006\u0002\u0010xJB\u0010y\u001a\u00020*2\u0008\u0008\u0002\u0010z\u001a\u00020{2(\u0010|\u001a$\u0008\u0001\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0~\u0012\u0006\u0012\u0004\u0018\u00010\u007f0}\u00a2\u0006\u0003\u0008\u0080\u0001H\u0002\u00a2\u0006\u0003\u0010\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020*H\u0001\u00a2\u0006\u0003\u0008\u0083\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00018AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00130\u00130\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008 \u0010!R\u001d\u0010#\u001a\u0004\u0018\u00010$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008%\u0010&R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010-\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\u001d\u001a\u0004\u0008/\u00100\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lexpo/modules/ReactActivityDelegateWrapper;",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "isNewArchitectureEnabled",
        "",
        "delegate",
        "<init>",
        "(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V",
        "(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)V",
        "getDelegate$expo_release",
        "()Lcom/facebook/react/ReactActivityDelegate;",
        "setDelegate$expo_release",
        "(Lcom/facebook/react/ReactActivityDelegate;)V",
        "reactActivityLifecycleListeners",
        "",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "kotlin.jvm.PlatformType",
        "reactActivityHandlers",
        "Lexpo/modules/core/interfaces/ReactActivityHandler;",
        "methodMap",
        "Landroidx/collection/ArrayMap;",
        "",
        "Ljava/lang/reflect/Method;",
        "_reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "get_reactNativeHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "_reactNativeHost$delegate",
        "Lkotlin/Lazy;",
        "_reactHost",
        "Lcom/facebook/react/ReactHost;",
        "get_reactHost",
        "()Lcom/facebook/react/ReactHost;",
        "_reactHost$delegate",
        "delayLoadAppHandler",
        "Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
        "getDelayLoadAppHandler",
        "()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
        "delayLoadAppHandler$delegate",
        "loadAppReady",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "applicationCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getApplicationCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "applicationCoroutineScope$delegate",
        "getLaunchOptions",
        "Landroid/os/Bundle;",
        "createRootView",
        "Lcom/facebook/react/ReactRootView;",
        "getReactDelegate",
        "Lcom/facebook/react/ReactDelegate;",
        "getReactNativeHost",
        "getReactHost",
        "getReactInstanceManager",
        "Lcom/facebook/react/ReactInstanceManager;",
        "getMainComponentName",
        "loadApp",
        "appKey",
        "onCreate",
        "savedInstanceState",
        "onResume",
        "onPause",
        "onUserLeaveHint",
        "onDestroy",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onKeyLongPress",
        "onBackPressed",
        "onNewIntent",
        "intent",
        "onWindowFocusChanged",
        "hasFocus",
        "requestPermissions",
        "permissions",
        "",
        "listener",
        "Lcom/facebook/react/modules/core/PermissionListener;",
        "([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V",
        "onRequestPermissionsResult",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "getContext",
        "Landroid/content/Context;",
        "getPlainActivity",
        "Landroid/app/Activity;",
        "isFabricEnabled",
        "isWideColorGamutEnabled",
        "composeLaunchOptions",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "invokeDelegateMethod",
        "T",
        "name",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "A",
        "argTypes",
        "Ljava/lang/Class;",
        "args",
        "invokeDelegateMethod$expo_release",
        "(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;",
        "loadAppImpl",
        "supportsDelayLoad",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitDelayLoadAppWhenReady",
        "(Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchLifecycleScopeWithLock",
        "start",
        "Lkotlinx/coroutines/CoroutineStart;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V",
        "setLoadAppReadyForTesting",
        "setLoadAppReadyForTesting$expo_release",
        "Companion",
        "expo_release"
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
.field public static final Companion:Lexpo/modules/ReactActivityDelegateWrapper$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final _reactHost$delegate:Lkotlin/Lazy;

.field private final _reactNativeHost$delegate:Lkotlin/Lazy;

.field private final activity:Lcom/facebook/react/ReactActivity;

.field private final applicationCoroutineScope$delegate:Lkotlin/Lazy;

.field private final delayLoadAppHandler$delegate:Lkotlin/Lazy;

.field private delegate:Lcom/facebook/react/ReactActivityDelegate;

.field private final isNewArchitectureEnabled:Z

.field private final loadAppReady:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final methodMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final reactActivityHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final reactActivityLifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$--lSmKJi6asMZWa0ETJr8aJejw4()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    invoke-static {}, Lexpo/modules/ReactActivityDelegateWrapper;->applicationCoroutineScope_delegate$lambda$6()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$2tVWuC3eYZC6-0tc29T-PtHk4O4(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Landroid/view/ViewGroup;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppImpl$lambda$18(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6Z5xP6WsUpnYmnqTVsG5ckH5Ya0(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ReactActivityDelegateWrapper;->delayLoadAppHandler_delegate$lambda$5$lambda$4(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Eeekf5wAIujUVf_erjzryxKA7xM(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ReactActivityDelegateWrapper;->onCreate$lambda$7(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IfZnFillPe0V2VzNOtCm4CgLEfs(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->delayLoadAppHandler_delegate$lambda$5(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PGLqVAmkXnM3f_vHD-Bm_E-_xBs(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactHost;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->_reactHost_delegate$lambda$3(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactHost;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bj70TCSehJyjXF4iiR5KKSkln2E(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactNativeHost;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->_reactNativeHost_delegate$lambda$2(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactNativeHost;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/ReactActivityDelegateWrapper;->Companion:Lexpo/modules/ReactActivityDelegateWrapper$Companion;

    .line 502
    const-class v0, Lcom/facebook/react/ReactActivityDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/ReactActivityDelegateWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, p2}, Lexpo/modules/ReactActivityDelegateWrapper;-><init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/ReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    .line 47
    iput-boolean p2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->isNewArchitectureEnabled:Z

    .line 48
    iput-object p3, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    .line 53
    sget-object p1, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {p1}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 506
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 507
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 508
    check-cast p3, Lexpo/modules/core/interfaces/Package;

    .line 54
    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast v1, Landroid/content/Context;

    invoke-interface {p3, v1}, Lexpo/modules/core/interfaces/Package;->createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    const-string v1, "createReactActivityLifecycleListeners(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    .line 509
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 511
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 54
    iput-object p2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    .line 55
    sget-object p1, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {p1}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 512
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 513
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 514
    check-cast p3, Lexpo/modules/core/interfaces/Package;

    .line 56
    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast v1, Landroid/content/Context;

    invoke-interface {p3, v1}, Lexpo/modules/core/interfaces/Package;->createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    const-string v1, "createReactActivityHandlers(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    .line 515
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 517
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 56
    iput-object p2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    .line 57
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->methodMap:Landroidx/collection/ArrayMap;

    .line 58
    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->_reactNativeHost$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda4;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->_reactHost$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda5;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delayLoadAppHandler$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 73
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p2, 0x0

    .line 81
    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 87
    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->applicationCoroutineScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final _reactHost_delegate$lambda$3(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactHost;
    .locals 0

    .line 62
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {p0}, Lcom/facebook/react/ReactActivityDelegate;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object p0

    return-object p0
.end method

.method private static final _reactNativeHost_delegate$lambda$2(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 59
    const-string v0, "getReactNativeHost"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/ReactNativeHost;

    return-object p0
.end method

.method public static final synthetic access$awaitDelayLoadAppWhenReady(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper;->awaitDelayLoadAppWhenReady(Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivity$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactActivity;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    return-object p0
.end method

.method public static final synthetic access$getDelayLoadAppHandler(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 0

    .line 45
    invoke-direct {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelayLoadAppHandler()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getReactActivityLifecycleListeners$p(Lexpo/modules/ReactActivityDelegateWrapper;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lexpo/modules/ReactActivityDelegateWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$loadAppImpl(Lexpo/modules/ReactActivityDelegateWrapper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppImpl(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final applicationCoroutineScope_delegate$lambda$6()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 88
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private final awaitDelayLoadAppWhenReady(Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 469
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 471
    :cond_0
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 472
    new-instance v2, Lexpo/modules/ReactActivityDelegateWrapper$awaitDelayLoadAppWhenReady$2$1;

    invoke-direct {v2, v1}, Lexpo/modules/ReactActivityDelegateWrapper$awaitDelayLoadAppWhenReady$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {p1, v2}, Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;->whenReady(Ljava/lang/Runnable;)V

    .line 471
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final delayLoadAppHandler_delegate$lambda$5(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 2

    .line 65
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 66
    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    return-object p0
.end method

.method private static final delayLoadAppHandler_delegate$lambda$5$lambda$4(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 1

    .line 66
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    invoke-virtual {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lexpo/modules/core/interfaces/ReactActivityHandler;->getDelayLoadAppHandler(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactNativeHost;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p0

    return-object p0
.end method

.method private final getApplicationCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 87
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->applicationCoroutineScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getDelayLoadAppHandler()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 1

    .line 64
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delayLoadAppHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    return-object v0
.end method

.method private final get_reactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->_reactHost$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactHost;

    return-object v0
.end method

.method private final get_reactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->_reactNativeHost$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method private final invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->methodMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 406
    const-class v0, Lcom/facebook/react/ReactActivityDelegate;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 408
    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->methodMap:Landroidx/collection/ArrayMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final launchLifecycleScopeWithLock(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 480
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 479
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final loadAppImpl(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;

    iget v1, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;

    invoke-direct {v0, p0, p3}, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 429
    iget v2, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    const-string v3, "loadApp"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 433
    iget-object p3, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p3

    .line 434
    new-instance v2, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {p3, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p3

    .line 435
    invoke-static {p3}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_7

    .line 437
    const-class p2, Lcom/facebook/react/ReactActivityDelegate;

    const-string v0, "mReactDelegate"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 438
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 439
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.facebook.react.ReactDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/facebook/react/ReactDelegate;

    .line 441
    invoke-virtual {p2, p1}, Lcom/facebook/react/ReactDelegate;->loadApp(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Lcom/facebook/react/ReactDelegate;->getReactRootView()Lcom/facebook/react/ReactRootView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 443
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    move-object p2, v0

    check-cast p2, Landroid/view/ViewGroup;

    :cond_4
    if-eqz p2, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 444
    :cond_5
    check-cast p1, Landroid/view/View;

    const/4 p2, -0x1

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 445
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/facebook/react/ReactActivity;->setContentView(Landroid/view/View;)V

    .line 446
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 555
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 447
    iget-object p3, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast p3, Landroid/app/Activity;

    invoke-interface {p2, p3}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onContentChanged(Landroid/app/Activity;)V

    goto :goto_2

    .line 449
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    if-eqz p2, :cond_a

    .line 453
    invoke-direct {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelayLoadAppHandler()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object p2

    iput-object p0, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    invoke-direct {p0, p2, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->awaitDelayLoadAppWhenReady(Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object p2, p0

    .line 454
    :goto_3
    new-array p3, v5, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p3, v4

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-virtual {p2, v3, p3, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object p1, p2, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 557
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 456
    iget-object v0, p2, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {p3, v0}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onContentChanged(Landroid/app/Activity;)V

    goto :goto_4

    .line 458
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 461
    :cond_a
    new-array p2, v5, [Ljava/lang/Class;

    const-class p3, Ljava/lang/String;

    aput-object p3, p2, v4

    new-array p3, v5, [Ljava/lang/String;

    aput-object p1, p3, v4

    invoke-virtual {p0, v3, p2, p3}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 559
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 463
    iget-object p3, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast p3, Landroid/app/Activity;

    invoke-interface {p2, p3}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onContentChanged(Landroid/app/Activity;)V

    goto :goto_5

    .line 465
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final loadAppImpl$lambda$18(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Landroid/view/ViewGroup;
    .locals 0

    .line 434
    iget-object p0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast p0, Landroid/app/Activity;

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/ReactActivityHandler;->createReactRootViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$7(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 1

    .line 132
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast p0, Lcom/facebook/react/ReactActivityDelegate;

    invoke-interface {p1, v0, p0}, Lexpo/modules/core/interfaces/ReactActivityHandler;->onDidCreateReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)Lcom/facebook/react/ReactActivityDelegate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected composeLaunchOptions()Landroid/os/Bundle;
    .locals 1

    .line 388
    const-string v0, "composeLaunchOptions"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 1

    .line 98
    const-string v0, "createRootView"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactRootView;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 372
    const-string v0, "getContext"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;
    .locals 1

    .line 48
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method

.method protected getLaunchOptions()Landroid/os/Bundle;
    .locals 1

    .line 94
    const-string v0, "getLaunchOptions"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/react/ReactActivityDelegate;->getMainComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlainActivity()Landroid/app/Activity;
    .locals 1

    .line 376
    const-string v0, "getPlainActivity"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected getReactDelegate()Lcom/facebook/react/ReactDelegate;
    .locals 1

    .line 102
    const-string v0, "getReactDelegate"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactDelegate;

    return-object v0
.end method

.method public getReactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 110
    invoke-direct {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->get_reactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method public getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 2

    .line 114
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/react/ReactActivityDelegate;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    const-string v1, "getReactInstanceManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 106
    invoke-direct {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->get_reactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0
.end method

.method public final invokeDelegateMethod$expo_release(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[TA;)TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->methodMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 422
    const-class v0, Lcom/facebook/react/ReactActivityDelegate;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 p2, 0x1

    .line 423
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 424
    iget-object p2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->methodMap:Landroidx/collection/ArrayMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected isFabricEnabled()Z
    .locals 1

    .line 380
    const-string v0, "isFabricEnabled"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isWideColorGamutEnabled()Z
    .locals 1

    .line 384
    const-string v0, "isWideColorGamutEnabled"

    invoke-direct {p0, v0}, Lexpo/modules/ReactActivityDelegateWrapper;->invokeDelegateMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected loadApp(Ljava/lang/String;)V
    .locals 3

    .line 122
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$loadApp$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lexpo/modules/ReactActivityDelegateWrapper$loadApp$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 277
    new-instance v6, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v6, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 329
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 541
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 542
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 543
    check-cast v3, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 333
    invoke-interface {v3}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onBackPressed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 543
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 541
    check-cast v2, Ljava/lang/Iterable;

    .line 546
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    .line 335
    :cond_4
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/react/ReactActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 392
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onConfigurationChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onConfigurationChanged$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Landroid/content/res/Configuration;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {p0, v1, v0, p1, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 132
    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lexpo/modules/ReactActivityDelegateWrapper$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-class v1, Lcom/facebook/react/ReactActivity;

    const-string v2, "mDelegate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    const-class v3, Ljava/lang/reflect/Field;

    const-string v4, "accessFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 140
    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    iput-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    .line 143
    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V

    .line 190
    :goto_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 518
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 191
    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper;->activity:Lcom/facebook/react/ReactActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2, p1}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 240
    invoke-direct {p0}, Lexpo/modules/ReactActivityDelegateWrapper;->getApplicationCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 296
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 521
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 522
    check-cast v3, Lexpo/modules/core/interfaces/ReactActivityHandler;

    .line 302
    invoke-interface {v3, p1, p2}, Lexpo/modules/core/interfaces/ReactActivityHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 522
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 520
    check-cast v2, Ljava/lang/Iterable;

    .line 525
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 303
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/ReactActivityDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 318
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 535
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 536
    check-cast v3, Lexpo/modules/core/interfaces/ReactActivityHandler;

    .line 324
    invoke-interface {v3, p1, p2}, Lexpo/modules/core/interfaces/ReactActivityHandler;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 536
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 534
    check-cast v2, Ljava/lang/Iterable;

    .line 539
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 325
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/ReactActivityDelegate;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 307
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 528
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 529
    check-cast v3, Lexpo/modules/core/interfaces/ReactActivityHandler;

    .line 313
    invoke-interface {v3, p1, p2}, Lexpo/modules/core/interfaces/ReactActivityHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 529
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 527
    check-cast v2, Ljava/lang/Iterable;

    .line 532
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 314
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/ReactActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 5

    .line 340
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->reactActivityLifecycleListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 548
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 549
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 550
    check-cast v3, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .line 344
    invoke-interface {v3, p1}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onNewIntent(Landroid/content/Intent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 550
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 548
    check-cast v2, Ljava/lang/Iterable;

    .line 553
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    :cond_3
    move v2, v4

    goto :goto_1

    .line 346
    :cond_4
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactActivityDelegate;->onNewIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public onPause()V
    .locals 3

    .line 206
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onPause$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 365
    new-instance v6, Lexpo/modules/ReactActivityDelegateWrapper$onRequestPermissionsResult$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ReactActivityDelegateWrapper$onRequestPermissionsResult$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;I[Ljava/lang/String;[ILkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v6, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 196
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onResume$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onResume$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .line 228
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onUserLeaveHint$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onUserLeaveHint$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 351
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onWindowFocusChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onWindowFocusChanged$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {p0, v1, v0, p1, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V
    .locals 7

    .line 358
    new-instance v6, Lexpo/modules/ReactActivityDelegateWrapper$requestPermissions$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ReactActivityDelegateWrapper$requestPermissions$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;[Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v6, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock$default(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final setDelegate$expo_release(Lcom/facebook/react/ReactActivityDelegate;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper;->delegate:Lcom/facebook/react/ReactActivityDelegate;

    return-void
.end method

.method public final setLoadAppReadyForTesting$expo_release()V
    .locals 2

    .line 496
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper;->loadAppReady:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
