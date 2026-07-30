.class public final Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
.super Ljava/lang/Object;
.source "VideoPlayerLoadControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/VideoPlayerLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J&\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0016\u001a\u00020\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;",
        "",
        "<init>",
        "()V",
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
        "buildCalled",
        "setAllocator",
        "setBufferDurationsMs",
        "setTargetBufferBytes",
        "setPrioritizeTimeOverSizeThresholds",
        "setBackBuffer",
        "build",
        "Lexpo/modules/video/player/VideoPlayerLoadControl;",
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


# instance fields
.field private allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private buildCalled:Z

.field private maxBufferMs:I

.field private minBufferMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x61a8

    .line 55
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->minBufferMs:I

    .line 56
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->maxBufferMs:I

    const/16 v0, 0x7d0

    .line 57
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackMs:I

    .line 58
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 61
    iput v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->backBufferDurationMs:I

    .line 62
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-void
.end method


# virtual methods
.method public final build()Lexpo/modules/video/player/VideoPlayerLoadControl;
    .locals 14

    .line 171
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 172
    iput-boolean v1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    .line 173
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 176
    :cond_0
    new-instance v0, Lexpo/modules/video/player/VideoPlayerLoadControl;

    .line 177
    iget-object v4, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    iget v5, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->minBufferMs:I

    .line 179
    iget v6, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->maxBufferMs:I

    .line 180
    iget v7, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackMs:I

    .line 181
    iget v8, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    .line 182
    iget v9, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->targetBufferBytes:I

    .line 183
    iget-boolean v10, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 184
    iget v11, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->backBufferDurationMs:I

    .line 185
    iget-boolean v12, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    const/4 v13, 0x0

    move-object v3, v0

    .line 176
    invoke-direct/range {v3 .. v13}, Lexpo/modules/video/player/VideoPlayerLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setAllocator(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
    .locals 1

    .line 73
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 74
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    return-object p0
.end method

.method public final setBackBuffer(IZ)Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
    .locals 4

    .line 162
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 163
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const-string v1, "backBufferDurationMs"

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 164
    iput p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->backBufferDurationMs:I

    .line 165
    iput-boolean p2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-object p0
.end method

.method public final setBufferDurationsMs(IIII)Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
    .locals 5

    .line 99
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 100
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const/4 v1, 0x0

    const-string v2, "bufferForPlaybackMs"

    const-string v3, "0"

    invoke-static {v0, p3, v1, v2, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const-string v4, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v0, p4, v1, v4, v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const-string v1, "minBufferMs"

    invoke-static {v0, p1, p3, v1, v2}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    invoke-static {v0, p1, p4, v1, v4}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lexpo/modules/video/player/VideoPlayerLoadControl;->Companion:Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;

    const-string v2, "maxBufferMs"

    invoke-static {v0, p2, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;->access$assertGreaterOrEqual(Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;IILjava/lang/String;Ljava/lang/String;)V

    .line 115
    iput p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->minBufferMs:I

    .line 116
    iput p2, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->maxBufferMs:I

    .line 117
    iput p3, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackMs:I

    .line 118
    iput p4, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public final setPrioritizeTimeOverSizeThresholds(Z)Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
    .locals 1

    .line 146
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 147
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    return-object p0
.end method

.method public final setTargetBufferBytes(I)Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;
    .locals 1

    .line 131
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 132
    iput p1, p0, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->targetBufferBytes:I

    return-object p0
.end method
