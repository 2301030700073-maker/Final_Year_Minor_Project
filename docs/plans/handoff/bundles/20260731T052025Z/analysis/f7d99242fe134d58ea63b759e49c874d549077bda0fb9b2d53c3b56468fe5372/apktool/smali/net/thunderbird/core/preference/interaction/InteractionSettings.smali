.class public final Lnet/thunderbird/core/preference/interaction/InteractionSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isConfirmDelete:Z

.field public final isConfirmDeleteFromNotification:Z

.field public final isConfirmDeleteStarred:Z

.field public final isConfirmDiscardMessage:Z

.field public final isConfirmMarkAllRead:Z

.field public final isConfirmSpam:Z

.field public final messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

.field public final messageViewPostRemoveNavigation:Ljava/lang/String;

.field public final swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

.field public final useVolumeKeysForNavigation:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZ)V
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
    iput-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 17
    .line 18
    iput-boolean p5, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 19
    .line 20
    iput-boolean p6, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 21
    .line 22
    iput-boolean p7, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 23
    .line 24
    iput-boolean p8, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 25
    .line 26
    iput-boolean p9, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 27
    .line 28
    iput-boolean p10, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 29
    .line 30
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/preference/interaction/InteractionSettings;ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZI)Lnet/thunderbird/core/preference/interaction/InteractionSettings;
    .locals 11

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

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
    iget-object p2, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

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
    iget-object p3, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

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
    iget-object p4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 29
    .line 30
    :cond_3
    move-object v4, p4

    .line 31
    and-int/lit8 p1, v0, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 36
    .line 37
    move v5, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    move/from16 v5, p5

    .line 40
    .line 41
    :goto_0
    and-int/lit8 p1, v0, 0x20

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

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
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

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
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

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
    and-int/lit16 p1, v0, 0x100

    .line 72
    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 76
    .line 77
    move v9, p1

    .line 78
    goto :goto_4

    .line 79
    :cond_8
    move/from16 v9, p9

    .line 80
    .line 81
    :goto_4
    and-int/lit16 p1, v0, 0x200

    .line 82
    .line 83
    if-eqz p1, :cond_9

    .line 84
    .line 85
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 86
    .line 87
    move v10, p1

    .line 88
    goto :goto_5

    .line 89
    :cond_9
    move/from16 v10, p10

    .line 90
    .line 91
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 104
    .line 105
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZ)V

    .line 106
    .line 107
    .line 108
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
    instance-of v0, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 10
    .line 11
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 30
    .line 31
    iget-object v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 37
    .line 38
    iget-object v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 55
    .line 56
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 57
    .line 58
    if-eq v0, v1, :cond_7

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 62
    .line 63
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 64
    .line 65
    if-eq v0, v1, :cond_8

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_8
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 69
    .line 70
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 71
    .line 72
    if-eq v0, v1, :cond_9

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_9
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 76
    .line 77
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 78
    .line 79
    if-eq v0, v1, :cond_a

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_a
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 83
    .line 84
    iget-boolean p1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 85
    .line 86
    if-eq p0, p1, :cond_b

    .line 87
    .line 88
    :goto_0
    const/4 p0, 0x0

    .line 89
    return p0

    .line 90
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 91
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

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
    iget-object v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v4, v0

    .line 28
    mul-int/2addr v4, v3

    .line 29
    iget-object v0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 30
    .line 31
    invoke-virtual {v0}, Lnet/thunderbird/core/common/action/SwipeActions;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v4

    .line 36
    mul-int/2addr v0, v3

    .line 37
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    move v4, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v4, v1

    .line 44
    :goto_1
    add-int/2addr v0, v4

    .line 45
    mul-int/2addr v0, v3

    .line 46
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

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
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    move v4, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v4, v1

    .line 62
    :goto_3
    add-int/2addr v0, v4

    .line 63
    mul-int/2addr v0, v3

    .line 64
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    move v4, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move v4, v1

    .line 71
    :goto_4
    add-int/2addr v0, v4

    .line 72
    mul-int/2addr v0, v3

    .line 73
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    move v4, v2

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move v4, v1

    .line 80
    :goto_5
    add-int/2addr v0, v4

    .line 81
    mul-int/2addr v0, v3

    .line 82
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    move v1, v2

    .line 87
    :cond_6
    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InteractionSettings(useVolumeKeysForNavigation="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", messageViewPostRemoveNavigation="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", messageViewPostMarkAsUnreadNavigation="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", swipeActions="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isConfirmDelete="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", isConfirmDeleteStarred="

    .line 49
    .line 50
    const-string v2, ", isConfirmDeleteFromNotification="

    .line 51
    .line 52
    iget-boolean v3, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 53
    .line 54
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 55
    .line 56
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, ", isConfirmSpam="

    .line 60
    .line 61
    const-string v2, ", isConfirmDiscardMessage="

    .line 62
    .line 63
    iget-boolean v3, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 64
    .line 65
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 66
    .line 67
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", isConfirmMarkAllRead="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ")"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
