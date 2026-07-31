.class public Lorg/schabi/newpipe/RouterActivity$FetcherService;
.super Landroid/app/IntentService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/RouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetcherService"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public fetcher:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;


# direct methods
.method public static $r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 7

    .line 1
    const v0, 0x7f130532

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f13005f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f1303e1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v5, 0x7f130523

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const v6, 0x7f130521

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    instance-of v6, p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 54
    .line 55
    if-eqz v6, :cond_8

    .line 56
    .line 57
    iget-object v6, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 68
    .line 69
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    const p1, 0x7f130361

    .line 93
    .line 94
    .line 95
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 112
    .line 113
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p0, v0, p2, p1}, Landroidx/sqlite/SQLite;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    :goto_0
    const p1, 0x7f130046

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    iget-object v3, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_7

    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 147
    .line 148
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    invoke-static {p1}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-static {p0, p1, v0, v4}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    const p1, 0x7f130371

    .line 177
    .line 178
    .line 179
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_5
    const v0, 0x7f1300e2

    .line 188
    .line 189
    .line 190
    const v1, 0x7f1300e4

    .line 191
    .line 192
    .line 193
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 206
    .line 207
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p0, v0, p2, p1}, Landroidx/sqlite/SQLite;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_6
    :goto_1
    const p1, 0x7f130533

    .line 220
    .line 221
    .line 222
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_7
    new-instance v3, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 231
    .line 232
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 233
    .line 234
    invoke-direct {v3, p2}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_8
    instance-of v3, p2, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 239
    .line 240
    if-eqz v3, :cond_9

    .line 241
    .line 242
    move-object v3, p2

    .line 243
    check-cast v3, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 244
    .line 245
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    new-instance v5, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/4 v6, 0x2

    .line 256
    invoke-direct {v5, v6}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v3, v5}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-interface {v3}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lj$/util/Optional;->isPresent()Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_e

    .line 272
    .line 273
    new-instance v5, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;

    .line 274
    .line 275
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 284
    .line 285
    invoke-direct {v5, p2, v3}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 286
    .line 287
    .line 288
    move-object v3, v5

    .line 289
    goto :goto_2

    .line 290
    :cond_9
    instance-of v3, p2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 291
    .line 292
    if-eqz v3, :cond_e

    .line 293
    .line 294
    new-instance v3, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 295
    .line 296
    check-cast p2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 297
    .line 298
    invoke-direct {v3, p2, v4}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V

    .line 299
    .line 300
    .line 301
    :goto_2
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_a

    .line 308
    .line 309
    invoke-static {p0, v3, v4}, Landroidx/sqlite/SQLite;->playOnMainPlayer(Landroid/content/ContextWrapper;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_a
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    const/4 v0, 0x1

    .line 320
    if-eqz p2, :cond_b

    .line 321
    .line 322
    invoke-static {p0, v3, v0}, Landroidx/sqlite/SQLite;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_b
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eqz p2, :cond_c

    .line 333
    .line 334
    invoke-static {p0, v3, v0}, Landroidx/sqlite/SQLite;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_c
    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 339
    .line 340
    const p2, 0x7f13014b

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_e

    .line 352
    .line 353
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    if-nez p1, :cond_d

    .line 362
    .line 363
    const-string p1, "NavigationHelper"

    .line 364
    .line 365
    const-string p2, "Enqueueing but no player is open; defaulting to background player"

    .line 366
    .line 367
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    sget-object p1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 371
    .line 372
    :cond_d
    invoke-static {p0, v3, p1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 373
    .line 374
    .line 375
    :cond_e
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    .line 6
    const v1, 0x7f130385

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f08012d

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 25
    .line 26
    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 27
    .line 28
    iput v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 29
    .line 30
    const v1, 0x7f1303f8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 42
    .line 43
    const v1, 0x7f1303f7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v1, 0x1c8

    .line 61
    .line 62
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    const-string v0, "key_choice"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 17
    .line 18
    iget-object v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->linkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x3

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eq v0, v1, :cond_4

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 39
    .line 40
    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 50
    .line 51
    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 61
    .line 62
    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 69
    .line 70
    :goto_0
    if-eqz v0, :cond_5

    .line 71
    .line 72
    new-instance v4, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 73
    .line 74
    invoke-direct {v4, p0, p1, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v5, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {v5, p0, v4, v3}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    new-instance v4, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;

    .line 87
    .line 88
    invoke-direct {v4, p0, v1, p1, v3}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 92
    .line 93
    invoke-direct {p1, v5, v4}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 97
    .line 98
    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    const-string/jumbo p1, "subscribeActual failed"

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    throw p0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    throw p0

    .line 118
    :cond_5
    :goto_1
    return-void
.end method
