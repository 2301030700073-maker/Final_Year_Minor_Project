.class public interface abstract Lorg/schabi/newpipe/player/event/PlayerEventListener;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public abstract onAudioTrackUpdate()V
.end method

.method public abstract onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
.end method

.method public abstract onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onProgressUpdate(III)V
.end method

.method public abstract onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
.end method

.method public abstract onServiceStopped()V
.end method
