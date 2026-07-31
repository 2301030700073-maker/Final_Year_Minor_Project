.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x6f4a0a

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "notificationBuilder"

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v0, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    .line 20
    .line 21
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    .line 23
    if-eqz v4, :cond_10

    .line 24
    .line 25
    iget v5, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    .line 26
    .line 27
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    if-ne v0, v6, :cond_0

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x0

    .line 35
    :goto_0
    invoke-virtual {v4, v0, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 36
    .line 37
    .line 38
    const/16 v4, 0x18

    .line 39
    .line 40
    if-ne v0, v6, :cond_6

    .line 41
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    if-ge v0, v4, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-lez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v2

    .line 94
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, "/"

    .line 103
    .line 104
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    if-lt v5, v4, :cond_8

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-lez v4, :cond_a

    .line 123
    .line 124
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 125
    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, "  ("

    .line 137
    .line 138
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, ")"

    .line 145
    .line 146
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v2

    .line 161
    :cond_8
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 162
    .line 163
    if-eqz v4, :cond_f

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-lez v0, :cond_a

    .line 176
    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 178
    .line 179
    if-eqz v0, :cond_9

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v2

    .line 189
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 190
    .line 191
    const-string v0, "notificationManager"

    .line 192
    .line 193
    if-eqz p1, :cond_e

    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 202
    .line 203
    if-eqz p1, :cond_c

    .line 204
    .line 205
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 206
    .line 207
    if-eqz p0, :cond_b

    .line 208
    .line 209
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p1, v1, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v2

    .line 221
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v2

    .line 225
    :cond_d
    :goto_4
    return-void

    .line 226
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v2

    .line 230
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v2

    .line 234
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v2

    .line 238
    :pswitch_0
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 244
    .line 245
    if-eqz p1, :cond_11

    .line 246
    .line 247
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v2

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 259
    check-cast p1, Ljava/util/List;

    .line 260
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    if-eqz p2, :cond_0

    .line 261
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    const-string p1, "FeedLoadService"

    const-string v0, "Error while storing result"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    new-instance p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;-><init>(Ljava/lang/Throwable;)V

    .line 263
    sget-object p2, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->stopService()V

    return-void

    .line 265
    :cond_0
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    .line 266
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->stopService()V

    return-void
.end method
