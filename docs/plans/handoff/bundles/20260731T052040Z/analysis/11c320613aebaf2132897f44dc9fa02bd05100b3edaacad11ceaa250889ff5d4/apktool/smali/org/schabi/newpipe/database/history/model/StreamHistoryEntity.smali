.class public final Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;


# instance fields
.field public accessDate:Lj$/time/OffsetDateTime;

.field public repeatCount:J

.field public final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->Companion:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JLj$/time/OffsetDateTime;J)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 8
    .line 9
    iput-object p3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 10
    .line 11
    iput-wide p4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 12
    .line 13
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
    instance-of v1, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

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
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

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
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 34
    .line 35
    iget-wide p0, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 36
    .line 37
    cmp-long p0, v3, p0

    .line 38
    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 12
    .line 13
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

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
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 21
    .line 22
    ushr-long v5, v3, v2

    .line 23
    .line 24
    xor-long/2addr v3, v5

    .line 25
    long-to-int p0, v3

    .line 26
    add-int/2addr v1, p0

    .line 27
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v4, "StreamHistoryEntity(streamUid="

    .line 8
    .line 9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 13
    .line 14
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ", accessDate="

    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, ", repeatCount="

    .line 26
    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
