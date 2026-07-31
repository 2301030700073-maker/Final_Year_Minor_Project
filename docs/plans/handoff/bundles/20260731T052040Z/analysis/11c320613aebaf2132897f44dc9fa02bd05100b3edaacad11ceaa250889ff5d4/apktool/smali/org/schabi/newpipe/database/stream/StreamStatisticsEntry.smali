.class public final Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/database/LocalItem;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;


# instance fields
.field public final latestAccessDate:Lj$/time/OffsetDateTime;

.field public final progressMillis:J

.field public final streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field public final streamId:J

.field public final watchCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->Companion:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJLj$/time/OffsetDateTime;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 9
    .line 10
    iput-object p6, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 11
    .line 12
    iput-wide p7, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 23
    .line 24
    iget-wide v2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 32
    .line 33
    iget-wide v2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 41
    .line 42
    iget-object v1, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 52
    .line 53
    iget-wide p0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 54
    .line 55
    cmp-long p0, v0, p0

    .line 56
    .line 57
    if-eqz p0, :cond_6

    .line 58
    .line 59
    :goto_0
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public final getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 10
    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    ushr-long v4, v1, v3

    .line 14
    .line 15
    xor-long/2addr v1, v4

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 21
    .line 22
    ushr-long v4, v1, v3

    .line 23
    .line 24
    xor-long/2addr v1, v4

    .line 25
    long-to-int v1, v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 30
    .line 31
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    .line 38
    iget-wide v4, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 39
    .line 40
    ushr-long v2, v4, v3

    .line 41
    .line 42
    xor-long/2addr v2, v4

    .line 43
    long-to-int p0, v2

    .line 44
    add-int/2addr v1, p0

    .line 45
    return v1
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamStatisticsEntry(streamEntity="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", progressMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", streamId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", latestAccessDate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", watchCount="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
