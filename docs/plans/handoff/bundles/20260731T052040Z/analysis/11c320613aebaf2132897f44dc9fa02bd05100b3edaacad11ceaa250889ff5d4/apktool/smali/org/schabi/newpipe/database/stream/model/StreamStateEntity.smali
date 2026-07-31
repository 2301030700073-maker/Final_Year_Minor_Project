.class public final Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;


# instance fields
.field public final progressMillis:J

.field public final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->Companion:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 5
    .line 6
    iput-wide p3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 7
    .line 8
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
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

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
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

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
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 23
    .line 24
    iget-wide p0, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 25
    .line 26
    cmp-long p0, v3, p0

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

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
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 12
    .line 13
    ushr-long v1, v3, v2

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int p0, v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public final isFinished(J)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    mul-long/2addr v0, p1

    .line 4
    const-wide/32 v2, 0xea60

    .line 5
    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 9
    .line 10
    cmp-long p0, v2, v0

    .line 11
    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0xbb8

    .line 15
    .line 16
    mul-long/2addr p1, v0

    .line 17
    const-wide/16 v0, 0x4

    .line 18
    .line 19
    div-long/2addr p1, v0

    .line 20
    cmp-long p0, v2, p1

    .line 21
    .line 22
    if-ltz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final isValid(J)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 4
    .line 5
    cmp-long p0, v2, v0

    .line 6
    .line 7
    if-gtz p0, :cond_1

    .line 8
    .line 9
    const-wide/16 v0, 0x3e8

    .line 10
    .line 11
    mul-long/2addr p1, v0

    .line 12
    const-wide/16 v0, 0x4

    .line 13
    .line 14
    div-long/2addr p1, v0

    .line 15
    cmp-long p0, v2, p1

    .line 16
    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "StreamStateEntity(streamUid="

    .line 2
    .line 3
    const-string v1, ", progressMillis="

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 14
    .line 15
    invoke-static {v2, v3, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
