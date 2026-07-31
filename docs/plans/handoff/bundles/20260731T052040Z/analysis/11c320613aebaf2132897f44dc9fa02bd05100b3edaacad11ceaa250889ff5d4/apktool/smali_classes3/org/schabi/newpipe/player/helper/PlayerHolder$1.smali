.class public final Lorg/schabi/newpipe/player/helper/PlayerHolder$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hideSystemUiIfNeeded()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic onAudioTrackUpdate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFullscreenStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onFullscreenStateChanged(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onMoreOptionsLongClicked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onMoreOptionsLongClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onProgressUpdate(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onProgressUpdate(III)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onScreenRotationButtonClicked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onScreenRotationButtonClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onServiceStopped()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onServiceStopped()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Lorg/schabi/newpipe/App;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onViewCreated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
