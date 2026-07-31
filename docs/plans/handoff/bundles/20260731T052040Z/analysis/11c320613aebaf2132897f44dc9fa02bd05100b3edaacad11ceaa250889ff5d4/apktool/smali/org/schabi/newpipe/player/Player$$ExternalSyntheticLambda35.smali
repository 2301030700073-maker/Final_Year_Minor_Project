.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

.field public final synthetic f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 30
    .line 31
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 36
    .line 37
    invoke-direct {v2, p1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    :cond_1
    iget-object p0, v1, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    invoke-interface {p0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onAudioTrackUpdate()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :goto_0
    iget-object p0, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    :cond_3
    return-void

    .line 75
    :cond_4
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget-object v4, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 85
    .line 86
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    sub-int/2addr v4, v3

    .line 91
    if-ne v2, v4, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const v4, 0x7f130052

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {p1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->autoQueueOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object v4, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 130
    .line 131
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v4, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v4, v1, Lorg/schabi/newpipe/player/Player;->thumbnailDisposable:Lcoil3/request/Disposable;

    .line 143
    .line 144
    if-eqz v4, :cond_7

    .line 145
    .line 146
    invoke-interface {v4}, Lcoil3/request/Disposable;->dispose()V

    .line 147
    .line 148
    .line 149
    :cond_7
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_8

    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_8
    new-instance v5, Lorg/schabi/newpipe/player/Player$1;

    .line 162
    .line 163
    invoke-direct {v5, v1}, Lorg/schabi/newpipe/player/Player$1;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {v2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_9

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-lez v6, :cond_9

    .line 180
    .line 181
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    move-object v4, v2

    .line 188
    :cond_9
    new-instance v2, Lcoil3/request/ImageRequest$Builder;

    .line 189
    .line 190
    invoke-direct {v2, p0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v2, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 194
    .line 195
    sget-object v6, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 196
    .line 197
    new-instance v6, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    const v7, 0x7f0801b8

    .line 200
    .line 201
    .line 202
    invoke-direct {v6, v7, v0}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 203
    .line 204
    .line 205
    iput-object v6, v2, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 206
    .line 207
    iput-object v4, v2, Lcoil3/request/ImageRequest$Builder;->memoryCacheKey:Ljava/lang/String;

    .line 208
    .line 209
    iput-object v4, v2, Lcoil3/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v4, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    const/4 v6, 0x3

    .line 214
    invoke-direct {v4, v7, v6}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 215
    .line 216
    .line 217
    iput-object v4, v2, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    iput-object v5, v2, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 220
    .line 221
    new-instance v4, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;

    .line 222
    .line 223
    invoke-direct {v4, p0}, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 224
    .line 225
    .line 226
    new-array v5, v3, [Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;

    .line 227
    .line 228
    aput-object v4, v5, v0

    .line 229
    .line 230
    sget-object v4, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 231
    .line 232
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    iget-object v4, v2, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 237
    .line 238
    instance-of v5, v4, Lcoil3/Extras$Builder;

    .line 239
    .line 240
    if-eqz v5, :cond_a

    .line 241
    .line 242
    check-cast v4, Lcoil3/Extras$Builder;

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    instance-of v5, v4, Lcoil3/Extras;

    .line 246
    .line 247
    if-eqz v5, :cond_f

    .line 248
    .line 249
    check-cast v4, Lcoil3/Extras;

    .line 250
    .line 251
    new-instance v5, Lcoil3/Extras$Builder;

    .line 252
    .line 253
    invoke-direct {v5, v4}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    .line 254
    .line 255
    .line 256
    iput-object v5, v2, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 257
    .line 258
    move-object v4, v5

    .line 259
    :goto_2
    sget-object v5, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 260
    .line 261
    invoke-static {v6}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    iget-object v4, v4, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 266
    .line 267
    if-eqz v7, :cond_b

    .line 268
    .line 269
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_b
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :goto_3
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 277
    .line 278
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v10, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 282
    .line 283
    const/16 v5, 0x1b

    .line 284
    .line 285
    invoke-direct {v10, v4, v5}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    const/16 v11, 0x1f

    .line 289
    .line 290
    const/4 v7, 0x0

    .line 291
    const/4 v8, 0x0

    .line 292
    const/4 v9, 0x0

    .line 293
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    iget-object v5, v2, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 298
    .line 299
    iget-boolean v6, v2, Lcoil3/request/ImageRequest$Builder;->memoryCacheKeyExtrasAreMutable:Z

    .line 300
    .line 301
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_c

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_c
    invoke-static {v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_e

    .line 317
    .line 318
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 319
    .line 320
    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 321
    .line 322
    .line 323
    iput-object v6, v2, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 324
    .line 325
    iput-boolean v3, v2, Lcoil3/request/ImageRequest$Builder;->memoryCacheKeyExtrasAreMutable:Z

    .line 326
    .line 327
    move-object v5, v6

    .line 328
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    const-string v5, "coil#transformations"

    .line 336
    .line 337
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-static {p0}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    check-cast p0, Lcoil3/RealImageLoader;

    .line 349
    .line 350
    invoke-virtual {p0, v2}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    iput-object p0, v1, Lorg/schabi/newpipe/player/Player;->thumbnailDisposable:Lcoil3/request/Disposable;

    .line 355
    .line 356
    :goto_5
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    .line 361
    .line 362
    const/4 v3, 0x2

    .line 363
    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    .line 374
    .line 375
    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 379
    .line 380
    .line 381
    iget-object p0, v1, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 382
    .line 383
    if-eqz p0, :cond_d

    .line 384
    .line 385
    invoke-interface {p0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onAudioTrackUpdate()V

    .line 386
    .line 387
    .line 388
    :cond_d
    iget-object p0, v1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 389
    .line 390
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 391
    .line 392
    const/16 v1, 0xf

    .line 393
    .line 394
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_e
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_f
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
