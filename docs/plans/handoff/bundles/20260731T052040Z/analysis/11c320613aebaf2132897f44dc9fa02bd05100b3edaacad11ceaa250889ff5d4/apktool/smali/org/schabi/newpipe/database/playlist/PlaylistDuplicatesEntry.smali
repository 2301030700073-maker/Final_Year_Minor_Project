.class public final Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;
.super Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;


# instance fields
.field public displayIndex:Ljava/lang/Long;

.field public final isThumbnailPermanent:Ljava/lang/Boolean;

.field public final orderingName:Ljava/lang/String;

.field public final streamCount:J

.field public final thumbnailStreamId:Ljava/lang/Long;

.field public final thumbnailUrl:Ljava/lang/String;

.field public final timesStreamIsContained:J

.field public final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->Companion:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/String;J)V
    .locals 1

    .line 1
    move-object v0, p4

    .line 2
    move-object p4, p3

    .line 3
    move-object p3, p9

    .line 4
    move-wide p8, p7

    .line 5
    move-object p7, p5

    .line 6
    move-object p5, p6

    .line 7
    move-object p6, v0

    .line 8
    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 12
    .line 13
    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object p7, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 18
    .line 19
    iput-object p5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 20
    .line 21
    iput-wide p8, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 22
    .line 23
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 24
    .line 25
    iput-wide p10, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 26
    .line 27
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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

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
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 45
    .line 46
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 56
    .line 57
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 67
    .line 68
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 69
    .line 70
    cmp-long v1, v3, v5

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 87
    .line 88
    iget-wide p0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 89
    .line 90
    cmp-long p0, v3, p0

    .line 91
    .line 92
    if-eqz p0, :cond_9

    .line 93
    .line 94
    return v2

    .line 95
    :cond_9
    return v0
.end method

.method public final getDisplayIndex()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOrderingName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getThumbnailStreamId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

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
    const/4 v1, 0x0

    .line 12
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    move v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    :goto_0
    add-int/2addr v0, v3

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :goto_1
    add-int/2addr v0, v3

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move v3, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :goto_2
    add-int/2addr v0, v3

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move v3, v1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :goto_3
    add-int/2addr v0, v3

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 65
    .line 66
    ushr-long v5, v3, v2

    .line 67
    .line 68
    xor-long/2addr v3, v5

    .line 69
    long-to-int v3, v3

    .line 70
    add-int/2addr v0, v3

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_4
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 86
    .line 87
    ushr-long v1, v3, v2

    .line 88
    .line 89
    xor-long/2addr v1, v3

    .line 90
    long-to-int p0, v1

    .line 91
    add-int/2addr v0, p0

    .line 92
    return v0
.end method

.method public final isThumbnailPermanent()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDisplayIndex(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "PlaylistDuplicatesEntry(uid="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", thumbnailUrl="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", isThumbnailPermanent="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", thumbnailStreamId="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", displayIndex="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", streamCount="

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", orderingName="

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", timesStreamIsContained="

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ")"

    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
