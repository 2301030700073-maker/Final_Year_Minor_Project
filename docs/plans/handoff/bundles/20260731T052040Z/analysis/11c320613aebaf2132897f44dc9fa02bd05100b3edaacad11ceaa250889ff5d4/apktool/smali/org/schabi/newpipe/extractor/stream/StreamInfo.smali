.class public final Lorg/schabi/newpipe/extractor/stream/StreamInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private licence:Ljava/lang/String;

.field private likeCount:J

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private previewFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Frameset;",
            ">;"
        }
    .end annotation
.end field

.field private privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private shortFormContent:Z

.field private startPosition:J

.field private streamSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/StreamSegment;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation
.end field

.field private supportInfo:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderSubscriberCount:J

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method public static extractImportantData(Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getAgeLimit()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 22
    .line 23
    if-eq v6, v0, :cond_0

    .line 24
    .line 25
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    if-eq v7, v0, :cond_0

    .line 41
    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 43
    .line 44
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 45
    .line 46
    iget v1, v1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getOriginalUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 56
    .line 57
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    .line 58
    .line 59
    const-wide/16 v1, -0x1

    .line 60
    .line 61
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    .line 62
    .line 63
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 64
    .line 65
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 66
    .line 67
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 68
    .line 69
    const-string v3, ""

    .line 70
    .line 71
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    iput-boolean v4, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    .line 79
    .line 80
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    .line 81
    .line 82
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    .line 87
    .line 88
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 89
    .line 90
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 91
    .line 92
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 93
    .line 94
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 97
    .line 98
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    .line 99
    .line 100
    const-wide/16 v1, 0x0

    .line 101
    .line 102
    iput-wide v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 103
    .line 104
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 105
    .line 106
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    .line 116
    .line 117
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    .line 118
    .line 119
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    .line 120
    .line 121
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    .line 122
    .line 123
    iput-boolean v4, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    .line 124
    .line 125
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->AVAILABLE:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 126
    .line 127
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 128
    .line 129
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    .line 130
    .line 131
    iput-object v6, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 132
    .line 133
    iput v7, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 134
    .line 135
    const/4 p0, 0x1

    .line 136
    new-array p0, p0, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v0, p0, v4

    .line 139
    .line 140
    const-string v1, "Created {}"

    .line 141
    .line 142
    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 147
    .line 148
    const-string v0, "Some important stream information was not given."

    .line 149
    .line 150
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method public static extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getThumbnails()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLength()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUploaderName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_2
    move-exception v0

    .line 31
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUploaderUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :catch_3
    move-exception v0

    .line 42
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUploaderAvatars()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :catch_4
    move-exception v0

    .line 53
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->isUploaderVerified()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :catch_5
    move-exception v0

    .line 64
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUploaderSubscriberCount()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :catch_6
    move-exception v0

    .line 75
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubChannelName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 83
    .line 84
    goto :goto_7

    .line 85
    :catch_7
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubChannelUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 94
    .line 95
    goto :goto_8

    .line 96
    :catch_8
    move-exception v0

    .line 97
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubChannelAvatars()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 105
    .line 106
    goto :goto_9

    .line 107
    :catch_9
    move-exception v0

    .line 108
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 109
    .line 110
    .line 111
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 116
    .line 117
    goto :goto_a

    .line 118
    :catch_a
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 120
    .line 121
    .line 122
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getViewCount()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 127
    .line 128
    goto :goto_b

    .line 129
    :catch_b
    move-exception v0

    .line 130
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 131
    .line 132
    .line 133
    :goto_b
    :try_start_c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTextualUploadDate()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 138
    .line 139
    goto :goto_c

    .line 140
    :catch_c
    move-exception v0

    .line 141
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 142
    .line 143
    .line 144
    :goto_c
    :try_start_d
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 149
    .line 150
    goto :goto_d

    .line 151
    :catch_d
    move-exception v0

    .line 152
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    :goto_d
    :try_start_e
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTimeStamp()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 160
    .line 161
    goto :goto_e

    .line 162
    :catch_e
    move-exception v0

    .line 163
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 164
    .line 165
    .line 166
    :goto_e
    :try_start_f
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLikeCount()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 171
    .line 172
    goto :goto_f

    .line 173
    :catch_f
    move-exception v0

    .line 174
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    :goto_f
    :try_start_10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getDislikeCount()J

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 182
    .line 183
    goto :goto_10

    .line 184
    :catch_10
    move-exception v0

    .line 185
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 186
    .line 187
    .line 188
    :goto_10
    :try_start_11
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubtitlesDefault()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 193
    .line 194
    goto :goto_11

    .line 195
    :catch_11
    move-exception v0

    .line 196
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 197
    .line 198
    .line 199
    :goto_11
    :try_start_12
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getHost()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 204
    .line 205
    goto :goto_12

    .line 206
    :catch_12
    move-exception v0

    .line 207
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 208
    .line 209
    .line 210
    :goto_12
    :try_start_13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 215
    .line 216
    goto :goto_13

    .line 217
    :catch_13
    move-exception v0

    .line 218
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 219
    .line 220
    .line 221
    :goto_13
    :try_start_14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getCategory()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 226
    .line 227
    goto :goto_14

    .line 228
    :catch_14
    move-exception v0

    .line 229
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 230
    .line 231
    .line 232
    :goto_14
    :try_start_15
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLicence()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 237
    .line 238
    goto :goto_15

    .line 239
    :catch_15
    move-exception v0

    .line 240
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 241
    .line 242
    .line 243
    :goto_15
    :try_start_16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLanguageInfo()Ljava/util/Locale;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 248
    .line 249
    goto :goto_16

    .line 250
    :catch_16
    move-exception v0

    .line 251
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 252
    .line 253
    .line 254
    :goto_16
    :try_start_17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTags()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 259
    .line 260
    goto :goto_17

    .line 261
    :catch_17
    move-exception v0

    .line 262
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 263
    .line 264
    .line 265
    :goto_17
    :try_start_18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSupportInfo()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 270
    .line 271
    goto :goto_18

    .line 272
    :catch_18
    move-exception v0

    .line 273
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 274
    .line 275
    .line 276
    :goto_18
    :try_start_19
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getStreamSegments()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 281
    .line 282
    goto :goto_19

    .line 283
    :catch_19
    move-exception v0

    .line 284
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 285
    .line 286
    .line 287
    :goto_19
    :try_start_1a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getMetaInfo()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 292
    .line 293
    goto :goto_1a

    .line 294
    :catch_1a
    move-exception v0

    .line 295
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 296
    .line 297
    .line 298
    :goto_1a
    :try_start_1b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getFrames()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 303
    .line 304
    goto :goto_1b

    .line 305
    :catch_1b
    move-exception v0

    .line 306
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 307
    .line 308
    .line 309
    :goto_1b
    const/4 v0, 0x0

    .line 310
    :try_start_1c
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 311
    .line 312
    goto :goto_1c

    .line 313
    :catch_1c
    move-exception v0

    .line 314
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 315
    .line 316
    .line 317
    :goto_1c
    :try_start_1d
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->UNKNOWN:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 318
    .line 319
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 320
    .line 321
    goto :goto_1d

    .line 322
    :catch_1d
    move-exception v0

    .line 323
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 324
    .line 325
    .line 326
    :goto_1d
    :try_start_1e
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    if-nez p1, :cond_0

    .line 331
    .line 332
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 333
    .line 334
    goto :goto_1f

    .line 335
    :catch_1e
    move-exception p1

    .line 336
    goto :goto_1e

    .line 337
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/List;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 348
    goto :goto_1f

    .line 349
    :goto_1e
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 350
    .line 351
    .line 352
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 353
    .line 354
    :goto_1f
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    .line 355
    .line 356
    return-void
.end method

.method public static extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getDashMpdUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 10
    .line 11
    const-string v2, "Couldn\'t get DASH manifest"

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getHlsUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_1
    move-exception v0

    .line 27
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 28
    .line 29
    const-string v2, "Couldn\'t get HLS manifest"

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getAudioStreams()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catch_2
    move-exception v0

    .line 45
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 46
    .line 47
    const-string v2, "Couldn\'t get audio streams"

    .line 48
    .line 49
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getVideoStreams()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :catch_3
    move-exception v0

    .line 63
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 64
    .line 65
    const-string v2, "Couldn\'t get video streams"

    .line 66
    .line 67
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getVideoOnlyStreams()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :catch_4
    move-exception p1

    .line 81
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 82
    .line 83
    const-string v1, "Couldn\'t get video only streams"

    .line 84
    .line 85
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_0

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;

    .line 125
    .line 126
    const-string p1, "Could not get any stream. See error variable to get further details."

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_1
    :goto_5
    return-void

    .line 133
    :catch_5
    move-exception p0

    .line 134
    throw p0
.end method


# virtual methods
.method public final getAgeLimit()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAudioStreams()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDashMpdUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDislikeCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHlsUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLanguageInfo()Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLicence()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLikeCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMetaInfo()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreviewFrames()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRelatedItems()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStreamSegments()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubChannelAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubChannelName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubChannelUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubtitles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSupportInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThumbnails()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderSubscriberCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoOnlyStreams()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoStreams()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setStartPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 22
    .line 23
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v7, "StreamInfo[serviceId="

    .line 28
    .line 29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", url=\'"

    .line 36
    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "\', originalUrl=\'"

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "\', id=\'"

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "\', name=\'"

    .line 60
    .line 61
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "\', streamType="

    .line 68
    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", ageLimit="

    .line 76
    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "]"

    .line 81
    .line 82
    invoke-static {v6, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
