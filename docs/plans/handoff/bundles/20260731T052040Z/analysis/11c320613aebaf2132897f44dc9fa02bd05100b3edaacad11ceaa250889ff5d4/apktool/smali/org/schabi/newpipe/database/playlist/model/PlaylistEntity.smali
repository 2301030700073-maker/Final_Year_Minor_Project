.class public final Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;


# instance fields
.field public final displayIndex:J

.field public isThumbnailPermanent:Z

.field public name:Ljava/lang/String;

.field public thumbnailStreamId:J

.field public final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 11
    .line 12
    iput-wide p7, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 13
    .line 14
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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

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
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

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
    iget-boolean v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 34
    .line 35
    iget-boolean v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 41
    .line 42
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 50
    .line 51
    iget-wide p0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 52
    .line 53
    cmp-long p0, v3, p0

    .line 54
    .line 55
    if-eqz p0, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x4cf

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v1, 0x4d5

    .line 32
    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 37
    .line 38
    ushr-long v5, v3, v2

    .line 39
    .line 40
    xor-long/2addr v3, v5

    .line 41
    long-to-int v1, v3

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 46
    .line 47
    ushr-long v1, v3, v2

    .line 48
    .line 49
    xor-long/2addr v1, v3

    .line 50
    long-to-int p0, v1

    .line 51
    add-int/2addr v0, p0

    .line 52
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v5, "PlaylistEntity(uid="

    .line 10
    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-wide v5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 15
    .line 16
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v5, ", name="

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", isThumbnailPermanent="

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", thumbnailStreamId="

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", displayIndex="

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 49
    .line 50
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
