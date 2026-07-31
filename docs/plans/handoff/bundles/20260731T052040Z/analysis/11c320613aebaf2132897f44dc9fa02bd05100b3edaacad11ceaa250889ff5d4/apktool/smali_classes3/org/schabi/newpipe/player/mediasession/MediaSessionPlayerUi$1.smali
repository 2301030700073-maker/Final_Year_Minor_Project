.class public final Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;
.super Lcom/google/android/exoplayer2/ForwardingPlayer;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ForwardingPlayer;-><init>(Lcom/google/android/exoplayer2/Player;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final play()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->play()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 9
    .line 10
    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
