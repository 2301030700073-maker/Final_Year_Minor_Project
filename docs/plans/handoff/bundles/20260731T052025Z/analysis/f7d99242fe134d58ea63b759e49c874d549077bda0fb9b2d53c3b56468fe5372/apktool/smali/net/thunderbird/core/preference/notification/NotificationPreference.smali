.class public final Lnet/thunderbird/core/preference/notification/NotificationPreference;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isNotificationDuringQuietTimeEnabled:Z

.field public final isQuietTimeEnabled:Z

.field public final isShowContactPictureInNotification:Z

.field public final isSummaryDeleteActionEnabled:Z

.field public final lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

.field public final messageActionsCutoff:I

.field public final messageActionsOrder:Ljava/util/List;

.field public final notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

.field public final quietTimeEnds:Ljava/lang/String;

.field public final quietTimeStarts:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;IZZLnet/thunderbird/core/preference/NotificationQuickDelete;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-boolean p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 14
    .line 15
    iput-object p2, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 20
    .line 21
    iput-object p5, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 22
    .line 23
    iput p6, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 24
    .line 25
    iput-boolean p7, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 26
    .line 27
    iput-boolean p8, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 28
    .line 29
    iput-object p9, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 30
    .line 31
    iput-object p10, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 32
    .line 33
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/preference/notification/NotificationPreference;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;IZZLnet/thunderbird/core/preference/LockScreenNotificationVisibility;I)Lnet/thunderbird/core/preference/notification/NotificationPreference;
    .locals 11

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 8
    .line 9
    :cond_0
    move v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    move-object v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p3, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 22
    .line 23
    :cond_2
    move-object v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-boolean p4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 29
    .line 30
    :cond_3
    move v4, p4

    .line 31
    and-int/lit8 p1, v0, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 36
    .line 37
    move-object v5, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    move-object/from16 v5, p5

    .line 40
    .line 41
    :goto_0
    and-int/lit8 p1, v0, 0x20

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 46
    .line 47
    move v6, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    move/from16 v6, p6

    .line 50
    .line 51
    :goto_1
    and-int/lit8 p1, v0, 0x40

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 56
    .line 57
    move v7, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_6
    move/from16 v7, p7

    .line 60
    .line 61
    :goto_2
    and-int/lit16 p1, v0, 0x80

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 66
    .line 67
    move v8, p1

    .line 68
    goto :goto_3

    .line 69
    :cond_7
    move/from16 v8, p8

    .line 70
    .line 71
    :goto_3
    iget-object v9, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 72
    .line 73
    and-int/lit16 p1, v0, 0x200

    .line 74
    .line 75
    if-eqz p1, :cond_8

    .line 76
    .line 77
    iget-object p1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 78
    .line 79
    move-object v10, p1

    .line 80
    goto :goto_4

    .line 81
    :cond_8
    move-object/from16 v10, p9

    .line 82
    .line 83
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 102
    .line 103
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/core/preference/notification/NotificationPreference;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;IZZLnet/thunderbird/core/preference/NotificationQuickDelete;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 104
    .line 105
    .line 106
    return-object v0
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
    instance-of v0, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 10
    .line 11
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 48
    .line 49
    iget-object v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 59
    .line 60
    iget v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 66
    .line 67
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 68
    .line 69
    if-eq v0, v1, :cond_8

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_8
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 73
    .line 74
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 75
    .line 76
    if-eq v0, v1, :cond_9

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_9
    iget-object v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 80
    .line 81
    iget-object v1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 82
    .line 83
    if-eq v0, v1, :cond_a

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_a
    iget-object p0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 87
    .line 88
    iget-object p1, p1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 89
    .line 90
    if-eq p0, p1, :cond_b

    .line 91
    .line 92
    :goto_0
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 95
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/16 v3, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v3

    .line 15
    iget-object v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    move v4, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v1

    .line 34
    :goto_1
    add-int/2addr v0, v4

    .line 35
    mul-int/2addr v0, v3

    .line 36
    iget-object v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v4, v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 43
    .line 44
    add-int/2addr v0, v4

    .line 45
    mul-int/2addr v0, v3

    .line 46
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    move v4, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v4, v1

    .line 53
    :goto_2
    add-int/2addr v0, v4

    .line 54
    mul-int/2addr v0, v3

    .line 55
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_3
    add-int/2addr v0, v1

    .line 61
    mul-int/2addr v0, v3

    .line 62
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/2addr v1, v3

    .line 70
    iget-object p0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    add-int/2addr p0, v1

    .line 77
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationPreference(isQuietTimeEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", quietTimeStarts="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", quietTimeEnds="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isNotificationDuringQuietTimeEnabled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", messageActionsOrder="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", messageActionsCutoff="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", isSummaryDeleteActionEnabled="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", isShowContactPictureInNotification="

    .line 69
    .line 70
    const-string v2, ", notificationQuickDeleteBehaviour="

    .line 71
    .line 72
    iget-boolean v3, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 73
    .line 74
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 75
    .line 76
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", lockScreenNotificationVisibility="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, ")"

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
