.class public final synthetic Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;
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
    iput p2, p0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget v0, p0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 14
    .line 15
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    div-int/lit16 p0, p0, 0x3e8

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_1
    check-cast p0, Landroid/content/Context;

    .line 48
    .line 49
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_2
    check-cast p0, Lorg/koin/core/instance/ScopedInstanceFactory;

    .line 56
    .line 57
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    iget-object p0, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 66
    .line 67
    iget-object p0, p0, Lorg/koin/core/definition/BeanDefinition;->callbacks:Lorg/koin/core/definition/Callbacks;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_3
    check-cast p0, Lokio/internal/ResourceFileSystem;

    .line 79
    .line 80
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    .line 81
    .line 82
    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    .line 83
    .line 84
    const-string v1, ""

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Ljava/net/URL;

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "file"

    .line 129
    .line 130
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_2

    .line 135
    .line 136
    move-object v6, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    sget-object v6, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v6, Ljava/io/File;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v5}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    new-instance v6, Lkotlin/Pair;

    .line 161
    .line 162
    invoke-direct {v6, p0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    if-eqz v6, :cond_1

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const-string v1, "META-INF/MANIFEST.MF"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_7

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Ljava/net/URL;

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    const-string v6, "jar:file:"

    .line 219
    .line 220
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-nez v6, :cond_5

    .line 225
    .line 226
    :goto_3
    move-object v7, v3

    .line 227
    goto :goto_4

    .line 228
    :cond_5
    const-string v6, "!"

    .line 229
    .line 230
    const/4 v7, 0x6

    .line 231
    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;ILjava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    const/4 v7, -0x1

    .line 236
    if-ne v6, v7, :cond_6

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    sget-object v7, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 240
    .line 241
    new-instance v7, Ljava/io/File;

    .line 242
    .line 243
    const/4 v8, 0x4

    .line 244
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {v5}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 267
    .line 268
    const/4 v7, 0x7

    .line 269
    invoke-direct {v6, v7}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 270
    .line 271
    .line 272
    invoke-static {v5, p0, v6}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    sget-object v6, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 277
    .line 278
    new-instance v7, Lkotlin/Pair;

    .line 279
    .line 280
    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :goto_4
    if-eqz v7, :cond_4

    .line 284
    .line 285
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_7
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    return-object p0

    .line 294
    :pswitch_4
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 295
    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 300
    .line 301
    const/4 v1, 0x2

    .line 302
    invoke-virtual {v0, v1, v2, v2}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :catch_0
    move-exception v0

    .line 307
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 308
    .line 309
    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 310
    .line 311
    .line 312
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_5
    check-cast p0, Lnet/newpipe/app/platform/AndroidBuildInfo;

    .line 316
    .line 317
    invoke-static {}, Lkotlin/text/HexExtensionsKt;->hexToByteArray$default()[B

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    new-instance v3, Lkotlin/Pair;

    .line 326
    .line 327
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :try_start_1
    iget-object v1, p0, Lnet/newpipe/app/platform/AndroidBuildInfo;->context:Landroid/content/Context;

    .line 335
    .line 336
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget-object p0, p0, Lnet/newpipe/app/platform/AndroidBuildInfo;->context:Landroid/content/Context;

    .line 341
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-static {v1, p0, v0}, Lorg/acra/util/PackageManagerWrapperKt;->hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;)Z

    .line 347
    .line 348
    .line 349
    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    goto :goto_6

    .line 351
    :catch_1
    move-exception p0

    .line 352
    sget-object v0, Lco/touchlab/kermit/Logger$Companion;->Companion:Lco/touchlab/kermit/Logger$Companion;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    sget-object v1, Lco/touchlab/kermit/Severity;->Error:Lco/touchlab/kermit/Severity;

    .line 358
    .line 359
    iget-object v3, v0, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 360
    .line 361
    iget-object v3, v3, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_minSeverity:Lco/touchlab/kermit/Severity;

    .line 362
    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-gtz v3, :cond_8

    .line 368
    .line 369
    const-string v3, "Could not find package info"

    .line 370
    .line 371
    invoke-virtual {v0, v1, p0, v3}, Lco/touchlab/kermit/Logger$Companion;->processLog(Lco/touchlab/kermit/Severity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_8
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    return-object p0

    .line 379
    :pswitch_6
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 380
    .line 381
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 382
    .line 383
    invoke-static {p0, v0}, Lkotlinx/serialization/internal/Platform_commonKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    return-object p0

    .line 392
    :pswitch_7
    check-cast p0, Lorg/koin/core/scope/Scope;

    .line 393
    .line 394
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 395
    .line 396
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 399
    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string/jumbo v4, "|- (-) Scope - id:\'"

    .line 403
    .line 404
    .line 405
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v4, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const/16 v4, 0x27

    .line 414
    .line 415
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    sget-object v4, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 426
    .line 427
    invoke-virtual {v0, v4, v2}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/LinkedHashSet;

    .line 431
    .line 432
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-nez v2, :cond_a

    .line 441
    .line 442
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/LinkedHashSet;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 445
    .line 446
    .line 447
    iput-boolean v1, p0, Lorg/koin/core/scope/Scope;->_closed:Z

    .line 448
    .line 449
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 450
    .line 451
    if-eqz v0, :cond_9

    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 458
    .line 459
    if-eqz v0, :cond_9

    .line 460
    .line 461
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 462
    .line 463
    .line 464
    :cond_9
    iput-object v3, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Ljava/lang/ThreadLocal;

    .line 465
    .line 466
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 467
    .line 468
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 471
    .line 472
    invoke-virtual {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;->deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V

    .line 473
    .line 474
    .line 475
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 486
    .line 487
    .line 488
    :goto_7
    return-object v3

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
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
