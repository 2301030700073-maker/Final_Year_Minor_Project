.class public final Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# instance fields
.field public final audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

.field public final extras:Ljava/lang/Object;

.field public final quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

.field public final streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->extras:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic asMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/RecordTag;->$default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getErrors()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaybeAudioTrack()Lj$/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getMaybeExtras()Lj$/util/Optional;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->extras:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 8
    .line 9
    const/16 v1, 0x16

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getMaybeQuality()Lj$/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getMaybeStreamInfo()Lj$/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getStreamUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic makeMediaId()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/RecordTag;->$default$makeMediaId(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final withExtras(Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
