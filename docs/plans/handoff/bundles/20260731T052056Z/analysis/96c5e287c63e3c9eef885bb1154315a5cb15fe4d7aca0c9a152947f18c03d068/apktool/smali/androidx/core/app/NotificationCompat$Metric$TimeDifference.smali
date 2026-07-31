.class public final Landroidx/core/app/NotificationCompat$Metric$TimeDifference;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mCountDown:Z

.field public final mFormat:I

.field public final mPausedDuration:Lj$/time/Duration;

.field public final mZeroElapsedRealtime:Ljava/lang/Long;

.field public final mZeroTime:Lj$/time/Instant;


# direct methods
.method public constructor <init>(Lj$/time/Instant;Ljava/lang/Long;Lj$/time/Duration;ZI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v3, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v3, v0

    .line 16
    :goto_1
    add-int/2addr v2, v3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    move v3, v1

    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move v3, v0

    .line 22
    :goto_2
    add-int/2addr v2, v3

    .line 23
    if-ne v2, v1, :cond_3

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_3

    .line 27
    :cond_3
    move v2, v0

    .line 28
    :goto_3
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p1, v3, v0

    .line 32
    .line 33
    aput-object p2, v3, v1

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    aput-object p3, v3, v4

    .line 37
    .line 38
    const-string v5, "Exactly one of zeroTime, zeroElapsedRealtime, or pausedDuration must be present; received %s,%s,%s"

    .line 39
    .line 40
    invoke-static {v2, v5, v3}, Landroidx/work/Operation$State;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-lt p5, v1, :cond_4

    .line 44
    .line 45
    if-gt p5, v4, :cond_4

    .line 46
    .line 47
    move v2, v1

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    move v2, v0

    .line 50
    :goto_4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v3, v1, v0

    .line 57
    .line 58
    const-string v0, "Invalid format: %s"

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, Landroidx/work/Operation$State;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 64
    .line 65
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 66
    .line 67
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 68
    .line 69
    iput-boolean p4, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 70
    .line 71
    iput p5, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, p1, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 16
    .line 17
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 50
    .line 51
    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 52
    .line 53
    if-ne p0, p1, :cond_2

    .line 54
    .line 55
    return v0

    .line 56
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x5

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 18
    .line 19
    aput-object v4, v2, v3

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 23
    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 28
    .line 29
    aput-object p0, v2, v3

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    aput-object v0, v2, p0

    .line 33
    .line 34
    const/4 p0, 0x4

    .line 35
    aput-object v1, v2, p0

    .line 36
    .line 37
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final toBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v1, "zeroTime"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string/jumbo v1, "zeroElapsedRealtime"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v1, "pausedDuration"

    .line 36
    .line 37
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    const-string v0, "countDown"

    .line 45
    .line 46
    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v0, "format"

    .line 52
    .line 53
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimeDifference{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroTime:Lj$/time/Instant;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v2, "mZeroTime="

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mZeroElapsedRealtime:Ljava/lang/Long;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v2, "mZeroElapsedRealtime="

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mPausedDuration:Lj$/time/Duration;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "mPausedDuration="

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    const-string v1, ", mCountDown="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mCountDown:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", mFormat="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;->mFormat:I

    .line 62
    .line 63
    const-string/jumbo v1, "}"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
