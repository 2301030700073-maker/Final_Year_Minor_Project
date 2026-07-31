.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic val$isCoursePlaylist:Z

.field public final synthetic val$playlistExtractor:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$isCoursePlaylist:Z

    .line 2
    .line 3
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$playlistExtractor:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getUploaderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$isCoursePlaylist:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$playlistExtractor:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;->getUploaderName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getUploaderName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$isCoursePlaylist:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$playlistExtractor:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;->getUploaderUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getUploaderUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final isChannelOrCoursePlaylistLockupItem()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;->val$isCoursePlaylist:Z

    .line 2
    .line 3
    return p0
.end method
