.class public final Landroidx/glance/session/TimeoutOptions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final additionalTime:J

.field public final idleTimeout:J

.field public final initialTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 4
    .line 5
    const/16 v1, 0x2d

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-static {v3, v0}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-static {v3, v0}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-wide v1, p0, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 24
    .line 25
    iput-wide v4, p0, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 26
    .line 27
    iput-wide v6, p0, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/glance/session/TimeoutOptions;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    check-cast p1, Landroidx/glance/session/TimeoutOptions;

    .line 11
    .line 12
    iget-wide v2, p1, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 13
    .line 14
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 15
    .line 16
    iget-wide v4, p0, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 17
    .line 18
    cmp-long v0, v4, v2

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-wide v2, p0, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 23
    .line 24
    iget-wide v4, p1, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 25
    .line 26
    cmp-long v0, v2, v4

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-wide v2, p0, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 31
    .line 32
    iget-wide p0, p1, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 33
    .line 34
    cmp-long p0, v2, p0

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    :goto_0
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    ushr-long v3, v0, v2

    .line 8
    .line 9
    xor-long/2addr v0, v3

    .line 10
    long-to-int v0, v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 14
    .line 15
    ushr-long v5, v3, v2

    .line 16
    .line 17
    xor-long/2addr v3, v5

    .line 18
    long-to-int v1, v3

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 23
    .line 24
    ushr-long v5, v3, v2

    .line 25
    .line 26
    xor-long/2addr v3, v5

    .line 27
    long-to-int p0, v3

    .line 28
    add-int/2addr p0, v1

    .line 29
    mul-int/lit8 p0, p0, 0x1f

    .line 30
    .line 31
    sget-object v0, Landroidx/glance/session/TimeSource$Companion;->Monotonic:Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, p0

    .line 38
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimeoutOptions(initialTimeout="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/glance/session/TimeoutOptions;->initialTimeout:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", additionalTime="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", idleTimeout="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ", timeSource="

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object p0, Landroidx/glance/session/TimeSource$Companion;->Monotonic:Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 p0, 0x29

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
