.class public final Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final creationTime:Lkotlin/time/Instant;

.field public final expiresAt:Lkotlin/time/Instant;

.field public final expiresIn:J

.field public final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lkotlin/time/Instant;J)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 5
    .line 6
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 7
    .line 8
    invoke-static {p3, p4, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p3, p4}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v5, v0, v3

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-wide v5, p2, Lkotlin/time/Instant;->epochSeconds:J

    .line 27
    .line 28
    add-long v7, v5, v0

    .line 29
    .line 30
    xor-long v9, v5, v7

    .line 31
    .line 32
    cmp-long v9, v9, v3

    .line 33
    .line 34
    if-gez v9, :cond_2

    .line 35
    .line 36
    xor-long/2addr v0, v5

    .line 37
    cmp-long v0, v0, v3

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    cmp-long v0, p3, v3

    .line 42
    .line 43
    if-lez v0, :cond_1

    .line 44
    .line 45
    sget-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v0, p2, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 52
    .line 53
    add-int/2addr v0, v2

    .line 54
    sget-object v1, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 55
    .line 56
    invoke-static {v0, v7, v8}, Lkotlin/time/InstantKt;->fromEpochSeconds(IJ)Lkotlin/time/Instant;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 70
    .line 71
    iput-object p2, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->creationTime:Lkotlin/time/Instant;

    .line 72
    .line 73
    iput-wide p3, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresIn:J

    .line 74
    .line 75
    iput-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 76
    .line 77
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
    instance-of v0, p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->creationTime:Lkotlin/time/Instant;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->creationTime:Lkotlin/time/Instant;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-wide v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresIn:J

    .line 34
    .line 35
    iget-wide v2, p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresIn:J

    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 45
    .line 46
    iget-object p1, p1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->creationTime:Lkotlin/time/Instant;

    .line 14
    .line 15
    invoke-virtual {v1}, Lkotlin/time/Instant;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-wide v2, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresIn:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/time/Duration;->hashCode-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 32
    .line 33
    invoke-virtual {p0}, Lkotlin/time/Instant;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v0

    .line 38
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresIn:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Entry(value="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", creationTime="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->creationTime:Lkotlin/time/Instant;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", expiresIn="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", expiresAt="

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ")"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
