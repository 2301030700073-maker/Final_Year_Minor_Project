.class public final Lcom/fsck/k9/notification/NewMailNotificationData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

.field public final cancelNotificationIds:Ljava/util/List;

.field public final singleNotificationData:Ljava/util/List;

.field public final summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/fsck/k9/notification/BaseNotificationData;Ljava/util/List;Lcom/fsck/k9/notification/SummaryNotificationData;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

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
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/BaseNotificationData;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/fsck/k9/notification/BaseNotificationData;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    add-int/2addr v0, p0

    .line 35
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NewMailNotificationData(cancelNotificationIds="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", baseNotificationData="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", singleNotificationData="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", summaryNotificationData="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

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
