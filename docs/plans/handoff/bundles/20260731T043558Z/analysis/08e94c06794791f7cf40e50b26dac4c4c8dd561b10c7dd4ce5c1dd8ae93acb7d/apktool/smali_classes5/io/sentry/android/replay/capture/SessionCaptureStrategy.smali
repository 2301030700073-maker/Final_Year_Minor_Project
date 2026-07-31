.class public final Lio/sentry/android/replay/capture/SessionCaptureStrategy;
.super Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.source "SessionCaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 12\u00020\u0001:\u00011BN\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u000bH\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00130\u000bH\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0016J@\u0010\"\u001a\u00020\u00132\u0008\u0010#\u001a\u0004\u0018\u00010$2,\u0010%\u001a(\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00130&\u00a2\u0006\u0002\u0008)H\u0016J\u0008\u0010*\u001a\u00020\u0013H\u0016J*\u0010+\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010,\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00100\u001a\u00020\u0013H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/SessionCaptureStrategy;",
        "Lio/sentry/android/replay/capture/BaseCaptureStrategy;",
        "options",
        "Lio/sentry/SentryOptions;",
        "hub",
        "Lio/sentry/IHub;",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "replayCacheProvider",
        "Lkotlin/Function1;",
        "Lio/sentry/protocol/SentryId;",
        "Lkotlin/ParameterName;",
        "name",
        "replayId",
        "Lio/sentry/android/replay/ReplayCache;",
        "(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V",
        "captureReplay",
        "",
        "isTerminating",
        "",
        "onSegmentSent",
        "Ljava/util/Date;",
        "convert",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "createCurrentSegment",
        "taskName",
        "",
        "onSegmentCreated",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "onConfigurationChanged",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "onScreenshotRecorded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "store",
        "Lkotlin/Function2;",
        "",
        "frameTimestamp",
        "Lkotlin/ExtensionFunctionType;",
        "pause",
        "start",
        "segmentId",
        "",
        "replayType",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "stop",
        "Companion",
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
.field public static final Companion:Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

.field private static final TAG:Ljava/lang/String; = "SessionCaptureStrategy"


# instance fields
.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public static synthetic $r8$lambda$Tce6nMgGZBUY5E_W7Mika5sWyhE(Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->stop$lambda$1(Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCx11Mai_BMmwptoXQhWdiRj4lw(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->onScreenshotRecorded$lambda$3(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjSTkSaWMoMHihT5yRORY0h7B1s(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->start$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ri-1aCj6QBGvHudQvrU1At6dwg0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment$lambda$4(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->Companion:Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Lio/sentry/IHub;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p5}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 20
    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 21
    iput-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->hub:Lio/sentry/IHub;

    .line 22
    iput-object p3, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getHub$p(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)Lio/sentry/IHub;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->hub:Lio/sentry/IHub;

    return-object p0
.end method

.method private final createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 139
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getSegmentTimestamp()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v8

    .line 141
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 142
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    .line 143
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v9

    .line 144
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v10

    .line 145
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SessionCaptureStrategy."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v12, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;

    move-object v2, v12

    move-object v3, p0

    move-object v11, p2

    invoke-direct/range {v2 .. v11}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1, v12}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely(Ljava/util/concurrent/ExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final createCurrentSegment$lambda$4(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$currentSegmentTimestamp"

    move-object/from16 v10, p3

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$replayId"

    move-object/from16 v10, p4

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$onSegmentCreated"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    move-object v2, v0

    check-cast v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    const/16 v17, 0x1fc0

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v18}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    .line 148
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onScreenshotRecorded$lambda$3(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$store"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getSegmentTimestamp()Ljava/util/Date;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v7, :cond_1

    .line 85
    iget-object v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Segment timestamp is not set, not recording frame"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Not capturing segment, because the app is terminating, will be captured on next launch"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_2
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v2}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 95
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryReplayOptions;->getSessionSegmentDuration()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    .line 97
    move-object v4, v0

    check-cast v4, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 98
    iget-object v5, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryReplayOptions;->getSessionSegmentDuration()J

    move-result-wide v5

    .line 100
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    .line 101
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v9

    const/16 v19, 0x1fc0

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v10, p4

    move/from16 v11, p5

    .line 97
    invoke-static/range {v4 .. v20}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v4

    .line 105
    instance-of v5, v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v5, :cond_3

    .line 106
    check-cast v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v5, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->hub:Lio/sentry/IHub;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v7}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IHub;Lio/sentry/Hint;ILjava/lang/Object;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setCurrentSegment(I)V

    .line 109
    invoke-virtual {v4}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->getReplay()Lio/sentry/SentryReplayEvent;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 113
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayStartTimestamp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayOptions;->getSessionDuration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 114
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/ReplayController;->stop()V

    .line 115
    iget-object v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Session replay deadline exceeded (1h), stopping recording"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final start$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 42
    invoke-interface {p1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x2e

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setScreenAtStart(Ljava/lang/String;)V

    return-void
.end method

.method private static final stop$lambda$1(Lio/sentry/IScope;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-interface {p0, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    return-void
.end method


# virtual methods
.method public captureReplay(ZLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSegmentSent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Replay is already running in \'session\' mode, not capturing for event"

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public convert()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 1

    .line 135
    move-object v0, p0

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "onConfigurationChanged"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 132
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    return-void
.end method

.method public onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/sentry/android/replay/ReplayCache;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p1, "store"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 78
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v5

    .line 79
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v6

    .line 80
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    new-instance v8, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JII)V

    const-string p2, "SessionCaptureStrategy.add_frame"

    invoke-static {p1, v7, p2, v8}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely(Ljava/util/concurrent/ExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public pause()V
    .locals 2

    .line 47
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "pause"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 54
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->pause()V

    return-void
.end method

.method public start(Lio/sentry/android/replay/ScreenshotRecorderConfig;ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 1

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->start(Lio/sentry/android/replay/ScreenshotRecorderConfig;ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 40
    iget-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->hub:Lio/sentry/IHub;

    if-eqz p1, :cond_0

    new-instance p2, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    invoke-interface {p1, p2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;

    invoke-direct {v1, p0, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Ljava/io/File;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v0, "stop"

    invoke-direct {p0, v0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 65
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_1

    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 66
    :cond_1
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->stop()V

    return-void
.end method
