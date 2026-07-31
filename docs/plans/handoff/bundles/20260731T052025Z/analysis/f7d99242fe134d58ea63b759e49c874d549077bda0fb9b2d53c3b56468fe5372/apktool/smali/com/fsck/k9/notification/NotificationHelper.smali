.class public final Lcom/fsck/k9/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationHelper;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/notification/NotificationHelper;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/fsck/k9/notification/NotificationHelper;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationHelper;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method

.method public final notify(ILandroid/app/Notification;)V
    .locals 2

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 204
    new-instance v0, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationHelper;->logger:Lnet/thunderbird/core/logging/Logger;

    const-string p1, "NotificationHelper"

    invoke-interface {p0, p1, p2, v0}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final notify(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILandroid/app/Notification;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 5
    .line 6
    invoke-virtual {v0, p2, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p3

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1a

    .line 14
    .line 15
    const-string v2, "NotificationHelper"

    .line 16
    .line 17
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationHelper;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v1, "does not have permission to"

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static {v0, v1, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne v0, v4, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v0, p2, v5}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, v2, p3, v0}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/fsck/k9/notification/NotificationHelper;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 48
    .line 49
    const p3, 0x7f120502

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f120501

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Landroid/content/Intent;

    .line 76
    .line 77
    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    .line 78
    .line 79
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationHelper;->context:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "android.provider.extra.APP_PACKAGE"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {v0, v2, v1, v5, v5}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v1, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 107
    .line 108
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 113
    .line 114
    const v3, 0x7f080122

    .line 115
    .line 116
    .line 117
    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 118
    .line 119
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iput v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 130
    .line 131
    const/16 v2, 0x10

    .line 132
    .line 133
    invoke-virtual {v1, v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    iput-object p3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    iput-object p3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 150
    .line 151
    iput-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 152
    .line 153
    new-instance p3, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 154
    .line 155
    invoke-direct {p3, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iput-object p2, p3, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 165
    .line 166
    .line 167
    const-string p2, "err"

    .line 168
    .line 169
    iput-object p2, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/fsck/k9/notification/NotificationHelper;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 172
    .line 173
    invoke-static {v1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->setErrorAppearance(Landroidx/core/app/NotificationCompat$Builder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    mul-int/2addr p1, v2

    .line 188
    add-int/lit8 p1, p1, 0x9

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_0
    new-instance p0, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    invoke-direct {p0, p1, v4}, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v3, v2, p3, p0}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    :goto_0
    return-void
.end method
