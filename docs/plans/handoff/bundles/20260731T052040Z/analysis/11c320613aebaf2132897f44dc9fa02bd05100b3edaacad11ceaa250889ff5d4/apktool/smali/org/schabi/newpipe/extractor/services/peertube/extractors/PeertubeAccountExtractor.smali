.class public final Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;
.super Lorg/schabi/newpipe/extractor/ListExtractor;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public baseUrl:Ljava/lang/String;

.field public json:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 1

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;I)V
    .locals 1

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAvatars()Ljava/util/List;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string v0, "avatar_url"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/core/os/BundleKt;->getAvatarsFromOwnerAccountOrVideoChannelObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/core/os/BundleKt;->getAvatarsFromOwnerAccountOrVideoChannelObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getBanners()Ljava/util/List;
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "banner"

    .line 4
    .line 5
    const-string v2, "banners"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string/jumbo v0, "visuals"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string/jumbo v0, "visual_url"

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "-original."

    .line 48
    .line 49
    const-string v1, "-%s."

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->VISUALS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromImageUrlReturned(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    return-object p0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 65
    .line 66
    invoke-static {p0, v0, v2, v1}, Landroidx/core/os/BundleKt;->getImagesFromAvatarsOrBanners(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 74
    .line 75
    invoke-static {p0, v0, v2, v1}, Landroidx/core/os/BundleKt;->getImagesFromAvatarsOrBanners(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string v0, "description"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    const-string v0, "description"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    const-string v0, "description"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFeedUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "/feeds/videos.xml?videoChannelId="

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_1
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "/feeds/videos.xml?accountId="

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string/jumbo v0, "username"

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    const-string v0, "displayName"

    .line 20
    .line 21
    const-class v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/String;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 31
    .line 32
    const-string v0, "displayName"

    .line 33
    .line 34
    const-class v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentChannelAvatars()Ljava/util/List;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 12
    .line 13
    const-string v1, "ownerAccount"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, v0}, Landroidx/core/os/BundleKt;->getAvatarsFromOwnerAccountOrVideoChannelObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentChannelName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, ""

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    const-string v0, "ownerAccount.name"

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    const-string p0, ""

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentChannelUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, ""

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    const-string v0, "ownerAccount.url"

    .line 12
    .line 13
    const-class v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    const-string p0, ""

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSubscriberCount()J
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "followersCount"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v0, "followers_count"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0

    .line 19
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 33
    .line 34
    const-string v4, "/api/v1/"

    .line 35
    .line 36
    invoke-static {v0, v4}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 41
    .line 42
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "accounts/"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v0, v4}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v0, v6, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    const-string v4, "/video-channels"

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->downloader:Lkotlin/io/CloseableKt;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 84
    .line 85
    check-cast p0, Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 96
    .line 97
    const-string v0, "data"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v0, v4, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    int-to-long v4, v0

    .line 125
    add-long/2addr v2, v4

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    :cond_1
    return-wide v2

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTabs()Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "videos"

    .line 7
    .line 8
    .line 9
    const-string v4, "playlists"

    .line 10
    .line 11
    iget-object v5, v0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v2, "tracks"

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v1, v3}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v1, v3}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v5, "albums"

    .line 43
    .line 44
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-static {v1, v9}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v17

    .line 52
    const-string v18, "likes"

    .line 53
    .line 54
    invoke-static/range {v18 .. v18}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {v1, v9}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v14, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v9, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 65
    .line 66
    new-array v0, v8, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v2, v0, v7

    .line 69
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    aget-object v0, v0, v7

    .line 76
    .line 77
    invoke-static {v0, v2, v0, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    move-object v12, v14

    .line 82
    const-string v14, ""

    .line 83
    .line 84
    move-object v11, v10

    .line 85
    invoke-direct/range {v9 .. v14}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v14, v12

    .line 89
    new-instance v11, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 90
    .line 91
    new-array v0, v8, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v4, v0, v7

    .line 94
    .line 95
    new-instance v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    aget-object v0, v0, v7

    .line 101
    .line 102
    invoke-static {v0, v2, v0, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    const-string v16, ""

    .line 107
    .line 108
    move-object v13, v3

    .line 109
    move-object v12, v3

    .line 110
    invoke-direct/range {v11 .. v16}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v11

    .line 114
    new-instance v11, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 115
    .line 116
    new-array v2, v8, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v5, v2, v7

    .line 119
    .line 120
    new-instance v3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .line 124
    .line 125
    aget-object v2, v2, v7

    .line 126
    .line 127
    invoke-static {v2, v3, v2, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const-string v16, ""

    .line 132
    .line 133
    move-object/from16 v13, v17

    .line 134
    .line 135
    move-object/from16 v12, v17

    .line 136
    .line 137
    invoke-direct/range {v11 .. v16}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v2, v11

    .line 141
    new-instance v11, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 142
    .line 143
    new-array v3, v8, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v18, v3, v7

    .line 146
    .line 147
    new-instance v4, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .line 151
    .line 152
    aget-object v3, v3, v7

    .line 153
    .line 154
    invoke-static {v3, v4, v3, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const-string v16, ""

    .line 159
    .line 160
    move-object v13, v1

    .line 161
    move-object v12, v1

    .line 162
    invoke-direct/range {v11 .. v16}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/4 v1, 0x4

    .line 166
    new-array v3, v1, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v9, v3, v7

    .line 169
    .line 170
    aput-object v0, v3, v8

    .line 171
    .line 172
    aput-object v2, v3, v6

    .line 173
    .line 174
    const/4 v0, 0x3

    .line 175
    aput-object v11, v3, v0

    .line 176
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .line 181
    .line 182
    :goto_0
    if-ge v7, v1, :cond_0

    .line 183
    .line 184
    aget-object v2, v3, v7

    .line 185
    .line 186
    invoke-static {v2, v0, v2, v7, v8}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0

    .line 196
    :pswitch_0
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    new-array v0, v8, [Ljava/lang/Object;

    .line 201
    .line 202
    aput-object v3, v0, v7

    .line 203
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .line 208
    .line 209
    aget-object v0, v0, v7

    .line 210
    .line 211
    invoke-static {v0, v1, v0, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sget-object v1, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 220
    .line 221
    invoke-virtual {v1, v12, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrl$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    new-instance v9, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 240
    .line 241
    const-string v14, ""

    .line 242
    .line 243
    move-object v11, v10

    .line 244
    invoke-direct/range {v9 .. v14}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    new-array v0, v8, [Ljava/lang/Object;

    .line 252
    .line 253
    aput-object v4, v0, v7

    .line 254
    .line 255
    new-instance v3, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    aget-object v0, v0, v7

    .line 261
    .line 262
    invoke-static {v0, v3, v0, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v1, v13, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrl$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    new-instance v10, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 289
    .line 290
    const-string v15, ""

    .line 291
    .line 292
    move-object v12, v11

    .line 293
    invoke-direct/range {v10 .. v15}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-array v0, v6, [Ljava/lang/Object;

    .line 297
    .line 298
    aput-object v9, v0, v7

    .line 299
    .line 300
    aput-object v10, v0, v8

    .line 301
    .line 302
    new-instance v1, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    :goto_1
    if-ge v7, v6, :cond_1

    .line 308
    .line 309
    aget-object v2, v0, v7

    .line 310
    .line 311
    invoke-static {v2, v1, v2, v7, v8}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    goto :goto_1

    .line 316
    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    return-object v0

    .line 321
    :pswitch_1
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    new-array v0, v8, [Ljava/lang/Object;

    .line 326
    .line 327
    aput-object v3, v0, v7

    .line 328
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .line 333
    .line 334
    aget-object v0, v0, v7

    .line 335
    .line 336
    invoke-static {v0, v1, v0, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sget-object v1, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 345
    .line 346
    invoke-virtual {v1, v12, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrl$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    check-cast v3, Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    new-instance v9, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 365
    .line 366
    const-string v14, ""

    .line 367
    .line 368
    move-object v11, v10

    .line 369
    invoke-direct/range {v9 .. v14}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v13

    .line 376
    new-array v0, v8, [Ljava/lang/Object;

    .line 377
    .line 378
    const-string v3, "channels"

    .line 379
    .line 380
    aput-object v3, v0, v7

    .line 381
    .line 382
    new-instance v3, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .line 386
    .line 387
    aget-object v0, v0, v7

    .line 388
    .line 389
    invoke-static {v0, v3, v0, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v1, v13, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrl$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    new-instance v10, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 416
    .line 417
    const-string v15, ""

    .line 418
    .line 419
    move-object v12, v11

    .line 420
    invoke-direct/range {v10 .. v15}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    new-array v0, v6, [Ljava/lang/Object;

    .line 424
    .line 425
    aput-object v9, v0, v7

    .line 426
    .line 427
    aput-object v10, v0, v8

    .line 428
    .line 429
    new-instance v1, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    .line 433
    .line 434
    :goto_2
    if-ge v7, v6, :cond_2

    .line 435
    .line 436
    aget-object v2, v0, v7

    .line 437
    .line 438
    invoke-static {v2, v1, v2, v7, v8}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    goto :goto_2

    .line 443
    :cond_2
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    return-object v0

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isVerified()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string/jumbo v0, "verified"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :pswitch_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :pswitch_1
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onFetchPage(Lkotlin/io/CloseableKt;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "/api/v1/"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "https://api-v2.soundcloud.com/users/"

    .line 21
    .line 22
    const-string v3, "?client_id="

    .line 23
    .line 24
    invoke-static {v2, v0, v3, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 29
    .line 30
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v2, v1}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 52
    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "Could not parse json response"

    .line 58
    .line 59
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 92
    .line 93
    check-cast p1, Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "Unable to extract PeerTube channel data"

    .line 96
    .line 97
    :try_start_1
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, p1}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 106
    .line 107
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    return-void

    .line 112
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :catch_1
    move-exception p0

    .line 119
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 120
    .line 121
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->baseUrl:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 154
    .line 155
    check-cast p1, Ljava/lang/String;

    .line 156
    .line 157
    const-string v0, "Unable to extract PeerTube account data"

    .line 158
    .line 159
    :try_start_2
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1, p1}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 168
    .line 169
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;->json:Lcom/grack/nanojson/JsonObject;
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    .line 171
    if-eqz p1, :cond_1

    .line 172
    .line 173
    return-void

    .line 174
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 175
    .line 176
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :catch_2
    move-exception p0

    .line 181
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 182
    .line 183
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
