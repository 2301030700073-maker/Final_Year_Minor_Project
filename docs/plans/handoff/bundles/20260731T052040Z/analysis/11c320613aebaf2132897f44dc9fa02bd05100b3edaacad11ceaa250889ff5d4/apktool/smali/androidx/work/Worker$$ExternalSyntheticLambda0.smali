.class public final synthetic Landroidx/work/Worker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x7

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v1, "net.newpipe.app.navigation.Destination"

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lkotlinx/serialization/SealedClassSerializer;

    .line 17
    .line 18
    sget-object v2, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE$1:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 19
    .line 20
    new-array v3, v5, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 21
    .line 22
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {v4, v0, v5}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v3, v4}, Landroidx/work/OperationKt;->buildSerialDescriptor(Ljava/lang/String;Lorg/jsoup/Jsoup;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :pswitch_0
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 35
    .line 36
    const-string v1, "kotlinx.serialization.Polymorphic"

    .line 37
    .line 38
    sget-object v2, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 39
    .line 40
    new-array v3, v5, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 41
    .line 42
    new-instance v4, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    invoke-direct {v4, v0, v5}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2, v3, v4}, Landroidx/work/OperationKt;->buildSerialDescriptor(Ljava/lang/String;Lorg/jsoup/Jsoup;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v0, v0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/jvm/internal/ClassReference;

    .line 53
    .line 54
    new-instance v2, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 55
    .line 56
    invoke-direct {v2, v1, v0}, Lkotlinx/serialization/descriptors/ContextDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;Lkotlin/jvm/internal/ClassReference;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_1
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Landroid/view/ViewParent;

    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_2
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :pswitch_3
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 77
    .line 78
    new-instance v1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/OkHttpClient;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :pswitch_4
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lcoil3/RealImageLoader;

    .line 87
    .line 88
    iget-object v0, v0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 89
    .line 90
    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->diskCacheLazy:Lkotlin/SynchronizedLazyImpl;

    .line 91
    .line 92
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_5
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcoil3/decode/BitmapFactoryDecoder;

    .line 102
    .line 103
    invoke-static {v0}, Lcoil3/decode/BitmapFactoryDecoder;->$r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc(Lcoil3/decode/BitmapFactoryDecoder;)Lcoil3/decode/DecodeResult;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_6
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lokhttp3/Dispatcher;

    .line 111
    .line 112
    const-class v1, Landroid/app/ActivityManager;

    .line 113
    .line 114
    iget-object v0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Landroid/content/Context;

    .line 117
    .line 118
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    check-cast v2, Landroid/app/ActivityManager;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 133
    .line 134
    .line 135
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-eqz v2, :cond_0

    .line 137
    .line 138
    const-wide v6, 0x3fc3333333333333L    # 0.15

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :catch_0
    :cond_0
    const-wide/16 v8, 0x0

    .line 144
    .line 145
    cmpg-double v2, v8, v6

    .line 146
    .line 147
    if-gtz v2, :cond_2

    .line 148
    .line 149
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 150
    .line 151
    cmpg-double v2, v6, v8

    .line 152
    .line 153
    if-gtz v2, :cond_2

    .line 154
    .line 155
    new-instance v2, Lokio/PriorityQueue;

    .line 156
    .line 157
    invoke-direct {v2, v3, v5}, Lokio/PriorityQueue;-><init>(IB)V

    .line 158
    .line 159
    .line 160
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast v1, Landroid/app/ActivityManager;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 174
    .line 175
    const/high16 v3, 0x100000

    .line 176
    .line 177
    and-int/2addr v0, v3

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 186
    .line 187
    .line 188
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    goto :goto_0

    .line 190
    :catch_1
    const/16 v0, 0x100

    .line 191
    .line 192
    :goto_0
    int-to-long v0, v0

    .line 193
    const-wide/32 v3, 0x100000

    .line 194
    .line 195
    .line 196
    mul-long/2addr v0, v3

    .line 197
    long-to-double v0, v0

    .line 198
    mul-double/2addr v6, v0

    .line 199
    double-to-long v0, v6

    .line 200
    new-instance v3, Lcoil3/memory/RealStrongMemoryCache;

    .line 201
    .line 202
    invoke-direct {v3, v0, v1, v2}, Lcoil3/memory/RealStrongMemoryCache;-><init>(JLokio/PriorityQueue;)V

    .line 203
    .line 204
    .line 205
    new-instance v4, Lcoil3/memory/RealMemoryCache;

    .line 206
    .line 207
    invoke-direct {v4, v3, v2}, Lcoil3/memory/RealMemoryCache;-><init>(Lcoil3/memory/RealStrongMemoryCache;Lokio/PriorityQueue;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_2
    const-string v0, "percent must be in the range [0.0, 1.0]."

    .line 212
    .line 213
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    return-object v4

    .line 217
    :pswitch_7
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Lkotlin/Pair;

    .line 220
    .line 221
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0

    .line 226
    :pswitch_8
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Landroidx/work/impl/WorkContinuationImpl;

    .line 229
    .line 230
    invoke-static {v0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    return-object v0

    .line 236
    :pswitch_9
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 239
    .line 240
    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 241
    .line 242
    const/16 v2, 0x19

    .line 243
    .line 244
    if-eqz v1, :cond_3

    .line 245
    .line 246
    iget-boolean v3, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 247
    .line 248
    if-eqz v3, :cond_3

    .line 249
    .line 250
    new-instance v3, Ljava/io/File;

    .line 251
    .line 252
    iget-object v4, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v5, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 268
    .line 269
    iget-object v6, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    new-instance v8, Lcoil3/memory/MemoryCacheService;

    .line 276
    .line 277
    invoke-direct {v8, v2}, Lcoil3/memory/MemoryCacheService;-><init>(I)V

    .line 278
    .line 279
    .line 280
    iget-object v9, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 281
    .line 282
    iget-boolean v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 283
    .line 284
    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcoil3/memory/MemoryCacheService;Lokio/PriorityQueue;Z)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_3
    new-instance v6, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 289
    .line 290
    iget-object v7, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 291
    .line 292
    iget-object v8, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 293
    .line 294
    new-instance v9, Lcoil3/memory/MemoryCacheService;

    .line 295
    .line 296
    invoke-direct {v9, v2}, Lcoil3/memory/MemoryCacheService;-><init>(I)V

    .line 297
    .line 298
    .line 299
    iget-object v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 300
    .line 301
    iget-boolean v11, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 302
    .line 303
    invoke-direct/range {v6 .. v11}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcoil3/memory/MemoryCacheService;Lokio/PriorityQueue;Z)V

    .line 304
    .line 305
    .line 306
    move-object v5, v6

    .line 307
    :goto_2
    iget-boolean v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    .line 308
    .line 309
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 310
    .line 311
    .line 312
    return-object v5

    .line 313
    :pswitch_a
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 316
    .line 317
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 322
    .line 323
    invoke-direct {v2, v0, v5}, Landroidx/savedstate/Recreator;-><init>(Ljava/lang/Object;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 330
    .line 331
    return-object v0

    .line 332
    :pswitch_b
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Landroidx/room/coroutines/PassthroughConnectionPool;

    .line 335
    .line 336
    iget-object v1, v0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 337
    .line 338
    iget-object v0, v0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    .line 339
    .line 340
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    return-object v0

    .line 345
    :pswitch_c
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lcom/grack/nanojson/JsonBuilder;

    .line 348
    .line 349
    const-string v1, ":memory:"

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0

    .line 356
    :pswitch_d
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Ljava/lang/Runnable;

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 361
    .line 362
    .line 363
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 364
    .line 365
    return-object v0

    .line 366
    :pswitch_e
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 369
    .line 370
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    return-object v0

    .line 375
    :pswitch_f
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 378
    .line 379
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    .line 380
    .line 381
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_5

    .line 386
    .line 387
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_4

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_4
    move v2, v5

    .line 395
    :cond_5
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    return-object v0

    .line 400
    :pswitch_10
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 403
    .line 404
    iget-object v1, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->parentStore:Landroidx/lifecycle/ViewModelStore;

    .line 405
    .line 406
    if-eqz v1, :cond_7

    .line 407
    .line 408
    iget-object v0, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->parentKey:Ljava/lang/Long;

    .line 409
    .line 410
    iget-object v1, v1, Landroidx/lifecycle/ViewModelStore;->map:Ljava/util/LinkedHashMap;

    .line 411
    .line 412
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-nez v2, :cond_6

    .line 417
    .line 418
    new-instance v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 419
    .line 420
    invoke-direct {v2}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    :cond_6
    check-cast v2, Landroidx/lifecycle/ViewModel;

    .line 427
    .line 428
    check-cast v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_7
    new-instance v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 432
    .line 433
    invoke-direct {v2}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    .line 434
    .line 435
    .line 436
    :goto_4
    return-object v2

    .line 437
    :pswitch_11
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 440
    .line 441
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    return-object v0

    .line 446
    :pswitch_12
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 449
    .line 450
    return-object v0

    .line 451
    :pswitch_13
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 454
    .line 455
    iget-object v1, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 456
    .line 457
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 462
    .line 463
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 464
    .line 465
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    cmp-long v2, v2, v5

    .line 471
    .line 472
    if-nez v2, :cond_8

    .line 473
    .line 474
    goto :goto_5

    .line 475
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 480
    .line 481
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 482
    .line 483
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    if-eqz v2, :cond_9

    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 491
    .line 492
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 497
    .line 498
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 499
    .line 500
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    :goto_5
    return-object v4

    .line 505
    :pswitch_14
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 506
    .line 507
    move-object v1, v0

    .line 508
    check-cast v1, Landroidx/preference/PreferenceManager;

    .line 509
    .line 510
    :goto_6
    iget-object v4, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 511
    .line 512
    monitor-enter v4

    .line 513
    :try_start_2
    iget-boolean v0, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 514
    .line 515
    if-nez v0, :cond_10

    .line 516
    .line 517
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 518
    .line 519
    :try_start_3
    iget-object v0, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 522
    .line 523
    iget-object v6, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 524
    .line 525
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 526
    .line 527
    move v7, v5

    .line 528
    :goto_7
    if-ge v7, v0, :cond_f

    .line 529
    .line 530
    aget-object v8, v6, v7

    .line 531
    .line 532
    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 533
    .line 534
    iget-object v9, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 535
    .line 536
    iget-object v8, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 537
    .line 538
    iget-object v10, v9, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 539
    .line 540
    iget-object v11, v9, Landroidx/collection/ScatterSet;->metadata:[J

    .line 541
    .line 542
    array-length v12, v11

    .line 543
    add-int/lit8 v12, v12, -0x2

    .line 544
    .line 545
    if-ltz v12, :cond_d

    .line 546
    .line 547
    move v13, v5

    .line 548
    :goto_8
    aget-wide v14, v11, v13

    .line 549
    .line 550
    move/from16 v16, v3

    .line 551
    .line 552
    not-long v2, v14

    .line 553
    shl-long v2, v2, v16

    .line 554
    .line 555
    and-long/2addr v2, v14

    .line 556
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    and-long v2, v2, v17

    .line 562
    .line 563
    cmp-long v2, v2, v17

    .line 564
    .line 565
    if-eqz v2, :cond_c

    .line 566
    .line 567
    sub-int v2, v13, v12

    .line 568
    .line 569
    not-int v2, v2

    .line 570
    ushr-int/lit8 v2, v2, 0x1f

    .line 571
    .line 572
    const/16 v3, 0x8

    .line 573
    .line 574
    rsub-int/lit8 v2, v2, 0x8

    .line 575
    .line 576
    :goto_9
    if-ge v5, v2, :cond_b

    .line 577
    .line 578
    const-wide/16 v18, 0xff

    .line 579
    .line 580
    and-long v18, v14, v18

    .line 581
    .line 582
    const-wide/16 v20, 0x80

    .line 583
    .line 584
    cmp-long v18, v18, v20

    .line 585
    .line 586
    if-gez v18, :cond_a

    .line 587
    .line 588
    shl-int/lit8 v18, v13, 0x3

    .line 589
    .line 590
    add-int v18, v18, v5

    .line 591
    .line 592
    move/from16 p0, v3

    .line 593
    .line 594
    aget-object v3, v10, v18

    .line 595
    .line 596
    invoke-interface {v8, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    goto :goto_a

    .line 600
    :cond_a
    move/from16 p0, v3

    .line 601
    .line 602
    :goto_a
    shr-long v14, v14, p0

    .line 603
    .line 604
    add-int/lit8 v5, v5, 0x1

    .line 605
    .line 606
    move/from16 v3, p0

    .line 607
    .line 608
    goto :goto_9

    .line 609
    :cond_b
    if-ne v2, v3, :cond_e

    .line 610
    .line 611
    :cond_c
    if-eq v13, v12, :cond_e

    .line 612
    .line 613
    add-int/lit8 v13, v13, 0x1

    .line 614
    .line 615
    move/from16 v3, v16

    .line 616
    .line 617
    const/4 v2, 0x1

    .line 618
    const/4 v5, 0x0

    .line 619
    goto :goto_8

    .line 620
    :cond_d
    move/from16 v16, v3

    .line 621
    .line 622
    :cond_e
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    .line 624
    .line 625
    add-int/lit8 v7, v7, 0x1

    .line 626
    .line 627
    move/from16 v3, v16

    .line 628
    .line 629
    const/4 v2, 0x1

    .line 630
    const/4 v5, 0x0

    .line 631
    goto :goto_7

    .line 632
    :goto_b
    const/4 v2, 0x0

    .line 633
    goto :goto_c

    .line 634
    :catchall_0
    move-exception v0

    .line 635
    goto :goto_b

    .line 636
    :cond_f
    move/from16 v16, v3

    .line 637
    .line 638
    move v2, v5

    .line 639
    :try_start_4
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :catchall_1
    move-exception v0

    .line 643
    goto :goto_e

    .line 644
    :goto_c
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 645
    .line 646
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 647
    :cond_10
    move/from16 v16, v3

    .line 648
    .line 649
    :goto_d
    monitor-exit v4

    .line 650
    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->drainChanges()Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_11

    .line 655
    .line 656
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    return-object v0

    .line 659
    :cond_11
    move/from16 v3, v16

    .line 660
    .line 661
    const/4 v2, 0x1

    .line 662
    const/4 v5, 0x0

    .line 663
    goto/16 :goto_6

    .line 664
    .line 665
    :goto_e
    monitor-exit v4

    .line 666
    throw v0

    .line 667
    :pswitch_15
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 670
    .line 671
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->_controller:Landroidx/savedstate/SavedStateRegistryController;

    .line 672
    .line 673
    if-eqz v0, :cond_13

    .line 674
    .line 675
    const/4 v2, 0x0

    .line 676
    new-array v1, v2, [Lkotlin/Pair;

    .line 677
    .line 678
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    check-cast v1, [Lkotlin/Pair;

    .line 683
    .line 684
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    if-eqz v0, :cond_12

    .line 696
    .line 697
    goto :goto_f

    .line 698
    :cond_12
    move-object v4, v1

    .line 699
    :cond_13
    :goto_f
    return-object v4

    .line 700
    :pswitch_16
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 703
    .line 704
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 705
    .line 706
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 707
    .line 708
    if-eqz v2, :cond_14

    .line 709
    .line 710
    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    goto :goto_10

    .line 715
    :cond_14
    const-string v0, "Value should be initialized"

    .line 716
    .line 717
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    :goto_10
    return-object v4

    .line 721
    :pswitch_17
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 724
    .line 725
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 726
    .line 727
    .line 728
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 729
    .line 730
    return-object v0

    .line 731
    :pswitch_18
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 732
    .line 733
    check-cast v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 734
    .line 735
    iput-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 736
    .line 737
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 738
    .line 739
    .line 740
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 741
    .line 742
    .line 743
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 744
    .line 745
    .line 746
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 747
    .line 748
    return-object v0

    .line 749
    :pswitch_19
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 752
    .line 753
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    .line 758
    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    return-object v0

    .line 764
    :pswitch_1a
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 767
    .line 768
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 769
    .line 770
    if-eqz v1, :cond_15

    .line 771
    .line 772
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->totalDurationNanos$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 773
    .line 774
    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    check-cast v1, Ljava/lang/Number;

    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 781
    .line 782
    .line 783
    move-result-wide v1

    .line 784
    goto :goto_11

    .line 785
    :cond_15
    const-wide/16 v1, 0x0

    .line 786
    .line 787
    :goto_11
    iput-wide v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 788
    .line 789
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 790
    .line 791
    return-object v0

    .line 792
    :pswitch_1b
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 795
    .line 796
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 797
    .line 798
    invoke-direct {v1, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 799
    .line 800
    .line 801
    return-object v1

    .line 802
    :pswitch_1c
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v0, Landroidx/work/Worker;

    .line 805
    .line 806
    invoke-virtual {v0}, Landroidx/work/Worker;->doWork()Landroidx/work/ListenableWorker$Result;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    return-object v0

    .line 811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
