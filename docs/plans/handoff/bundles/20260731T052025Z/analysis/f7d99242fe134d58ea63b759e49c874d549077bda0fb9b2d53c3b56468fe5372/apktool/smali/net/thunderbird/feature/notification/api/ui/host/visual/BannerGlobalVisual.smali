.class public final Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/ui/host/visual/InAppNotificationVisual;
.implements Ljava/lang/Comparable;


# instance fields
.field public final action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

.field public final message:Ljava/lang/String;

.field public final severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationSeverity;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const p0, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p0}, Ljava/lang/Integer;->compare(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 24
    .line 25
    iget-object v2, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 26
    .line 27
    if-eq v1, v2, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 31
    .line 32
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_4

    .line 39
    .line 40
    :goto_0
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_0
    add-int/2addr v1, p0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "NotificationPriority(value="

    .line 11
    .line 12
    const-string v2, ")"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "BannerGlobalVisual(message="

    .line 21
    .line 22
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ", severity="

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ", action="

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ", priority="

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
