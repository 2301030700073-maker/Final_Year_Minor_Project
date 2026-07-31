.class public final Lcom/fsck/k9/notification/BaseNotificationData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final accountName:Ljava/lang/String;

.field public final appearance:Lcom/fsck/k9/notification/NotificationAppearance;

.field public final color:I

.field public final groupKey:Ljava/lang/String;

.field public final lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

.field public final newMessagesCount:I


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Ljava/lang/String;IILcom/fsck/k9/notification/LockScreenNotificationData;Lcom/fsck/k9/notification/NotificationAppearance;)V
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
    iput-object p1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 14
    .line 15
    iput p5, p0, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 16
    .line 17
    iput-object p6, p0, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 20
    .line 21
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
    instance-of v0, p1, Lcom/fsck/k9/notification/BaseNotificationData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/notification/BaseNotificationData;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

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
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

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
    iget v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 45
    .line 46
    iget v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 47
    .line 48
    if-eq v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 52
    .line 53
    iget v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 59
    .line 60
    iget-object v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    iget-object p0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/NotificationAppearance;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_8

    .line 78
    .line 79
    :goto_0
    const/4 p0, 0x0

    .line 80
    return p0

    .line 81
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 82
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 25
    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget v2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget-object v2, p0, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v0

    .line 39
    mul-int/2addr v2, v1

    .line 40
    iget-object p0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/notification/NotificationAppearance;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v2

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BaseNotificationData(account="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", accountName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", groupKey="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", color="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", newMessagesCount="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", lockScreenNotificationData="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", appearance="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
