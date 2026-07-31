.class public final Lio/sentry/android/replay/ReplayIntegration;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/replay/ScreenshotRecorderCallback;
.implements Lio/sentry/android/replay/gestures/TouchRecorderCallback;
.implements Lio/sentry/ReplayController;
.implements Landroid/content/ComponentCallbacks;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;,
        Lio/sentry/android/replay/ReplayIntegration$ReplayExecutorServiceThreadFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,470:1\n13579#2,2:471\n*S KotlinDebug\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n397#1:471,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\u0002vwB\u0017\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rB\u00b6\u0001\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012#\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012\u0012#\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0012\u0012%\u0008\u0002\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u000f\u00a2\u0006\u0002\u0010#Bu\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012%\u0008\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012\u0012%\u0008\u0002\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0012\u00a2\u0006\u0002\u0010$J\u0017\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010NJ\u0008\u0010O\u001a\u00020LH\u0002J\u0012\u0010P\u001a\u00020L2\u0008\u0008\u0002\u0010Q\u001a\u00020RH\u0002J\u0008\u0010S\u001a\u00020LH\u0016J\u0008\u0010T\u001a\u00020LH\u0002J\u0008\u0010U\u001a\u00020;H\u0016J\u0008\u0010V\u001a\u00020\u0019H\u0016J\u0008\u0010W\u001a\u00020\u0013H\u0016J\u0010\u0010X\u001a\u00020L2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010[\u001a\u00020L2\u0006\u0010\\\u001a\u00020]H\u0016J\u0008\u0010^\u001a\u00020LH\u0016J\u0010\u0010_\u001a\u00020L2\u0006\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020L2\u0006\u0010c\u001a\u00020dH\u0016J\u0018\u0010b\u001a\u00020L2\u0006\u0010e\u001a\u00020=2\u0006\u0010f\u001a\u00020gH\u0016J\u0010\u0010h\u001a\u00020L2\u0006\u0010i\u001a\u00020jH\u0016J\u0008\u0010k\u001a\u00020LH\u0016J\u0008\u0010l\u001a\u00020LH\u0002J\u0018\u0010m\u001a\u00020L2\u0006\u0010\'\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0008\u0010n\u001a\u00020LH\u0002J\u0008\u0010o\u001a\u00020LH\u0016J\u0008\u0010p\u001a\u00020LH\u0002J\u0010\u0010q\u001a\u00020L2\u0006\u0010r\u001a\u00020;H\u0016J\u0008\u0010s\u001a\u00020LH\u0016J\u0008\u0010t\u001a\u00020LH\u0016J\u0008\u0010u\u001a\u00020LH\u0002R\u0010\u0010%\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u00020*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010,R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u00103\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00085\u00106R\u0010\u00109\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010<\u001a\u0004\u0018\u00010=8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R+\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010@\u001a\n B*\u0004\u0018\u00010A0A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u00108\u001a\u0004\u0008C\u0010DR\u001b\u0010F\u001a\u00020G8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u00108\u001a\u0004\u0008H\u0010I\u00a8\u0006x"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayIntegration;",
        "Lio/sentry/Integration;",
        "Ljava/io/Closeable;",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "Lio/sentry/android/replay/gestures/TouchRecorderCallback;",
        "Lio/sentry/ReplayController;",
        "Landroid/content/ComponentCallbacks;",
        "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
        "Lio/sentry/transport/RateLimiter$IRateLimitObserver;",
        "context",
        "Landroid/content/Context;",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V",
        "recorderProvider",
        "Lkotlin/Function0;",
        "Lio/sentry/android/replay/Recorder;",
        "recorderConfigProvider",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "configChanged",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "replayCacheProvider",
        "Lio/sentry/protocol/SentryId;",
        "replayId",
        "Lio/sentry/android/replay/ReplayCache;",
        "replayCaptureStrategyProvider",
        "isFullSession",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "gestureRecorderProvider",
        "Lio/sentry/android/replay/gestures/GestureRecorder;",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V",
        "(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "captureStrategy",
        "gestureRecorder",
        "hub",
        "Lio/sentry/IHub;",
        "isEnabled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isEnabled$sentry_android_replay_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isManualPause",
        "isManualPause$sentry_android_replay_release",
        "lifecycle",
        "Lio/sentry/android/replay/ReplayLifecycle;",
        "options",
        "Lio/sentry/SentryOptions;",
        "random",
        "Lio/sentry/util/Random;",
        "getRandom",
        "()Lio/sentry/util/Random;",
        "random$delegate",
        "Lkotlin/Lazy;",
        "recorder",
        "replayBreadcrumbConverter",
        "Lio/sentry/ReplayBreadcrumbConverter;",
        "replayCacheDir",
        "Ljava/io/File;",
        "getReplayCacheDir",
        "()Ljava/io/File;",
        "replayExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "getReplayExecutor",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "replayExecutor$delegate",
        "rootViewsSpy",
        "Lio/sentry/android/replay/RootViewsSpy;",
        "getRootViewsSpy$sentry_android_replay_release",
        "()Lio/sentry/android/replay/RootViewsSpy;",
        "rootViewsSpy$delegate",
        "captureReplay",
        "",
        "isTerminating",
        "(Ljava/lang/Boolean;)V",
        "checkCanRecord",
        "cleanupReplays",
        "unfinishedReplayId",
        "",
        "close",
        "finalizePreviousReplay",
        "getBreadcrumbConverter",
        "getReplayId",
        "isRecording",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onConnectionStatusChanged",
        "status",
        "Lio/sentry/IConnectionStatusProvider$ConnectionStatus;",
        "onLowMemory",
        "onRateLimitChanged",
        "rateLimiter",
        "Lio/sentry/transport/RateLimiter;",
        "onScreenshotRecorded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "screenshot",
        "frameTimestamp",
        "",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "pauseInternal",
        "register",
        "registerRootViewListeners",
        "resume",
        "resumeInternal",
        "setBreadcrumbConverter",
        "converter",
        "start",
        "stop",
        "unregisterRootViewListeners",
        "PreviousReplayHint",
        "ReplayExecutorServiceThreadFactory",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

.field private final context:Landroid/content/Context;

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

.field private gestureRecorderProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/gestures/GestureRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private hub:Lio/sentry/IHub;

.field private final isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

.field private mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private options:Lio/sentry/SentryOptions;

.field private final random$delegate:Lkotlin/Lazy;

.field private recorder:Lio/sentry/android/replay/Recorder;

.field private final recorderConfigProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final recorderProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/Recorder;",
            ">;"
        }
    .end annotation
.end field

.field private replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

.field private final replayCacheProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;"
        }
    .end annotation
.end field

.field private replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Lio/sentry/android/replay/capture/CaptureStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final replayExecutor$delegate:Lkotlin/Lazy;

.field private final rootViewsSpy$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Lfwi9V4bVweVRvOKAiJT5Ii3aT4(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uX-xBtuc8ROfYA7KAnbbzfgdqnw(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/ReplayIntegration;->finalizePreviousReplay$lambda$5(Lio/sentry/android/replay/ReplayIntegration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lio/sentry/android/replay/util/ContextKt;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 74
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lio/sentry/android/replay/Recorder;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 61
    iput-object p3, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderProvider:Lkotlin/jvm/functions/Function0;

    .line 62
    iput-object p4, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderConfigProvider:Lkotlin/jvm/functions/Function1;

    .line 63
    iput-object p5, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    .line 101
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$random$2;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$random$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->random$delegate:Lkotlin/Lazy;

    .line 102
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->rootViewsSpy$delegate:Lkotlin/Lazy;

    .line 103
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$replayExecutor$2;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$replayExecutor$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->replayExecutor$delegate:Lkotlin/Lazy;

    .line 107
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    invoke-static {}, Lio/sentry/NoOpReplayBreadcrumbConverter;->getInstance()Lio/sentry/NoOpReplayBreadcrumbConverter;

    move-result-object p1

    const-string p2, "getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/ReplayBreadcrumbConverter;

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    .line 113
    new-instance p1, Lio/sentry/android/replay/util/MainLooperHandler;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lio/sentry/android/replay/util/MainLooperHandler;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 115
    new-instance p1, Lio/sentry/android/replay/ReplayLifecycle;

    invoke-direct {p1}, Lio/sentry/android/replay/ReplayLifecycle;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 58
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lio/sentry/android/replay/Recorder;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Lio/sentry/android/replay/capture/CaptureStrategy;",
            ">;",
            "Lio/sentry/android/replay/util/MainLooperHandler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/gestures/GestureRecorder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lio/sentry/android/replay/util/ContextKt;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 92
    iput-object p6, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;

    if-nez p7, :cond_0

    .line 93
    new-instance p7, Lio/sentry/android/replay/util/MainLooperHandler;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p7, p2, p1, p2}, Lio/sentry/android/replay/util/MainLooperHandler;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    iput-object p7, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 94
    iput-object p8, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorderProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 82
    invoke-direct/range {v3 .. v11}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lio/sentry/android/replay/util/MainLooperHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$checkCanRecord(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->checkCanRecord()V

    return-void
.end method

.method public static final synthetic access$getCaptureStrategy$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object p0
.end method

.method private final checkCanRecord()V
    .locals 3

    .line 369
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_0

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq v0, v1, :cond_2

    .line 372
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 376
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    :cond_3
    return-void
.end method

.method private final cleanupReplays(Ljava/lang/String;)V
    .locals 10

    .line 396
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 397
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "listFiles()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 398
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 399
    const-string v7, "name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "replay_"

    const/4 v8, 0x2

    invoke-static {v6, v7, v3, v8, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 400
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "replayId.toString()"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v8, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 401
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6, v7, v3, v8, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 403
    :cond_1
    invoke-static {v5}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 394
    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays(Ljava/lang/String;)V

    return-void
.end method

.method private final finalizePreviousReplay()V
    .locals 4

    .line 413
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    const-string v2, "options"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    const-string v3, "options.executorService"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    const-string v3, "ReplayIntegration.finalize_previous_replay"

    invoke-static {v0, v1, v3, v2}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely(Lio/sentry/ISentryExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final finalizePreviousReplay$lambda$5(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const-string v2, "options"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    .line 415
    iget-object v5, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    const-string v6, "replay.json"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 419
    :cond_2
    new-instance v12, Lio/sentry/protocol/SentryId;

    invoke-direct {v12, v5}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 420
    sget-object v6, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 424
    :cond_3
    sget-object v6, Lio/sentry/android/replay/ReplayCache;->Companion:Lio/sentry/android/replay/ReplayCache$Companion;

    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v7, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_4
    iget-object v8, v0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v7, v12, v8}, Lio/sentry/android/replay/ReplayCache$Companion;->fromDisk$sentry_android_replay_release(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function1;)Lio/sentry/android/replay/LastSegmentData;

    move-result-object v6

    if-nez v6, :cond_5

    .line 425
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 430
    :cond_5
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    const-string v7, "breadcrumbs.json"

    const-class v8, Ljava/util/List;

    invoke-virtual {v1, v4, v7, v8}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/util/List;

    if-eqz v4, :cond_7

    check-cast v1, Ljava/util/List;

    move-object/from16 v21, v1

    goto :goto_0

    :cond_7
    move-object/from16 v21, v3

    .line 431
    :goto_0
    sget-object v1, Lio/sentry/android/replay/capture/CaptureStrategy;->Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    .line 432
    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    .line 433
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    goto :goto_1

    :cond_8
    move-object v8, v4

    .line 434
    :goto_1
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getDuration()J

    move-result-wide v9

    .line 435
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getTimestamp()Ljava/util/Date;

    move-result-object v11

    .line 437
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getId()I

    move-result v13

    .line 438
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v14

    .line 439
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v15

    .line 440
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v18

    .line 441
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getBitRate()I

    move-result v19

    .line 442
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v17

    .line 443
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;

    move-result-object v16

    .line 444
    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getScreenAtStart()Ljava/lang/String;

    move-result-object v20

    .line 446
    new-instance v2, Ljava/util/LinkedList;

    invoke-virtual {v6}, Lio/sentry/android/replay/LastSegmentData;->getEvents()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v22, v2

    check-cast v22, Ljava/util/Deque;

    move-object v6, v1

    .line 431
    invoke-virtual/range {v6 .. v22}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->createSegment(Lio/sentry/IHub;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v1

    .line 449
    instance-of v2, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v2, :cond_9

    .line 450
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;

    invoke-direct {v2}, Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;-><init>()V

    invoke-static {v2}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v2

    .line 451
    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v3, v0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    const-string v4, "hint"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture(Lio/sentry/IHub;Lio/sentry/Hint;)V

    .line 453
    :cond_9
    invoke-direct {v0, v5}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_a
    :goto_2
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->cleanupReplays$default(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final getRandom()Lio/sentry/util/Random;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->random$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/Random;

    return-object v0
.end method

.method private final getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->replayExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static final onScreenshotRecorded$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 3

    const-string v0, "$screen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-interface {p1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x2e

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final declared-synchronized pauseInternal()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->isAllowed(Lio/sentry/android/replay/ReplayState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->pause()V

    .line 254
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->pause()V

    .line 255
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 250
    :cond_3
    :goto_0
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

.method private final registerRootViewListeners()V
    .locals 3

    .line 381
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    instance-of v0, v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final declared-synchronized resumeInternal()V
    .locals 3

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->isAllowed(Lio/sentry/android/replay/ReplayState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_1

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-eq v0, v1, :cond_6

    .line 205
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->resume()V

    .line 212
    :cond_4
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->resume()V

    .line 213
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 208
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_7
    :goto_1
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

.method private final unregisterRootViewListeners()V
    .locals 3

    .line 388
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    instance-of v0, v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized captureReplay(Ljava/lang/Boolean;)V
    .locals 3

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 222
    :cond_0
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/android/replay/capture/CaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez p1, :cond_2

    const-string p1, "options"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Replay id is not set, not capturing for event"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 227
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$captureReplay$1;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/ReplayIntegration$captureReplay$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1, v1}, Lio/sentry/android/replay/capture/CaptureStrategy;->captureReplay(ZLkotlin/jvm/functions/Function1;)V

    .line 231
    :cond_4
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->convert()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 219
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->isAllowed(Lio/sentry/android/replay/ReplayState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 294
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    invoke-interface {v0, v2}, Lio/sentry/IConnectionStatusProvider;->removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    .line 295
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->removeRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 296
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_3

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isTrackOrientationChange()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 298
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :catchall_0
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->stop()V

    .line 303
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->close()V

    .line 304
    :cond_5
    iput-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    .line 305
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->close()V

    .line 306
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v2, "replayExecutor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v2, :cond_6

    const-string v2, "options"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lio/sentry/android/replay/util/ExecutorsKt;->gracefullyShutdown(Ljava/util/concurrent/ExecutorService;Lio/sentry/SentryOptions;)V

    .line 307
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    monitor-exit p0

    return-void

    .line 291
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;
    .locals 1

    .line 240
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    return-object v0
.end method

.method public final getReplayCacheDir()Ljava/io/File;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->getReplayCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 2

    .line 234
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v1, "EMPTY_ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getRootViewsSpy$sentry_android_replay_release()Lio/sentry/android/replay/RootViewsSpy;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->rootViewsSpy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/RootViewsSpy;

    return-object v0
.end method

.method public final isEnabled$sentry_android_replay_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final isManualPause$sentry_android_replay_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public isRecording()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayLifecycle;->getCurrentState$sentry_android_replay_release()Lio/sentry/android/replay/ReplayState;

    move-result-object v0

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayLifecycle;->getCurrentState$sentry_android_replay_release()Lio/sentry/android/replay/ReplayState;

    move-result-object v0

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/sentry/android/replay/Recorder;->stop()V

    .line 318
    :cond_1
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderConfigProvider:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    if-nez p1, :cond_4

    :cond_2
    sget-object p1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->Companion:Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v1, :cond_3

    const-string v1, "options"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    const-string v2, "options.sessionReplay"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;->from(Landroid/content/Context;Lio/sentry/SentryReplayOptions;)Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object p1

    .line 319
    :cond_4
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 321
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lio/sentry/android/replay/Recorder;->start(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 323
    :cond_6
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    invoke-virtual {p1}, Lio/sentry/android/replay/ReplayLifecycle;->getCurrentState$sentry_android_replay_release()Lio/sentry/android/replay/ReplayState;

    move-result-object p1

    sget-object v0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_7

    .line 324
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lio/sentry/android/replay/Recorder;->pause()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne p1, v0, :cond_1

    .line 335
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->resumeInternal()V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V
    .locals 1

    const-string v0, "rateLimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->resumeInternal()V

    goto :goto_1

    .line 349
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    :goto_1
    return-void
.end method

.method public onScreenshotRecorded(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 274
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_0

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 275
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v1, :cond_1

    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;

    invoke-direct {v2, p1, v0, p0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;-><init>(Landroid/graphics/Bitmap;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/android/replay/ReplayIntegration;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, v2}, Lio/sentry/android/replay/capture/CaptureStrategy;->onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void
.end method

.method public onScreenshotRecorded(Ljava/io/File;J)V
    .locals 2

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_0

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$3;

    invoke-direct {v1, p1, p2, p3, p0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$3;-><init>(Ljava/io/File;JLio/sentry/android/replay/ReplayIntegration;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, v1, p1, p2}, Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;->onScreenshotRecorded$default(Lio/sentry/android/replay/capture/CaptureStrategy;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayLifecycle;->isTouchRecordingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 243
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->pauseInternal()V

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 5

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 121
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Session replay is only supported on API 26 and above"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isSessionReplayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isSessionReplayForErrorsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Session replay is disabled, no sample rate specified"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 132
    :cond_1
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    .line 133
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/Recorder;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lio/sentry/android/replay/WindowRecorder;

    move-object v1, p0

    check-cast v1, Lio/sentry/android/replay/ScreenshotRecorderCallback;

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    const-string v4, "replayExecutor"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, v2, v3}, Lio/sentry/android/replay/WindowRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V

    check-cast v0, Lio/sentry/android/replay/Recorder;

    :cond_3
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    .line 134
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorderProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/gestures/GestureRecorder;

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lio/sentry/android/replay/gestures/GestureRecorder;

    move-object v1, p0

    check-cast v1, Lio/sentry/android/replay/gestures/TouchRecorderCallback;

    invoke-direct {v0, p2, v1}, Lio/sentry/android/replay/gestures/GestureRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/gestures/TouchRecorderCallback;)V

    :cond_5
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 135
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    invoke-interface {v0, v1}, Lio/sentry/IConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 138
    invoke-interface {p1}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v0, p0

    check-cast v0, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 139
    :cond_6
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryReplayOptions;->isTrackOrientationChange()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 141
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 143
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    .line 144
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 145
    const-string v1, "ComponentCallbacks is not available, orientation changes won\'t be handled by Session replay"

    .line 143
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :cond_7
    :goto_0
    const-string p1, "Replay"

    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p1

    .line 153
    const-string p2, "maven:io.sentry:sentry-android-replay"

    const-string v0, "7.22.5"

    invoke-virtual {p1, p2, v0}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->finalizePreviousReplay()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 194
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isManualPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->resumeInternal()V

    return-void
.end method

.method public setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V
    .locals 1

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->replayBreadcrumbConverter:Lio/sentry/ReplayBreadcrumbConverter;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 10

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->isAllowed(Lio/sentry/android/replay/ReplayState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_1

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 168
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 169
    const-string v3, "Session replay is already being recorded, not starting a new one"

    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 174
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRandom()Lio/sentry/util/Random;

    move-result-object v0

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_3

    const-string v3, "options"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/android/replay/util/SamplingKt;->sample(Lio/sentry/util/Random;Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_4

    const-string v3, "options"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryReplayOptions;->isSessionReplayForErrorsEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 176
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v0, :cond_5

    const-string v0, "options"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 180
    :cond_6
    :try_start_3
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->recorderConfigProvider:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    if-nez v1, :cond_9

    :cond_7
    sget-object v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->Companion:Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v4, :cond_8

    const-string v4, "options"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_8
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    const-string v5, "options.sessionReplay"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;->from(Landroid/content/Context;Lio/sentry/SentryReplayOptions;)Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v1

    .line 181
    :cond_9
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCaptureStrategyProvider:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_a

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/replay/capture/CaptureStrategy;

    if-nez v3, :cond_e

    :cond_a
    if-eqz v0, :cond_c

    .line 182
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_b

    const-string v3, "options"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_b
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    const-string v2, "replayExecutor"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    goto :goto_2

    .line 184
    :cond_c
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->options:Lio/sentry/SentryOptions;

    if-nez v3, :cond_d

    const-string v3, "options"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_d
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->hub:Lio/sentry/IHub;

    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getRandom()Lio/sentry/util/Random;

    move-result-object v6

    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    const-string v2, "replayExecutor"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lio/sentry/android/replay/ReplayIntegration;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/util/Random;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    :goto_2
    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    move-object v3, v0

    .line 181
    :cond_e
    iput-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v3, :cond_f

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    .line 187
    invoke-static/range {v3 .. v9}, Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;->start$default(Lio/sentry/android/replay/capture/CaptureStrategy;Lio/sentry/android/replay/ScreenshotRecorderConfig;ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;ILjava/lang/Object;)V

    .line 188
    :cond_f
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Lio/sentry/android/replay/Recorder;->start(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 189
    :cond_10
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->registerRootViewListeners()V

    .line 190
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->isAllowed(Lio/sentry/android/replay/ReplayState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->unregisterRootViewListeners()V

    .line 265
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->recorder:Lio/sentry/android/replay/Recorder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/android/replay/Recorder;->stop()V

    .line 266
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->gestureRecorder:Lio/sentry/android/replay/gestures/GestureRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/gestures/GestureRecorder;->stop()V

    .line 267
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->stop()V

    :cond_3
    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 269
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->lifecycle:Lio/sentry/android/replay/ReplayLifecycle;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycle;->setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 261
    :cond_4
    :goto_0
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
