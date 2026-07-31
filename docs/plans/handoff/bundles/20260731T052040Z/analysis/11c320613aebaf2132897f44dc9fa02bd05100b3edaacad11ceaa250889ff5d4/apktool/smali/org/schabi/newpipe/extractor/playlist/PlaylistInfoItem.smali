.class public final Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getStreamCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 2
    .line 3
    return-void
.end method

.method public final setStreamCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderVerified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderVerified:Z

    .line 2
    .line 3
    return-void
.end method
