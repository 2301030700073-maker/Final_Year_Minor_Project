.class public final Lcom/fsck/k9/notification/NotificationData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final activeNotifications:Ljava/util/List;

.field public final inactiveNotifications:Ljava/util/List;

.field public final lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Ljava/util/List;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 17
    .line 18
    return-void
.end method

.method public static copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    and-int/lit8 v1, p3, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p3, Lcom/fsck/k9/notification/NotificationData;

    .line 24
    .line 25
    invoke-direct {p3, v0, p1, p2, p0}, Lcom/fsck/k9/notification/NotificationData;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Ljava/util/List;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 26
    .line 27
    .line 28
    return-object p3
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
    instance-of v0, p1, Lcom/fsck/k9/notification/NotificationData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/notification/NotificationData;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

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
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

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
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

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
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 47
    .line 48
    if-eq p0, p1, :cond_5

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final getMessageReferences()Lkotlin/collections/builders/ListBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    new-instance v1, Lkotlin/collections/builders/ListBuilder;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/fsck/k9/notification/NotificationHolder;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/fsck/k9/notification/InactiveNotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

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
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/2addr p0, v0

    .line 31
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationData(account="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", activeNotifications="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", inactiveNotifications="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", lockScreenNotificationVisibility="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

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
