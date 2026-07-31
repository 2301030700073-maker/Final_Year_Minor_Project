.class public final Lio/sentry/android/replay/ScreenshotRecorder;
.super Ljava/lang/Object;
.source "ScreenshotRecorder.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ScreenshotRecorder$RecorderExecutorServiceThreadFactory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001:\u0001;B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\"J\u0006\u00101\u001a\u00020/J\u0006\u00102\u001a\u00020/J\u0008\u00103\u001a\u00020/H\u0016J\u0006\u00104\u001a\u00020/J\u0006\u00105\u001a\u00020/J\u0010\u00106\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\"J\u0014\u00107\u001a\u000208*\u00020$2\u0006\u00109\u001a\u00020:H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010%\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0018\u001a\u0004\u0008&\u0010\'R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0018\u001a\u0004\u0008+\u0010,\u00a8\u0006<"
    }
    d2 = {
        "Lio/sentry/android/replay/ScreenshotRecorder;",
        "Landroid/view/ViewTreeObserver$OnDrawListener;",
        "config",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "options",
        "Lio/sentry/SentryOptions;",
        "mainLooperHandler",
        "Lio/sentry/android/replay/util/MainLooperHandler;",
        "recorder",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "screenshotRecorderCallback",
        "Lio/sentry/android/replay/ScreenshotRecorderCallback;",
        "(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/android/replay/ScreenshotRecorderCallback;)V",
        "getConfig",
        "()Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "contentChanged",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isCapturing",
        "lastCaptureSuccessful",
        "maskingPaint",
        "Landroid/graphics/Paint;",
        "getMaskingPaint",
        "()Landroid/graphics/Paint;",
        "maskingPaint$delegate",
        "Lkotlin/Lazy;",
        "getOptions",
        "()Lio/sentry/SentryOptions;",
        "prescaledMatrix",
        "Landroid/graphics/Matrix;",
        "getPrescaledMatrix",
        "()Landroid/graphics/Matrix;",
        "prescaledMatrix$delegate",
        "rootView",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "screenshot",
        "Landroid/graphics/Bitmap;",
        "singlePixelBitmap",
        "getSinglePixelBitmap",
        "()Landroid/graphics/Bitmap;",
        "singlePixelBitmap$delegate",
        "singlePixelBitmapCanvas",
        "Landroid/graphics/Canvas;",
        "getSinglePixelBitmapCanvas",
        "()Landroid/graphics/Canvas;",
        "singlePixelBitmapCanvas$delegate",
        "bind",
        "",
        "root",
        "capture",
        "close",
        "onDraw",
        "pause",
        "resume",
        "unbind",
        "dominantColorForRect",
        "",
        "rect",
        "Landroid/graphics/Rect;",
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


# instance fields
.field private final config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field private final contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

.field private final maskingPaint$delegate:Lkotlin/Lazy;

.field private final options:Lio/sentry/SentryOptions;

.field private final prescaledMatrix$delegate:Lkotlin/Lazy;

.field private final recorder:Ljava/util/concurrent/ScheduledExecutorService;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshot:Landroid/graphics/Bitmap;

.field private final screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

.field private final singlePixelBitmap$delegate:Lkotlin/Lazy;

.field private final singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$7VG-8hz9X_76wDPyoJmsNcdrnE0(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/ScreenshotRecorder;->capture$lambda$2$lambda$1(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$it1SORCrZn5i5AZYweRgi9xAP38(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->capture$lambda$2$lambda$1$lambda$0(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mBO16DtjLvrhfvLcEFDvNsEePcA(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/ScreenshotRecorder;->capture$lambda$2(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/android/replay/ScreenshotRecorderCallback;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainLooperHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recorder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 44
    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    .line 45
    iput-object p3, p0, Lio/sentry/android/replay/ScreenshotRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 46
    iput-object p4, p0, Lio/sentry/android/replay/ScreenshotRecorder;->recorder:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    iput-object p5, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    .line 51
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p3, Lio/sentry/android/replay/ScreenshotRecorder$maskingPaint$2;->INSTANCE:Lio/sentry/android/replay/ScreenshotRecorder$maskingPaint$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->maskingPaint$delegate:Lkotlin/Lazy;

    .line 52
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p3, Lio/sentry/android/replay/ScreenshotRecorder$singlePixelBitmap$2;->INSTANCE:Lio/sentry/android/replay/ScreenshotRecorder$singlePixelBitmap$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->singlePixelBitmap$delegate:Lkotlin/Lazy;

    .line 60
    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result p2

    .line 61
    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result p1

    .line 62
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(\n        co\u2026ap.Config.ARGB_8888\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    .line 64
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lio/sentry/android/replay/ScreenshotRecorder$singlePixelBitmapCanvas$2;

    invoke-direct {p2, p0}, Lio/sentry/android/replay/ScreenshotRecorder$singlePixelBitmapCanvas$2;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;

    .line 65
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lio/sentry/android/replay/ScreenshotRecorder$prescaledMatrix$2;

    invoke-direct {p2, p0}, Lio/sentry/android/replay/ScreenshotRecorder$prescaledMatrix$2;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->prescaledMatrix$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$dominantColorForRect(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/ScreenshotRecorder;->dominantColorForRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMaskingPaint(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Paint;
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getMaskingPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenshot$p(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getSinglePixelBitmap(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getSinglePixelBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final capture$lambda$2(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/Window;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    .line 103
    new-instance v2, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;)V

    .line 171
    iget-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    invoke-virtual {p2}, Lio/sentry/android/replay/util/MainLooperHandler;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 103
    invoke-static {p1, v1, v2, p2}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 174
    iget-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Failed to capture replay recording"

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method private static final capture$lambda$2$lambda$1(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 108
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "Failed to capture replay recording: %d"

    invoke-interface {p1, v1, v2, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 115
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "Failed to determine view hierarchy, not capturing"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 121
    :cond_1
    sget-object p2, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2, p1, v1, v0, v2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object p2

    .line 122
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-static {p1, p2, v0}, Lio/sentry/android/replay/util/ViewsKt;->traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryOptions;)V

    .line 124
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->recorder:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    new-instance v1, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    const-string p0, "screenshot_recorder.mask"

    invoke-static {p1, v0, p0, v1}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely(Ljava/util/concurrent/ExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final capture$lambda$2$lambda$1$lambda$0(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewHierarchy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getPrescaledMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 127
    new-instance v1, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;

    invoke-direct {v1, p0, v0}, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/graphics/Canvas;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->traverse(Lkotlin/jvm/functions/Function1;)V

    .line 166
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final dominantColorForRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 4

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 230
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 235
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getPrescaledMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 237
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 239
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getSinglePixelBitmapCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 239
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorder;->getSinglePixelBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private final getMaskingPaint()Landroid/graphics/Paint;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->maskingPaint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getPrescaledMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->prescaledMatrix$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method private final getSinglePixelBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->singlePixelBitmap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getSinglePixelBitmapCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    return-object v0
.end method


# virtual methods
.method public final bind(Landroid/view/View;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    .line 197
    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {p1, v0}, Lio/sentry/android/replay/util/ViewsKt;->addOnDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 199
    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final capture()V
    .locals 4

    .line 75
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "ScreenshotRecorder is paused, not capturing screenshot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->lastCaptureSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Content hasn\'t changed, repeating last known frame"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshotRecorderCallback:Lio/sentry/android/replay/ScreenshotRecorderCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lio/sentry/android/replay/ScreenshotRecorderCallback;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 93
    :cond_4
    invoke-static {v0}, Lio/sentry/android/replay/WindowsKt;->getPhoneWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_5

    .line 95
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Window is invalid, not capturing screenshot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_5
    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder;->mainLooperHandler:Lio/sentry/android/replay/util/MainLooperHandler;

    new-instance v3, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v0}, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/Window;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lio/sentry/android/replay/util/MainLooperHandler;->post(Ljava/lang/Runnable;)V

    return-void

    .line 89
    :cond_6
    :goto_1
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Root view is invalid, not capturing screenshot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 2

    .line 218
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 220
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->config:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public final getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public onDraw()V
    .locals 4

    .line 181
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->contentChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 183
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Root view is invalid, not capturing screenshot"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 207
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ScreenshotRecorder;->unbind(Landroid/view/View;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    .line 213
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {v0, v1}, Lio/sentry/android/replay/util/ViewsKt;->addOnDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->isCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final unbind(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {p1, v0}, Lio/sentry/android/replay/util/ViewsKt;->removeOnDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method
