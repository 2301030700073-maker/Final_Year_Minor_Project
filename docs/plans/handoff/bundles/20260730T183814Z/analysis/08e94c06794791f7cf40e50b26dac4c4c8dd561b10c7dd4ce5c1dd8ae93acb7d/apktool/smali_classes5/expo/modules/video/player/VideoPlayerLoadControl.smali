.class public final Lexpo/modules/video/player/VideoPlayerLoadControl;
.super Ljava/lang/Object;
.source "VideoPlayerLoadControl.kt"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;,
        Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 K2\u00020\u0001:\u0002JKBQ\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0010J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u00020+H\u0002J\u0008\u0010/\u001a\u00020+H\u0016JA\u00100\u001a\u00020+2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u00105\u001a\u0002062\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001aH\u0016\u00a2\u0006\u0002\u00107J\u0008\u00108\u001a\u00020+H\u0016J\u0008\u00109\u001a\u00020+H\u0016J\u0008\u0010:\u001a\u00020;H\u0016J\u0008\u0010<\u001a\u00020\u0012H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J \u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u00122\u0006\u0010@\u001a\u00020AH\u0016J8\u0010B\u001a\u00020\u000b2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010?\u001a\u00020\u00122\u0006\u0010@\u001a\u00020A2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\u0012H\u0016J)\u0010E\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001aH\u0004\u00a2\u0006\u0002\u0010GJ\u0010\u0010H\u001a\u00020+2\u0006\u0010I\u001a\u00020\u000bH\u0002R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0018\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010\u0007\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010#\"\u0004\u0008\'\u0010%R$\u0010\u0008\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%\u00a8\u0006L"
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayerLoadControl;",
        "Landroidx/media3/exoplayer/LoadControl;",
        "allocator",
        "Landroidx/media3/exoplayer/upstream/DefaultAllocator;",
        "minBufferMs",
        "",
        "maxBufferMs",
        "bufferForPlaybackMs",
        "bufferForPlaybackAfterRebufferMs",
        "targetBufferBytes",
        "prioritizeTimeOverSizeThresholds",
        "",
        "backBufferDurationMs",
        "retainBackBufferFromKeyframe",
        "<init>",
        "(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V",
        "()V",
        "minBufferUs",
        "",
        "maxBufferUs",
        "bufferForPlaybackUs",
        "bufferForPlaybackAfterRebufferUs",
        "targetBufferBytesOverwrite",
        "backBufferDurationUs",
        "isLoading",
        "renderers",
        "",
        "Landroidx/media3/exoplayer/Renderer;",
        "[Landroidx/media3/exoplayer/Renderer;",
        "trackSelections",
        "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
        "[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
        "value",
        "targetBufferMs",
        "getTargetBufferMs",
        "()J",
        "setTargetBufferMs",
        "(J)V",
        "getBufferForPlaybackMs",
        "setBufferForPlaybackMs",
        "getBufferForPlaybackAfterRebufferMs",
        "setBufferForPlaybackAfterRebufferMs",
        "applyBufferOptions",
        "",
        "bufferOptions",
        "Lexpo/modules/video/records/BufferOptions;",
        "applyBufferBytes",
        "onPrepared",
        "onTracksSelected",
        "timeline",
        "Landroidx/media3/common/Timeline;",
        "mediaPeriodId",
        "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
        "trackGroups",
        "Landroidx/media3/exoplayer/source/TrackGroupArray;",
        "(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V",
        "onStopped",
        "onReleased",
        "getAllocator",
        "Landroidx/media3/exoplayer/upstream/Allocator;",
        "getBackBufferDurationUs",
        "shouldContinueLoading",
        "playbackPositionUs",
        "bufferedDurationUs",
        "playbackSpeed",
        "",
        "shouldStartPlayback",
        "rebuffering",
        "targetLiveOffsetUs",
        "calculateTargetBufferBytes",
        "trackSelectionArray",
        "([Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I",
        "reset",
        "resetAllocator",
        "Builder",
        "Companion",
        "expo-video_release"
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
.field public static final Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x7d0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x7d0

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0x61a8

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x61a8

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field private static final DEFAULT_MUXED_BUFFER_SIZE:I

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private bufferForPlaybackAfterRebufferMs:J

.field private bufferForPlaybackAfterRebufferUs:J

.field private bufferForPlaybackMs:J

.field private bufferForPlaybackUs:J

.field private isLoading:Z

.field private maxBufferUs:J

.field private minBufferUs:J

.field private prioritizeTimeOverSizeThresholds:Z

.field private renderers:[Landroidx/media3/exoplayer/Renderer;

.field private final retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I

.field private targetBufferBytesOverwrite:I

.field private targetBufferMs:J

.field private trackSelections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const/high16 v0, 0x89a0000

    .line 498
    sput v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->DEFAULT_MUXED_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 225
    new-instance v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/16 v4, 0x7d0

    const/16 v5, 0x7d0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    .line 224
    invoke-direct/range {v0 .. v9}, Lexpo/modules/video/player/VideoPlayerLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x61a8

    .line 207
    iput-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferMs:J

    const-wide/16 v0, 0x7d0

    .line 213
    iput-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackMs:J

    .line 218
    iput-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackAfterRebufferMs:J

    .line 237
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const/4 v1, 0x0

    const-string v2, "bufferForPlaybackMs"

    const-string v3, "0"

    invoke-static {v0, p4, v1, v2, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v4, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v0, p5, v1, v4, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v5, "minBufferMs"

    invoke-static {v0, p2, p4, v5, v2}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v0, p2, p5, v5, v4}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "maxBufferMs"

    invoke-static {v0, p3, p2, v2, v5}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "backBufferDurationMs"

    invoke-static {v0, p8, v1, v2, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    int-to-long p1, p2

    .line 255
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->minBufferUs:J

    int-to-long p1, p3

    .line 256
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->maxBufferUs:J

    int-to-long p1, p4

    .line 257
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackUs:J

    int-to-long p1, p5

    .line 258
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 259
    iput p6, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytesOverwrite:I

    const/4 p1, -0x1

    if-eq p6, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p6, 0xc80000

    .line 260
    :goto_0
    iput p6, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    .line 267
    iput-boolean p7, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->prioritizeTimeOverSizeThresholds:Z

    int-to-long p1, p8

    .line 268
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->backBufferDurationUs:J

    .line 269
    iput-boolean p9, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lexpo/modules/video/player/VideoPlayerLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_MUXED_BUFFER_SIZE$cp()I
    .locals 1

    .line 27
    sget v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->DEFAULT_MUXED_BUFFER_SIZE:I

    return v0
.end method

.method private final applyBufferBytes()V
    .locals 3

    .line 304
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->trackSelections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {p0, v0, v2}, Lexpo/modules/video/player/VideoPlayerLoadControl;->calculateTargetBufferBytes([Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 310
    :cond_0
    iget v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytesOverwrite:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 311
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 312
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    goto :goto_0

    .line 314
    :cond_1
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    :goto_0
    return-void
.end method

.method private final reset(Z)V
    .locals 2

    .line 428
    iget v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    .line 427
    :cond_0
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 434
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->isLoading:Z

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->reset()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final applyBufferOptions(Lexpo/modules/video/records/BufferOptions;)V
    .locals 6

    const-string v0, "bufferOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getPreferredForwardBufferDuration()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 274
    invoke-virtual {p0, v2, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl;->setTargetBufferMs(J)V

    goto :goto_0

    .line 275
    :cond_0
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerLoadControl;

    const-wide/16 v2, 0x61a8

    .line 276
    invoke-virtual {p0, v2, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl;->setTargetBufferMs(J)V

    .line 279
    :goto_0
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getMaxBufferBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getMaxBufferBytes()J

    move-result-wide v3

    long-to-int v0, v3

    .line 279
    :goto_1
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytesOverwrite:I

    if-eq v0, v2, :cond_2

    .line 286
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    .line 289
    :cond_2
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerLoadControl;->applyBufferBytes()V

    .line 291
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getPrioritizeTimeOverSizeThreshold()Z

    move-result v0

    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 293
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getMinBufferForPlayback()D

    move-result-wide v2

    int-to-double v0, v1

    mul-double/2addr v2, v0

    .line 294
    iget-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferMs:J

    long-to-double v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {p1}, Lexpo/modules/video/records/BufferOptions;->getMinBufferForPlayback()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 299
    :goto_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lexpo/modules/video/player/VideoPlayerLoadControl;->setBufferForPlaybackMs(J)V

    .line 300
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lexpo/modules/video/player/VideoPlayerLoadControl;->setBufferForPlaybackAfterRebufferMs(J)V

    return-void
.end method

.method protected final calculateTargetBufferBytes([Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .locals 5

    const-string v0, "renderers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackSelectionArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    aget-object v3, p2, v1

    if-eqz v3, :cond_0

    .line 420
    sget-object v3, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    aget-object v4, p1, v1

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    invoke-static {v3, v4}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$getDefaultBufferSize(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x4169000000000000L    # 1.31072E7

    int-to-double v0, v2

    .line 423
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1

    .line 343
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public final getBufferForPlaybackAfterRebufferMs()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackAfterRebufferMs:J

    return-wide v0
.end method

.method public final getBufferForPlaybackMs()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackMs:J

    return-wide v0
.end method

.method public final getTargetBufferMs()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferMs:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayerLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayerLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayerLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 1

    const-string v0, "timeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaPeriodId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderers"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackGroups"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackSelections"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p3, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 330
    iput-object p5, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->trackSelections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 331
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerLoadControl;->applyBufferBytes()V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public final setBufferForPlaybackAfterRebufferMs(J)V
    .locals 0

    .line 220
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackAfterRebufferUs:J

    return-void
.end method

.method public final setBufferForPlaybackMs(J)V
    .locals 0

    .line 215
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackUs:J

    return-void
.end method

.method public final setTargetBufferMs(J)V
    .locals 2

    .line 209
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->minBufferUs:J

    .line 210
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->maxBufferUs:J

    return-void
.end method

.method public shouldContinueLoading(JJF)Z
    .locals 6

    .line 359
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 360
    :goto_0
    iget-wide v2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->minBufferUs:J

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_1

    .line 365
    invoke-static {v2, v3, p5}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    long-to-double v2, v2

    .line 366
    iget-wide v4, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->maxBufferUs:J

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-long v2, v2

    :cond_1
    long-to-double v2, v2

    const-wide v4, 0x411e848000000000L    # 500000.0

    .line 369
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-long v2, v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_4

    .line 371
    iget-boolean p2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->isLoading:Z

    if-nez v0, :cond_6

    const-wide/32 p1, 0x7a120

    cmp-long p1, p3, p1

    if-gez p1, :cond_6

    .line 374
    const-string p1, "DefaultLoadControl"

    .line 375
    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 373
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 378
    :cond_4
    iget-wide v2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->maxBufferUs:J

    cmp-long p2, p3, v2

    if-gez p2, :cond_5

    if-eqz p1, :cond_6

    .line 379
    :cond_5
    iput-boolean v1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->isLoading:Z

    .line 382
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->isLoading:Z

    return p1
.end method

.method public shouldStartPlayback(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z
    .locals 1

    const-string v0, "timeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaPeriodId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-static {p3, p4, p5}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p6, :cond_0

    .line 395
    iget-wide p3, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->bufferForPlaybackUs:J

    :goto_0
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p7, p5

    if-eqz p5, :cond_1

    const/4 p5, 0x2

    int-to-long p5, p5

    .line 397
    div-long/2addr p7, p5

    long-to-double p5, p7

    long-to-double p3, p3

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    double-to-long p3, p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_3

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    .line 400
    iget-boolean p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_2

    .line 401
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl;->targetBufferBytes:I

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
