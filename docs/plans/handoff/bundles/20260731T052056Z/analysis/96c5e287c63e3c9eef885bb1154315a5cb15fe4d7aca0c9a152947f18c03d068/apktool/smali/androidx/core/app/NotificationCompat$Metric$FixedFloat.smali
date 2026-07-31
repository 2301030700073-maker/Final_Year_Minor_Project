.class public final Landroidx/core/app/NotificationCompat$Metric$FixedFloat;
.super Landroidx/core/app/NotificationCompat$Metric$MetricValue;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mMaxFractionDigits:I

.field public final mMinFractionDigits:I

.field public final mUnit:Ljava/lang/String;

.field public final mValue:F


# direct methods
.method public constructor <init>(FLjava/lang/String;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 5
    .line 6
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x6

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ltz p3, :cond_0

    .line 16
    .line 17
    if-gt p3, p1, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, p2

    .line 22
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-array v3, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v3, p2

    .line 29
    .line 30
    const-string v2, "Invalid minFractionDigits: %s"

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroidx/work/Operation$State;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    if-ltz p4, :cond_1

    .line 36
    .line 37
    if-gt p4, p1, :cond_1

    .line 38
    .line 39
    move p1, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p1, p2

    .line 42
    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-array v2, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v2, p2

    .line 49
    .line 50
    const-string v1, "Invalid maxFractionDigits: %s"

    .line 51
    .line 52
    invoke-static {p1, v1, v2}, Landroidx/work/Operation$State;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    if-gt p3, p4, :cond_2

    .line 56
    .line 57
    move p1, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move p1, p2

    .line 60
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x2

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v1, v3, p2

    .line 72
    .line 73
    aput-object v2, v3, v0

    .line 74
    .line 75
    const-string p2, "Invalid minFractionDigits/maxFractionDigits: %s/%s"

    .line 76
    .line 77
    invoke-static {p1, p2, v3}, Landroidx/work/Operation$State;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput p3, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 81
    .line 82
    iput p4, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

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
    check-cast p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

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
    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 14
    .line 15
    iget v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 16
    .line 17
    cmpl-float v2, v2, v3

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 32
    .line 33
    iget v3, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 38
    .line 39
    iget p1, p1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 40
    .line 41
    if-ne p0, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x4

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 27
    .line 28
    aput-object p0, v3, v0

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    aput-object v1, v3, p0

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    aput-object v2, v3, p0

    .line 35
    .line 36
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "unit"

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "minDigits"

    .line 18
    .line 19
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "maxDigits"

    .line 25
    .line 26
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-class v1, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "{mValue="

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mValue:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUnit="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mMinFractionDigits="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMinFractionDigits:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mMaxFractionDigits="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p0, p0, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 49
    .line 50
    const-string/jumbo v1, "}"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
