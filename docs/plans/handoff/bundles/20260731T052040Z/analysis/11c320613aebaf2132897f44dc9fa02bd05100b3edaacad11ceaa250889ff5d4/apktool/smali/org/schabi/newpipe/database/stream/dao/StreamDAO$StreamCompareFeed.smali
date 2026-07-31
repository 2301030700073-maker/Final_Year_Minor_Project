.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public duration:J

.field public isUploadDateApproximation:Ljava/lang/Boolean;

.field public streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public textualUploadDate:Ljava/lang/String;

.field public uid:J

.field public uploadDate:Lj$/time/OffsetDateTime;


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
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

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
    check-cast p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 41
    .line 42
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 52
    .line 53
    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    .line 63
    .line 64
    iget-wide p0, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    .line 65
    .line 66
    cmp-long p0, v3, p0

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

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
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lj$/time/OffsetDateTime;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_1
    add-int/2addr v1, v0

    .line 45
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_2
    add-int/2addr v1, v3

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    .line 60
    .line 61
    ushr-long v5, v3, v2

    .line 62
    .line 63
    xor-long/2addr v3, v5

    .line 64
    long-to-int p0, v3

    .line 65
    add-int/2addr v1, p0

    .line 66
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    .line 2
    .line 3
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 4
    .line 5
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 8
    .line 9
    iget-object v5, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-wide v6, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v8, "StreamCompareFeed(uid="

    .line 16
    .line 17
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", streamType="

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", textualUploadDate="

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", uploadDate="

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", isUploadDateApproximation="

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", duration="

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ")"

    .line 61
    .line 62
    invoke-static {v6, v7, v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
