.class public final Lcom/fsck/k9/notification/SummaryInboxNotificationData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/notification/SummaryNotificationData;


# instance fields
.field public final actions:Ljava/util/List;

.field public final additionalMessagesCount:I

.field public final content:Ljava/util/List;

.field public final isSilent:Z

.field public final messageReferences:Ljava/util/ArrayList;

.field public final notificationId:I

.field public final timestamp:J

.field public final wearActions:Ljava/util/List;


# direct methods
.method public constructor <init>(IZJLjava/util/List;ILjava/util/ArrayList;Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V
    .locals 0

    .line 1
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

    .line 13
    .line 14
    iput-wide p3, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

    .line 15
    .line 16
    iput-object p5, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 17
    .line 18
    iput p6, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 19
    .line 20
    iput-object p7, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p8, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 23
    .line 24
    iput-object p9, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 25
    .line 26
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
    instance-of v0, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;

    .line 10
    .line 11
    iget v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

    .line 12
    .line 13
    iget v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-wide v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

    .line 26
    .line 27
    iget-wide v2, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

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
    iget-object v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 46
    .line 47
    iget v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 48
    .line 49
    if-eq v0, v1, :cond_6

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 53
    .line 54
    iget-object v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_7

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_8

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_8
    iget-object p0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_9

    .line 83
    .line 84
    :goto_0
    const/4 p0, 0x0

    .line 85
    return p0

    .line 86
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 87
    return p0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-boolean v2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x4cf

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v2, 0x4d5

    .line 14
    .line 15
    :goto_0
    add-int/2addr v0, v2

    .line 16
    mul-int/2addr v0, v1

    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    iget-wide v3, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

    .line 20
    .line 21
    ushr-long v5, v3, v2

    .line 22
    .line 23
    xor-long/2addr v3, v5

    .line 24
    long-to-int v2, v3

    .line 25
    add-int/2addr v0, v2

    .line 26
    mul-int/2addr v0, v1

    .line 27
    iget-object v2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-object v2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v2, v0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object p0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    add-int/2addr p0, v0

    .line 56
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SummaryInboxNotificationData(notificationId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

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
    iget-boolean v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

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
    iget-wide v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

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
    iget-object v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", additionalMessagesCount="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", messageReferences="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", actions="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", wearActions="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ")"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
