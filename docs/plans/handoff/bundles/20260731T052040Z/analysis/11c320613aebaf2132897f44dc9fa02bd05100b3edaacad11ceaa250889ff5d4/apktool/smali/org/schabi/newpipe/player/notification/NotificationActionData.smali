.class public final Lorg/schabi/newpipe/player/notification/NotificationActionData;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final action:Ljava/lang/String;

.field public final icon:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    .line 9
    .line 10
    return-void
.end method

.method public static fromNotificationActionEnum(Lorg/schabi/newpipe/player/Player;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;
    .locals 11

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 6
    .line 7
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND"

    .line 8
    .line 9
    const-string v3, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS"

    .line 10
    .line 11
    const-string v4, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD"

    .line 12
    .line 13
    const-string v5, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT"

    .line 14
    .line 15
    const/16 v6, 0x7d

    .line 16
    .line 17
    const/16 v7, 0x7b

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    const/4 v9, 0x1

    .line 21
    const-string v10, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    .line 22
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 29
    .line 30
    const p1, 0x7f1300ad

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v0, 0x7f0800fd

    .line 38
    .line 39
    .line 40
    const-string v1, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    .line 41
    .line 42
    invoke-direct {p0, v1, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 47
    .line 48
    const-string p1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE"

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 59
    .line 60
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_on:I

    .line 67
    .line 68
    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 73
    .line 74
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget v1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_off:I

    .line 81
    .line 82
    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/4 v0, 0x2

    .line 91
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT"

    .line 92
    .line 93
    if-ne p1, v0, :cond_1

    .line 94
    .line 95
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 96
    .line 97
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/R$drawable;->exo_media_action_repeat_all:I

    .line 104
    .line 105
    invoke-direct {p0, v2, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-ne p0, v9, :cond_2

    .line 114
    .line 115
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 116
    .line 117
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 118
    .line 119
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/R$drawable;->exo_media_action_repeat_one:I

    .line 124
    .line 125
    invoke-direct {p0, v2, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 130
    .line 131
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/R$drawable;->exo_media_action_repeat_off:I

    .line 138
    .line 139
    invoke-direct {p0, v2, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_3
    iget p1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 144
    .line 145
    if-eq p1, v8, :cond_3

    .line 146
    .line 147
    if-eq p1, v7, :cond_3

    .line 148
    .line 149
    if-ne p1, v6, :cond_4

    .line 150
    .line 151
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 152
    .line 153
    const p1, 0x7f13037d

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const v0, 0x7f080119

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v10, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :cond_4
    :pswitch_4
    iget p1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 168
    .line 169
    const/16 v0, 0x80

    .line 170
    .line 171
    if-ne p1, v0, :cond_5

    .line 172
    .line 173
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 174
    .line 175
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const v0, 0x7f080147

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v10, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_7

    .line 193
    .line 194
    iget p0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 195
    .line 196
    if-eq p0, v8, :cond_7

    .line 197
    .line 198
    if-eq p0, v7, :cond_7

    .line 199
    .line 200
    if-ne p0, v6, :cond_6

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_6
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 204
    .line 205
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_play:I

    .line 212
    .line 213
    invoke-direct {p0, v10, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_7
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 218
    .line 219
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_pause:I

    .line 226
    .line 227
    invoke-direct {p0, v10, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_5
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 232
    .line 233
    if-eqz p0, :cond_8

    .line 234
    .line 235
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    if-le p0, v9, :cond_8

    .line 240
    .line 241
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 242
    .line 243
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 244
    .line 245
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_next:I

    .line 250
    .line 251
    invoke-direct {p0, v5, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    return-object p0

    .line 255
    :cond_8
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 256
    .line 257
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 258
    .line 259
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_fastforward:I

    .line 264
    .line 265
    invoke-direct {p0, v4, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :pswitch_6
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 270
    .line 271
    if-eqz p0, :cond_9

    .line 272
    .line 273
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-le p0, v9, :cond_9

    .line 278
    .line 279
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 280
    .line 281
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 282
    .line 283
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_previous:I

    .line 288
    .line 289
    invoke-direct {p0, v3, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    return-object p0

    .line 293
    :cond_9
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 294
    .line 295
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 296
    .line 297
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_rewind:I

    .line 302
    .line 303
    invoke-direct {p0, v2, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    return-object p0

    .line 307
    :pswitch_7
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 308
    .line 309
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 310
    .line 311
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {p0, v4, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    return-object p0

    .line 319
    :pswitch_8
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 320
    .line 321
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 322
    .line 323
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-direct {p0, v2, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    return-object p0

    .line 331
    :pswitch_9
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 332
    .line 333
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 334
    .line 335
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-direct {p0, v5, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    return-object p0

    .line 343
    :pswitch_a
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 344
    .line 345
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 346
    .line 347
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-direct {p0, v3, p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    return-object p0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget p0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    .line 28
    .line 29
    iget p1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    .line 30
    .line 31
    if-ne p0, p1, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 17
    .line 18
    aput-object p0, v1, v2

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    aput-object v0, v1, p0

    .line 22
    .line 23
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
