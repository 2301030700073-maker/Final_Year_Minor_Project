.class public final Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final context:Landroid/content/Context;

.field public placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

.field public final player:Lcom/google/android/exoplayer2/Player;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->context:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
