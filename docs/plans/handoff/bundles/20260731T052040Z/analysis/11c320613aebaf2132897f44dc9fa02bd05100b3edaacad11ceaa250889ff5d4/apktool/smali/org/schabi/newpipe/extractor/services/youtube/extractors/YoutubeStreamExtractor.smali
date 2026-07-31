.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.super Lorg/schabi/newpipe/extractor/ListExtractor;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static poTokenProvider:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;


# instance fields
.field public ageLimit:I

.field public androidCpn:Ljava/lang/String;

.field public androidStreamingData:Lcom/grack/nanojson/JsonObject;

.field public nextResponse:Lcom/grack/nanojson/JsonObject;

.field public playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

.field public playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

.field public playerResponse:Lcom/grack/nanojson/JsonObject;

.field public streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public thumbnailsArray:Lcom/grack/nanojson/JsonArray;

.field public videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field public videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field public visionOsCpn:Ljava/lang/String;

.field public visionOsStreamingData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static getManifestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "ManifestUrl"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    const-string p0, "?"

    .line 54
    .line 55
    invoke-static {v1, p0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/lang/String;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "?pot="

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p0, "&"

    .line 83
    .line 84
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    const-string p0, ""

    .line 96
    .line 97
    return-object p0
.end method

.method public static isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "videoDetails"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo v0, "videoId"

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
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    return p0
.end method

.method public static parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    const/16 v1, 0x13

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    const-string v3, "accessibilityData"

    .line 43
    .line 44
    const-string v4, "label"

    .line 45
    .line 46
    invoke-static {p0, v3, v3, v4, v0}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "accessibility"

    .line 51
    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v4, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_0
    if-nez v5, :cond_1

    .line 63
    .line 64
    const-string v5, "defaultText"

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v4, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    move-object v0, p0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object v0, v5

    .line 85
    :goto_0
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v3, "no likes"

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    return-wide v1

    .line 100
    :cond_2
    if-eqz v0, :cond_3

    .line 101
    .line 102
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    .line 104
    const-string p0, "\\D+"

    .line 105
    .line 106
    const-string v1, ""

    .line 107
    .line 108
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-wide v0

    .line 117
    :catch_0
    move-exception p0

    .line 118
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 119
    .line 120
    const-string v2, "Could not parse \""

    .line 121
    .line 122
    const-string v3, "\" as a long"

    .line 123
    .line 124
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v1

    .line 132
    :cond_3
    const-string p0, "Could not get like count from accessibility data"

    .line 133
    .line 134
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-wide v1
.end method

.method public static parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const-string v3, "accessibilityText"

    .line 43
    .line 44
    invoke-virtual {p0, v3, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    const-string v0, "\\D+"

    .line 53
    .line 54
    const-string v1, ""

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-wide v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 67
    .line 68
    const-string v2, "Could not parse \""

    .line 69
    .line 70
    const-string v3, "\" as a long"

    .line 71
    .line 72
    invoke-static {v2, p0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v1, p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_0
    const-string p0, "Could not find buttonViewModel\'s accessibilityText string"

    .line 81
    .line 82
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-wide v1

    .line 86
    :cond_1
    const-string p0, "Could not find buttonViewModel object"

    .line 87
    .line 88
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-wide v1
.end method


# virtual methods
.method public final buildAndAddItagInfoToList(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 8

    .line 1
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4
    :cond_0
    const-string/jumbo v1, "signatureCipher"

    .line 5
    invoke-virtual {p2, v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    const-string v4, "cipher"

    invoke-virtual {p2, v4, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 8
    :cond_1
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->compatParseMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 9
    const-string v4, "s"

    .line 10
    invoke-static {v1, v4, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v5, :cond_1c

    .line 12
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 13
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 14
    :try_start_0
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not get signature parameter deobfuscation JavaScript function"

    .line 16
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 18
    throw p0

    :catch_1
    move-exception p0

    .line 19
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 20
    throw p0

    .line 21
    :cond_2
    :goto_0
    :try_start_1
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    const-string v6, "deobfuscate"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v5, v6, v4}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {v4, v2}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "sp"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_1
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/HashMap;

    .line 26
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->THROTTLING_PARAM_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    const-string v1, "&n="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    const-string v1, "?n="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :catch_2
    move-object v1, v3

    goto :goto_2

    .line 28
    :cond_3
    :try_start_2
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->THROTTLING_PARAM_PATTERN:Ljava/util/regex/Pattern;

    .line 29
    invoke-static {v0, v1, v4}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup(Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    if-nez v1, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 31
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 32
    :cond_5
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez p1, :cond_1b

    .line 34
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 35
    :try_start_3
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 37
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 38
    invoke-static {v6, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    :try_end_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 39
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not get throttling parameter deobfuscation JavaScript function"

    .line 40
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 42
    throw p0

    :catch_4
    move-exception p0

    .line 43
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 44
    throw p0

    .line 45
    :cond_6
    :goto_3
    :try_start_4
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 47
    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 49
    :goto_4
    const-string p1, "&cpn="

    .line 50
    invoke-static {v0, p1, p5}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_7

    .line 51
    const-string p5, "&pot="

    .line 52
    invoke-static {p1, p5, p6}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    :cond_7
    const-string p5, "initRange"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p5

    .line 54
    const-string p6, "indexRange"

    invoke-virtual {p2, p6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p6

    .line 55
    const-string v0, "mimeType"

    invoke-virtual {p2, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "codecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_5

    :cond_8
    move-object v0, v2

    .line 58
    :goto_5
    const-string v1, "bitrate"

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p2, v5, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result v1

    .line 60
    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setBitrate(I)V

    .line 61
    const-string/jumbo v1, "width"

    .line 62
    invoke-virtual {p2, v5, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result v1

    .line 63
    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setWidth(I)V

    .line 64
    const-string v1, "height"

    .line 65
    invoke-virtual {p2, v5, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result v1

    .line 66
    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setHeight(I)V

    .line 67
    const-string/jumbo v1, "start"

    const-string v6, "-1"

    invoke-virtual {p5, v1, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitStart(I)V

    .line 68
    const-string v7, "end"

    invoke-virtual {p5, v7, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitEnd(I)V

    .line 69
    invoke-virtual {p6, v1, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexStart(I)V

    .line 70
    invoke-virtual {p6, v7, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexEnd(I)V

    .line 71
    const-string p5, "quality"

    .line 72
    invoke-virtual {p2, p5, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 73
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setQuality(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setCodec(Ljava/lang/String;)V

    .line 75
    const-string p5, "isDrc"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIsDrc(Ljava/lang/Boolean;)V

    .line 76
    const-string p5, "lastModified"

    invoke-virtual {p2, p5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p5

    invoke-virtual {p3, p5, p6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setLastModified(J)V

    .line 77
    const-string/jumbo p5, "xtags"

    .line 78
    invoke-virtual {p2, p5, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 79
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setXtags(Ljava/lang/String;)V

    .line 80
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p5, p6, :cond_9

    if-ne p5, v0, :cond_a

    .line 81
    :cond_9
    const-string/jumbo p5, "targetDurationSec"

    .line 82
    invoke-virtual {p2, v5, p5}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result p5

    .line 83
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setTargetDurationSec(I)V

    .line 84
    :cond_a
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 p6, -0x1

    if-eq p4, p5, :cond_15

    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_b

    goto/16 :goto_9

    .line 85
    :cond_b
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_17

    .line 86
    const-string p4, "audioSampleRate"

    .line 87
    invoke-virtual {p2, p4, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 88
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setSampleRate(I)V

    .line 89
    const-string p4, "audioChannels"

    const/4 p5, 0x2

    invoke-virtual {p2, p5, p4}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioChannels(I)V

    .line 90
    const-string p4, "audioTrack"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v6, "id"

    .line 91
    invoke-virtual {v1, v6, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 93
    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackId(Ljava/lang/String;)V

    .line 94
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, p6, :cond_c

    .line 95
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->forLanguageTag(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v1

    .line 97
    new-instance v6, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    const/4 v7, 0x6

    invoke-direct {v6, p3, v7}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 98
    :cond_c
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getXtags()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    if-nez v1, :cond_d

    :catch_5
    :goto_6
    move-object p5, v3

    goto/16 :goto_8

    .line 99
    :cond_d
    :try_start_5
    invoke-static {}, Lj$/util/Base64;->getUrlDecoder()Lj$/util/Base64$Decoder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$XTags;->parseFrom([B)Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$XTags;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$XTags;->getXtagsList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    invoke-interface {v1, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v1

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 103
    invoke-virtual {v1, v6}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v1, :cond_e

    goto :goto_6

    .line 105
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string p5, "original"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_f

    goto :goto_7

    :cond_f
    const/4 p6, 0x4

    goto :goto_7

    :sswitch_1
    const-string p5, "dubbed-auto"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_10

    goto :goto_7

    :cond_10
    const/4 p6, 0x3

    goto :goto_7

    :sswitch_2
    const-string v6, "secondary"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_7

    :cond_11
    move p6, p5

    goto :goto_7

    :sswitch_3
    const-string p5, "dubbed"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_12

    goto :goto_7

    :cond_12
    move p6, v4

    goto :goto_7

    :sswitch_4
    const-string p5, "descriptive"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_13

    goto :goto_7

    :cond_13
    move p6, v5

    :goto_7
    packed-switch p6, :pswitch_data_0

    goto :goto_6

    .line 106
    :pswitch_0
    sget-object p5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    goto :goto_8

    .line 107
    :pswitch_1
    sget-object p5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    goto :goto_8

    .line 108
    :pswitch_2
    sget-object p5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    goto :goto_8

    .line 109
    :pswitch_3
    sget-object p5, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 110
    :goto_8
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V

    .line 111
    :cond_14
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p4

    const-string p5, "displayName"

    .line 112
    invoke-virtual {p4, p5, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackName(Ljava/lang/String;)V

    goto :goto_a

    .line 114
    :cond_15
    :goto_9
    const-string p4, "fps"

    .line 115
    invoke-virtual {p2, v5, p4}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    move-result p4

    if-lez p4, :cond_16

    move p6, p4

    .line 116
    :cond_16
    iput p6, p3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 117
    :cond_17
    :goto_a
    const-string p4, "contentLength"

    const-wide/16 p5, -0x1

    .line 118
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p2, p4, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setContentLength(J)V

    .line 120
    const-string p4, "approxDurationMs"

    .line 121
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    .line 122
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setApproxDurationMs(J)V

    .line 123
    new-instance p4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-direct {p4, p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 124
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, p1, :cond_18

    .line 125
    const-string/jumbo p0, "type"

    invoke-virtual {p2, p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FORMAT_STREAM_TYPE_OTF"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v4

    .line 127
    invoke-virtual {p4, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    goto :goto_c

    :cond_18
    if-eq p0, v0, :cond_19

    goto :goto_b

    :cond_19
    move v4, v5

    .line 128
    :goto_b
    invoke-virtual {p4, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    :goto_c
    return-object p4

    :catch_6
    move-exception p0

    goto :goto_d

    .line 129
    :cond_1a
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Extracted n-parameter is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 130
    :goto_d
    const-string p1, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 131
    :cond_1b
    throw p1

    :catch_7
    move-exception p0

    .line 132
    const-string p1, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 133
    :cond_1c
    throw v5

    :sswitch_data_0
    .sparse-switch
        -0x66ca7b34 -> :sswitch_4
        -0x4ebc9b10 -> :sswitch_3
        -0x30bb8e8c -> :sswitch_2
        -0x1e91cf94 -> :sswitch_1
        0x523289d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getAgeLimit()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "metadataRowContainer"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "metadataRowContainerRenderer"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "rows"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 34
    .line 35
    const/16 v2, 0x16

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 45
    .line 46
    const/16 v2, 0x10

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    const/16 v2, 0x11

    .line 58
    .line 59
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 67
    .line 68
    const/4 v2, 0x6

    .line 69
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const/16 v0, 0x12

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    .line 83
    .line 84
    return v0
.end method

.method public final getAudioStreams()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    const-string v2, "adaptiveFormats"

    .line 13
    .line 14
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 15
    .line 16
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v0, "category"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDashMpdUrl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    new-array v1, p0, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    aget-object p0, v1, v2

    .line 24
    .line 25
    invoke-static {p0, v0, p0, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "mpd_version=7"

    .line 30
    .line 31
    const-string v1, "dash"

    .line 32
    .line 33
    invoke-static {v1, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "description"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 26
    .line 27
    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "attributedDescription"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->attributedDescriptionToHtml(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 52
    .line 53
    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 58
    .line 59
    const-string/jumbo v2, "videoDetails"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string/jumbo v2, "shortDescription"

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v0, "playabilityStatus"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "errorScreen"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "playerErrorMessageRenderer"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "reason"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :catch_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final getFrames()Ljava/util/List;
    .locals 18

    .line 1
    const-string v0, "$M"

    .line 2
    .line 3
    const-string v1, "playerLiveStoryboardSpecRenderer"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    const-string/jumbo v3, "storyboards"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "playerStoryboardSpecRenderer"

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    const-string/jumbo v2, "spec"

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    const-string v2, "\\|"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x0

    .line 54
    aget-object v3, v1, v2

    .line 55
    .line 56
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    array-length v5, v1

    .line 59
    const/4 v6, 0x1

    .line 60
    sub-int/2addr v5, v6

    .line 61
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    move v5, v6

    .line 65
    :goto_1
    array-length v7, v1

    .line 66
    if-ge v5, v7, :cond_7

    .line 67
    .line 68
    aget-object v7, v1, v5

    .line 69
    .line 70
    const-string v8, "#"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    array-length v8, v7

    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    if-ne v8, v9, :cond_6

    .line 80
    .line 81
    const/4 v8, 0x5

    .line 82
    aget-object v9, v7, v8

    .line 83
    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    const/4 v9, 0x2

    .line 93
    aget-object v9, v7, v9

    .line 94
    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const/4 v9, 0x3

    .line 100
    aget-object v9, v7, v9

    .line 101
    .line 102
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    const/4 v9, 0x4

    .line 107
    aget-object v9, v7, v9

    .line 108
    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v17

    .line 113
    const-string v9, "$L"

    .line 114
    .line 115
    add-int/lit8 v10, v5, -0x1

    .line 116
    .line 117
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    const-string v10, "$N"

    .line 126
    .line 127
    const/4 v11, 0x6

    .line 128
    aget-object v11, v7, v11

    .line 129
    .line 130
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    const/4 v10, 0x7

    .line 135
    aget-object v10, v7, v10

    .line 136
    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v9, "&sigh="

    .line 146
    .line 147
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_4

    .line 162
    .line 163
    int-to-double v10, v14

    .line 164
    mul-int v12, v16, v17

    .line 165
    .line 166
    int-to-double v12, v12

    .line 167
    div-double/2addr v10, v12

    .line 168
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 169
    .line 170
    .line 171
    move-result-wide v10

    .line 172
    double-to-int v10, v10

    .line 173
    new-instance v11, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    move v12, v2

    .line 179
    :goto_2
    if-ge v12, v10, :cond_5

    .line 180
    .line 181
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    add-int/lit8 v12, v12, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    :cond_5
    new-instance v10, Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 200
    .line 201
    aget-object v9, v7, v2

    .line 202
    .line 203
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    aget-object v9, v7, v6

    .line 208
    .line 209
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    aget-object v7, v7, v8

    .line 214
    .line 215
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    invoke-direct/range {v10 .. v17}, Lorg/schabi/newpipe/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_7
    return-object v4

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 232
    .line 233
    const-string v2, "Could not get frames"

    .line 234
    .line 235
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    throw v1
.end method

.method public final getHlsUrl()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 13
    .line 14
    invoke-direct {v1, v2, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    new-array v2, p0, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v0, v2, v4

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object v1, v2, v0

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    aput-object v3, v2, v1

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    if-ge v4, p0, :cond_0

    .line 42
    .line 43
    aget-object v3, v2, v4

    .line 44
    .line 45
    invoke-static {v3, v1, v3, v4, v0}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, ""

    .line 55
    .line 56
    const-string v1, "hls"

    .line 57
    .line 58
    invoke-static {v1, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 17
    .line 18
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 28
    .line 29
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 30
    .line 31
    new-instance v5, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 32
    .line 33
    iget-object v7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsCpn:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v5, v7, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 42
    .line 43
    new-instance v5, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 44
    .line 45
    invoke-direct {v5, v6, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v6, v5}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    new-array v5, v5, [Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    aput-object v2, v5, v6

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v3, v5, v2

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    aput-object v4, v5, v2

    .line 62
    .line 63
    invoke-static {v5}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    invoke-direct {v3, p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-interface {p0, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    const/4 p2, 0x7

    .line 83
    invoke-direct {p1, v1, p2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 92
    .line 93
    const-string p2, "Could not get "

    .line 94
    .line 95
    const-string p3, " streams"

    .line 96
    .line 97
    invoke-static {p2, p4, p3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public final getLanguageInfo()Ljava/util/Locale;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getLength()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string/jumbo v2, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "lengthSeconds"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-wide v0

    .line 25
    :catch_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object p0, v1, v2

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    aput-object v0, v1, p0

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :catch_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 55
    .line 56
    const-string v3, "adaptiveFormats"

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v3, "approxDurationMs"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    long-to-float v1, v3

    .line 84
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 85
    .line 86
    div-float/2addr v1, v3

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    int-to-long v0, p0

    .line 92
    return-wide v0

    .line 93
    :cond_1
    const-string p0, "Could not get duration"

    .line 94
    .line 95
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v0, 0x0

    .line 99
    .line 100
    return-wide v0
.end method

.method public final getLicence()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "metadataRowContainer"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "metadataRowContainerRenderer"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "rows"

    .line 18
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
    const-string v1, "metadataRowRenderer"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "contents"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    const-string/jumbo v2, "title"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "Licence"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_0
    const-string p0, "YouTube licence"

    .line 71
    .line 72
    return-object p0
.end method

.method public final getLikeCount()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string/jumbo v1, "videoDetails"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "allowRatings"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string/jumbo v0, "videoActions"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "menuRenderer"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v0, "topLevelButtons"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-wide v0

    .line 53
    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    return-wide v0

    .line 58
    :catch_1
    move-exception p0

    .line 59
    const-string v0, "Could not get like count"

    .line 60
    .line 61
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    return-wide v0
.end method

.method public final getMetaInfo()Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string/jumbo v0, "twoColumnWatchNextResults"

    .line 4
    .line 5
    .line 6
    const-string v1, "results"

    .line 7
    .line 8
    const-string v2, "contents"

    .line 9
    .line 10
    invoke-static {p0, v2, v0, v1, v1}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string/jumbo v1, "videoDetails"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v2, "title"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    const-string p0, "Could not get name"

    .line 48
    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_1
    return-object v0
.end method

.method public final getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v1, "isUnlisted"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "badges"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 26
    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 43
    .line 44
    return-object p0
.end method

.method public final getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 5

    .line 1
    const-string v0, "secondaryResults"

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getAgeLimit()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 15
    .line 16
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 17
    .line 18
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 19
    .line 20
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    const-string v4, "contents"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string/jumbo v4, "twoColumnWatchNextResults"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, "results"

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 71
    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    invoke-direct {v0, v1, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    const-string v0, "Could not get related videos"

    .line 93
    .line 94
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public final getStreamSegments()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v1, "engagementPanels"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/grack/nanojson/JsonArray;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getLength()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 73
    .line 74
    const/16 v7, 0x15

    .line 75
    .line 76
    invoke-direct {v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_6

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/grack/nanojson/JsonObject;

    .line 98
    .line 99
    const-string v7, "onTap"

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string/jumbo v8, "watchEndpoint"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    const-string/jumbo v8, "startTimeSeconds"

    .line 113
    .line 114
    .line 115
    const/4 v9, -0x1

    .line 116
    invoke-virtual {v7, v9, v8}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eq v7, v9, :cond_5

    .line 121
    .line 122
    int-to-long v8, v7

    .line 123
    cmp-long v8, v8, v3

    .line 124
    .line 125
    if-lez v8, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const-string/jumbo v8, "title"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {v8, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_4

    .line 144
    .line 145
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 146
    .line 147
    invoke-direct {v9, v8, v7}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    iget-object v8, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 151
    .line 152
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v8, "?t="

    .line 165
    .line 166
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iput-object v7, v9, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->url:Ljava/lang/String;

    .line 177
    .line 178
    const-string/jumbo v7, "thumbnail"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_3

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    const-string/jumbo v7, "thumbnails"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-nez v7, :cond_3

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    add-int/lit8 v7, v7, -0x1

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-string/jumbo v7, "url"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v7, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v9, v6}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_4
    const-string p0, "Could not get stream segment title."

    .line 234
    .line 235
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-object v1

    .line 239
    :cond_5
    const-string p0, "Could not get stream segment start time."

    .line 240
    .line 241
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-object v1

    .line 245
    :cond_6
    :goto_1
    return-object v5
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 5
    .line 6
    return-object p0
.end method

.method public final getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    const-string v1, "captionTracks"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "languageCode"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "baseUrl"

    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string/jumbo v5, "vssId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v10, :cond_0

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    const-string v4, "a."

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const-string v3, "&fmt=[^&]*"

    .line 69
    .line 70
    const-string v4, ""

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "&tlang=[^&]*"

    .line 77
    .line 78
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 83
    .line 84
    const-string v4, "&fmt="

    .line 85
    .line 86
    invoke-static {v2, v4, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iget-object v2, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "."

    .line 95
    .line 96
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 111
    .line 112
    const/4 v8, 0x1

    .line 113
    move-object v9, p1

    .line 114
    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_0
    move-object v9, p1

    .line 122
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    move-object p1, v9

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    return-object v0
.end method

.method public final getSubtitlesDefault()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string/jumbo v0, "videoDetails"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "keywords"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->getStringListFromJsonArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string/jumbo v1, "uploadDate"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    const-string v1, "publishDate"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 34
    .line 35
    const-string v1, "liveBroadcastDetails"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "endTimestamp"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string/jumbo v1, "startTimestamp"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 71
    .line 72
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string v0, "dateText"

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-nez p0, :cond_5

    .line 94
    .line 95
    return-object v2

    .line 96
    :cond_5
    const-string v0, "Premiered on "

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    const/16 v0, 0xd

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_6
    const-string v0, "Premiered "

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    const/16 v0, 0xa

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :cond_7
    return-object p0
.end method

.method public final getThumbnails()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    .line 5
    .line 6
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    const-string p0, "Could not get thumbnails"

    .line 12
    .line 13
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getTimeStamp()J
    .locals 4

    .line 1
    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTimestampSeconds(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x2

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :cond_0
    return-wide v0
.end method

.method public final getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromOffsetDateTime(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    :try_start_1
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 11
    .line 12
    const-string v2, "en"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/math/MathKt;->getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    return-object p0

    .line 27
    :catch_1
    const-string v1, "MMM dd, yyyy"

    .line 28
    .line 29
    :try_start_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_2
    .catch Lj$/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    goto :goto_0

    .line 44
    :catch_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    new-instance v2, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v2, p0, v0}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lj$/util/Optional;->or(Ljava/util/function/Supplier;)Lj$/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 58
    .line 59
    const/16 v2, 0x14

    .line 60
    .line 61
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v1, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    invoke-direct {v1, v0, v2}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 79
    .line 80
    return-object p0
.end method

.method public final getUploaderAvatars()Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "owner"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "videoOwnerRenderer"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "avatarStack"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "avatarStackViewModel"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "avatars"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "avatarViewModel"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "image"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string/jumbo v1, "sources"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string/jumbo v1, "thumbnail"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string/jumbo v1, "thumbnails"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    .line 99
    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const-string p0, "Could not get uploader avatars"

    .line 104
    .line 105
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    return-object p0

    .line 110
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string/jumbo v0, "videoDetails"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "author"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "Could not get uploader name"

    .line 28
    .line 29
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getUploaderSubscriberCount()J
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v0, "owner.videoOwnerRenderer"

    .line 4
    .line 5
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 12
    .line 13
    const-string/jumbo v0, "subscriberCountText"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v0, "navigationEndpoint"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    const-string/jumbo v1, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    .line 42
    .line 43
    .line 44
    const-class v3, Lcom/grack/nanojson/JsonArray;

    .line 45
    .line 46
    invoke-static {p0, v1, v3}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/grack/nanojson/JsonArray;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v1, "listItemViewModel"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-object p0, v0

    .line 64
    :goto_0
    const-string/jumbo v1, "subtitle"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v1, "content"

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string/jumbo v0, "\u2022"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 v0, 0x1

    .line 85
    aget-object p0, p0, v0

    .line 86
    .line 87
    :goto_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    const-wide/16 v0, -0x1

    .line 94
    .line 95
    return-wide v0

    .line 96
    :cond_1
    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    return-wide v0

    .line 101
    :catch_1
    move-exception p0

    .line 102
    const-string v0, "Could not get uploader subscriber count"

    .line 103
    .line 104
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .line 109
    return-wide v0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string/jumbo v0, "videoDetails"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "channelId"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "channel/"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    const-string p0, "Could not get uploader url"

    .line 48
    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string/jumbo v0, "twoColumnWatchNextResults"

    .line 4
    .line 5
    .line 6
    const-string v1, "results"

    .line 7
    .line 8
    const-string v2, "contents"

    .line 9
    .line 10
    invoke-static {p0, v2, v0, v1, v1}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    const/16 v1, 0xb

    .line 25
    .line 26
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Lcom/grack/nanojson/JsonObject;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 57
    .line 58
    return-object p0
.end method

.method public final getVideoOnlyStreams()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "video-only"

    .line 11
    .line 12
    .line 13
    const-string v2, "adaptiveFormats"

    .line 14
    .line 15
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string/jumbo v0, "videoPrimaryInfoRenderer"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    return-object v0
.end method

.method public final getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string/jumbo v0, "videoSecondaryInfoRenderer"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    return-object v0
.end method

.method public final getVideoStreams()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->assertPageFetched()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "video"

    .line 11
    .line 12
    .line 13
    const-string v2, "formats"

    .line 14
    .line 15
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getViewCount()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "viewCount"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "videoViewCountRenderer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 37
    .line 38
    const-string/jumbo v0, "videoDetails"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string p0, "Could not get view count"

    .line 58
    .line 59
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-wide v3

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v1, "no views"

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    return-wide v3

    .line 76
    :cond_2
    const-string p0, "\\D+"

    .line 77
    .line 78
    const-string v1, ""

    .line 79
    .line 80
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    return-wide v0
.end method

.method public final isUploaderVerified()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "owner"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v0, "videoOwnerRenderer"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "badges"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isVerified(Lcom/grack/nanojson/JsonArray;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_0
    const-string v0, "navigationEndpoint"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :try_start_0
    const-string/jumbo v1, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    .line 45
    .line 46
    .line 47
    const-class v2, Lcom/grack/nanojson/JsonArray;

    .line 48
    .line 49
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/grack/nanojson/JsonArray;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v1, "listItemViewModel"

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    const/4 p0, 0x0

    .line 67
    :goto_0
    if-nez p0, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    const-string/jumbo v0, "title"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v0, "attachmentRuns"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0
.end method

.method public final onFetchPage(Lkotlin/io/CloseableKt;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    .line 28
    .line 29
    const/16 v5, 0x10

    .line 30
    .line 31
    invoke-static {v5, v4}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->generate(ILjava/util/Random;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v7, Lorg/jsoup/parser/TokenData;

    .line 38
    .line 39
    new-instance v8, Lokhttp3/Dispatcher;

    .line 40
    .line 41
    const-string v9, "3"

    .line 42
    .line 43
    const-string v10, "WATCH"

    .line 44
    .line 45
    const-string v11, "ANDROID"

    .line 46
    .line 47
    const-string v12, "21.03.36"

    .line 48
    .line 49
    invoke-direct {v8, v11, v12, v9, v10}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v13, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 53
    .line 54
    const-string v19, "16"

    .line 55
    .line 56
    const/16 v14, 0x24

    .line 57
    .line 58
    const-string v15, "MOBILE"

    .line 59
    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const-string v18, "Android"

    .line 65
    .line 66
    invoke-direct/range {v13 .. v19}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v9, 0xc

    .line 70
    .line 71
    invoke-direct {v7, v8, v13, v9}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-static {v10}, Lorg/jsoup/Jsoup;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    const-string v11, "https://youtubei.googleapis.com/youtubei/v1/"

    .line 83
    .line 84
    invoke-static {v7, v3, v2, v10, v11}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/jsoup/parser/TokenData;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    iput-object v11, v8, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v3, v2, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const-string v8, "playerRequest"

    .line 95
    .line 96
    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v7, v1, v6}, Lorg/jsoup/Jsoup;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 103
    .line 104
    .line 105
    const-string v6, "disablePlayerResponse"

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-virtual {v7, v6, v8}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    iget-object v6, v7, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v6, Lcom/grack/nanojson/JsonObject;

    .line 114
    .line 115
    invoke-static {v6}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v9, v4}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->generate(ILjava/util/Random;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v8, "&id="

    .line 130
    .line 131
    const-string v9, "&$fields=playerResponse"

    .line 132
    .line 133
    const-string v11, "https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t="

    .line 134
    .line 135
    invoke-static {v11, v7, v8, v1, v9}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    sget-object v8, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 140
    .line 141
    invoke-virtual {v8, v7, v10, v6, v3}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v7, "playerResponse"

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 160
    .line 161
    const-string v7, "playabilityStatus"

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    const-string/jumbo v8, "status"

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    invoke-virtual {v6, v8, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    if-eqz v8, :cond_d

    .line 176
    .line 177
    const-string v10, "ok"

    .line 178
    .line 179
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_1

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :cond_1
    const-string v0, "reason"

    .line 188
    .line 189
    invoke-virtual {v6, v0, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "\""

    .line 194
    .line 195
    const-string v2, ": \""

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    const-string v3, "login_required"

    .line 200
    .line 201
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    const-string v3, "inappropriate for some users"

    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_4

    .line 214
    .line 215
    const-string v3, "private"

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_3

    .line 222
    .line 223
    const-string v3, "a bot"

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_2

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_2
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/SignInConfirmNotBotException;

    .line 233
    .line 234
    const-string v4, "YouTube probably temporarily blocked anonymous watch access with this IP , got error "

    .line 235
    .line 236
    invoke-static {v4, v8, v2, v0, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v3

    .line 244
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    .line 245
    .line 246
    const-string v1, "This video is private"

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    .line 253
    .line 254
    const-string v1, "This age-restricted video cannot be watched anonymously"

    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_5
    :goto_1
    const-string/jumbo v3, "unplayable"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_6

    .line 268
    .line 269
    const-string v3, "error"

    .line 270
    .line 271
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_c

    .line 276
    .line 277
    :cond_6
    const-string v3, "Music Premium"

    .line 278
    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_b

    .line 284
    .line 285
    const-string v3, "payment"

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-nez v3, :cond_a

    .line 292
    .line 293
    const-string v3, "members"

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-nez v3, :cond_9

    .line 300
    .line 301
    const-string v3, "country"

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_8

    .line 308
    .line 309
    const-string v3, "closed"

    .line 310
    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-nez v3, :cond_7

    .line 316
    .line 317
    const-string/jumbo v3, "terminated"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_c

    .line 325
    .line 326
    :cond_7
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 327
    .line 328
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v1

    .line 332
    :cond_8
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    .line 333
    .line 334
    const-string v1, "This video is not available in client\'s country."

    .line 335
    .line 336
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_9
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    .line 341
    .line 342
    const-string v1, "This video is only available for members of the channel of this video"

    .line 343
    .line 344
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_a
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    .line 349
    .line 350
    const-string v1, "This video is a paid video"

    .line 351
    .line 352
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :cond_b
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    .line 357
    .line 358
    const-string v1, "This video is a YouTube Music Premium video"

    .line 359
    .line 360
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_c
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 365
    .line 366
    const-string v4, "Got error "

    .line 367
    .line 368
    invoke-static {v4, v8, v2, v0, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v3

    .line 376
    :cond_d
    :goto_2
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 377
    .line 378
    invoke-static {v6, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-nez v6, :cond_13

    .line 383
    .line 384
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 385
    .line 386
    const-string/jumbo v8, "streamingData"

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 394
    .line 395
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 396
    .line 397
    const-string v9, "captions"

    .line 398
    .line 399
    invoke-virtual {v6, v9}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    const-string v10, "playerCaptionsTracklistRenderer"

    .line 404
    .line 405
    invoke-virtual {v6, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 410
    .line 411
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 412
    .line 413
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    const-string v7, "liveStreamability"

    .line 418
    .line 419
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    const-string/jumbo v7, "videoDetails"

    .line 424
    .line 425
    .line 426
    if-eqz v6, :cond_e

    .line 427
    .line 428
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 429
    .line 430
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :cond_e
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 434
    .line 435
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    const-string v11, "isPostLiveDvr"

    .line 440
    .line 441
    invoke-virtual {v6, v11}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_f

    .line 446
    .line 447
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 448
    .line 449
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_f
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 453
    .line 454
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 455
    .line 456
    :goto_3
    :try_start_0
    invoke-static {v5, v4}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->generate(ILjava/util/Random;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    iput-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsCpn:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v1, v4, v2, v3}, Lorg/jsoup/Jsoup;->getVisionOsPlayerResponse(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-static {v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-nez v5, :cond_10

    .line 471
    .line 472
    invoke-virtual {v4, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    iput-object v5, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->visionOsStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 477
    .line 478
    iget-object v5, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 479
    .line 480
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_10

    .line 485
    .line 486
    invoke-virtual {v4, v9}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v4, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    iput-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .line 496
    :catch_0
    :cond_10
    const-string/jumbo v4, "thumbnail"

    .line 497
    .line 498
    .line 499
    const-string/jumbo v5, "thumbnails"

    .line 500
    .line 501
    .line 502
    :try_start_1
    invoke-static {v3, v2, v1}, Lorg/jsoup/Jsoup;->getWebMetadataPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    invoke-static {v6, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    if-nez v8, :cond_12

    .line 511
    .line 512
    const-string v8, "microformat"

    .line 513
    .line 514
    invoke-virtual {v6, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    const-string v9, "playerMicroformatRenderer"

    .line 519
    .line 520
    invoke-virtual {v8, v9}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    iput-object v8, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 525
    .line 526
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-virtual {v6, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    invoke-virtual {v6, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    if-eqz v8, :cond_11

    .line 539
    .line 540
    invoke-virtual {v6, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    .line 545
    .line 546
    goto :goto_4

    .line 547
    :cond_11
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 548
    .line 549
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v6, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    invoke-virtual {v6, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    .line 563
    goto :goto_4

    .line 564
    :catch_1
    new-instance v6, Lcom/grack/nanojson/JsonObject;

    .line 565
    .line 566
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 567
    .line 568
    .line 569
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 570
    .line 571
    iget-object v6, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 572
    .line 573
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    invoke-virtual {v6, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    iput-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->thumbnailsArray:Lcom/grack/nanojson/JsonArray;

    .line 586
    .line 587
    :cond_12
    :goto_4
    invoke-static {v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    const-string/jumbo v4, "videoId"

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v1, "contentCheckOk"

    .line 598
    .line 599
    const/4 v4, 0x1

    .line 600
    invoke-virtual {v2, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 601
    .line 602
    .line 603
    const-string v1, "racyCheckOk"

    .line 604
    .line 605
    invoke-virtual {v2, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 606
    .line 607
    .line 608
    iget-object v1, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 611
    .line 612
    invoke-static {v1}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 617
    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v2, "next"

    .line 623
    .line 624
    invoke-static {v2, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 629
    .line 630
    return-void

    .line 631
    :cond_13
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 632
    .line 633
    const-string v1, "ANDROID player response is not valid"

    .line 634
    .line 635
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw v0
.end method
