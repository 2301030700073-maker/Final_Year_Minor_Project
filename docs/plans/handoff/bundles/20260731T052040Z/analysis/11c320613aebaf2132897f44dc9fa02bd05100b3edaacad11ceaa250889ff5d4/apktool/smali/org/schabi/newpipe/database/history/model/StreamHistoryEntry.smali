.class public final Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final accessDate:Lj$/time/OffsetDateTime;

.field public final repeatCount:J

.field public final streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field public final streamId:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    .line 11
    .line 12
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
    instance-of v0, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

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
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 23
    .line 24
    iget-wide v2, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

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
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 32
    .line 33
    iget-object v1, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    .line 43
    .line 44
    iget-wide p0, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    .line 45
    .line 46
    cmp-long p0, v0, p0

    .line 47
    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

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
    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 21
    .line 22
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    mul-int/lit8 v1, v1, 0x1f

    .line 28
    .line 29
    iget-wide v4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    .line 30
    .line 31
    ushr-long v2, v4, v3

    .line 32
    .line 33
    xor-long/2addr v2, v4

    .line 34
    long-to-int p0, v2

    .line 35
    add-int/2addr v1, p0

    .line 36
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamHistoryEntry(streamEntity="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", streamId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accessDate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", repeatCount="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ")"

    .line 39
    .line 40
    iget-wide v2, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    .line 41
    .line 42
    invoke-static {v2, v3, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
