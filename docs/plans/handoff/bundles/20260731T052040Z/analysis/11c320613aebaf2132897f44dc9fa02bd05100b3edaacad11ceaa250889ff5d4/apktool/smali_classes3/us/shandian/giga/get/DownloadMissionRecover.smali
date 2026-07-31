.class public final Lus/shandian/giga/get/DownloadMissionRecover;
.super Ljava/lang/Thread;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mConn:Ljava/net/HttpURLConnection;

.field public final mErrCode:I

.field public mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

.field public final mMission:Lus/shandian/giga/get/DownloadMission;

.field public final mNotInitialized:Z

.field public mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;


# direct methods
.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 5
    .line 6
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    .line 18
    .line 19
    iput p2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    .line 20
    .line 21
    return-void
.end method

.method public static parseContentRange(Ljava/lang/String;)[J
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "bytes"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    add-int/2addr v1, v2

    .line 28
    const/16 v3, 0x2d

    .line 29
    .line 30
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/lit8 v4, v3, 0x1

    .line 35
    .line 36
    const/16 v5, 0x2f

    .line 37
    .line 38
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    const/4 v1, 0x0

    .line 51
    aput-wide v6, v0, v1

    .line 52
    .line 53
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    aput-wide v3, v0, v2

    .line 62
    .line 63
    add-int/2addr v5, v2

    .line 64
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "*"

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x2

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    const-wide/16 v3, -0x1

    .line 78
    .line 79
    aput-wide v3, v0, v2

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    aput-wide v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    :catch_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_1
    move-exception v1

    .line 22
    :try_start_2
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 25
    .line 26
    .line 27
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :goto_0
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    throw v1

    .line 31
    :catch_0
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 32
    .line 33
    return-void
.end method

.method public final interrupt()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final recover(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 2
    .line 3
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "recover()  name="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "  isStale="

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "  url="

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "DownloadMissionRecover"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 45
    .line 46
    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 47
    .line 48
    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 49
    .line 50
    aput-object p1, v1, v2

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    new-array p0, v1, [Ljava/lang/String;

    .line 56
    .line 57
    iput-object p0, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 58
    .line 59
    const/16 p0, 0x3f5

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {v0, p0, p1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    iget-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p2, :cond_2

    .line 72
    .line 73
    const/4 p1, -0x1

    .line 74
    invoke-virtual {v0, p1, v1, v1}, Lus/shandian/giga/get/DownloadMission;->resetState(IZZ)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 78
    .line 79
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 83
    .line 84
    iget-boolean p1, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 96
    .line 97
    iput-boolean v1, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 98
    .line 99
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 100
    .line 101
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    return-void
.end method

.method public final resolveStream()V
    .locals 11

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getKind()C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x61

    .line 8
    .line 9
    sget-object v2, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v1, :cond_6

    .line 13
    .line 14
    const/16 v1, 0x73

    .line 15
    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    const/16 v1, 0x76

    .line 19
    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getVideoOnlyStreams()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getVideoStreams()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 56
    .line 57
    iget-object v4, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 60
    .line 61
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 76
    .line 77
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-ne v4, v5, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-ne v4, v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :cond_2
    :goto_1
    move-object v8, v3

    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    const-string p0, "Unknown stream type"

    .line 97
    .line 98
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 103
    .line 104
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 105
    .line 106
    invoke-virtual {v1}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 129
    .line 130
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 135
    .line 136
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 151
    .line 152
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-ne v4, v5, :cond_5

    .line 157
    .line 158
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-ne v4, v2, :cond_5

    .line 163
    .line 164
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 170
    .line 171
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getAudioStreams()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_2

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 190
    .line 191
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 196
    .line 197
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesiredBitrate()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-ne v4, v5, :cond_7

    .line 202
    .line 203
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    iget-object v5, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 208
    .line 209
    invoke-virtual {v5}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-ne v4, v5, :cond_7

    .line 214
    .line 215
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    if-ne v4, v2, :cond_7

    .line 220
    .line 221
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :goto_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 228
    .line 229
    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-nez v0, :cond_8

    .line 234
    .line 235
    const-string v0, "DownloadMissionRecover"

    .line 236
    .line 237
    const-string v1, "validation condition not defined, the resource can be stale"

    .line 238
    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 243
    .line 244
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    if-nez v1, :cond_e

    .line 248
    .line 249
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 250
    .line 251
    invoke-virtual {v1}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-nez v1, :cond_9

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_9
    :try_start_0
    iget-wide v6, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 259
    .line 260
    const-wide/16 v3, 0xa

    .line 261
    .line 262
    sub-long v3, v6, v3

    .line 263
    .line 264
    const/4 v9, 0x1

    .line 265
    move-wide v4, v3

    .line 266
    invoke-static/range {v4 .. v9}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 271
    .line 272
    const-string v3, "If-Range"

    .line 273
    .line 274
    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 275
    .line 276
    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 284
    .line 285
    invoke-static {v1}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    const/16 v3, 0xc8

    .line 295
    .line 296
    const/4 v4, 0x1

    .line 297
    if-eq v1, v3, :cond_d

    .line 298
    .line 299
    const/16 v3, 0xce

    .line 300
    .line 301
    if-eq v1, v3, :cond_b

    .line 302
    .line 303
    const/16 v0, 0x19d

    .line 304
    .line 305
    if-ne v1, v0, :cond_a

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_a
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 309
    .line 310
    invoke-direct {v0, v1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    goto :goto_4

    .line 316
    :cond_b
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 317
    .line 318
    const-string v3, "Content-Range"

    .line 319
    .line 320
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v1}, Lus/shandian/giga/get/DownloadMissionRecover;->parseContentRange(Ljava/lang/String;)[J

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const/4 v3, 0x2

    .line 329
    aget-wide v5, v1, v3

    .line 330
    .line 331
    const-wide/16 v9, -0x1

    .line 332
    .line 333
    cmp-long v1, v5, v9

    .line 334
    .line 335
    if-eqz v1, :cond_c

    .line 336
    .line 337
    iget-wide v0, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 338
    .line 339
    cmp-long v0, v5, v0

    .line 340
    .line 341
    if-eqz v0, :cond_c

    .line 342
    .line 343
    move v2, v4

    .line 344
    :cond_c
    invoke-virtual {p0, v8, v2}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_d
    :goto_3
    :try_start_1
    invoke-virtual {p0, v8, v4}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :goto_4
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_e
    :goto_5
    invoke-virtual {p0, v8, v2}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 2
    .line 3
    iget-object v1, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 18
    .line 19
    iget v4, v3, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 20
    .line 21
    if-ge v0, v4, :cond_3

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->tryRecover()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v2

    .line 28
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 29
    .line 30
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    :cond_2
    :goto_1
    return-void

    .line 44
    :cond_3
    iget p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    .line 45
    .line 46
    invoke-virtual {v3, p0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final test()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 2
    .line 3
    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 6
    .line 7
    aget-object v7, v1, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-wide/16 v3, -0x1

    .line 14
    .line 15
    const-wide/16 v5, -0x1

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    :try_start_0
    invoke-static/range {v3 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/16 v2, 0xc8

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :catch_0
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 55
    .line 56
    .line 57
    return v1
.end method

.method public final tryRecover()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 7
    .line 8
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 15
    .line 16
    iget-object v2, v2, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lokhttp3/Cookie$Companion;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, v2}, Lokhttp3/Cookie$Companion;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 41
    .line 42
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 43
    .line 44
    if-eqz v0, :cond_9

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 59
    .line 60
    iget-object v2, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 61
    .line 62
    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 63
    .line 64
    aput-object v1, v2, v3

    .line 65
    .line 66
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 67
    .line 68
    aget-object v0, v0, v3

    .line 69
    .line 70
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 71
    .line 72
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string v0, "DownloadMissionRecover"

    .line 77
    .line 78
    const-string v1, "mission is not fully initialized, this will take a while"

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    const/4 v0, 0x0

    .line 84
    :try_start_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 85
    .line 86
    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 87
    .line 88
    iget-object v3, v1, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 89
    .line 90
    array-length v3, v3

    .line 91
    if-ge v2, v3, :cond_7

    .line 92
    .line 93
    iget-object v1, v1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 94
    .line 95
    aget-object v1, v1, v2

    .line 96
    .line 97
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 98
    .line 99
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->test()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 107
    .line 108
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    if-nez v1, :cond_4

    .line 111
    .line 112
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 113
    .line 114
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 121
    .line 122
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 125
    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    iput v0, v2, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    :try_start_3
    iget-object v1, v2, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 132
    .line 133
    iget v2, v2, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 134
    .line 135
    aget-object v1, v1, v2

    .line 136
    .line 137
    if-nez v1, :cond_6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    :goto_2
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 141
    .line 142
    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    iput v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception v1

    .line 150
    goto :goto_4

    .line 151
    :cond_7
    :goto_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 152
    .line 153
    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 154
    .line 155
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 159
    .line 160
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 161
    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 172
    .line 173
    iput-boolean v0, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 174
    .line 175
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 176
    .line 177
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_4
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 182
    .line 183
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 184
    .line 185
    throw v1

    .line 186
    :cond_9
    :goto_5
    return-void
.end method
