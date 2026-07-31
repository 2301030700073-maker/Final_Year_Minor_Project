.class public final Lcom/fsck/k9/notification/NotificationChannelManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field public final notificationManager:Landroid/app/NotificationManager;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public static $r8$lambda$m3LNel5iYKrrYmwu_gXHemecIYY(Lcom/fsck/k9/notification/NotificationChannelManager;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 6
    .line 7
    const v2, 0x7f120500

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const v3, 0x7f1204ff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v4, Landroid/app/NotificationChannel;

    .line 28
    .line 29
    new-instance v4, Landroid/app/NotificationChannel;

    .line 30
    .line 31
    const-string v5, "push"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v4, v5, v2, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v4, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 55
    .line 56
    .line 57
    const v4, 0x7f1204fe

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const v7, 0x7f1204fd

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v9, Landroid/app/NotificationChannel;

    .line 78
    .line 79
    new-instance v9, Landroid/app/NotificationChannel;

    .line 80
    .line 81
    const-string v10, "misc"

    .line 82
    .line 83
    invoke-direct {v9, v10, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 105
    .line 106
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    const/16 v3, 0xa

    .line 115
    .line 116
    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_0

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 138
    .line 139
    iget-object v5, v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_2

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_1

    .line 181
    .line 182
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_3

    .line 199
    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 205
    .line 206
    iget-object v3, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 207
    .line 208
    new-instance v5, Landroid/app/NotificationChannelGroup;

    .line 209
    .line 210
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    new-instance v8, Landroid/app/NotificationChannelGroup;

    .line 215
    .line 216
    invoke-direct {v8, v3, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    const v5, 0x7f1204fc

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    sget-object v9, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 230
    .line 231
    invoke-static {v2, v9}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    new-instance v10, Landroid/app/NotificationChannel;

    .line 236
    .line 237
    new-instance v10, Landroid/app/NotificationChannel;

    .line 238
    .line 239
    const/4 v11, 0x3

    .line 240
    invoke-direct {v10, v9, v5, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 241
    .line 242
    .line 243
    const v5, 0x7f1204fb

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10, v3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v10, v2}, Lcom/fsck/k9/notification/NotificationChannelManager;->setPropertiesFrom(Landroid/app/NotificationChannel;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    sget-object v11, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 277
    .line 278
    invoke-static {v2, v11}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v11, Landroid/app/NotificationChannel;

    .line 283
    .line 284
    new-instance v11, Landroid/app/NotificationChannel;

    .line 285
    .line 286
    invoke-direct {v11, v2, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v11, v9}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11, v3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_3
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Ljava/util/concurrent/ExecutorService;Landroid/app/NotificationManager;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lcom/fsck/k9/notification/NotificationLightDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 11
    .line 12
    new-instance p2, Lcom/fsck/k9/notification/NotificationChannelManager$1;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-direct {p2, p3, p0}, Lcom/fsck/k9/notification/NotificationChannelManager$1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 19
    .line 20
    iget-object p0, p1, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 5
    .line 6
    sget-object v1, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 7
    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessagesNotificationChannelVersion()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "_"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    const-string p1, "messages_channel_"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string p0, "miscellaneous_channel_"

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static setPropertiesFrom(Landroid/app/NotificationChannel;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 6
    .line 7
    iget-object v2, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 8
    .line 9
    iget-object v3, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v3, p1}, Lnet/thunderbird/feature/notification/NotificationLight;->toColor(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-object p1, Lnet/thunderbird/feature/notification/NotificationLight;->Disabled:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 46
    .line 47
    if-eq v3, p1, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 56
    .line 57
    iget v0, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 64
    .line 65
    .line 66
    iget-boolean p1, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final getNotificationConfiguration(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationConfiguration;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lcom/fsck/k9/notification/NotificationConfiguration;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([J)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    move-object v5, p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/notification/NotificationConfiguration;-><init>(Landroid/net/Uri;ZIZLjava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public final recreateMessagesNotificationChannel(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 6
    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x1a

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v3, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 15
    .line 16
    invoke-static {p1, v3}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v6, v7, v5}, Lcom/fsck/k9/notification/NotificationLightDecoder;->decode(IIZ)Lnet/thunderbird/feature/notification/NotificationLight;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-boolean v8, v6, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 54
    .line 55
    iget-object v9, v6, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    iget-object v8, v6, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    :cond_1
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v8, 0x0

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    iget-object v6, v6, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 76
    .line 77
    if-ne v5, v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-boolean v6, v9, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 84
    .line 85
    if-ne v5, v6, :cond_2

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iget-object v6, v9, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 92
    .line 93
    iget v7, v9, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 94
    .line 95
    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([J[J)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    const-string p0, "Not recreating NotificationChannel. The current one already matches the app\'s settings."

    .line 106
    .line 107
    new-array p1, v8, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessagesNotificationChannelVersion()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const/4 v6, 0x1

    .line 118
    add-int/2addr v5, v6

    .line 119
    const-string v7, "_"

    .line 120
    .line 121
    invoke-static {v7, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const-string v9, "messages_channel_"

    .line 126
    .line 127
    invoke-static {v9, v0, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const v9, 0x7f1204fc

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    new-instance v11, Landroid/app/NotificationChannel;

    .line 146
    .line 147
    new-instance v11, Landroid/app/NotificationChannel;

    .line 148
    .line 149
    invoke-direct {v11, v7, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 150
    .line 151
    .line 152
    const v9, 0x7f1204fb

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 212
    .line 213
    .line 214
    const/16 v0, 0x1d

    .line 215
    .line 216
    if-lt v2, v0, :cond_3

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBubble()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 223
    .line 224
    .line 225
    :cond_3
    invoke-static {v11, p1}, Lcom/fsck/k9/notification/NotificationChannelManager;->setPropertiesFrom(Landroid/app/NotificationChannel;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 226
    .line 227
    .line 228
    const/4 v0, 0x2

    .line 229
    new-array v0, v0, [Ljava/lang/Object;

    .line 230
    .line 231
    aput-object v3, v0, v8

    .line 232
    .line 233
    aput-object v7, v0, v6

    .line 234
    .line 235
    const-string v1, "Recreating NotificationChannel(%s => %s)"

    .line 236
    .line 237
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    new-array v0, v6, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object v4, v0, v8

    .line 243
    .line 244
    const-string v1, "Old NotificationChannel: %s"

    .line 245
    .line 246
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    new-array v0, v6, [Ljava/lang/Object;

    .line 250
    .line 251
    aput-object v11, v0, v8

    .line 252
    .line 253
    const-string v1, "New NotificationChannel: %s"

    .line 254
    .line 255
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessagesNotificationChannelVersion(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void
.end method
