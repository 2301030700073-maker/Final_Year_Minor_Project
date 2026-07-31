.class public final Lio/sentry/android/replay/WindowRecorder;
.super Ljava/lang/Object;
.source "WindowRecorder.kt"

# interfaces
.implements Lio/sentry/android/replay/Recorder;
.implements Lio/sentry/android/replay/OnRootViewsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/WindowRecorder$Companion;,
        Lio/sentry/android/replay/WindowRecorder$RecorderExecutorServiceThreadFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowRecorder.kt\nio/sentry/android/replay/WindowRecorder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2,2:110\n*S KotlinDebug\n*F\n+ 1 WindowRecorder.kt\nio/sentry/android/replay/WindowRecorder\n*L\n85#1:110,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0002+,B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020 H\u0016J\u0008\u0010&\u001a\u00020 H\u0016J\u0010\u0010\'\u001a\u00020 2\u0006\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020 H\u0016R#\u0010\u000c\u001a\n \r*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0018\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lio/sentry/android/replay/WindowRecorder;",
        "Lio/sentry/android/replay/Recorder;",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        "options",
        "Lio/sentry/SentryOptions;",
        "screenshotRecorderCallback",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "replayExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V",
        "capturer",
        "kotlin.jvm.PlatformType",
        "getCapturer",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "capturer$delegate",
        "Lkotlin/Lazy;",
        "capturingTask",
        "Ljava/util/concurrent/ScheduledFuture;",
        "isRecording",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "recorder",
        "Lio/sentry/android/replay/ScreenshotRecorder;",
        "rootViews",
        "Ljava/util/ArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "rootViewsLock",
        "",
        "close",
        "",
        "onRootViewsChanged",
        "root",
        "added",
        "",
        "pause",
        "resume",
        "start",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "stop",
        "Companion",
        "RecorderExecutorServiceThreadFactory",
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
.field public static final Companion:Lio/sentry/android/replay/WindowRecorder$Companion;

.field private static final TAG:Ljava/lang/String; = "WindowRecorder"


# instance fields
.field private final capturer$delegate:Lkotlin/Lazy;

.field private capturingTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private final options:Lio/sentry/SentryOptions;

.field private recorder:Lio/sentry/android/replay/ScreenshotRecorder;

.field private final replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final rootViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootViewsLock:Ljava/lang/Object;

.field private final screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;


# direct methods
.method public static synthetic $r8$lambda$z7djvL1FBFf1gHbLBlIJ-i3e_08(Lio/sentry/android/replay/WindowRecorder;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/WindowRecorder;->start$lambda$1(Lio/sentry/android/replay/WindowRecorder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/WindowRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/WindowRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/WindowRecorder;->Companion:Lio/sentry/android/replay/WindowRecorder$Companion;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainLooperHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    .line 20
    iput-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    .line 21
    iput-object p3, p0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 22
    iput-object p4, p0, Lio/sentry/android/replay/WindowRecorder;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Ljava/lang/Object;

    .line 34
    sget-object p1, Lio/sentry/android/replay/WindowRecorder$capturer$2;->INSTANCE:Lio/sentry/android/replay/WindowRecorder$capturer$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->capturer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/WindowRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private final getCapturer()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static final start$lambda$1(Lio/sentry/android/replay/WindowRecorder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->capture()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowRecorder;->stop()V

    .line 97
    invoke-direct {p0}, Lio/sentry/android/replay/WindowRecorder;->getCapturer()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "capturer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    invoke-static {v0, v1}, Lio/sentry/android/replay/util/ExecutorsKt;->gracefullyShutdown(Ljava/util/concurrent/ExecutorService;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method public onRootViewsChanged(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 41
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->bind(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 44
    :cond_0
    iget-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    .line 45
    :cond_1
    iget-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    new-instance v1, Lio/sentry/android/replay/WindowRecorder$onRootViewsChanged$1$1;

    invoke-direct {v1, p1}, Lio/sentry/android/replay/WindowRecorder$onRootViewsChanged$1$1;-><init>(Landroid/view/View;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 47
    iget-object p2, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 49
    iget-object p1, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lio/sentry/android/replay/ScreenshotRecorder;->bind(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 51
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public pause()V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->resume()V

    :cond_0
    return-void
.end method

.method public start(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "recorderConfig"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v1, v0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v1, Lio/sentry/android/replay/ScreenshotRecorder;

    iget-object v4, v0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    iget-object v5, v0, Lio/sentry/android/replay/WindowRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    iget-object v6, v0, Lio/sentry/android/replay/WindowRecorder;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, v0, Lio/sentry/android/replay/WindowRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lio/sentry/android/replay/ScreenshotRecorder;-><init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/android/replay/ScreenshotRecorderCallback;)V

    iput-object v1, v0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 65
    invoke-direct/range {p0 .. p0}, Lio/sentry/android/replay/WindowRecorder;->getCapturer()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    const-string v2, "capturer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v9, v0, Lio/sentry/android/replay/WindowRecorder;->options:Lio/sentry/SentryOptions;

    .line 69
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    div-long v13, v4, v2

    .line 70
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    new-instance v2, Lio/sentry/android/replay/WindowRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/sentry/android/replay/WindowRecorder$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/WindowRecorder;)V

    const-string v10, "WindowRecorder.capture"

    const-wide/16 v11, 0x64

    move-object v8, v1

    move-object/from16 v16, v2

    invoke-static/range {v8 .. v16}, Lio/sentry/android/replay/util/ExecutorsKt;->scheduleAtFixedRateSafely(Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/android/replay/WindowRecorder;->capturingTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 4

    .line 84
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->rootViewsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 110
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 85
    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->rootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v0

    .line 88
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorder;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->recorder:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 90
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder;->capturingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 91
    :cond_3
    iput-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->capturingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 92
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    throw v1
.end method
