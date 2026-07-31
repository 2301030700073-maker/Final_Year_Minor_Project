.class public final Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final interactionPreferences:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

.field public final notificationPreference:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->interactionPreferences:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->notificationPreference:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createSingleNotificationActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->notificationPreference:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 8
    .line 9
    iget-object v0, v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsOrder:Ljava/util/List;

    .line 10
    .line 11
    sget-object v1, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 12
    .line 13
    const-string v1, "reply"

    .line 14
    .line 15
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->Reply:Lcom/fsck/k9/notification/NotificationAction;

    .line 16
    .line 17
    new-instance v3, Lkotlin/Pair;

    .line 18
    .line 19
    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "mark_as_read"

    .line 23
    .line 24
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->MarkAsRead:Lcom/fsck/k9/notification/NotificationAction;

    .line 25
    .line 26
    new-instance v4, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "delete"

    .line 32
    .line 33
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->Delete:Lcom/fsck/k9/notification/NotificationAction;

    .line 34
    .line 35
    new-instance v5, Lkotlin/Pair;

    .line 36
    .line 37
    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "star"

    .line 41
    .line 42
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->Star:Lcom/fsck/k9/notification/NotificationAction;

    .line 43
    .line 44
    new-instance v6, Lkotlin/Pair;

    .line 45
    .line 46
    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "archive"

    .line 50
    .line 51
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->Archive:Lcom/fsck/k9/notification/NotificationAction;

    .line 52
    .line 53
    new-instance v7, Lkotlin/Pair;

    .line 54
    .line 55
    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "spam"

    .line 59
    .line 60
    sget-object v2, Lcom/fsck/k9/notification/NotificationAction;->Spam:Lcom/fsck/k9/notification/NotificationAction;

    .line 61
    .line 62
    new-instance v8, Lkotlin/Pair;

    .line 63
    .line 64
    invoke-direct {v8, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    new-array v1, v1, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object v3, v1, v2

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    aput-object v4, v1, v3

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    aput-object v5, v1, v4

    .line 78
    .line 79
    const/4 v5, 0x3

    .line 80
    aput-object v6, v1, v5

    .line 81
    .line 82
    const/4 v6, 0x4

    .line 83
    aput-object v7, v1, v6

    .line 84
    .line 85
    const/4 v7, 0x5

    .line 86
    aput-object v8, v1, v7

    .line 87
    .line 88
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->normalizeOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->notificationPreference:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 97
    .line 98
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 103
    .line 104
    iget v1, v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->messageActionsCutoff:I

    .line 105
    .line 106
    invoke-static {v1, v2, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasArchiveFolder()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget-object v9, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->notificationPreference:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 115
    .line 116
    invoke-virtual {v9}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 121
    .line 122
    iget-object v9, v9, Lnet/thunderbird/core/preference/notification/NotificationPreference;->notificationQuickDeleteBehaviour:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 123
    .line 124
    sget-object v10, Lnet/thunderbird/core/preference/NotificationQuickDelete;->NEVER:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 125
    .line 126
    if-eq v9, v10, :cond_0

    .line 127
    .line 128
    move v9, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move v9, v2

    .line 131
    :goto_0
    monitor-enter p1

    .line 132
    :try_start_0
    iget-object v10, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->spamFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    if-eqz v10, :cond_1

    .line 135
    .line 136
    move v10, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    move v10, v2

    .line 139
    :goto_1
    monitor-exit p1

    .line 140
    iget-object p0, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->interactionPreferences:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 141
    .line 142
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 147
    .line 148
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 149
    .line 150
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    move-object v11, v1

    .line 174
    check-cast v11, Lcom/fsck/k9/notification/NotificationAction;

    .line 175
    .line 176
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_8

    .line 181
    .line 182
    if-eq v11, v3, :cond_8

    .line 183
    .line 184
    if-eq v11, v4, :cond_7

    .line 185
    .line 186
    if-eq v11, v5, :cond_6

    .line 187
    .line 188
    if-eq v11, v6, :cond_4

    .line 189
    .line 190
    if-ne v11, v7, :cond_3

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 194
    .line 195
    .line 196
    const/4 p0, 0x0

    .line 197
    return-object p0

    .line 198
    :cond_4
    if-eqz v10, :cond_5

    .line 199
    .line 200
    if-nez p0, :cond_5

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    move v11, v2

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    move v11, v8

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    move v11, v9

    .line 208
    goto :goto_4

    .line 209
    :cond_8
    :goto_3
    move v11, v3

    .line 210
    :goto_4
    if-eqz v11, :cond_2

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_9
    return-object v0

    .line 217
    :catchall_0
    move-exception p0

    .line 218
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    throw p0
.end method

.method public final createSingleNotificationWearActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lkotlin/collections/builders/ListBuilder;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/fsck/k9/notification/WearNotificationAction;->Reply:Lcom/fsck/k9/notification/WearNotificationAction;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/fsck/k9/notification/WearNotificationAction;->MarkAsRead:Lcom/fsck/k9/notification/WearNotificationAction;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->interactionPreferences:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 16
    .line 17
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 22
    .line 23
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcom/fsck/k9/notification/WearNotificationAction;->Delete:Lcom/fsck/k9/notification/WearNotificationAction;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasArchiveFolder()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    sget-object v1, Lcom/fsck/k9/notification/WearNotificationAction;->Archive:Lcom/fsck/k9/notification/WearNotificationAction;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    monitor-enter p1

    .line 44
    :try_start_0
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->spamFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    :goto_0
    monitor-exit p1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->interactionPreferences:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 55
    .line 56
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 61
    .line 62
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 63
    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    sget-object p0, Lcom/fsck/k9/notification/WearNotificationAction;->Spam:Lcom/fsck/k9/notification/WearNotificationAction;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method
