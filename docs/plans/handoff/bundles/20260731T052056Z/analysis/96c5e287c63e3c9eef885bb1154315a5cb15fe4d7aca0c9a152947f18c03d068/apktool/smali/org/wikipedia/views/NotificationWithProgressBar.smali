.class public final Lorg/wikipedia/views/NotificationWithProgressBar;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public isCanceled:Z

.field public isEnableCancelButton:Z

.field public isEnablePauseButton:Z

.field public isPaused:Z

.field public notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

.field public notificationDescription:I

.field public notificationId:I

.field public notificationTitle:I

.field public targetClass:Ljava/lang/Class;


# direct methods
.method public static actionBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;III)Landroidx/core/app/NotificationCompat$Action;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const/high16 p1, 0x4000000

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/high16 p1, 0xc000000

    .line 22
    .line 23
    invoke-static {p0, p5, v1, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p3, p4, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final build(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v6, :cond_7

    .line 17
    .line 18
    invoke-virtual {v6}, Lorg/wikipedia/notifications/NotificationCategory;->getIconResId()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    iget v9, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationTitle:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    const/4 v11, 0x1

    .line 33
    new-array v12, v11, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    aput-object v10, v12, v13

    .line 37
    .line 38
    invoke-virtual {v8, v9, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    int-to-float v9, v3

    .line 46
    int-to-float v10, v2

    .line 47
    div-float/2addr v9, v10

    .line 48
    const/high16 v10, 0x42c80000    # 100.0f

    .line 49
    .line 50
    mul-float/2addr v9, v10

    .line 51
    float-to-int v9, v9

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v9, "%"

    .line 61
    .line 62
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget v12, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationDescription:I

    .line 74
    .line 75
    sub-int/2addr v2, v3

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-array v14, v11, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v3, v14, v13

    .line 83
    .line 84
    invoke-virtual {v10, v12, v2, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 105
    .line 106
    invoke-direct {v3, v11}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iput-object v6, v3, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 129
    .line 130
    iput v13, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 131
    .line 132
    iput-object v7, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 133
    .line 134
    const/4 v2, -0x1

    .line 135
    iput v2, v5, Landroid/app/Notification;->audioStreamType:I

    .line 136
    .line 137
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 138
    .line 139
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 140
    .line 141
    .line 142
    const/4 v3, 0x4

    .line 143
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/4 v3, 0x5

    .line 148
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iput-object v2, v5, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 157
    .line 158
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 163
    .line 164
    const/4 v2, 0x2

    .line 165
    invoke-virtual {v1, v2, v11}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 166
    .line 167
    .line 168
    iget-boolean v2, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->isEnablePauseButton:Z

    .line 169
    .line 170
    const-string v3, "targetClass"

    .line 171
    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    iget-object v11, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->targetClass:Ljava/lang/Class;

    .line 175
    .line 176
    if-eqz v11, :cond_2

    .line 177
    .line 178
    iget-boolean v2, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    const v5, 0x7f0801d0

    .line 183
    .line 184
    .line 185
    :goto_0
    move v13, v5

    .line 186
    goto :goto_1

    .line 187
    :cond_0
    const v5, 0x7f0801cb

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :goto_1
    if-eqz v2, :cond_1

    .line 192
    .line 193
    const v2, 0x7f12047d

    .line 194
    .line 195
    .line 196
    :goto_2
    move v14, v2

    .line 197
    goto :goto_3

    .line 198
    :cond_1
    const v2, 0x7f120478

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :goto_3
    const/4 v15, 0x0

    .line 203
    const-string v12, "syncPauseResume"

    .line 204
    .line 205
    move-object/from16 v10, p1

    .line 206
    .line 207
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/views/NotificationWithProgressBar;->actionBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;III)Landroidx/core/app/NotificationCompat$Action;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v7

    .line 219
    :cond_3
    :goto_4
    iget-boolean v2, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->isEnableCancelButton:Z

    .line 220
    .line 221
    if-eqz v2, :cond_5

    .line 222
    .line 223
    iget-object v11, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->targetClass:Ljava/lang/Class;

    .line 224
    .line 225
    if-eqz v11, :cond_4

    .line 226
    .line 227
    const v14, 0x7f120476

    .line 228
    .line 229
    .line 230
    const/4 v15, 0x1

    .line 231
    const-string v12, "syncCancel"

    .line 232
    .line 233
    const v13, 0x7f080144

    .line 234
    .line 235
    .line 236
    move-object/from16 v10, p1

    .line 237
    .line 238
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/views/NotificationWithProgressBar;->actionBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;III)Landroidx/core/app/NotificationCompat$Action;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v7

    .line 250
    :cond_5
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    const/16 v2, 0x18

    .line 253
    .line 254
    if-lt v0, v2, :cond_6

    .line 255
    .line 256
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 261
    .line 262
    :cond_6
    return-void

    .line 263
    :cond_7
    const-string v0, "notificationCategory"

    .line 264
    .line 265
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v7
.end method

.method public final cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Landroid/app/NotificationManager;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/NotificationManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationId:I

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setNotificationProgress(Landroid/content/Context;II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 5
    .line 6
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {v2}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/wikipedia/views/NotificationWithProgressBar;->build(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;II)V

    .line 20
    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_0
    iput p2, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 26
    .line 27
    iput p3, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 28
    .line 29
    iput-boolean v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 30
    .line 31
    iget-boolean p2, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    const-class p2, Landroid/app/NotificationManager;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/app/NotificationManager;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget p0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationId:I

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    const-string p0, "notificationCategory"

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0
.end method
