.class public final Lkotlinx/coroutines/flow/SharingConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public context:Ljava/lang/Object;

.field public extraBufferCapacity:I

.field public onBufferOverflow:Ljava/lang/Object;

.field public upstream:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1078
    const/4 v0, 0x4

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iput-object p4, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1081
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 1082
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 1083
    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    const-string v0, "nav-entry-state:id"

    invoke-static {v0, p1}, Landroidx/work/Operation$State;->getString-impl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1075
    const-string v0, "nav-entry-state:destination-id"

    invoke-static {v0, p1}, Landroidx/work/Operation$State;->getInt-impl(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 1076
    const-string v0, "nav-entry-state:args"

    invoke-static {v0, p1}, Landroidx/work/Operation$State;->getSavedState-impl(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 1077
    const-string v0, "nav-entry-state:saved-state"

    invoke-static {v0, p1}, Landroidx/work/Operation$State;->getSavedState-impl(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1086
    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 1087
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 1088
    iput p4, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ProvidedValue;)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 1060
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 1061
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p1, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 1062
    iput v2, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iput v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 29
    .line 30
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v9, 0x1a

    .line 33
    .line 34
    if-lt v8, v9, :cond_0

    .line 35
    .line 36
    invoke-static {v3, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    iput-object v8, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v8, Landroid/app/Notification$Builder;

    .line 44
    .line 45
    invoke-direct {v8, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v8, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 49
    .line 50
    :goto_0
    iget-object v8, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 51
    .line 52
    iget-object v10, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, Landroid/app/Notification$Builder;

    .line 55
    .line 56
    iget-wide v11, v8, Landroid/app/Notification;->when:J

    .line 57
    .line 58
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget v11, v8, Landroid/app/Notification;->icon:I

    .line 63
    .line 64
    iget v12, v8, Landroid/app/Notification;->iconLevel:I

    .line 65
    .line 66
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    .line 84
    .line 85
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iget v11, v8, Landroid/app/Notification;->ledARGB:I

    .line 90
    .line 91
    iget v13, v8, Landroid/app/Notification;->ledOnMS:I

    .line 92
    .line 93
    iget v14, v8, Landroid/app/Notification;->ledOffMS:I

    .line 94
    .line 95
    invoke-virtual {v10, v11, v13, v14}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 100
    .line 101
    and-int/2addr v11, v2

    .line 102
    const/4 v13, 0x0

    .line 103
    if-eqz v11, :cond_1

    .line 104
    .line 105
    const/4 v11, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v11, v13

    .line 108
    :goto_1
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    and-int/lit8 v11, v11, 0x8

    .line 115
    .line 116
    if-eqz v11, :cond_2

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move v11, v13

    .line 121
    :goto_2
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 126
    .line 127
    and-int/lit8 v11, v11, 0x10

    .line 128
    .line 129
    if-eqz v11, :cond_3

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    move v11, v13

    .line 134
    :goto_3
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    iget v11, v8, Landroid/app/Notification;->defaults:I

    .line 139
    .line 140
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 161
    .line 162
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    iget-object v11, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 167
    .line 168
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 173
    .line 174
    and-int/lit16 v11, v11, 0x80

    .line 175
    .line 176
    if-eqz v11, :cond_4

    .line 177
    .line 178
    const/4 v11, 0x1

    .line 179
    goto :goto_4

    .line 180
    :cond_4
    move v11, v13

    .line 181
    :goto_4
    invoke-virtual {v10, v12, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 186
    .line 187
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v10, v13, v13, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    iget-object v10, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v10, Landroid/app/Notification$Builder;

    .line 197
    .line 198
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 199
    .line 200
    if-nez v11, :cond_5

    .line 201
    .line 202
    move-object v3, v12

    .line 203
    goto :goto_5

    .line 204
    :cond_5
    invoke-virtual {v11, v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :goto_5
    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 209
    .line 210
    .line 211
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v3, Landroid/app/Notification$Builder;

    .line 214
    .line 215
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 216
    .line 217
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iget v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 226
    .line 227
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 228
    .line 229
    .line 230
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    const-string v2, "android.support.allowGeneratedReplies"

    .line 241
    .line 242
    if-eqz v10, :cond_f

    .line 243
    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Landroidx/core/app/NotificationCompat$Action;

    .line 249
    .line 250
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    iget-boolean v15, v10, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 255
    .line 256
    iget-object v9, v10, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 257
    .line 258
    move/from16 v16, v13

    .line 259
    .line 260
    new-instance v13, Landroid/app/Notification$Action$Builder;

    .line 261
    .line 262
    if-eqz v11, :cond_6

    .line 263
    .line 264
    invoke-virtual {v11, v12}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    move-object/from16 v17, v12

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_6
    move-object v11, v12

    .line 272
    move-object/from16 v17, v11

    .line 273
    .line 274
    :goto_7
    iget-object v12, v10, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 275
    .line 276
    iget-object v14, v10, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 277
    .line 278
    invoke-direct {v13, v11, v12, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 279
    .line 280
    .line 281
    iget-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 282
    .line 283
    if-eqz v11, :cond_8

    .line 284
    .line 285
    array-length v12, v11

    .line 286
    new-array v14, v12, [Landroid/app/RemoteInput;

    .line 287
    .line 288
    move-object/from16 v18, v3

    .line 289
    .line 290
    array-length v3, v11

    .line 291
    if-gtz v3, :cond_7

    .line 292
    .line 293
    move/from16 v3, v16

    .line 294
    .line 295
    :goto_8
    if-ge v3, v12, :cond_9

    .line 296
    .line 297
    aget-object v11, v14, v3

    .line 298
    .line 299
    invoke-virtual {v13, v11}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 300
    .line 301
    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_7
    aget-object v0, v11, v16

    .line 306
    .line 307
    new-instance v0, Landroid/app/RemoteInput$Builder;

    .line 308
    .line 309
    throw v17

    .line 310
    :cond_8
    move-object/from16 v18, v3

    .line 311
    .line 312
    :cond_9
    if-eqz v9, :cond_a

    .line 313
    .line 314
    new-instance v3, Landroid/os/Bundle;

    .line 315
    .line 316
    invoke-direct {v3, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :cond_a
    new-instance v3, Landroid/os/Bundle;

    .line 321
    .line 322
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 323
    .line 324
    .line 325
    :goto_9
    invoke-virtual {v3, v2, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    .line 327
    .line 328
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .line 330
    const/16 v9, 0x18

    .line 331
    .line 332
    if-lt v2, v9, :cond_b

    .line 333
    .line 334
    invoke-static {v13, v15}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)V

    .line 335
    .line 336
    .line 337
    :cond_b
    const-string v9, "android.support.action.semanticAction"

    .line 338
    .line 339
    move/from16 v11, v16

    .line 340
    .line 341
    invoke-virtual {v3, v9, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    const/16 v9, 0x1c

    .line 345
    .line 346
    if-lt v2, v9, :cond_c

    .line 347
    .line 348
    invoke-static {v13}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;)V

    .line 349
    .line 350
    .line 351
    :cond_c
    const/16 v9, 0x1d

    .line 352
    .line 353
    if-lt v2, v9, :cond_d

    .line 354
    .line 355
    invoke-static {v13}, Landroidx/core/app/AppOpsManagerCompat$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;)V

    .line 356
    .line 357
    .line 358
    :cond_d
    const/16 v9, 0x1f

    .line 359
    .line 360
    if-lt v2, v9, :cond_e

    .line 361
    .line 362
    invoke-static {v13}, Landroidx/core/app/AlarmManagerCompat$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;)V

    .line 363
    .line 364
    .line 365
    :cond_e
    const-string v2, "android.support.action.showsUserInterface"

    .line 366
    .line 367
    iget-boolean v9, v10, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 368
    .line 369
    invoke-virtual {v3, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v13, v3}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 373
    .line 374
    .line 375
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v2, Landroid/app/Notification$Builder;

    .line 378
    .line 379
    invoke-virtual {v13}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 384
    .line 385
    .line 386
    move-object/from16 v12, v17

    .line 387
    .line 388
    move-object/from16 v3, v18

    .line 389
    .line 390
    const/4 v2, 0x2

    .line 391
    const/16 v9, 0x1a

    .line 392
    .line 393
    const/4 v13, 0x0

    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :cond_f
    move-object/from16 v17, v12

    .line 397
    .line 398
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 399
    .line 400
    if-eqz v3, :cond_10

    .line 401
    .line 402
    iget-object v9, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v9, Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    :cond_10
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v3, Landroid/app/Notification$Builder;

    .line 412
    .line 413
    iget-boolean v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 414
    .line 415
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 416
    .line 417
    .line 418
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v3, Landroid/app/Notification$Builder;

    .line 421
    .line 422
    iget-boolean v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 423
    .line 424
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 425
    .line 426
    .line 427
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v3, Landroid/app/Notification$Builder;

    .line 430
    .line 431
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 434
    .line 435
    .line 436
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v3, Landroid/app/Notification$Builder;

    .line 439
    .line 440
    move-object/from16 v9, v17

    .line 441
    .line 442
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 443
    .line 444
    .line 445
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v3, Landroid/app/Notification$Builder;

    .line 448
    .line 449
    iget-boolean v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 450
    .line 451
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 452
    .line 453
    .line 454
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 455
    .line 456
    iput v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 457
    .line 458
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v3, Landroid/app/Notification$Builder;

    .line 461
    .line 462
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 465
    .line 466
    .line 467
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v3, Landroid/app/Notification$Builder;

    .line 470
    .line 471
    iget v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 472
    .line 473
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 474
    .line 475
    .line 476
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v3, Landroid/app/Notification$Builder;

    .line 479
    .line 480
    iget v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 481
    .line 482
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 483
    .line 484
    .line 485
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v3, Landroid/app/Notification$Builder;

    .line 488
    .line 489
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 490
    .line 491
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 492
    .line 493
    .line 494
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v3, Landroid/app/Notification$Builder;

    .line 497
    .line 498
    iget-object v9, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 499
    .line 500
    iget-object v10, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 501
    .line 502
    invoke-virtual {v3, v9, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 503
    .line 504
    .line 505
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 506
    .line 507
    const/16 v9, 0x1c

    .line 508
    .line 509
    if-ge v3, v9, :cond_15

    .line 510
    .line 511
    if-nez v5, :cond_11

    .line 512
    .line 513
    const/4 v3, 0x0

    .line 514
    goto :goto_a

    .line 515
    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v9

    .line 521
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    .line 530
    .line 531
    move-result v10

    .line 532
    if-nez v10, :cond_14

    .line 533
    .line 534
    :goto_a
    if-nez v3, :cond_12

    .line 535
    .line 536
    goto :goto_b

    .line 537
    :cond_12
    if-nez v4, :cond_13

    .line 538
    .line 539
    move-object v4, v3

    .line 540
    goto :goto_b

    .line 541
    :cond_13
    new-instance v9, Landroidx/collection/ArraySet;

    .line 542
    .line 543
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 544
    .line 545
    .line 546
    move-result v10

    .line 547
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v11

    .line 551
    add-int/2addr v11, v10

    .line 552
    invoke-direct {v9, v11}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9, v3}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 556
    .line 557
    .line 558
    invoke-virtual {v9, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 559
    .line 560
    .line 561
    new-instance v4, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    .line 565
    .line 566
    goto :goto_b

    .line 567
    :cond_14
    invoke-static {v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    throw v0

    .line 572
    :cond_15
    :goto_b
    if-eqz v4, :cond_16

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-nez v3, :cond_16

    .line 579
    .line 580
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_16

    .line 589
    .line 590
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    check-cast v4, Ljava/lang/String;

    .line 595
    .line 596
    iget-object v9, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v9, Landroid/app/Notification$Builder;

    .line 599
    .line 600
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 601
    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-lez v3, :cond_1f

    .line 609
    .line 610
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 611
    .line 612
    if-nez v3, :cond_17

    .line 613
    .line 614
    new-instance v3, Landroid/os/Bundle;

    .line 615
    .line 616
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 617
    .line 618
    .line 619
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 620
    .line 621
    :cond_17
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 622
    .line 623
    const-string v4, "android.car.EXTENSIONS"

    .line 624
    .line 625
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    if-nez v3, :cond_18

    .line 630
    .line 631
    new-instance v3, Landroid/os/Bundle;

    .line 632
    .line 633
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 634
    .line 635
    .line 636
    :cond_18
    new-instance v9, Landroid/os/Bundle;

    .line 637
    .line 638
    invoke-direct {v9, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 639
    .line 640
    .line 641
    new-instance v10, Landroid/os/Bundle;

    .line 642
    .line 643
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 644
    .line 645
    .line 646
    const/4 v11, 0x0

    .line 647
    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 648
    .line 649
    .line 650
    move-result v12

    .line 651
    if-ge v11, v12, :cond_1d

    .line 652
    .line 653
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v12

    .line 657
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v13

    .line 661
    check-cast v13, Landroidx/core/app/NotificationCompat$Action;

    .line 662
    .line 663
    new-instance v14, Landroid/os/Bundle;

    .line 664
    .line 665
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 669
    .line 670
    .line 671
    move-result-object v15

    .line 672
    move-object/from16 v18, v5

    .line 673
    .line 674
    iget-object v5, v13, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 675
    .line 676
    if-eqz v15, :cond_19

    .line 677
    .line 678
    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    .line 679
    .line 680
    .line 681
    move-result v15

    .line 682
    :goto_e
    move-object/from16 v19, v6

    .line 683
    .line 684
    goto :goto_f

    .line 685
    :cond_19
    const/4 v15, 0x0

    .line 686
    goto :goto_e

    .line 687
    :goto_f
    const-string v6, "icon"

    .line 688
    .line 689
    invoke-virtual {v14, v6, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 690
    .line 691
    .line 692
    const-string v6, "title"

    .line 693
    .line 694
    iget-object v15, v13, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 695
    .line 696
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    const-string v6, "actionIntent"

    .line 700
    .line 701
    iget-object v15, v13, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 702
    .line 703
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 704
    .line 705
    .line 706
    if-eqz v5, :cond_1a

    .line 707
    .line 708
    new-instance v6, Landroid/os/Bundle;

    .line 709
    .line 710
    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 711
    .line 712
    .line 713
    goto :goto_10

    .line 714
    :cond_1a
    new-instance v6, Landroid/os/Bundle;

    .line 715
    .line 716
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 717
    .line 718
    .line 719
    :goto_10
    iget-boolean v5, v13, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 720
    .line 721
    invoke-virtual {v6, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    .line 723
    .line 724
    const-string v5, "extras"

    .line 725
    .line 726
    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 727
    .line 728
    .line 729
    iget-object v5, v13, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 730
    .line 731
    if-nez v5, :cond_1b

    .line 732
    .line 733
    const/4 v6, 0x0

    .line 734
    goto :goto_11

    .line 735
    :cond_1b
    array-length v6, v5

    .line 736
    new-array v6, v6, [Landroid/os/Bundle;

    .line 737
    .line 738
    array-length v15, v5

    .line 739
    if-gtz v15, :cond_1c

    .line 740
    .line 741
    :goto_11
    const-string v5, "remoteInputs"

    .line 742
    .line 743
    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 744
    .line 745
    .line 746
    const-string v5, "showsUserInterface"

    .line 747
    .line 748
    iget-boolean v6, v13, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 749
    .line 750
    invoke-virtual {v14, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    .line 752
    .line 753
    const-string v5, "semanticAction"

    .line 754
    .line 755
    const/4 v6, 0x0

    .line 756
    invoke-virtual {v14, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 760
    .line 761
    .line 762
    add-int/lit8 v11, v11, 0x1

    .line 763
    .line 764
    move-object/from16 v5, v18

    .line 765
    .line 766
    move-object/from16 v6, v19

    .line 767
    .line 768
    goto :goto_d

    .line 769
    :cond_1c
    const/4 v6, 0x0

    .line 770
    aget-object v0, v5, v6

    .line 771
    .line 772
    new-instance v0, Landroid/os/Bundle;

    .line 773
    .line 774
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    .line 776
    .line 777
    const/16 v17, 0x0

    .line 778
    .line 779
    throw v17

    .line 780
    :cond_1d
    move-object/from16 v18, v5

    .line 781
    .line 782
    move-object/from16 v19, v6

    .line 783
    .line 784
    const-string v2, "invisible_actions"

    .line 785
    .line 786
    invoke-virtual {v3, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 790
    .line 791
    .line 792
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 793
    .line 794
    if-nez v2, :cond_1e

    .line 795
    .line 796
    new-instance v2, Landroid/os/Bundle;

    .line 797
    .line 798
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 799
    .line 800
    .line 801
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 802
    .line 803
    :cond_1e
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 804
    .line 805
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    .line 807
    .line 808
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v2, Landroid/os/Bundle;

    .line 811
    .line 812
    invoke-virtual {v2, v4, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 813
    .line 814
    .line 815
    goto :goto_12

    .line 816
    :cond_1f
    move-object/from16 v18, v5

    .line 817
    .line 818
    move-object/from16 v19, v6

    .line 819
    .line 820
    :goto_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 821
    .line 822
    const/16 v9, 0x18

    .line 823
    .line 824
    if-lt v2, v9, :cond_20

    .line 825
    .line 826
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast v3, Landroid/app/Notification$Builder;

    .line 829
    .line 830
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 831
    .line 832
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 833
    .line 834
    .line 835
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v3, Landroid/app/Notification$Builder;

    .line 838
    .line 839
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;)V

    .line 840
    .line 841
    .line 842
    :cond_20
    const/16 v3, 0x1a

    .line 843
    .line 844
    if-lt v2, v3, :cond_21

    .line 845
    .line 846
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v3, Landroid/app/Notification$Builder;

    .line 849
    .line 850
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;)V

    .line 851
    .line 852
    .line 853
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v3, Landroid/app/Notification$Builder;

    .line 856
    .line 857
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;)V

    .line 858
    .line 859
    .line 860
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v3, Landroid/app/Notification$Builder;

    .line 863
    .line 864
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;)V

    .line 865
    .line 866
    .line 867
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v3, Landroid/app/Notification$Builder;

    .line 870
    .line 871
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;)V

    .line 872
    .line 873
    .line 874
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v3, Landroid/app/Notification$Builder;

    .line 877
    .line 878
    iget v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 879
    .line 880
    invoke-static {v3, v4}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 881
    .line 882
    .line 883
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-nez v3, :cond_21

    .line 888
    .line 889
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v3, Landroid/app/Notification$Builder;

    .line 892
    .line 893
    const/4 v9, 0x0

    .line 894
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    const/4 v6, 0x0

    .line 899
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    invoke-virtual {v3, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 908
    .line 909
    .line 910
    :cond_21
    const/16 v9, 0x1c

    .line 911
    .line 912
    if-lt v2, v9, :cond_22

    .line 913
    .line 914
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 919
    .line 920
    .line 921
    move-result v4

    .line 922
    if-nez v4, :cond_23

    .line 923
    .line 924
    :cond_22
    const/16 v9, 0x1d

    .line 925
    .line 926
    goto :goto_13

    .line 927
    :cond_23
    invoke-static {v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    throw v0

    .line 932
    :goto_13
    if-lt v2, v9, :cond_24

    .line 933
    .line 934
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v3, Landroid/app/Notification$Builder;

    .line 937
    .line 938
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 939
    .line 940
    invoke-static {v3, v4}, Landroidx/core/app/AppOpsManagerCompat$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)V

    .line 941
    .line 942
    .line 943
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast v3, Landroid/app/Notification$Builder;

    .line 946
    .line 947
    invoke-static {v3}, Landroidx/core/app/AppOpsManagerCompat$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;)V

    .line 948
    .line 949
    .line 950
    :cond_24
    const/16 v9, 0x1f

    .line 951
    .line 952
    if-lt v2, v9, :cond_25

    .line 953
    .line 954
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 955
    .line 956
    if-eqz v3, :cond_25

    .line 957
    .line 958
    iget-object v4, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast v4, Landroid/app/Notification$Builder;

    .line 961
    .line 962
    invoke-static {v4, v3}, Landroidx/core/app/AlarmManagerCompat$Api31Impl;->setForegroundServiceBehavior(Landroid/app/Notification$Builder;I)V

    .line 963
    .line 964
    .line 965
    :cond_25
    const/16 v3, 0x24

    .line 966
    .line 967
    if-lt v2, v3, :cond_26

    .line 968
    .line 969
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v3, Landroid/app/Notification$Builder;

    .line 972
    .line 973
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api36Impl;->setShortCriticalText(Landroid/app/Notification$Builder;)V

    .line 974
    .line 975
    .line 976
    :cond_26
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 977
    .line 978
    if-eqz v1, :cond_29

    .line 979
    .line 980
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 983
    .line 984
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 985
    .line 986
    if-eqz v1, :cond_27

    .line 987
    .line 988
    const/4 v1, 0x2

    .line 989
    iput v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 990
    .line 991
    goto :goto_14

    .line 992
    :cond_27
    const/4 v1, 0x1

    .line 993
    iput v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 994
    .line 995
    :goto_14
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 996
    .line 997
    check-cast v1, Landroid/app/Notification$Builder;

    .line 998
    .line 999
    const/4 v9, 0x0

    .line 1000
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1001
    .line 1002
    .line 1003
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1006
    .line 1007
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1008
    .line 1009
    .line 1010
    iget v1, v8, Landroid/app/Notification;->defaults:I

    .line 1011
    .line 1012
    and-int/lit8 v1, v1, -0x4

    .line 1013
    .line 1014
    iput v1, v8, Landroid/app/Notification;->defaults:I

    .line 1015
    .line 1016
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1019
    .line 1020
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1021
    .line 1022
    .line 1023
    const/16 v3, 0x1a

    .line 1024
    .line 1025
    if-lt v2, v3, :cond_29

    .line 1026
    .line 1027
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 1028
    .line 1029
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 1030
    .line 1031
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1032
    .line 1033
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    if-eqz v1, :cond_28

    .line 1038
    .line 1039
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1040
    .line 1041
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1042
    .line 1043
    const-string v2, "silent"

    .line 1044
    .line 1045
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1046
    .line 1047
    .line 1048
    :cond_28
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1049
    .line 1050
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1051
    .line 1052
    iget v0, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 1053
    .line 1054
    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 1055
    .line 1056
    .line 1057
    :cond_29
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 1065
    iput-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 1066
    iput p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 1067
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    move-result-object p2

    .line 1068
    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1069
    new-array v0, p2, [Lkotlin/Pair;

    .line 1070
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-static {p2}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    .line 1071
    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 1072
    iget-object p0, p1, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    invoke-virtual {p0, p2}, Lcom/beetstra/jutf7/Base64Util;->performSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public static removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 5
    .line 6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x4

    .line 9
    .line 10
    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 8
    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 12
    .line 13
    iget p0, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/AssertionError;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    iget-object p0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 31
    .line 32
    iget-object v3, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 33
    .line 34
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 50
    .line 51
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-class v4, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    const-class v4, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_1

    .line 79
    .line 80
    const-class v4, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$3:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 93
    .line 94
    const/4 v4, 0x7

    .line 95
    invoke-direct {v2, v4}, Landroidx/cardview/widget/CardView$1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    .line 99
    .line 100
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 105
    .line 106
    invoke-direct {p0, v3, v0, v2, v1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;-><init>(Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;Landroidx/camera/camera2/adapter/SessionConfigAdapter;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_2
    new-instance p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    .line 111
    .line 112
    iget-object v0, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 113
    .line 114
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 119
    .line 120
    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    .line 121
    .line 122
    iget-object v3, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 123
    .line 124
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 129
    .line 130
    iget-object v2, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 131
    .line 132
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroidx/camera/camera2/impl/TorchControl;

    .line 137
    .line 138
    invoke-direct {p0, v0, v1, v3, v2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :pswitch_3
    new-instance p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 143
    .line 144
    iget-object v0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 145
    .line 146
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraState;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :pswitch_4
    new-instance p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    .line 161
    .line 162
    iget-object v0, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 163
    .line 164
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 169
    .line 170
    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 171
    .line 172
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 177
    .line 178
    iget-object v3, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 179
    .line 180
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Landroidx/camera/camera2/adapter/ZslControl;

    .line 185
    .line 186
    iget-object v4, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 187
    .line 188
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 193
    .line 194
    invoke-virtual {v2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    sget-object v1, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 220
    .line 221
    .line 222
    return-object p0

    .line 223
    :pswitch_5
    move-object p0, v2

    .line 224
    new-instance v2, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    .line 225
    .line 226
    iget-object v0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->captureConfigAdapterProvider:Ldagger/internal/Provider;

    .line 227
    .line 228
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    move-object v3, v0

    .line 233
    check-cast v3, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    .line 234
    .line 235
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 236
    .line 237
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v4, v0

    .line 242
    check-cast v4, Landroidx/camera/camera2/impl/FlashControl;

    .line 243
    .line 244
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 245
    .line 246
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v5, v0

    .line 251
    check-cast v5, Landroidx/camera/camera2/impl/TorchControl;

    .line 252
    .line 253
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    .line 254
    .line 255
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v6, v0

    .line 260
    check-cast v6, Landroidx/camera/camera2/impl/VideoUsageControl;

    .line 261
    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 263
    .line 264
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    move-object v7, v0

    .line 269
    check-cast v7, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 270
    .line 271
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 272
    .line 273
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    move-object v8, v0

    .line 278
    check-cast v8, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 279
    .line 280
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 281
    .line 282
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 287
    .line 288
    iget-object v9, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 289
    .line 290
    invoke-virtual {v9}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    iget-object v10, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

    .line 295
    .line 296
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    const-class v12, Landroidx/camera/camera2/compat/quirk/UseTorchAsFlashQuirk;

    .line 313
    .line 314
    invoke-virtual {v11, v12}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_2

    .line 319
    .line 320
    new-instance v11, Landroidx/biometric/BiometricPrompt;

    .line 321
    .line 322
    invoke-direct {v11, v0, v9, v10}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;)V

    .line 323
    .line 324
    .line 325
    :goto_2
    move-object v9, v11

    .line 326
    goto :goto_3

    .line 327
    :cond_2
    sget-object v11, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$7:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :goto_3
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 331
    .line 332
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    move-object v10, p0

    .line 337
    check-cast v10, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 338
    .line 339
    iget-object v11, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    .line 340
    .line 341
    iget-object p0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 342
    .line 343
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    move-object v12, p0

    .line 348
    check-cast v12, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 349
    .line 350
    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/impl/CapturePipelineImpl;-><init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    .line 351
    .line 352
    .line 353
    return-object v2

    .line 354
    :pswitch_6
    iget-object p0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    .line 355
    .line 356
    iget-object v0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

    .line 357
    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    sget-boolean v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isEnabled:Z

    .line 365
    .line 366
    if-eqz v1, :cond_3

    .line 367
    .line 368
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    .line 376
    .line 377
    return-object p0

    .line 378
    :cond_3
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    .line 386
    .line 387
    return-object p0

    .line 388
    :pswitch_7
    move-object p0, v2

    .line 389
    move-object v2, v0

    .line 390
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 391
    .line 392
    move-object v4, v1

    .line 393
    iget-object v1, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    .line 394
    .line 395
    move-object v3, v2

    .line 396
    iget-object v2, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    .line 397
    .line 398
    iget-object v5, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 399
    .line 400
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    check-cast v5, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 405
    .line 406
    iget-object v4, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 407
    .line 408
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 409
    .line 410
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 415
    .line 416
    iget-object v3, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 417
    .line 418
    iget-object v3, v3, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 419
    .line 420
    move-object v6, v3

    .line 421
    check-cast v6, Landroidx/camera/core/CameraXConfig;

    .line 422
    .line 423
    move-object v3, v5

    .line 424
    move-object v5, p0

    .line 425
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V

    .line 426
    .line 427
    .line 428
    return-object v0

    .line 429
    :pswitch_8
    move-object v4, v1

    .line 430
    move-object p0, v2

    .line 431
    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 432
    .line 433
    iget-object v1, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

    .line 434
    .line 435
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 436
    .line 437
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 442
    .line 443
    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    .line 444
    .line 445
    .line 446
    return-object v0

    .line 447
    :pswitch_9
    move-object v4, v1

    .line 448
    iget-object p0, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 449
    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    return-object v3

    .line 454
    :pswitch_a
    move-object v4, v1

    .line 455
    move-object p0, v2

    .line 456
    iget-object v0, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 457
    .line 458
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 459
    .line 460
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    check-cast p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    const-string v1, "CXCP"

    .line 473
    .line 474
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_4

    .line 479
    .line 480
    const-string v2, "Prepared UseCaseGraphContext (Deferred)"

    .line 481
    .line 482
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    :cond_4
    new-instance v1, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    const/4 v2, 0x0

    .line 488
    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;I)V

    .line 489
    .line 490
    .line 491
    new-instance v2, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 492
    .line 493
    const/4 v3, 0x1

    .line 494
    invoke-direct {v2, v0, v3}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;I)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 498
    .line 499
    new-instance v3, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 500
    .line 501
    invoke-direct {v3, v1, p0, v0, v2}, Landroidx/camera/camera2/config/UseCaseGraphContext;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;)V

    .line 502
    .line 503
    .line 504
    return-object v3

    .line 505
    :pswitch_b
    move-object p0, v2

    .line 506
    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 507
    .line 508
    iget-object v0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 509
    .line 510
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    move-object v5, v0

    .line 515
    check-cast v5, Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 516
    .line 517
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 518
    .line 519
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    move-object v6, p0

    .line 524
    check-cast v6, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 525
    .line 526
    iget-object p0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionProcessorProvider:Ldagger/internal/Provider;

    .line 527
    .line 528
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p0

    .line 532
    if-nez p0, :cond_5

    .line 533
    .line 534
    iget-object p0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

    .line 535
    .line 536
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    move-object v7, p0

    .line 541
    check-cast v7, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 542
    .line 543
    iget-object v8, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 544
    .line 545
    iget-object v9, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    .line 546
    .line 547
    iget-object v10, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    .line 548
    .line 549
    invoke-direct/range {v4 .. v10}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 550
    .line 551
    .line 552
    return-object v4

    .line 553
    :cond_5
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 554
    .line 555
    .line 556
    return-object v3

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPath()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_4

    .line 14
    .line 15
    iget-object v3, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [Ljava/lang/Object;

    .line 18
    .line 19
    aget-object v3, v3, v2

    .line 20
    .line 21
    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlin/ranges/RangesKt;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v5, [I

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    aget v3, v5, v2

    .line 44
    .line 45
    const/4 v4, -0x1

    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    const-string v3, "["

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, [I

    .line 56
    .line 57
    aget v3, v3, v2

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, "]"

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    aget v4, v5, v2

    .line 69
    .line 70
    if-ltz v4, :cond_3

    .line 71
    .line 72
    const-string v5, "."

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE$1:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 86
    .line 87
    if-ne v3, v4, :cond_2

    .line 88
    .line 89
    const-string v3, "[<debug info disabled>]"

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 96
    .line 97
    if-eq v3, v4, :cond_3

    .line 98
    .line 99
    const-string v4, "[\'"

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "\']"

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public resize()V
    .locals 5

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 14
    .line 15
    new-array v1, v0, [I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v0, :cond_0

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    aput v4, v1, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, [I

    .line 30
    .line 31
    const/16 v3, 0xe

    .line 32
    .line 33
    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default(III[I[I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
