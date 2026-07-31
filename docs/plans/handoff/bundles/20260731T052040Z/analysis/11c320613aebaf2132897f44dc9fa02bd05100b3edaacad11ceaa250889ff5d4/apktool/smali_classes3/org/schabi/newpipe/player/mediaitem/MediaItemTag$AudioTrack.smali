.class public final Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final audioStreams:Ljava/util/List;

.field public final selectedAudioStreamIndex:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    .line 5
    .line 6
    iput p1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    .line 7
    .line 8
    return-void
.end method
