.class public final Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# static fields
.field public static final COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

.field public static final MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;-><init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/tools/r8/RecordTag;->$default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    return-void
.end method

.method public final releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
