.class public final Lcom/fsck/k9/notification/NotificationSettingsUpdater;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/NotificationConfigurationConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateNotificationSettings(Ljava/util/Collection;)V
    .locals 3

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 148
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->preferences:Lcom/fsck/k9/Preferences;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 151
    check-cast v1, Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 155
    invoke-virtual {p0, v0}, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->updateNotificationSettings(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 156
    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateNotificationSettings(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/NotificationChannelManager;->getNotificationConfiguration(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-boolean v0, p0, Lcom/fsck/k9/notification/NotificationConfiguration;->isBlinkLightsEnabled:Z

    .line 11
    .line 12
    iget v1, p0, Lcom/fsck/k9/notification/NotificationConfiguration;->lightColor:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v1, v2, v0}, Lcom/fsck/k9/notification/NotificationLightDecoder;->decode(IIZ)Lnet/thunderbird/feature/notification/NotificationLight;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/fsck/k9/notification/NotificationConfiguration;->isVibrationEnabled:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationConfiguration;->vibrationPattern:Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x2

    .line 35
    if-lt v5, v6, :cond_4

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    rem-int/2addr v5, v6

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    div-int/2addr v2, v6

    .line 54
    sget-object v6, Lnet/thunderbird/feature/notification/VibratePattern;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-virtual {v6}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_2

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    move-object v8, v7

    .line 71
    check-cast v8, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 72
    .line 73
    sget-object v9, Lnet/thunderbird/feature/notification/NotificationVibration;->DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 74
    .line 75
    invoke-static {v8, v2}, Lkotlin/ranges/RangesKt;->getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v8, v5}, Ljava/util/Arrays;->equals([J[J)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v7, v4

    .line 87
    :goto_0
    check-cast v7, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 88
    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    sget-object v7, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 92
    .line 93
    :cond_3
    new-instance v5, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 94
    .line 95
    invoke-direct {v5, v1, v7, v2}, Lnet/thunderbird/feature/notification/NotificationVibration;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    new-instance v5, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 100
    .line 101
    sget-object v2, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 102
    .line 103
    invoke-direct {v5, v1, v2, v3}, Lnet/thunderbird/feature/notification/NotificationVibration;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    new-instance v1, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationConfiguration;->sound:Landroid/net/Uri;

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const/4 v3, 0x0

    .line 114
    :goto_3
    if-eqz p0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :cond_6
    invoke-direct {v1, v3, v4, v0, v5}, Lnet/thunderbird/feature/notification/NotificationSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v1, p0}, Lnet/thunderbird/feature/notification/NotificationSettings;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_7

    .line 132
    .line 133
    monitor-enter p1

    .line 134
    :try_start_0
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iput-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    monitor-exit p1

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0

    .line 146
    :cond_7
    return-void
.end method
