.class public final Lnet/thunderbird/feature/notification/NotificationSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isRingEnabled:Z

.field public final light:Lnet/thunderbird/feature/notification/NotificationLight;

.field public final ringtone:Ljava/lang/String;

.field public final vibration:Lnet/thunderbird/feature/notification/NotificationVibration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/NotificationVibration;->DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 17
    .line 18
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;I)Lnet/thunderbird/feature/notification/NotificationSettings;
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    and-int/lit8 v1, p4, 0x2

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    and-int/lit8 v1, p4, 0x4

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object p2, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 20
    .line 21
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 22
    .line 23
    if-eqz p4, :cond_3

    .line 24
    .line 25
    iget-object p3, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 26
    .line 27
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p0, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 37
    .line 38
    invoke-direct {p0, v0, p1, p2, p3}, Lnet/thunderbird/feature/notification/NotificationSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;

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
    check-cast p1, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 12
    .line 13
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 32
    .line 33
    iget-object v3, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 39
    .line 40
    iget-object p1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 41
    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_1
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 35
    .line 36
    invoke-virtual {p0}, Lnet/thunderbird/feature/notification/NotificationVibration;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v1

    .line 41
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationSettings(isRingEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ringtone="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", light="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", vibration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
