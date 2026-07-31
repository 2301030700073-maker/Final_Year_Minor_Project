.class public final Lorg/schabi/newpipe/database/stream/model/StreamEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;


# instance fields
.field private duration:J

.field private isUploadDateApproximation:Ljava/lang/Boolean;

.field private serviceId:I

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:J

.field private uploadDate:Lj$/time/OffsetDateTime;

.field private uploader:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private viewCount:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->Companion:Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;I)V
    .locals 19

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p10

    :goto_0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p11

    :goto_1
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_2

    move-object/from16 v17, v2

    goto :goto_2

    :cond_2
    move-object/from16 v17, p12

    :goto_2
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    move-object/from16 v18, v2

    goto :goto_3

    :cond_3
    move-object/from16 v18, p13

    :goto_3
    const-wide/16 v4, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 102
    invoke-direct/range {v3 .. v18}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 105
    iput p3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 106
    iput-object p4, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 109
    iput-wide p7, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 110
    iput-object p9, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 111
    iput-object p10, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 112
    iput-object p11, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 113
    iput-object p12, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 114
    iput-object p13, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 115
    iput-object p14, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 116
    iput-object p15, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v12

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :cond_1
    move-object v13, v12

    const/4 v14, 0x1

    move-object v12, v0

    move-object v0, p0

    .line 123
    invoke-direct/range {v0 .. v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;I)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getTextualUploadDate()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v12, 0x0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object v0, v12

    .line 80
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    if-eqz v13, :cond_1

    .line 85
    .line 86
    invoke-virtual {v13}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation()Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    :cond_1
    move-object v13, v12

    .line 95
    const/4 v14, 0x1

    .line 96
    move-object v12, v0

    .line 97
    move-object v0, p0

    .line 98
    invoke-direct/range {v0 .. v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v1

    .line 125
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v5

    .line 129
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v14, 0x1e01

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    .line 132
    invoke-direct/range {v0 .. v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 23
    .line 24
    iget v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 52
    .line 53
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 59
    .line 60
    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 101
    .line 102
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 123
    .line 124
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 134
    .line 135
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUploadDate()Lj$/time/OffsetDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploader()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewCount()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 13
    .line 14
    add-int/2addr v0, v3

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v0

    .line 35
    mul-int/2addr v3, v1

    .line 36
    iget-wide v4, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 37
    .line 38
    ushr-long v6, v4, v2

    .line 39
    .line 40
    xor-long/2addr v4, v6

    .line 41
    long-to-int v0, v4

    .line 42
    add-int/2addr v3, v0

    .line 43
    mul-int/2addr v3, v1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    move v2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    :goto_0
    add-int/2addr v0, v2

    .line 62
    mul-int/2addr v0, v1

    .line 63
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    move v2, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_2
    add-int/2addr v0, v2

    .line 86
    mul-int/2addr v0, v1

    .line 87
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    move v2, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :goto_3
    add-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 100
    .line 101
    if-nez v2, :cond_4

    .line 102
    .line 103
    move v2, v3

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    invoke-virtual {v2}, Lj$/time/OffsetDateTime;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    :goto_4
    add-int/2addr v0, v2

    .line 110
    mul-int/2addr v0, v1

    .line 111
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 112
    .line 113
    if-nez p0, :cond_5

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    :goto_5
    add-int/2addr v0, v3

    .line 121
    return v0
.end method

.method public final isUploadDateApproximation()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadDate(Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadDateApproximation(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    new-instance v2, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 62
    .line 63
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p0, 0x0

    .line 73
    :goto_0
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v2, v1, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v2, 0x0

    .line 82
    :goto_1
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 4
    .line 5
    iget v3, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 6
    .line 7
    iget-object v4, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 12
    .line 13
    iget-wide v7, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 14
    .line 15
    iget-object v9, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v10, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v11, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v12, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 22
    .line 23
    iget-object v13, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v14, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 28
    .line 29
    new-instance v15, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    move-object/from16 p0, v0

    .line 32
    .line 33
    const-string v0, "StreamEntity(uid="

    .line 34
    .line 35
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", serviceId="

    .line 42
    .line 43
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ", url="

    .line 50
    .line 51
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", title="

    .line 58
    .line 59
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", streamType="

    .line 66
    .line 67
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", duration="

    .line 74
    .line 75
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", uploader="

    .line 82
    .line 83
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ", uploaderUrl="

    .line 90
    .line 91
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ", thumbnailUrl="

    .line 98
    .line 99
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, ", viewCount="

    .line 106
    .line 107
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ", textualUploadDate="

    .line 114
    .line 115
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ", uploadDate="

    .line 122
    .line 123
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, ", isUploadDateApproximation="

    .line 130
    .line 131
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    move-object/from16 v0, p0

    .line 135
    .line 136
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, ")"

    .line 140
    .line 141
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0
.end method
