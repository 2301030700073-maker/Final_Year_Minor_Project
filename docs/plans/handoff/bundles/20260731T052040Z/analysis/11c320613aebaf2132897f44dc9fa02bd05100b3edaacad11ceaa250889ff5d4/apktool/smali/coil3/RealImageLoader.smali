.class public final Lcoil3/RealImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/ImageLoader;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final components:Lcoil3/ComponentRegistry;

.field public final options:Lcoil3/RealImageLoader$Options;

.field public final requestService:Lcom/grack/nanojson/JsonBuilder;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public volatile synthetic shutdown$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcoil3/RealImageLoader;

    .line 2
    .line 3
    const-string/jumbo v1, "shutdown$volatile"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader$Options;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 9
    .line 10
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 15
    .line 16
    new-instance v4, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-direct {v4, v3, v5}, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lcoil3/RealImageLoader;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    new-instance v2, Lcoil3/util/AndroidSystemCallbacks;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v2, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v3, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 45
    .line 46
    invoke-direct {v3, v2, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v2, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v3, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 52
    .line 53
    invoke-direct {v3, v2}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;)V

    .line 54
    .line 55
    .line 56
    iput-object v3, v2, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance v3, Lcom/grack/nanojson/JsonBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lcom/grack/nanojson/JsonBuilder;-><init>(Lcoil3/RealImageLoader;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lcoil3/RealImageLoader;->requestService:Lcom/grack/nanojson/JsonBuilder;

    .line 64
    .line 65
    iget-object v4, v1, Lcoil3/RealImageLoader$Options;->componentRegistry:Lcoil3/ComponentRegistry;

    .line 66
    .line 67
    new-instance v6, Lcoil3/ComponentRegistry$Builder;

    .line 68
    .line 69
    invoke-direct {v6, v4}, Lcoil3/ComponentRegistry$Builder;-><init>(Lcoil3/ComponentRegistry;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v6, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v7, v6, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object v8, v6, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v8, Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object v9, v6, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v9, Ljava/util/ArrayList;

    .line 87
    .line 88
    iget-object v1, v1, Lcoil3/RealImageLoader$Options;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 89
    .line 90
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 91
    .line 92
    sget-object v11, Lcoil3/UriKt;->serviceLoaderEnabledKey:Lcoil3/Extras$Key;

    .line 93
    .line 94
    iget-object v10, v10, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-nez v10, :cond_0

    .line 101
    .line 102
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    :cond_0
    check-cast v10, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    const/4 v11, 0x3

    .line 111
    if-eqz v10, :cond_1

    .line 112
    .line 113
    new-instance v10, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    invoke-direct {v10, v5}, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v10, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    invoke-direct {v10, v11}, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_1
    new-instance v10, Lcoil3/map/FileMapper;

    .line 130
    .line 131
    const/4 v12, 0x1

    .line 132
    invoke-direct {v10, v12}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 133
    .line 134
    .line 135
    const-class v13, Landroid/net/Uri;

    .line 136
    .line 137
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-virtual {v6, v10, v13}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 142
    .line 143
    .line 144
    new-instance v10, Lcoil3/map/FileMapper;

    .line 145
    .line 146
    invoke-direct {v10, v11}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 147
    .line 148
    .line 149
    const-class v13, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v6, v10, v13}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 156
    .line 157
    .line 158
    new-instance v10, Lcoil3/key/UriKeyer;

    .line 159
    .line 160
    invoke-direct {v10, v12}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 161
    .line 162
    .line 163
    const-class v13, Lcoil3/Uri;

    .line 164
    .line 165
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    new-instance v15, Lkotlin/Pair;

    .line 170
    .line 171
    invoke-direct {v15, v10, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v10, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 178
    .line 179
    invoke-direct {v10, v12}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-virtual {v6, v10, v14}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 187
    .line 188
    .line 189
    new-instance v10, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 190
    .line 191
    const/4 v14, 0x4

    .line 192
    invoke-direct {v10, v14}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-virtual {v6, v10, v15}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 200
    .line 201
    .line 202
    new-instance v10, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 203
    .line 204
    const/16 v15, 0x9

    .line 205
    .line 206
    invoke-direct {v10, v15}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    invoke-virtual {v6, v10, v15}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 214
    .line 215
    .line 216
    new-instance v10, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 217
    .line 218
    const/4 v15, 0x6

    .line 219
    invoke-direct {v10, v15}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 220
    .line 221
    .line 222
    const-class v15, Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    invoke-virtual {v6, v10, v15}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 229
    .line 230
    .line 231
    sget-object v10, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryMaxParallelismKey:Lcoil3/Extras$Key;

    .line 232
    .line 233
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 234
    .line 235
    sget-object v15, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryMaxParallelismKey:Lcoil3/Extras$Key;

    .line 236
    .line 237
    iget-object v10, v10, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    if-nez v10, :cond_2

    .line 244
    .line 245
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    :cond_2
    check-cast v10, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    sget v15, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    .line 256
    .line 257
    new-instance v15, Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 258
    .line 259
    invoke-direct {v15, v10}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;-><init>(I)V

    .line 260
    .line 261
    .line 262
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    .line 264
    const/16 v14, 0x1d

    .line 265
    .line 266
    sget-object v11, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;->RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    if-lt v10, v14, :cond_5

    .line 269
    .line 270
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 271
    .line 272
    sget-object v14, Lcoil3/ImageLoaders_androidKt;->imageDecoderEnabledKey:Lcoil3/Extras$Key;

    .line 273
    .line 274
    iget-object v10, v10, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 275
    .line 276
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    if-nez v10, :cond_3

    .line 281
    .line 282
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 283
    .line 284
    :cond_3
    check-cast v10, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-eqz v10, :cond_5

    .line 291
    .line 292
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 293
    .line 294
    sget-object v14, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryExifOrientationStrategyKey:Lcoil3/Extras$Key;

    .line 295
    .line 296
    iget-object v10, v10, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 297
    .line 298
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    if-nez v10, :cond_4

    .line 303
    .line 304
    move-object v10, v11

    .line 305
    :cond_4
    check-cast v10, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 306
    .line 307
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-eqz v10, :cond_5

    .line 312
    .line 313
    new-instance v10, Lcoil3/decode/StaticImageDecoder$Factory;

    .line 314
    .line 315
    invoke-direct {v10, v15}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    .line 316
    .line 317
    .line 318
    new-instance v14, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    .line 319
    .line 320
    invoke-direct {v14, v10, v12}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_5
    new-instance v10, Lcoil3/decode/BitmapFactoryDecoder$Factory;

    .line 327
    .line 328
    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 329
    .line 330
    sget-object v14, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryExifOrientationStrategyKey:Lcoil3/Extras$Key;

    .line 331
    .line 332
    iget-object v1, v1, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 333
    .line 334
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    if-nez v1, :cond_6

    .line 339
    .line 340
    goto :goto_0

    .line 341
    :cond_6
    move-object v11, v1

    .line 342
    :goto_0
    check-cast v11, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 343
    .line 344
    invoke-direct {v10, v15, v11}, Lcoil3/decode/BitmapFactoryDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;)V

    .line 345
    .line 346
    .line 347
    new-instance v1, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    .line 348
    .line 349
    invoke-direct {v1, v10, v12}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    new-instance v1, Lcoil3/map/FileMapper;

    .line 356
    .line 357
    invoke-direct {v1, v5}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 358
    .line 359
    .line 360
    const-class v10, Ljava/io/File;

    .line 361
    .line 362
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 367
    .line 368
    .line 369
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 370
    .line 371
    const/16 v10, 0x8

    .line 372
    .line 373
    invoke-direct {v1, v10}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 381
    .line 382
    .line 383
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 384
    .line 385
    const/4 v10, 0x3

    .line 386
    invoke-direct {v1, v10}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 387
    .line 388
    .line 389
    const-class v10, Ljava/nio/ByteBuffer;

    .line 390
    .line 391
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 396
    .line 397
    .line 398
    new-instance v1, Lcoil3/map/FileMapper;

    .line 399
    .line 400
    const/4 v10, 0x4

    .line 401
    invoke-direct {v1, v10}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 402
    .line 403
    .line 404
    const-class v10, Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 407
    .line 408
    .line 409
    move-result-object v10

    .line 410
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Lcoil3/map/FileMapper;

    .line 414
    .line 415
    const/4 v10, 0x2

    .line 416
    invoke-direct {v1, v10}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 417
    .line 418
    .line 419
    const-class v11, Lokio/Path;

    .line 420
    .line 421
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    invoke-virtual {v6, v1, v11}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 426
    .line 427
    .line 428
    new-instance v1, Lcoil3/key/UriKeyer;

    .line 429
    .line 430
    invoke-direct {v1, v10}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    new-instance v12, Lkotlin/Pair;

    .line 438
    .line 439
    invoke-direct {v12, v1, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    new-instance v1, Lcoil3/key/UriKeyer;

    .line 446
    .line 447
    invoke-direct {v1, v5}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 448
    .line 449
    .line 450
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    new-instance v12, Lkotlin/Pair;

    .line 455
    .line 456
    invoke-direct {v12, v1, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 463
    .line 464
    const/4 v11, 0x7

    .line 465
    invoke-direct {v1, v11}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 466
    .line 467
    .line 468
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    invoke-virtual {v6, v1, v11}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 473
    .line 474
    .line 475
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 476
    .line 477
    invoke-direct {v1, v10}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 478
    .line 479
    .line 480
    const-class v10, [B

    .line 481
    .line 482
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 487
    .line 488
    .line 489
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 490
    .line 491
    const/4 v10, 0x5

    .line 492
    invoke-direct {v1, v10}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    invoke-virtual {v6, v1, v10}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 500
    .line 501
    .line 502
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 503
    .line 504
    invoke-direct {v1, v5}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 505
    .line 506
    .line 507
    const-class v5, Landroid/graphics/Bitmap;

    .line 508
    .line 509
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v6, v1, v5}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 514
    .line 515
    .line 516
    new-instance v1, Lcoil3/intercept/EngineInterceptor;

    .line 517
    .line 518
    invoke-direct {v1, v0, v2, v3}, Lcoil3/intercept/EngineInterceptor;-><init>(Lcoil3/RealImageLoader;Lcoil3/util/AndroidSystemCallbacks;Lcom/grack/nanojson/JsonBuilder;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    new-instance v10, Lcoil3/ComponentRegistry;

    .line 525
    .line 526
    invoke-static {v4}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v11

    .line 530
    iget-object v1, v6, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v1, Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-static {v1}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v12

    .line 538
    invoke-static {v8}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    invoke-static {v7}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v14

    .line 546
    invoke-static {v9}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v15

    .line 550
    invoke-direct/range {v10 .. v15}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 551
    .line 552
    .line 553
    iput-object v10, v0, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 554
    .line 555
    return-void
.end method


# virtual methods
.method public final enqueue(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->mainCoroutineContextLazy:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    new-instance v1, Lcoil3/RealImageLoader$enqueue$job$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lcoil3/RealImageLoader$enqueue$job$1;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    iget-object p0, p0, Lcoil3/RealImageLoader;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Lcoil3/UriKt;->getDisposable(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/DeferredCoroutine;)Lcoil3/request/Disposable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final execute(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    instance-of v3, v1, Lcoil3/RealImageLoader$execute$3;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Lcoil3/RealImageLoader$execute$3;

    .line 15
    .line 16
    iget v4, v3, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v4, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v6

    .line 25
    iput v4, v3, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v9, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lcoil3/RealImageLoader$execute$3;

    .line 30
    .line 31
    invoke-direct {v3, v2, v1}, Lcoil3/RealImageLoader$execute$3;-><init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->result:Ljava/lang/Object;

    .line 36
    .line 37
    iget v3, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 38
    .line 39
    const/4 v10, 0x3

    .line 40
    const/4 v11, 0x2

    .line 41
    const/4 v12, 0x1

    .line 42
    const/4 v13, 0x0

    .line 43
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    if-eq v3, v12, :cond_3

    .line 48
    .line 49
    if-eq v3, v11, :cond_2

    .line 50
    .line 51
    if-ne v3, v10, :cond_1

    .line 52
    .line 53
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$6:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcoil3/size/Size;

    .line 56
    .line 57
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$5:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcoil3/size/SizeResolver;

    .line 60
    .line 61
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$4:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcoil3/Image;

    .line 64
    .line 65
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v3, v0

    .line 68
    check-cast v3, Lcoil3/EventListener;

    .line 69
    .line 70
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v4, v0

    .line 73
    check-cast v4, Lcoil3/request/ImageRequest;

    .line 74
    .line 75
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v5, v0

    .line 78
    check-cast v5, Lcoil3/request/RequestDelegate;

    .line 79
    .line 80
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcoil3/request/ImageRequest;

    .line 83
    .line 84
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_11

    .line 88
    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto/16 :goto_14

    .line 91
    .line 92
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 93
    .line 94
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v13

    .line 98
    :cond_2
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->I$0:I

    .line 99
    .line 100
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$5:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v3, Lcoil3/size/SizeResolver;

    .line 103
    .line 104
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$4:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Lcoil3/Image;

    .line 107
    .line 108
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Lcoil3/EventListener;

    .line 111
    .line 112
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v5, Lcoil3/request/ImageRequest;

    .line 115
    .line 116
    iget-object v6, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v6, Lcoil3/request/RequestDelegate;

    .line 119
    .line 120
    iget-object v7, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v7, Lcoil3/request/ImageRequest;

    .line 123
    .line 124
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    .line 127
    move-object v7, v5

    .line 128
    move-object v5, v3

    .line 129
    move-object v8, v6

    .line 130
    :goto_2
    move-object v3, v7

    .line 131
    move v7, v0

    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :catchall_1
    move-exception v0

    .line 135
    move-object v3, v4

    .line 136
    move-object v4, v5

    .line 137
    move-object v5, v6

    .line 138
    goto/16 :goto_14

    .line 139
    .line 140
    :cond_3
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->I$0:I

    .line 141
    .line 142
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v3, Lcoil3/EventListener;

    .line 145
    .line 146
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v4, Lcoil3/request/ImageRequest;

    .line 149
    .line 150
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v5, Lcoil3/request/RequestDelegate;

    .line 153
    .line 154
    iget-object v6, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v6, Lcoil3/request/ImageRequest;

    .line 157
    .line 158
    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .line 160
    .line 161
    goto/16 :goto_e

    .line 162
    .line 163
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    if-nez v0, :cond_5

    .line 175
    .line 176
    move v1, v12

    .line 177
    goto :goto_3

    .line 178
    :cond_5
    const/4 v1, 0x0

    .line 179
    :goto_3
    iget-object v3, v2, Lcoil3/RealImageLoader;->requestService:Lcom/grack/nanojson/JsonBuilder;

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    iget-object v3, v3, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 185
    .line 186
    move-object v4, v3

    .line 187
    check-cast v4, Lcoil3/RealImageLoader;

    .line 188
    .line 189
    iget-object v3, v5, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 190
    .line 191
    instance-of v6, v3, Lcoil3/target/ImageViewTarget;

    .line 192
    .line 193
    if-eqz v6, :cond_7

    .line 194
    .line 195
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->lifecycleKey:Lcoil3/Extras$Key;

    .line 196
    .line 197
    invoke-static {v5, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Landroidx/lifecycle/Lifecycle;

    .line 202
    .line 203
    if-nez v1, :cond_6

    .line 204
    .line 205
    invoke-static {v5}, Lcom/grack/nanojson/JsonBuilder;->findLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_6
    move-object v7, v1

    .line 210
    move-object v1, v3

    .line 211
    new-instance v3, Lcoil3/request/ViewTargetRequestDelegate;

    .line 212
    .line 213
    move-object v6, v1

    .line 214
    check-cast v6, Lcoil3/target/ImageViewTarget;

    .line 215
    .line 216
    invoke-direct/range {v3 .. v8}, Lcoil3/request/ViewTargetRequestDelegate;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ImageViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 217
    .line 218
    .line 219
    move-object v1, v3

    .line 220
    goto :goto_5

    .line 221
    :cond_7
    sget-object v3, Lcoil3/request/ImageRequests_androidKt;->lifecycleKey:Lcoil3/Extras$Key;

    .line 222
    .line 223
    invoke-static {v5, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Landroidx/lifecycle/Lifecycle;

    .line 228
    .line 229
    if-nez v3, :cond_9

    .line 230
    .line 231
    if-eqz v1, :cond_8

    .line 232
    .line 233
    invoke-static {v5}, Lcom/grack/nanojson/JsonBuilder;->findLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    move-object v3, v13

    .line 239
    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 240
    .line 241
    new-instance v1, Lcoil3/request/LifecycleRequestDelegate;

    .line 242
    .line 243
    invoke-direct {v1, v3, v8}, Lcoil3/request/LifecycleRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    new-instance v1, Lcoil3/request/BaseRequestDelegate;

    .line 248
    .line 249
    invoke-direct {v1, v8}, Lcoil3/request/BaseRequestDelegate;-><init>(Lkotlinx/coroutines/Job;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->assertActive()V

    .line 253
    .line 254
    .line 255
    iget-object v3, v5, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 256
    .line 257
    iget-object v6, v5, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 258
    .line 259
    new-instance v7, Lcoil3/request/ImageRequest$Builder;

    .line 260
    .line 261
    invoke-direct {v7, v5, v3}, Lcoil3/request/ImageRequest$Builder;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v4, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 265
    .line 266
    iget-object v3, v3, Lcoil3/RealImageLoader$Options;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 267
    .line 268
    iput-object v3, v7, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 269
    .line 270
    iget-object v3, v5, Lcoil3/request/ImageRequest;->defined:Lcoil3/request/ImageRequest$Defined;

    .line 271
    .line 272
    iget-object v4, v3, Lcoil3/request/ImageRequest$Defined;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 273
    .line 274
    if-nez v4, :cond_e

    .line 275
    .line 276
    instance-of v8, v6, Lcoil3/target/ImageViewTarget;

    .line 277
    .line 278
    if-eqz v8, :cond_d

    .line 279
    .line 280
    move-object v8, v6

    .line 281
    check-cast v8, Lcoil3/target/ImageViewTarget;

    .line 282
    .line 283
    iget-object v8, v8, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 284
    .line 285
    if-eqz v8, :cond_c

    .line 286
    .line 287
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 292
    .line 293
    if-eq v15, v13, :cond_b

    .line 294
    .line 295
    sget-object v13, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 296
    .line 297
    if-ne v15, v13, :cond_c

    .line 298
    .line 299
    :cond_b
    sget-object v8, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_c
    new-instance v13, Lcoil3/size/RealViewSizeResolver;

    .line 303
    .line 304
    invoke-direct {v13, v8}, Lcoil3/size/RealViewSizeResolver;-><init>(Landroid/widget/ImageView;)V

    .line 305
    .line 306
    .line 307
    move-object v8, v13

    .line 308
    goto :goto_6

    .line 309
    :cond_d
    sget-object v8, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 310
    .line 311
    :goto_6
    iput-object v8, v7, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_e
    move-object v8, v4

    .line 315
    :goto_7
    iget-object v13, v3, Lcoil3/request/ImageRequest$Defined;->scale:Lcoil3/size/Scale;

    .line 316
    .line 317
    if-nez v13, :cond_15

    .line 318
    .line 319
    instance-of v13, v6, Lcoil3/target/ImageViewTarget;

    .line 320
    .line 321
    if-eqz v13, :cond_f

    .line 322
    .line 323
    move-object v13, v6

    .line 324
    check-cast v13, Lcoil3/target/ImageViewTarget;

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_f
    const/4 v13, 0x0

    .line 328
    :goto_8
    if-eqz v13, :cond_10

    .line 329
    .line 330
    iget-object v13, v13, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_10
    const/4 v13, 0x0

    .line 334
    :goto_9
    if-eqz v13, :cond_11

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_11
    const/4 v13, 0x0

    .line 338
    :goto_a
    if-eqz v13, :cond_14

    .line 339
    .line 340
    sget-object v5, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 341
    .line 342
    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    if-nez v5, :cond_12

    .line 347
    .line 348
    const/4 v5, -0x1

    .line 349
    goto :goto_b

    .line 350
    :cond_12
    sget-object v13, Lcoil3/util/Utils_androidKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 351
    .line 352
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    aget v5, v13, v5

    .line 357
    .line 358
    :goto_b
    if-eq v5, v12, :cond_13

    .line 359
    .line 360
    if-eq v5, v11, :cond_13

    .line 361
    .line 362
    if-eq v5, v10, :cond_13

    .line 363
    .line 364
    const/4 v13, 0x4

    .line 365
    if-eq v5, v13, :cond_13

    .line 366
    .line 367
    sget-object v5, Lcoil3/size/Scale;->FILL:Lcoil3/size/Scale;

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_13
    sget-object v5, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_14
    iget-object v5, v5, Lcoil3/request/ImageRequest;->scale:Lcoil3/size/Scale;

    .line 374
    .line 375
    :goto_c
    iput-object v5, v7, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 376
    .line 377
    :cond_15
    iget-object v3, v3, Lcoil3/request/ImageRequest$Defined;->precision:Lcoil3/size/Precision;

    .line 378
    .line 379
    if-nez v3, :cond_18

    .line 380
    .line 381
    sget-object v3, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 382
    .line 383
    if-nez v4, :cond_16

    .line 384
    .line 385
    sget-object v4, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 386
    .line 387
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_16

    .line 392
    .line 393
    goto :goto_d

    .line 394
    :cond_16
    instance-of v4, v6, Lcoil3/target/ImageViewTarget;

    .line 395
    .line 396
    if-eqz v4, :cond_17

    .line 397
    .line 398
    instance-of v4, v8, Lcoil3/size/RealViewSizeResolver;

    .line 399
    .line 400
    if-eqz v4, :cond_17

    .line 401
    .line 402
    check-cast v6, Lcoil3/target/ImageViewTarget;

    .line 403
    .line 404
    iget-object v4, v6, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 405
    .line 406
    if-eqz v4, :cond_17

    .line 407
    .line 408
    check-cast v8, Lcoil3/size/RealViewSizeResolver;

    .line 409
    .line 410
    iget-object v5, v8, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 411
    .line 412
    if-ne v4, v5, :cond_17

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_17
    sget-object v3, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    .line 416
    .line 417
    :goto_d
    iput-object v3, v7, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 418
    .line 419
    :cond_18
    invoke-virtual {v7}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    sget-object v3, Lcoil3/EventListener;->NONE:Lcoil3/EventListener$Companion$NONE$1;

    .line 424
    .line 425
    :try_start_3
    iget-object v5, v4, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 426
    .line 427
    sget-object v6, Lcoil3/request/NullRequestData;->INSTANCE:Lcoil3/request/NullRequestData;

    .line 428
    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-nez v5, :cond_20

    .line 434
    .line 435
    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->start()V

    .line 436
    .line 437
    .line 438
    if-nez v0, :cond_19

    .line 439
    .line 440
    const/4 v5, 0x0

    .line 441
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 442
    .line 443
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 444
    .line 445
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 446
    .line 447
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 448
    .line 449
    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->I$0:I

    .line 450
    .line 451
    iput v12, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 452
    .line 453
    invoke-interface {v1, v9}, Lcoil3/request/RequestDelegate;->awaitStarted(Lcoil3/RealImageLoader$execute$3;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 457
    if-ne v5, v14, :cond_19

    .line 458
    .line 459
    goto/16 :goto_10

    .line 460
    .line 461
    :catchall_2
    move-exception v0

    .line 462
    move-object v5, v1

    .line 463
    goto/16 :goto_14

    .line 464
    .line 465
    :cond_19
    move-object v5, v1

    .line 466
    :goto_e
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    iget-object v1, v4, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 470
    .line 471
    if-eqz v1, :cond_1b

    .line 472
    .line 473
    iget-object v6, v4, Lcoil3/request/ImageRequest;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 474
    .line 475
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    check-cast v6, Lcoil3/Image;

    .line 480
    .line 481
    if-nez v6, :cond_1a

    .line 482
    .line 483
    iget-object v6, v4, Lcoil3/request/ImageRequest;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 484
    .line 485
    iget-object v6, v6, Lcoil3/request/ImageRequest$Defaults;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 486
    .line 487
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    check-cast v6, Lcoil3/Image;

    .line 492
    .line 493
    :cond_1a
    invoke-interface {v1, v6}, Lcoil3/target/Target;->onStart(Lcoil3/Image;)V

    .line 494
    .line 495
    .line 496
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    iget-object v1, v4, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 503
    .line 504
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 505
    .line 506
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 507
    .line 508
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 509
    .line 510
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$3;->L$4:Ljava/lang/Object;

    .line 511
    .line 512
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$3;->L$5:Ljava/lang/Object;

    .line 513
    .line 514
    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->I$0:I

    .line 515
    .line 516
    iput v11, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 517
    .line 518
    invoke-interface {v1, v9}, Lcoil3/size/SizeResolver;->size(Lcoil3/RealImageLoader$execute$3;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 522
    if-ne v1, v14, :cond_1c

    .line 523
    .line 524
    goto :goto_10

    .line 525
    :cond_1c
    move-object v7, v4

    .line 526
    move-object v4, v3

    .line 527
    move-object v8, v5

    .line 528
    const/4 v5, 0x0

    .line 529
    goto/16 :goto_2

    .line 530
    .line 531
    :goto_f
    :try_start_5
    check-cast v1, Lcoil3/size/Size;

    .line 532
    .line 533
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    iget-object v11, v3, Lcoil3/request/ImageRequest;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 537
    .line 538
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 539
    .line 540
    const/4 v6, 0x0

    .line 541
    move-object/from16 v16, v3

    .line 542
    .line 543
    move-object v3, v1

    .line 544
    move-object/from16 v1, v16

    .line 545
    .line 546
    :try_start_6
    invoke-direct/range {v0 .. v6}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V

    .line 547
    .line 548
    .line 549
    const/4 v5, 0x0

    .line 550
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Ljava/lang/Object;

    .line 551
    .line 552
    iput-object v8, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Ljava/lang/Object;

    .line 553
    .line 554
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Ljava/lang/Object;

    .line 555
    .line 556
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Ljava/lang/Object;

    .line 557
    .line 558
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$4:Ljava/lang/Object;

    .line 559
    .line 560
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$5:Ljava/lang/Object;

    .line 561
    .line 562
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$6:Ljava/lang/Object;

    .line 563
    .line 564
    iput v7, v9, Lcoil3/RealImageLoader$execute$3;->I$0:I

    .line 565
    .line 566
    iput v10, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 567
    .line 568
    invoke-static {v11, v0, v9}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 572
    if-ne v0, v14, :cond_1d

    .line 573
    .line 574
    :goto_10
    return-object v14

    .line 575
    :cond_1d
    move-object v3, v4

    .line 576
    move-object v5, v8

    .line 577
    move-object v4, v1

    .line 578
    move-object v1, v0

    .line 579
    :goto_11
    :try_start_7
    check-cast v1, Lcoil3/request/ImageResult;

    .line 580
    .line 581
    instance-of v0, v1, Lcoil3/request/SuccessResult;

    .line 582
    .line 583
    if-eqz v0, :cond_1e

    .line 584
    .line 585
    move-object v0, v1

    .line 586
    check-cast v0, Lcoil3/request/SuccessResult;

    .line 587
    .line 588
    iget-object v6, v4, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 589
    .line 590
    invoke-virtual {v2, v0, v6, v3}, Lcoil3/RealImageLoader;->onSuccess(Lcoil3/request/SuccessResult;Lcoil3/target/Target;Lcoil3/EventListener;)V

    .line 591
    .line 592
    .line 593
    goto :goto_12

    .line 594
    :cond_1e
    instance-of v0, v1, Lcoil3/request/ErrorResult;

    .line 595
    .line 596
    if-eqz v0, :cond_1f

    .line 597
    .line 598
    move-object v0, v1

    .line 599
    check-cast v0, Lcoil3/request/ErrorResult;

    .line 600
    .line 601
    iget-object v6, v4, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 602
    .line 603
    invoke-virtual {v2, v0, v6, v3}, Lcoil3/RealImageLoader;->onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 604
    .line 605
    .line 606
    :goto_12
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->complete()V

    .line 607
    .line 608
    .line 609
    return-object v1

    .line 610
    :cond_1f
    :try_start_8
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 611
    .line 612
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 613
    .line 614
    .line 615
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 616
    :catchall_3
    move-exception v0

    .line 617
    :goto_13
    move-object v3, v4

    .line 618
    move-object v5, v8

    .line 619
    move-object v4, v1

    .line 620
    goto :goto_14

    .line 621
    :catchall_4
    move-exception v0

    .line 622
    move-object v1, v3

    .line 623
    goto :goto_13

    .line 624
    :cond_20
    :try_start_9
    new-instance v0, Lcoil3/request/NullRequestDataException;

    .line 625
    .line 626
    const-string v5, "The request\'s data is null."

    .line 627
    .line 628
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 632
    :goto_14
    :try_start_a
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 633
    .line 634
    if-nez v1, :cond_21

    .line 635
    .line 636
    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->ErrorResult(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    iget-object v1, v4, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 641
    .line 642
    invoke-virtual {v2, v0, v1, v3}, Lcoil3/RealImageLoader;->onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 643
    .line 644
    .line 645
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->complete()V

    .line 646
    .line 647
    .line 648
    return-object v0

    .line 649
    :catchall_5
    move-exception v0

    .line 650
    goto :goto_15

    .line 651
    :cond_21
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 658
    :goto_15
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->complete()V

    .line 659
    .line 660
    .line 661
    throw v0
.end method

.method public final getMemoryCache()Lcoil3/memory/RealMemoryCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->memoryCacheLazy:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/memory/RealMemoryCache;

    .line 10
    .line 11
    return-object p0
.end method

.method public final onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    .locals 3

    .line 1
    iget-object p0, p1, Lcoil3/request/ErrorResult;->request:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/request/ErrorResult;->image:Lcoil3/Image;

    .line 4
    .line 5
    instance-of v1, p2, Lcoil3/target/ImageViewTarget;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p2, v0}, Lcoil3/target/Target;->onError(Lcoil3/Image;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 16
    .line 17
    invoke-static {p0, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcoil3/transition/Transition$Factory;

    .line 22
    .line 23
    move-object v2, p2

    .line 24
    check-cast v2, Lcoil3/target/ImageViewTarget;

    .line 25
    .line 26
    invoke-interface {v1, v2, p1}, Lcoil3/transition/Transition$Factory;->create(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v1, p1, Lcoil3/transition/NoneTransition;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast p2, Lcoil3/target/ImageViewTarget;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcoil3/transition/Transition;->transition()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onSuccess(Lcoil3/request/SuccessResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    .locals 3

    .line 1
    iget-object p0, p1, Lcoil3/request/SuccessResult;->request:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 4
    .line 5
    instance-of v1, p2, Lcoil3/target/ImageViewTarget;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p2, v0}, Lcoil3/target/Target;->onSuccess(Lcoil3/Image;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 16
    .line 17
    invoke-static {p0, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcoil3/transition/Transition$Factory;

    .line 22
    .line 23
    move-object v2, p2

    .line 24
    check-cast v2, Lcoil3/target/ImageViewTarget;

    .line 25
    .line 26
    invoke-interface {v1, v2, p1}, Lcoil3/transition/Transition$Factory;->create(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v1, p1, Lcoil3/transition/NoneTransition;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast p2, Lcoil3/target/ImageViewTarget;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcoil3/transition/Transition;->transition()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    return-void
.end method
