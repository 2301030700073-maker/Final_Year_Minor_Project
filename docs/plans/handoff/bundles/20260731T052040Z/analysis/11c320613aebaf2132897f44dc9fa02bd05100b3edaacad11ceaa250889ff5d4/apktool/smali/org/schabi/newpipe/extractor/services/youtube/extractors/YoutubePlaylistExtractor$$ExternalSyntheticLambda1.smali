.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 7
    .line 8
    iput-boolean p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$3:Z

    .line 9
    .line 10
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$4:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v0, "playlistVideoRenderer"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 12
    .line 13
    iget-boolean v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$3:Z

    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$$ExternalSyntheticLambda1;->f$4:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$1;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1, v3, v4, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$1;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string v0, "richItemRenderer"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "content"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "reelItemRenderer"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;-><init>(Ljava/lang/Cloneable;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const-string v0, "lockupViewModel"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v1, p1, v3, v4, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor$2;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
