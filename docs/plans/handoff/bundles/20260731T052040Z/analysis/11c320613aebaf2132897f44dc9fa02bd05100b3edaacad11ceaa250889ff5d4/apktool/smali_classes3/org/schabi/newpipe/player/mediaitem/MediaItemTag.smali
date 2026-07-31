.class public interface abstract Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public abstract asMediaItem()Lcom/google/android/exoplayer2/MediaItem;
.end method

.method public abstract getErrors()Ljava/util/List;
.end method

.method public abstract getMaybeAudioTrack()Lj$/util/Optional;
.end method

.method public abstract getMaybeExtras()Lj$/util/Optional;
.end method

.method public abstract getMaybeQuality()Lj$/util/Optional;
.end method

.method public abstract getMaybeStreamInfo()Lj$/util/Optional;
.end method

.method public abstract getServiceId()I
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract makeMediaId()Ljava/lang/String;
.end method

.method public abstract withExtras(Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.end method
