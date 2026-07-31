.class public abstract Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;,
        Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/github/penfeizhou/animation/io/Reader;",
        "W::",
        "Lcom/github/penfeizhou/animation/io/Writer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field protected static final MB:D = 1048576.0

.field private static final RECT_EMPTY:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "FrameSeqDecoder"


# instance fields
.field private final cacheBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheBitmapsLock:Ljava/lang/Object;

.field protected cachedCanvas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field protected frameBuffer:Ljava/nio/ByteBuffer;

.field protected frameIndex:I

.field protected frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;>;"
        }
    .end annotation
.end field

.field protected volatile fullRect:Landroid/graphics/Rect;

.field private loopLimit:Ljava/lang/Integer;

.field private final mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

.field private mReader:Lcom/github/penfeizhou/animation/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field private mWriter:Lcom/github/penfeizhou/animation/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private playCount:I

.field private final renderListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final renderTask:Ljava/lang/Runnable;

.field protected sampleSize:I

.field private final taskId:I

.field private final workerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 4

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;

    invoke-direct {v2, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    .line 75
    iput v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    .line 78
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    .line 80
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cachedCanvas:Ljava/util/Map;

    .line 83
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getWriter()Lcom/github/penfeizhou/animation/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    .line 84
    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    .line 98
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 183
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    if-eqz p2, :cond_0

    .line 185
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    invoke-static {}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getInstance()Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->generateTaskId()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->taskId:I

    .line 188
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getInstance()Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getLooper(I)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->canStep()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    return-void
.end method

.method static synthetic access$1202(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    return p1
.end method

.method static synthetic access$1302(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)J
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->step()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/Set;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    return-object p0
.end method

.method static synthetic access$602(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    return-object p1
.end method

.method static synthetic access$700(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Lcom/github/penfeizhou/animation/loader/Loader;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$900()Landroid/graphics/Rect;
    .locals 1

    .line 36
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    return-object v0
.end method

.method private canStep()Z
    .locals 4

    .line 503
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    return v2

    .line 512
    :cond_2
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    return v2

    .line 514
    :cond_3
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_4

    return v2

    .line 517
    :cond_4
    iput-boolean v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    return v1
.end method

.method private debugInfo()Ljava/lang/String;
    .locals 1

    .line 416
    const-string v0, ""

    return-object v0
.end method

.method private getNumPlays()I
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getLoopCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method private initCanvasBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 253
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    int-to-long v2, p1

    int-to-long v4, p1

    mul-long/2addr v2, v4

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    long-to-int p1, v0

    .line 257
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 258
    iget-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getWriter()Lcom/github/penfeizhou/animation/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 262
    sget-object v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    long-to-double v3, v0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    .line 264
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 262
    const-string v1, "OutOfMemoryError in FrameSeqDecoder: Buffer needed: %.2fMB (%,d bytes)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 268
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    .line 269
    throw p1
.end method

.method private innerStart()V
    .locals 7

    .line 316
    const-string v0, " Set state to RUNNING,cost "

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 322
    :try_start_1
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-nez v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    invoke-interface {v3}, Lcom/github/penfeizhou/animation/loader/Loader;->obtain()Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v3

    iput-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {v3}, Lcom/github/penfeizhou/animation/io/Reader;->reset()V

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    invoke-virtual {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 329
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :cond_1
    :goto_1
    sget-object v3, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 336
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 344
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " No need to started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v0, -0x1

    .line 337
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 338
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 340
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    .line 341
    invoke-interface {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;->onStart()V

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception v3

    .line 333
    sget-object v4, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 335
    throw v3
.end method

.method private innerStop()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 359
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 361
    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 365
    :try_start_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Reader;->close()V

    .line 367
    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    if-eqz v0, :cond_4

    .line 370
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 375
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->release()V

    .line 379
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 380
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    .line 381
    invoke-interface {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;->onEnd()V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 359
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private step()J
    .locals 2

    .line 523
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 524
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 525
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 526
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    .line 528
    :cond_0
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrame(I)Lcom/github/penfeizhou/animation/decode/Frame;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 532
    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V

    .line 533
    iget v0, v0, Lcom/github/penfeizhou/animation/decode/Frame;->frameDuration:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$2;

    invoke-direct {v1, p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$2;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    const-string v1, "In finishing,do not interrupt"

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$5;

    invoke-direct {v2, p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$5;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    :goto_0
    return-object v0
.end method

.method protected getDesiredSample(II)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    mul-int/lit8 p2, v0, 0x2

    if-gt p2, p1, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getFrame(I)Lcom/github/penfeizhou/animation/decode/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/penfeizhou/animation/decode/Frame;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_0

    .line 552
    sget-object p1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stop first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 555
    :cond_0
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 556
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 557
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    invoke-interface {v0}, Lcom/github/penfeizhou/animation/loader/Loader;->obtain()Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    goto :goto_0

    .line 561
    :cond_1
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Reader;->reset()V

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V

    :cond_2
    if-gez p1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    :cond_3
    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    const/4 p1, -0x1

    .line 571
    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 572
    :goto_2
    iget p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    if-ge p1, v2, :cond_5

    .line 573
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->canStep()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 574
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->step()J

    goto :goto_2

    .line 579
    :cond_5
    iget-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 580
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v1

    div-int/2addr v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 581
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 582
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameIndex()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    return v0
.end method

.method protected abstract getLoopCount()I
.end method

.method public getMemorySize()I
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 590
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 600
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v2, v1

    .line 602
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 603
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/io/Reader;",
            ")TR;"
        }
    .end annotation
.end method

.method public getSampleSize()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    return v0
.end method

.method protected abstract getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public isPaused()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected obtainBitmap(II)Landroid/graphics/Bitmap;
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 108
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 117
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, p1, p2, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1
    const/4 p1, 0x0

    .line 120
    invoke-virtual {v4, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    if-gtz p2, :cond_4

    goto :goto_2

    .line 138
    :cond_4
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 139
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 143
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :goto_1
    monitor-exit v0

    return-object v3

    .line 135
    :cond_5
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 146
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected abstract read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract release()V
.end method

.method public removeRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;

    invoke-direct {v1, p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;)V"
        }
    .end annotation
.end method

.method public reset()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 451
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDesiredSize(II)I
    .locals 2

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getDesiredSample(II)I

    move-result p1

    .line 462
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result p2

    .line 464
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return p1
.end method

.method public setLoopLimit(I)V
    .locals 0

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    return-void
.end method

.method public start()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_2

    .line 296
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Processing,wait for finish at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 302
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStart()V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$6;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$6;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 292
    :cond_4
    :goto_1
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_2

    .line 394
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Processing,wait for finish at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 400
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 401
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 390
    :cond_4
    :goto_1
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "No need to stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopIfNeeded()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
