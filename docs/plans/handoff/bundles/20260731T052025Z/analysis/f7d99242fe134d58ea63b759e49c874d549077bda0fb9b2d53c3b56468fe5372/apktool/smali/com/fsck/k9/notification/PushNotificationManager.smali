.class public final Lcom/fsck/k9/notification/PushNotificationManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public isForegroundServiceStarted:Z

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public notificationState:Lcom/fsck/k9/notification/PushNotificationState;

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lapp/k9mail/provider/K9AppNotificationIconProvider;Lcom/fsck/k9/notification/NotificationChannelManager;Landroidx/core/app/NotificationManagerCompat;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/PushNotificationManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/PushNotificationManager;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/fsck/k9/notification/PushNotificationManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 11
    .line 12
    sget-object p1, Lcom/fsck/k9/notification/PushNotificationState;->INITIALIZING:Lcom/fsck/k9/notification/PushNotificationState;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationState:Lcom/fsck/k9/notification/PushNotificationState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final createNotification()Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    const-string v1, "push"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/notification/PushNotificationManager;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0800f5

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 14
    .line 15
    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fsck/k9/notification/PushNotificationManager;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationState:Lcom/fsck/k9/notification/PushNotificationState;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    if-eq v3, v6, :cond_3

    .line 36
    .line 37
    if-eq v3, v5, :cond_2

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    if-eq v3, v7, :cond_1

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    if-ne v3, v7, :cond_0

    .line 44
    .line 45
    const v3, 0x7f12054d

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_1
    const v3, 0x7f120551

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const v3, 0x7f120550

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const v3, 0x7f12054f

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const v3, 0x7f12054e

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationState:Lcom/fsck/k9/notification/PushNotificationState;

    .line 82
    .line 83
    sget-object v7, Lcom/fsck/k9/notification/PushNotificationState;->ALARM_PERMISSION_MISSING:Lcom/fsck/k9/notification/PushNotificationState;

    .line 84
    .line 85
    if-ne v3, v7, :cond_5

    .line 86
    .line 87
    const v3, 0x7f12054b

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const v3, 0x7f12054c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationState:Lcom/fsck/k9/notification/PushNotificationState;

    .line 115
    .line 116
    if-ne p0, v7, :cond_7

    .line 117
    .line 118
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v1, 0x1f

    .line 121
    .line 122
    if-lt p0, v1, :cond_6

    .line 123
    .line 124
    new-instance p0, Landroid/content/Intent;

    .line 125
    .line 126
    const-string v1, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 127
    .line 128
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "package:"

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    const-string p0, "ACTION_REQUEST_SCHEDULE_EXACT_ALARM is only available on API 31+"

    .line 158
    .line 159
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v4

    .line 163
    :cond_7
    new-instance p0, Landroid/content/Intent;

    .line 164
    .line 165
    const-string v1, "app.k9mail.action.PUSH_INFO"

    .line 166
    .line 167
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/high16 v1, 0x10000000

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    const v1, 0x8000

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    :goto_2
    const/4 v1, 0x0

    .line 189
    invoke-static {v2, v6, p0, v1, v1}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iput-object p0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 197
    .line 198
    invoke-virtual {v0, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 199
    .line 200
    .line 201
    iput-boolean v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 202
    .line 203
    const/4 p0, -0x2

    .line 204
    iput p0, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 205
    .line 206
    iput-boolean v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 207
    .line 208
    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 209
    .line 210
    iput v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    return-object p0
.end method
