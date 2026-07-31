.class public final Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final callback:Lorg/wikipedia/media/AvPlayer$Callback;


# direct methods
.method public constructor <init>(Lorg/wikipedia/media/AvPlayer$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    .line 5
    .line 6
    invoke-interface {p0}, Lorg/wikipedia/media/AvPlayer$Callback;->onSuccess()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    .line 5
    .line 6
    invoke-interface {p0, p2, p3}, Lorg/wikipedia/media/AvPlayer$Callback;->onError(II)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    .line 5
    .line 6
    invoke-interface {p0}, Lorg/wikipedia/media/AvPlayer$Callback;->onSuccess()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
