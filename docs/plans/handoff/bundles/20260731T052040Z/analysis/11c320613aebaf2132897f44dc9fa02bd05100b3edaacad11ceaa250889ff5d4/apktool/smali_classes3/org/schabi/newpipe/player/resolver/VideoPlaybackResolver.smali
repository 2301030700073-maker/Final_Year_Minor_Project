.class public final Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public audioTrack:Ljava/lang/String;

.field public final context:Lorg/schabi/newpipe/player/PlayerService;

.field public final dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

.field public playbackQuality:Ljava/lang/String;

.field public final qualityResolver:Lorg/schabi/newpipe/player/Player$1;

.field public streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/player/Player$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->qualityResolver:Lorg/schabi/newpipe/player/Player$1;

    .line 9
    .line 10
    return-void
.end method
