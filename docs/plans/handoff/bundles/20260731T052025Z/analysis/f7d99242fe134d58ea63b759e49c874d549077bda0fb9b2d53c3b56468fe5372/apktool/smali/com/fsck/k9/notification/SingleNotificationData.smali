.class public final Lcom/fsck/k9/notification/SingleNotificationData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actions:Ljava/util/ArrayList;

.field public final addLockScreenNotification:Z

.field public final content:Lcom/fsck/k9/notification/NotificationContent;

.field public final isSilent:Z

.field public final notificationId:I

.field public final timestamp:J

.field public final wearActions:Ljava/util/List;


# direct methods
.method public constructor <init>(IZJLcom/fsck/k9/notification/NotificationContent;Ljava/util/ArrayList;Lkotlin/collections/builders/ListBuilder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 12
    .line 13
    iput-object p5, p0, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 18
    .line 19
    iput-boolean p8, p0, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 20
    .line 21
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
    instance-of v0, p1, Lcom/fsck/k9/notification/SingleNotificationData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/notification/SingleNotificationData;

    .line 10
    .line 11
    iget v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 12
    .line 13
    iget v1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-wide v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 26
    .line 27
    iget-wide v2, p1, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationContent;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_7

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_7
    iget-boolean p0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 68
    .line 69
    iget-boolean p1, p1, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 70
    .line 71
    if-eq p0, p1, :cond_8

    .line 72
    .line 73
    :goto_0
    const/4 p0, 0x0

    .line 74
    return p0

    .line 75
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 76
    return p0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-boolean v2, p0, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 7
    .line 8
    const/16 v3, 0x4d5

    .line 9
    .line 10
    const/16 v4, 0x4cf

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    iget-wide v5, p0, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 22
    .line 23
    ushr-long v7, v5, v2

    .line 24
    .line 25
    xor-long/2addr v5, v7

    .line 26
    long-to-int v2, v5

    .line 27
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/fsck/k9/notification/NotificationContent;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v0

    .line 36
    mul-int/2addr v2, v1

    .line 37
    iget-object v0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-boolean p0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    move v3, v4

    .line 54
    :cond_1
    add-int/2addr v0, v3

    .line 55
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SingleNotificationData(notificationId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isSilent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", timestamp="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", content="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", actions="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", wearActions="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", addLockScreenNotification="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean p0, p0, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
