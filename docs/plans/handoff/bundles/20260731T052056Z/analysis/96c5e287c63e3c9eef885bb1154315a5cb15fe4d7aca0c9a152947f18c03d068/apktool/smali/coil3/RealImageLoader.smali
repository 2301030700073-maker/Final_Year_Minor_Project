.class public final Lcoil3/RealImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final components:Lcoil3/ComponentRegistry;

.field public final options:Lcoil3/RealImageLoader$Options;

.field public final requestService:Lcoil3/svg/internal/AndroidSvg;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public volatile synthetic shutdown$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcoil3/RealImageLoader;

    .line 2
    .line 3
    const-string v1, "shutdown$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader$Options;)V
    .locals 18

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
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 15
    .line 16
    new-instance v4, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-direct {v4, v3, v5}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lcoil3/RealImageLoader;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    new-instance v2, Lokhttp3/Cache$RealCacheRequest;

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
    iput-object v3, v2, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v3, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 45
    .line 46
    invoke-direct {v3, v2, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;-><init>(Lokhttp3/Cache$RealCacheRequest;Lcoil3/RealImageLoader;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v2, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v3, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v3, v4, v2}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object v3, v2, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v3, Lcoil3/svg/internal/AndroidSvg;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, v3, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 65
    .line 66
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    const/16 v8, 0x1a

    .line 70
    .line 71
    if-lt v6, v8, :cond_3

    .line 72
    .line 73
    sget-boolean v9, Lcoil3/util/HardwareBitmapsKt;->IS_DEVICE_BLOCKED:Z

    .line 74
    .line 75
    if-eqz v9, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    if-eq v6, v8, :cond_2

    .line 79
    .line 80
    const/16 v8, 0x1b

    .line 81
    .line 82
    if-ne v6, v8, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance v6, Lcoil3/util/ImmutableHardwareBitmapService;

    .line 86
    .line 87
    invoke-direct {v6, v7}, Lcoil3/util/ImmutableHardwareBitmapService;-><init>(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :goto_0
    new-instance v6, Lcoil3/util/LimitedFileDescriptorHardwareBitmapService;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    sget-boolean v6, Lcoil3/util/HardwareBitmapsKt;->IS_DEVICE_BLOCKED:Z

    .line 98
    .line 99
    :goto_1
    new-instance v6, Lcoil3/util/ImmutableHardwareBitmapService;

    .line 100
    .line 101
    invoke-direct {v6, v4}, Lcoil3/util/ImmutableHardwareBitmapService;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    :goto_2
    iput-object v6, v3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v3, v0, Lcoil3/RealImageLoader;->requestService:Lcoil3/svg/internal/AndroidSvg;

    .line 107
    .line 108
    iget-object v6, v1, Lcoil3/RealImageLoader$Options;->componentRegistry:Lcoil3/ComponentRegistry;

    .line 109
    .line 110
    new-instance v8, Lokhttp3/Request$Builder;

    .line 111
    .line 112
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v9, v6, Lcoil3/ComponentRegistry;->interceptors:Ljava/util/List;

    .line 116
    .line 117
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    iput-object v9, v8, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 122
    .line 123
    iget-object v9, v6, Lcoil3/ComponentRegistry;->mappers:Ljava/util/List;

    .line 124
    .line 125
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iput-object v9, v8, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v9, v6, Lcoil3/ComponentRegistry;->keyers:Ljava/util/List;

    .line 132
    .line 133
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    iput-object v9, v8, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v9, v6, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 140
    .line 141
    invoke-virtual {v9}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Ljava/util/List;

    .line 146
    .line 147
    new-instance v10, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_4

    .line 161
    .line 162
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    check-cast v11, Lkotlin/Pair;

    .line 167
    .line 168
    new-instance v12, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    const/16 v13, 0xc

    .line 171
    .line 172
    invoke-direct {v12, v13, v11}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    iput-object v10, v8, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object v6, v6, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 182
    .line 183
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Ljava/util/List;

    .line 188
    .line 189
    new-instance v9, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_5

    .line 203
    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    check-cast v10, Lcoil3/decode/Decoder$Factory;

    .line 209
    .line 210
    new-instance v11, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    .line 211
    .line 212
    invoke-direct {v11, v10, v4}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_5
    iput-object v9, v8, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 220
    .line 221
    iget-object v6, v8, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v6, Ljava/util/ArrayList;

    .line 224
    .line 225
    iget-object v9, v8, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v9, Ljava/util/ArrayList;

    .line 228
    .line 229
    iget-object v10, v8, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v10, Ljava/util/ArrayList;

    .line 232
    .line 233
    iget-object v11, v8, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v11, Ljava/util/ArrayList;

    .line 236
    .line 237
    iget-object v1, v1, Lcoil3/RealImageLoader$Options;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 238
    .line 239
    iget-object v12, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 240
    .line 241
    sget-object v13, Lcoil3/UriKt;->serviceLoaderEnabledKey:Lcoil3/Extras$Key;

    .line 242
    .line 243
    iget-object v12, v12, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 244
    .line 245
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    if-nez v12, :cond_6

    .line 250
    .line 251
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 252
    .line 253
    :cond_6
    check-cast v12, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    const/4 v13, 0x3

    .line 260
    if-eqz v12, :cond_7

    .line 261
    .line 262
    new-instance v12, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;

    .line 263
    .line 264
    invoke-direct {v12, v4}, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance v12, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;

    .line 271
    .line 272
    invoke-direct {v12, v13}, Lcoil3/RealImageLoaderKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_7
    new-instance v12, Lcoil3/map/FileMapper;

    .line 279
    .line 280
    invoke-direct {v12, v7}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 281
    .line 282
    .line 283
    sget-object v14, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 284
    .line 285
    const-class v15, Landroid/net/Uri;

    .line 286
    .line 287
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    invoke-virtual {v8, v12, v15}, Lokhttp3/Request$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/reflect/KClass;)V

    .line 292
    .line 293
    .line 294
    new-instance v12, Lcoil3/map/FileMapper;

    .line 295
    .line 296
    invoke-direct {v12, v13}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 297
    .line 298
    .line 299
    const-class v15, Ljava/lang/Integer;

    .line 300
    .line 301
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 302
    .line 303
    .line 304
    move-result-object v15

    .line 305
    invoke-virtual {v8, v12, v15}, Lokhttp3/Request$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/reflect/KClass;)V

    .line 306
    .line 307
    .line 308
    new-instance v12, Lcoil3/key/UriKeyer;

    .line 309
    .line 310
    invoke-direct {v12, v7}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 311
    .line 312
    .line 313
    const-class v15, Lcoil3/Uri;

    .line 314
    .line 315
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    new-instance v13, Lkotlin/Pair;

    .line 320
    .line 321
    invoke-direct {v13, v12, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    new-instance v5, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 328
    .line 329
    invoke-direct {v5, v7}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    invoke-virtual {v8, v5, v12}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 337
    .line 338
    .line 339
    new-instance v5, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 340
    .line 341
    const/4 v12, 0x4

    .line 342
    invoke-direct {v5, v12}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    invoke-virtual {v8, v5, v13}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 350
    .line 351
    .line 352
    new-instance v5, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 353
    .line 354
    const/16 v13, 0x9

    .line 355
    .line 356
    invoke-direct {v5, v13}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 360
    .line 361
    .line 362
    move-result-object v13

    .line 363
    invoke-virtual {v8, v5, v13}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 364
    .line 365
    .line 366
    new-instance v5, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 367
    .line 368
    const/4 v13, 0x6

    .line 369
    invoke-direct {v5, v13}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const-class v13, Landroid/graphics/drawable/Drawable;

    .line 373
    .line 374
    invoke-virtual {v14, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    invoke-virtual {v8, v5, v13}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 379
    .line 380
    .line 381
    sget-object v5, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryMaxParallelismKey:Lcoil3/Extras$Key;

    .line 382
    .line 383
    iget-object v5, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 384
    .line 385
    sget-object v13, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryMaxParallelismKey:Lcoil3/Extras$Key;

    .line 386
    .line 387
    iget-object v5, v5, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 388
    .line 389
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    if-nez v5, :cond_8

    .line 394
    .line 395
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    :cond_8
    check-cast v5, Ljava/lang/Number;

    .line 400
    .line 401
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    sget v13, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    .line 406
    .line 407
    new-instance v13, Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 408
    .line 409
    invoke-direct {v13, v5}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;-><init>(I)V

    .line 410
    .line 411
    .line 412
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 413
    .line 414
    const/16 v12, 0x1d

    .line 415
    .line 416
    sget-object v4, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;->RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 417
    .line 418
    if-lt v5, v12, :cond_b

    .line 419
    .line 420
    iget-object v5, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 421
    .line 422
    sget-object v12, Lcoil3/ImageLoaders_androidKt;->imageDecoderEnabledKey:Lcoil3/Extras$Key;

    .line 423
    .line 424
    iget-object v5, v5, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 425
    .line 426
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    if-nez v5, :cond_9

    .line 431
    .line 432
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 433
    .line 434
    :cond_9
    check-cast v5, Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_b

    .line 441
    .line 442
    iget-object v5, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 443
    .line 444
    sget-object v12, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryExifOrientationStrategyKey:Lcoil3/Extras$Key;

    .line 445
    .line 446
    iget-object v5, v5, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 447
    .line 448
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    if-nez v5, :cond_a

    .line 453
    .line 454
    move-object v5, v4

    .line 455
    :cond_a
    check-cast v5, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 456
    .line 457
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    if-eqz v5, :cond_b

    .line 462
    .line 463
    new-instance v5, Lcoil3/decode/StaticImageDecoder$Factory;

    .line 464
    .line 465
    invoke-direct {v5, v13}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    .line 466
    .line 467
    .line 468
    new-instance v12, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    .line 469
    .line 470
    invoke-direct {v12, v5, v7}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    :cond_b
    new-instance v5, Lcoil3/decode/BitmapFactoryDecoder$Factory;

    .line 477
    .line 478
    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 479
    .line 480
    sget-object v12, Lcoil3/ImageLoaders_androidKt;->bitmapFactoryExifOrientationStrategyKey:Lcoil3/Extras$Key;

    .line 481
    .line 482
    iget-object v1, v1, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 483
    .line 484
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    if-nez v1, :cond_c

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_c
    move-object v4, v1

    .line 492
    :goto_5
    check-cast v4, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 493
    .line 494
    invoke-direct {v5, v13, v4}, Lcoil3/decode/BitmapFactoryDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;)V

    .line 495
    .line 496
    .line 497
    new-instance v1, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    .line 498
    .line 499
    invoke-direct {v1, v5, v7}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    new-instance v1, Lcoil3/map/FileMapper;

    .line 506
    .line 507
    const/4 v4, 0x0

    .line 508
    invoke-direct {v1, v4}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 509
    .line 510
    .line 511
    const-class v4, Ljava/io/File;

    .line 512
    .line 513
    invoke-virtual {v14, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/reflect/KClass;)V

    .line 518
    .line 519
    .line 520
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 521
    .line 522
    const/16 v4, 0x8

    .line 523
    .line 524
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 532
    .line 533
    .line 534
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 535
    .line 536
    const/4 v4, 0x3

    .line 537
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 538
    .line 539
    .line 540
    const-class v4, Ljava/nio/ByteBuffer;

    .line 541
    .line 542
    invoke-virtual {v14, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 547
    .line 548
    .line 549
    new-instance v1, Lcoil3/map/FileMapper;

    .line 550
    .line 551
    const/4 v4, 0x4

    .line 552
    invoke-direct {v1, v4}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 553
    .line 554
    .line 555
    const-class v4, Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v14, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/reflect/KClass;)V

    .line 562
    .line 563
    .line 564
    new-instance v1, Lcoil3/map/FileMapper;

    .line 565
    .line 566
    const/4 v4, 0x2

    .line 567
    invoke-direct {v1, v4}, Lcoil3/map/FileMapper;-><init>(I)V

    .line 568
    .line 569
    .line 570
    const-class v5, Lokio/Path;

    .line 571
    .line 572
    invoke-virtual {v14, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    invoke-virtual {v8, v1, v5}, Lokhttp3/Request$Builder;->add(Lcoil3/map/FileMapper;Lkotlin/reflect/KClass;)V

    .line 577
    .line 578
    .line 579
    new-instance v1, Lcoil3/key/UriKeyer;

    .line 580
    .line 581
    invoke-direct {v1, v4}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    new-instance v5, Lkotlin/Pair;

    .line 589
    .line 590
    invoke-direct {v5, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    new-instance v1, Lcoil3/key/UriKeyer;

    .line 597
    .line 598
    const/4 v4, 0x0

    .line 599
    invoke-direct {v1, v4}, Lcoil3/key/UriKeyer;-><init>(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    new-instance v5, Lkotlin/Pair;

    .line 607
    .line 608
    invoke-direct {v5, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 615
    .line 616
    const/4 v4, 0x7

    .line 617
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 625
    .line 626
    .line 627
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 628
    .line 629
    const/4 v4, 0x2

    .line 630
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 631
    .line 632
    .line 633
    const-class v4, [B

    .line 634
    .line 635
    invoke-virtual {v14, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 640
    .line 641
    .line 642
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 643
    .line 644
    const/4 v4, 0x5

    .line 645
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v14, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 653
    .line 654
    .line 655
    new-instance v1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 656
    .line 657
    const/4 v4, 0x0

    .line 658
    invoke-direct {v1, v4}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>(I)V

    .line 659
    .line 660
    .line 661
    const-class v4, Landroid/graphics/Bitmap;

    .line 662
    .line 663
    invoke-virtual {v14, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-virtual {v8, v1, v4}, Lokhttp3/Request$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    .line 668
    .line 669
    .line 670
    new-instance v1, Lcoil3/intercept/EngineInterceptor;

    .line 671
    .line 672
    invoke-direct {v1, v0, v2, v3}, Lcoil3/intercept/EngineInterceptor;-><init>(Lcoil3/RealImageLoader;Lokhttp3/Cache$RealCacheRequest;Lcoil3/svg/internal/AndroidSvg;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    new-instance v12, Lcoil3/ComponentRegistry;

    .line 679
    .line 680
    invoke-static {v6}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    iget-object v1, v8, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object v14

    .line 692
    invoke-static {v10}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 693
    .line 694
    .line 695
    move-result-object v15

    .line 696
    invoke-static {v9}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 697
    .line 698
    .line 699
    move-result-object v16

    .line 700
    invoke-static {v11}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 701
    .line 702
    .line 703
    move-result-object v17

    .line 704
    invoke-direct/range {v12 .. v17}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 705
    .line 706
    .line 707
    iput-object v12, v0, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 708
    .line 709
    return-void
.end method


# virtual methods
.method public final enqueue(Lcoil3/request/ImageRequest;)V
    .locals 4

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
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2, v3}, Lcoil3/RealImageLoader$enqueue$job$1;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    iget-object p0, p0, Lcoil3/RealImageLoader;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 20
    .line 21
    invoke-static {p0, v0, v1, v2}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Lcoil3/UriKt;->getDisposable(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/DeferredCoroutine;)Lcoil3/request/Disposable;

    .line 26
    .line 27
    .line 28
    return-void
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
    move-object/from16 v0, p3

    .line 6
    .line 7
    instance-of v1, v0, Lcoil3/RealImageLoader$execute$3;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcoil3/RealImageLoader$execute$3;

    .line 13
    .line 14
    iget v3, v1, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v6, v3, v4

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v1, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v9, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lcoil3/RealImageLoader$execute$3;

    .line 28
    .line 29
    invoke-direct {v1, v2, v0}, Lcoil3/RealImageLoader$execute$3;-><init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$3;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v1, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 38
    .line 39
    const/4 v11, 0x3

    .line 40
    const/4 v12, 0x2

    .line 41
    const/4 v13, 0x1

    .line 42
    const/4 v14, 0x0

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    if-eq v1, v13, :cond_3

    .line 46
    .line 47
    if-eq v1, v12, :cond_2

    .line 48
    .line 49
    if-ne v1, v11, :cond_1

    .line 50
    .line 51
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 52
    .line 53
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 54
    .line 55
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_11

    .line 61
    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_14

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v14

    .line 71
    :cond_2
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Lcoil3/Image;

    .line 72
    .line 73
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 74
    .line 75
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 76
    .line 77
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 78
    .line 79
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    move-object v8, v5

    .line 83
    move-object v5, v1

    .line 84
    move-object v1, v4

    .line 85
    move-object v4, v3

    .line 86
    goto/16 :goto_f

    .line 87
    .line 88
    :catchall_1
    move-exception v0

    .line 89
    move-object v1, v3

    .line 90
    move-object v3, v4

    .line 91
    move-object v4, v5

    .line 92
    goto/16 :goto_14

    .line 93
    .line 94
    :cond_3
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 95
    .line 96
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 97
    .line 98
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 99
    .line 100
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    goto/16 :goto_e

    .line 104
    .line 105
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v9, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    if-nez p2, :cond_5

    .line 118
    .line 119
    move v0, v13

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const/4 v0, 0x0

    .line 122
    :goto_2
    iget-object v1, v2, Lcoil3/RealImageLoader;->requestService:Lcoil3/svg/internal/AndroidSvg;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object v1, v1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v4, v1

    .line 130
    check-cast v4, Lcoil3/RealImageLoader;

    .line 131
    .line 132
    iget-object v1, v5, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 133
    .line 134
    instance-of v3, v1, Lcoil3/target/ImageViewTarget;

    .line 135
    .line 136
    if-eqz v3, :cond_7

    .line 137
    .line 138
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->lifecycleKey:Lcoil3/Extras$Key;

    .line 139
    .line 140
    invoke-static {v5, v0}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 145
    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    invoke-static {v5}, Lcoil3/svg/internal/AndroidSvg;->findLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/LifecycleRegistry;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :cond_6
    move-object v7, v0

    .line 153
    new-instance v3, Lcoil3/request/ViewTargetRequestDelegate;

    .line 154
    .line 155
    move-object v6, v1

    .line 156
    check-cast v6, Lcoil3/target/ImageViewTarget;

    .line 157
    .line 158
    invoke-direct/range {v3 .. v8}, Lcoil3/request/ViewTargetRequestDelegate;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ImageViewTarget;Landroidx/lifecycle/LifecycleRegistry;Lkotlinx/coroutines/Job;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->lifecycleKey:Lcoil3/Extras$Key;

    .line 163
    .line 164
    invoke-static {v5, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 169
    .line 170
    if-nez v1, :cond_9

    .line 171
    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    invoke-static {v5}, Lcoil3/svg/internal/AndroidSvg;->findLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/LifecycleRegistry;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    goto :goto_3

    .line 179
    :cond_8
    move-object v1, v14

    .line 180
    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 181
    .line 182
    new-instance v0, Lcoil3/request/LifecycleRequestDelegate;

    .line 183
    .line 184
    invoke-direct {v0, v1, v8}, Lcoil3/request/LifecycleRequestDelegate;-><init>(Landroidx/lifecycle/LifecycleRegistry;Lkotlinx/coroutines/Job;)V

    .line 185
    .line 186
    .line 187
    :goto_4
    move-object v3, v0

    .line 188
    goto :goto_5

    .line 189
    :cond_a
    new-instance v0, Lcoil3/request/BaseRequestDelegate;

    .line 190
    .line 191
    invoke-direct {v0, v8}, Lcoil3/request/BaseRequestDelegate;-><init>(Lkotlinx/coroutines/Job;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :goto_5
    invoke-interface {v3}, Lcoil3/request/RequestDelegate;->assertActive()V

    .line 196
    .line 197
    .line 198
    invoke-static {v5}, Lcoil3/request/ImageRequest;->newBuilder$default(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, v5, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 203
    .line 204
    iget-object v4, v4, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 205
    .line 206
    iget-object v4, v4, Lcoil3/RealImageLoader$Options;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 207
    .line 208
    iput-object v4, v0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 209
    .line 210
    iget-object v4, v5, Lcoil3/request/ImageRequest;->defined:Lcoil3/request/ImageRequest$Defined;

    .line 211
    .line 212
    iget-object v6, v4, Lcoil3/request/ImageRequest$Defined;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 213
    .line 214
    if-nez v6, :cond_e

    .line 215
    .line 216
    instance-of v7, v1, Lcoil3/target/ImageViewTarget;

    .line 217
    .line 218
    if-eqz v7, :cond_d

    .line 219
    .line 220
    move-object v7, v1

    .line 221
    check-cast v7, Lcoil3/target/ImageViewTarget;

    .line 222
    .line 223
    iget-object v7, v7, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 224
    .line 225
    if-eqz v7, :cond_c

    .line 226
    .line 227
    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 232
    .line 233
    if-eq v8, v15, :cond_b

    .line 234
    .line 235
    sget-object v15, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 236
    .line 237
    if-ne v8, v15, :cond_c

    .line 238
    .line 239
    :cond_b
    sget-object v7, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_c
    new-instance v8, Lcoil3/size/RealViewSizeResolver;

    .line 243
    .line 244
    invoke-direct {v8, v7}, Lcoil3/size/RealViewSizeResolver;-><init>(Landroid/widget/ImageView;)V

    .line 245
    .line 246
    .line 247
    move-object v7, v8

    .line 248
    goto :goto_6

    .line 249
    :cond_d
    sget-object v7, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 250
    .line 251
    :goto_6
    iput-object v7, v0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_e
    move-object v7, v6

    .line 255
    :goto_7
    iget-object v8, v4, Lcoil3/request/ImageRequest$Defined;->scale:Lcoil3/size/Scale;

    .line 256
    .line 257
    if-nez v8, :cond_15

    .line 258
    .line 259
    instance-of v8, v1, Lcoil3/target/ImageViewTarget;

    .line 260
    .line 261
    if-eqz v8, :cond_f

    .line 262
    .line 263
    move-object v8, v1

    .line 264
    check-cast v8, Lcoil3/target/ImageViewTarget;

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_f
    move-object v8, v14

    .line 268
    :goto_8
    if-eqz v8, :cond_10

    .line 269
    .line 270
    iget-object v8, v8, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_10
    move-object v8, v14

    .line 274
    :goto_9
    if-eqz v8, :cond_11

    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_11
    move-object v8, v14

    .line 278
    :goto_a
    if-eqz v8, :cond_14

    .line 279
    .line 280
    sget-object v5, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 281
    .line 282
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    if-nez v5, :cond_12

    .line 287
    .line 288
    const/4 v5, -0x1

    .line 289
    goto :goto_b

    .line 290
    :cond_12
    sget-object v8, Lcoil3/util/Utils_androidKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    aget v5, v8, v5

    .line 297
    .line 298
    :goto_b
    if-eq v5, v13, :cond_13

    .line 299
    .line 300
    if-eq v5, v12, :cond_13

    .line 301
    .line 302
    if-eq v5, v11, :cond_13

    .line 303
    .line 304
    const/4 v8, 0x4

    .line 305
    if-eq v5, v8, :cond_13

    .line 306
    .line 307
    sget-object v5, Lcoil3/size/Scale;->FILL:Lcoil3/size/Scale;

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_13
    sget-object v5, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_14
    iget-object v5, v5, Lcoil3/request/ImageRequest;->scale:Lcoil3/size/Scale;

    .line 314
    .line 315
    :goto_c
    iput-object v5, v0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 316
    .line 317
    :cond_15
    iget-object v4, v4, Lcoil3/request/ImageRequest$Defined;->precision:Lcoil3/size/Precision;

    .line 318
    .line 319
    if-nez v4, :cond_18

    .line 320
    .line 321
    if-nez v6, :cond_16

    .line 322
    .line 323
    sget-object v4, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/RealSizeResolver;

    .line 324
    .line 325
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_16

    .line 330
    .line 331
    sget-object v1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_16
    instance-of v4, v1, Lcoil3/target/ImageViewTarget;

    .line 335
    .line 336
    if-eqz v4, :cond_17

    .line 337
    .line 338
    instance-of v4, v7, Lcoil3/size/RealViewSizeResolver;

    .line 339
    .line 340
    if-eqz v4, :cond_17

    .line 341
    .line 342
    check-cast v1, Lcoil3/target/ImageViewTarget;

    .line 343
    .line 344
    iget-object v1, v1, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 345
    .line 346
    if-eqz v1, :cond_17

    .line 347
    .line 348
    check-cast v7, Lcoil3/size/RealViewSizeResolver;

    .line 349
    .line 350
    iget-object v4, v7, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 351
    .line 352
    if-ne v1, v4, :cond_17

    .line 353
    .line 354
    sget-object v1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 355
    .line 356
    goto :goto_d

    .line 357
    :cond_17
    sget-object v1, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    .line 358
    .line 359
    :goto_d
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 360
    .line 361
    :cond_18
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    sget-object v4, Lcoil3/EventListener$Companion$NONE$1;->NONE:Lcoil3/EventListener$Companion$NONE$1;

    .line 366
    .line 367
    :try_start_3
    iget-object v0, v1, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 368
    .line 369
    sget-object v5, Lcoil3/request/NullRequestData;->INSTANCE:Lcoil3/request/NullRequestData;

    .line 370
    .line 371
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_23

    .line 376
    .line 377
    invoke-interface {v3}, Lcoil3/request/RequestDelegate;->start()V

    .line 378
    .line 379
    .line 380
    if-nez p2, :cond_19

    .line 381
    .line 382
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 383
    .line 384
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 385
    .line 386
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 387
    .line 388
    iput v13, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 389
    .line 390
    invoke-interface {v3, v9}, Lcoil3/request/RequestDelegate;->awaitStarted(Lcoil3/RealImageLoader$execute$3;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 394
    if-ne v0, v10, :cond_19

    .line 395
    .line 396
    goto/16 :goto_10

    .line 397
    .line 398
    :catchall_2
    move-exception v0

    .line 399
    move-object/from16 v16, v3

    .line 400
    .line 401
    move-object v3, v1

    .line 402
    move-object v1, v4

    .line 403
    move-object/from16 v4, v16

    .line 404
    .line 405
    goto/16 :goto_14

    .line 406
    .line 407
    :cond_19
    move-object/from16 v16, v3

    .line 408
    .line 409
    move-object v3, v1

    .line 410
    move-object v1, v4

    .line 411
    move-object/from16 v4, v16

    .line 412
    .line 413
    :goto_e
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iget-object v0, v3, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 417
    .line 418
    if-eqz v0, :cond_1b

    .line 419
    .line 420
    iget-object v5, v3, Lcoil3/request/ImageRequest;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 421
    .line 422
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    check-cast v5, Lcoil3/Image;

    .line 427
    .line 428
    if-nez v5, :cond_1a

    .line 429
    .line 430
    iget-object v5, v3, Lcoil3/request/ImageRequest;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 431
    .line 432
    iget-object v5, v5, Lcoil3/request/ImageRequest$Defaults;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 433
    .line 434
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    check-cast v5, Lcoil3/Image;

    .line 439
    .line 440
    :cond_1a
    invoke-interface {v0, v5}, Lcoil3/target/Target;->onStart(Lcoil3/Image;)V

    .line 441
    .line 442
    .line 443
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    iget-object v0, v3, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 447
    .line 448
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 449
    .line 450
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 451
    .line 452
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 453
    .line 454
    iput-object v14, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Lcoil3/Image;

    .line 455
    .line 456
    iput v12, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 457
    .line 458
    invoke-interface {v0, v9}, Lcoil3/size/SizeResolver;->size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    if-ne v0, v10, :cond_1c

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_1c
    move-object v8, v4

    .line 466
    move-object v5, v14

    .line 467
    move-object v4, v1

    .line 468
    move-object v1, v3

    .line 469
    :goto_f
    :try_start_5
    move-object v3, v0

    .line 470
    check-cast v3, Lcoil3/size/Size;

    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object v12, v1, Lcoil3/request/ImageRequest;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 476
    .line 477
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;

    .line 478
    .line 479
    const/4 v6, 0x0

    .line 480
    const/4 v7, 0x0

    .line 481
    invoke-direct/range {v0 .. v7}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 482
    .line 483
    .line 484
    iput-object v8, v9, Lcoil3/RealImageLoader$execute$3;->L$0:Lcoil3/request/RequestDelegate;

    .line 485
    .line 486
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->L$1:Lcoil3/request/ImageRequest;

    .line 487
    .line 488
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->L$2:Lcoil3/EventListener$Companion$NONE$1;

    .line 489
    .line 490
    iput-object v14, v9, Lcoil3/RealImageLoader$execute$3;->L$3:Lcoil3/Image;

    .line 491
    .line 492
    iput v11, v9, Lcoil3/RealImageLoader$execute$3;->label:I

    .line 493
    .line 494
    invoke-static {v12, v0, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 498
    if-ne v0, v10, :cond_1d

    .line 499
    .line 500
    :goto_10
    return-object v10

    .line 501
    :cond_1d
    move-object v3, v1

    .line 502
    move-object v1, v4

    .line 503
    move-object v4, v8

    .line 504
    :goto_11
    :try_start_6
    check-cast v0, Lcoil3/request/ImageResult;

    .line 505
    .line 506
    instance-of v5, v0, Lcoil3/request/SuccessResult;

    .line 507
    .line 508
    if-eqz v5, :cond_20

    .line 509
    .line 510
    move-object v5, v0

    .line 511
    check-cast v5, Lcoil3/request/SuccessResult;

    .line 512
    .line 513
    iget-object v6, v3, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 514
    .line 515
    iget-object v7, v5, Lcoil3/request/SuccessResult;->request:Lcoil3/request/ImageRequest;

    .line 516
    .line 517
    iget-object v8, v5, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 518
    .line 519
    instance-of v9, v6, Lcoil3/target/ImageViewTarget;

    .line 520
    .line 521
    if-nez v9, :cond_1e

    .line 522
    .line 523
    if-eqz v6, :cond_1f

    .line 524
    .line 525
    goto :goto_12

    .line 526
    :cond_1e
    sget-object v9, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 527
    .line 528
    invoke-static {v7, v9}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    check-cast v9, Lcoil3/transition/NoneTransition$Factory;

    .line 533
    .line 534
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    :goto_12
    invoke-interface {v6, v8}, Lcoil3/target/Target;->onSuccess(Lcoil3/Image;)V

    .line 538
    .line 539
    .line 540
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    iget-object v6, v7, Lcoil3/request/ImageRequest;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 544
    .line 545
    if-eqz v6, :cond_21

    .line 546
    .line 547
    invoke-interface {v6, v7, v5}, Lcoil3/request/ImageRequest$Listener;->onSuccess(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V

    .line 548
    .line 549
    .line 550
    goto :goto_13

    .line 551
    :cond_20
    instance-of v5, v0, Lcoil3/request/ErrorResult;

    .line 552
    .line 553
    if-eqz v5, :cond_22

    .line 554
    .line 555
    move-object v5, v0

    .line 556
    check-cast v5, Lcoil3/request/ErrorResult;

    .line 557
    .line 558
    iget-object v6, v3, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 559
    .line 560
    invoke-virtual {v2, v5, v6, v1}, Lcoil3/RealImageLoader;->onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener$Companion$NONE$1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    .line 562
    .line 563
    :cond_21
    :goto_13
    invoke-interface {v4}, Lcoil3/request/RequestDelegate;->complete()V

    .line 564
    .line 565
    .line 566
    return-object v0

    .line 567
    :cond_22
    :try_start_7
    new-instance v0, Lcoil3/network/HttpException;

    .line 568
    .line 569
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 570
    .line 571
    .line 572
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 573
    :catchall_3
    move-exception v0

    .line 574
    move-object v3, v1

    .line 575
    move-object v1, v4

    .line 576
    move-object v4, v8

    .line 577
    goto :goto_14

    .line 578
    :cond_23
    :try_start_8
    new-instance v0, Lcoil3/request/NullRequestDataException;

    .line 579
    .line 580
    const-string v5, "The request\'s data is null."

    .line 581
    .line 582
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 586
    :goto_14
    :try_start_9
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    .line 587
    .line 588
    if-nez v5, :cond_24

    .line 589
    .line 590
    invoke-static {v3, v0}, Lcoil3/util/UtilsKt;->ErrorResult(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iget-object v3, v3, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 595
    .line 596
    invoke-virtual {v2, v0, v3, v1}, Lcoil3/RealImageLoader;->onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener$Companion$NONE$1;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 597
    .line 598
    .line 599
    invoke-interface {v4}, Lcoil3/request/RequestDelegate;->complete()V

    .line 600
    .line 601
    .line 602
    return-object v0

    .line 603
    :catchall_4
    move-exception v0

    .line 604
    goto :goto_15

    .line 605
    :cond_24
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    iget-object v1, v3, Lcoil3/request/ImageRequest;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 609
    .line 610
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 611
    :goto_15
    invoke-interface {v4}, Lcoil3/request/RequestDelegate;->complete()V

    .line 612
    .line 613
    .line 614
    throw v0
.end method

.method public final execute(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 615
    iget-object v0, p1, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 616
    instance-of v0, v0, Lcoil3/target/ImageViewTarget;

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p1, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 618
    instance-of v0, v0, Lcoil3/size/RealViewSizeResolver;

    if-nez v0, :cond_1

    .line 619
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->lifecycleKey:Lcoil3/Extras$Key;

    invoke-static {p1, v0}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0, p1, v0, p2}, Lcoil3/RealImageLoader;->execute(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 621
    :cond_1
    :goto_0
    new-instance v0, Lcoil3/RealImageLoader$execute$2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

.method public final onError(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener$Companion$NONE$1;)V
    .locals 2

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
    if-eqz p2, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 13
    .line 14
    invoke-static {p0, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcoil3/transition/NoneTransition$Factory;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p2, v0}, Lcoil3/target/Target;->onError(Lcoil3/Image;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcoil3/request/ImageRequest;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p2, p0, p1}, Lcoil3/request/ImageRequest$Listener;->onError(Lcoil3/request/ImageRequest;Lcoil3/request/ErrorResult;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method
