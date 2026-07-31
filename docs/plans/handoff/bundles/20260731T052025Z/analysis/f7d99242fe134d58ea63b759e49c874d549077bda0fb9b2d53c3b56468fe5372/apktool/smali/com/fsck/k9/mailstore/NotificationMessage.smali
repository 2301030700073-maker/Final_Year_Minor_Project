.class public final Lcom/fsck/k9/mailstore/NotificationMessage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final notificationId:Ljava/lang/Integer;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Integer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 9
    .line 10
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
    instance-of v0, p1, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

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
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 34
    .line 35
    iget-wide p0, p1, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 36
    .line 37
    cmp-long p0, v0, p0

    .line 38
    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    const/16 v1, 0x20

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 25
    .line 26
    ushr-long v4, v2, v1

    .line 27
    .line 28
    xor-long/2addr v2, v4

    .line 29
    long-to-int p0, v2

    .line 30
    add-int/2addr v0, p0

    .line 31
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationMessage(message="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", notificationId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
