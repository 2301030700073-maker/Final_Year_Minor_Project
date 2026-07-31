.class public final Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

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

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, -0x1

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 9
    .line 10
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 14
    .line 15
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    .line 23
    .line 24
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->AVAILABLE:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 27
    .line 28
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 2
    .line 3
    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShortDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortFormContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderVerified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setViewCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 8
    .line 9
    iget-wide v5, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 10
    .line 11
    iget-object v7, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 34
    .line 35
    new-instance v13, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v14, "StreamInfoItem{streamType="

    .line 38
    .line 39
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", uploaderName=\'"

    .line 46
    .line 47
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "\', textualUploadDate=\'"

    .line 54
    .line 55
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "\', viewCount="

    .line 62
    .line 63
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ", duration="

    .line 70
    .line 71
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, ", uploaderUrl=\'"

    .line 78
    .line 79
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "\', infoType="

    .line 86
    .line 87
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, ", serviceId="

    .line 94
    .line 95
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, ", url=\'"

    .line 102
    .line 103
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, "\', name=\'"

    .line 110
    .line 111
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, "\', thumbnails=\'"

    .line 118
    .line 119
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, "\', uploaderVerified=\'"

    .line 126
    .line 127
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p0, "\'}"

    .line 134
    .line 135
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0
.end method
