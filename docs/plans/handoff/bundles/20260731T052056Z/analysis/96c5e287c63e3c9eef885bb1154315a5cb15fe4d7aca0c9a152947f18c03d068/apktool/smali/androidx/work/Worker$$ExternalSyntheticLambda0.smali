.class public final synthetic Landroidx/work/Worker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x6

    .line 8
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    iget-object v0, v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    check-cast v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;

    .line 28
    .line 29
    sget v1, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;->$r8$clinit:I

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-object v6

    .line 35
    :pswitch_1
    check-cast v0, Lokio/internal/ResourceFileSystem;

    .line 36
    .line 37
    iget-object v1, v0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    .line 38
    .line 39
    iget-object v0, v0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v5, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/net/URL;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-string v10, "file"

    .line 86
    .line 87
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_1

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    sget-object v9, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v9, Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v9}, Lokio/Path$Companion;->get$default(Ljava/io/File;)Lokio/Path;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v9, Lkotlin/Pair;

    .line 111
    .line 112
    invoke-direct {v9, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    if-eqz v9, :cond_0

    .line 116
    .line 117
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    const-string v2, "META-INF/MANIFEST.MF"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v2, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_6

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Ljava/net/URL;

    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string v9, "jar:file:"

    .line 169
    .line 170
    invoke-static {v6, v9, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_4

    .line 175
    .line 176
    :goto_3
    const/4 v10, 0x0

    .line 177
    goto :goto_4

    .line 178
    :cond_4
    const-string v9, "!"

    .line 179
    .line 180
    invoke-static {v4, v6, v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-ne v9, v3, :cond_5

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    sget-object v10, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 188
    .line 189
    new-instance v10, Ljava/io/File;

    .line 190
    .line 191
    const/4 v11, 0x4

    .line 192
    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v10}, Lokio/Path$Companion;->get$default(Ljava/io/File;)Lokio/Path;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    new-instance v9, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 208
    .line 209
    const/16 v10, 0x1b

    .line 210
    .line 211
    invoke-direct {v9, v10}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v6, v0, v9}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    sget-object v9, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 219
    .line 220
    new-instance v10, Lkotlin/Pair;

    .line 221
    .line 222
    invoke-direct {v10, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :goto_4
    if-eqz v10, :cond_3

    .line 226
    .line 227
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_6
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    return-object v0

    .line 236
    :pswitch_2
    move-object v1, v0

    .line 237
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 243
    .line 244
    invoke-virtual {v0, v2, v7, v7}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 250
    .line 251
    invoke-virtual {v1, v2, v2, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 252
    .line 253
    .line 254
    :goto_5
    return-object v6

    .line 255
    :pswitch_3
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 256
    .line 257
    iget-object v1, v0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 258
    .line 259
    invoke-static {v0, v1}, Lkotlinx/serialization/internal/TuplesKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    return-object v0

    .line 268
    :pswitch_4
    check-cast v0, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lkotlin/reflect/KType;

    .line 275
    .line 276
    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    return-object v0

    .line 281
    :pswitch_5
    check-cast v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 282
    .line 283
    sget-object v1, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 284
    .line 285
    new-array v2, v7, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 286
    .line 287
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 288
    .line 289
    const/16 v4, 0x19

    .line 290
    .line 291
    invoke-direct {v3, v4, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    const-string v4, "kotlinx.serialization.Polymorphic"

    .line 295
    .line 296
    invoke-static {v4, v1, v2, v3}, Lkotlin/text/RegexKt;->buildSerialDescriptor(Ljava/lang/String;Landroidx/room/Room;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v0, v0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v2, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 306
    .line 307
    invoke-direct {v2, v1, v0}, Lkotlinx/serialization/descriptors/ContextDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;Lkotlin/reflect/KClass;)V

    .line 308
    .line 309
    .line 310
    return-object v2

    .line 311
    :pswitch_6
    return-object v0

    .line 312
    :pswitch_7
    check-cast v0, Ljava/lang/Iterable;

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0

    .line 319
    :pswitch_8
    check-cast v0, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 325
    .line 326
    invoke-direct {v1, v0}, Lkotlin/UIntArray$Iterator;-><init>([Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    return-object v1

    .line 330
    :pswitch_9
    check-cast v0, Landroid/view/View;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 333
    .line 334
    .line 335
    return-object v6

    .line 336
    :pswitch_a
    check-cast v0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 337
    .line 338
    new-instance v1, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;

    .line 339
    .line 340
    invoke-direct {v1, v7, v0}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;-><init>(ILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    return-object v1

    .line 344
    :pswitch_b
    move-object v1, v0

    .line 345
    check-cast v1, Lcoil3/svg/SvgDecoder;

    .line 346
    .line 347
    iget-object v0, v1, Lcoil3/svg/SvgDecoder;->source:Lcoil3/decode/ImageSource;

    .line 348
    .line 349
    iget-object v3, v1, Lcoil3/svg/SvgDecoder;->options:Lcoil3/request/Options;

    .line 350
    .line 351
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    sget-object v0, Lcoil3/svg/Svg$Parser$Companion$DEFAULT$1;->INSTANCE:Lcoil3/svg/Svg$Parser$Companion$DEFAULT$1;

    .line 356
    .line 357
    :try_start_1
    invoke-virtual {v0, v4}, Lcoil3/svg/Svg$Parser$Companion$DEFAULT$1;->parse(Lokio/BufferedSource;)Lcoil3/svg/internal/AndroidSvg;

    .line 358
    .line 359
    .line 360
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    .line 363
    .line 364
    const/4 v0, 0x0

    .line 365
    goto :goto_7

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    goto :goto_7

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    move-object v6, v0

    .line 370
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 371
    .line 372
    .line 373
    goto :goto_6

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    invoke-static {v6, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    :goto_6
    move-object v0, v6

    .line 379
    const/4 v6, 0x0

    .line 380
    :goto_7
    if-nez v0, :cond_1a

    .line 381
    .line 382
    iget-object v0, v6, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Lcom/caverock/androidsvg/SVG;

    .line 385
    .line 386
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v4, Lcom/caverock/androidsvg/SVG$Svg;

    .line 389
    .line 390
    const-string v7, "SVG document is empty"

    .line 391
    .line 392
    if-eqz v4, :cond_19

    .line 393
    .line 394
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 395
    .line 396
    if-nez v4, :cond_7

    .line 397
    .line 398
    const/4 v9, 0x0

    .line 399
    goto :goto_8

    .line 400
    :cond_7
    new-instance v9, Landroid/graphics/RectF;

    .line 401
    .line 402
    iget v10, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 403
    .line 404
    iget v11, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 405
    .line 406
    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    .line 407
    .line 408
    .line 409
    move-result v12

    .line 410
    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    invoke-direct {v9, v10, v11, v12, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 415
    .line 416
    .line 417
    :goto_8
    if-eqz v9, :cond_8

    .line 418
    .line 419
    new-instance v4, Lcoil3/svg/Svg$ViewBox;

    .line 420
    .line 421
    iget v10, v9, Landroid/graphics/RectF;->left:F

    .line 422
    .line 423
    iget v11, v9, Landroid/graphics/RectF;->top:F

    .line 424
    .line 425
    iget v12, v9, Landroid/graphics/RectF;->right:F

    .line 426
    .line 427
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 428
    .line 429
    invoke-direct {v4, v10, v11, v12, v9}, Lcoil3/svg/Svg$ViewBox;-><init>(FFFF)V

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_8
    const/4 v4, 0x0

    .line 434
    :goto_9
    if-eqz v4, :cond_9

    .line 435
    .line 436
    iget v9, v4, Lcoil3/svg/Svg$ViewBox;->right:F

    .line 437
    .line 438
    iget v10, v4, Lcoil3/svg/Svg$ViewBox;->left:F

    .line 439
    .line 440
    sub-float/2addr v9, v10

    .line 441
    iget v10, v4, Lcoil3/svg/Svg$ViewBox;->bottom:F

    .line 442
    .line 443
    iget v11, v4, Lcoil3/svg/Svg$ViewBox;->top:F

    .line 444
    .line 445
    sub-float/2addr v10, v11

    .line 446
    goto :goto_a

    .line 447
    :cond_9
    iget-object v9, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v9, Lcom/caverock/androidsvg/SVG$Svg;

    .line 450
    .line 451
    if-eqz v9, :cond_18

    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions()Lcom/caverock/androidsvg/SVG$Box;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 458
    .line 459
    iget-object v10, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v10, Lcom/caverock/androidsvg/SVG$Svg;

    .line 462
    .line 463
    if-eqz v10, :cond_17

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions()Lcom/caverock/androidsvg/SVG$Box;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 470
    .line 471
    :goto_a
    iget-object v11, v3, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 472
    .line 473
    iget-object v12, v3, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 474
    .line 475
    sget-object v13, Lcoil3/size/Size;->ORIGINAL:Lcoil3/size/Size;

    .line 476
    .line 477
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v11

    .line 481
    const/4 v13, 0x0

    .line 482
    if-eqz v11, :cond_b

    .line 483
    .line 484
    iget-object v1, v1, Lcoil3/svg/SvgDecoder;->density:Lkotlin/jvm/functions/Function1;

    .line 485
    .line 486
    iget-object v11, v3, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 487
    .line 488
    invoke-interface {v1, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, Ljava/lang/Number;

    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    cmpl-float v11, v9, v13

    .line 499
    .line 500
    if-lez v11, :cond_a

    .line 501
    .line 502
    mul-float/2addr v9, v1

    .line 503
    :cond_a
    cmpl-float v11, v10, v13

    .line 504
    .line 505
    if-lez v11, :cond_b

    .line 506
    .line 507
    mul-float/2addr v10, v1

    .line 508
    :cond_b
    cmpl-float v1, v9, v13

    .line 509
    .line 510
    const/16 v11, 0x200

    .line 511
    .line 512
    if-lez v1, :cond_c

    .line 513
    .line 514
    invoke-static {v9}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 515
    .line 516
    .line 517
    move-result v14

    .line 518
    goto :goto_b

    .line 519
    :cond_c
    move v14, v11

    .line 520
    :goto_b
    cmpl-float v15, v10, v13

    .line 521
    .line 522
    if-lez v15, :cond_d

    .line 523
    .line 524
    invoke-static {v10}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 525
    .line 526
    .line 527
    move-result v11

    .line 528
    :cond_d
    iget-object v8, v3, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 529
    .line 530
    move/from16 p0, v13

    .line 531
    .line 532
    sget-object v13, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 533
    .line 534
    invoke-static {v3, v13}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v16

    .line 538
    move-object/from16 v2, v16

    .line 539
    .line 540
    check-cast v2, Lcoil3/size/Size;

    .line 541
    .line 542
    invoke-static {v14, v11, v8, v12, v2}, Lkotlin/UnsignedKt;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 543
    .line 544
    .line 545
    move-result-wide v17

    .line 546
    const/16 v2, 0x20

    .line 547
    .line 548
    move-object v11, v6

    .line 549
    shr-long v5, v17, v2

    .line 550
    .line 551
    long-to-int v2, v5

    .line 552
    const-wide v5, 0xffffffffL

    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    and-long v5, v17, v5

    .line 558
    .line 559
    long-to-int v5, v5

    .line 560
    if-lez v1, :cond_13

    .line 561
    .line 562
    if-lez v15, :cond_13

    .line 563
    .line 564
    int-to-float v1, v2

    .line 565
    int-to-float v2, v5

    .line 566
    invoke-static {v3, v13}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    check-cast v5, Lcoil3/size/Size;

    .line 571
    .line 572
    div-float/2addr v1, v9

    .line 573
    div-float/2addr v2, v10

    .line 574
    sget-object v6, Lcoil3/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 575
    .line 576
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    aget v6, v6, v12

    .line 581
    .line 582
    const/4 v8, 0x1

    .line 583
    if-eq v6, v8, :cond_f

    .line 584
    .line 585
    const/4 v12, 0x2

    .line 586
    if-ne v6, v12, :cond_e

    .line 587
    .line 588
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    goto :goto_d

    .line 593
    :cond_e
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 594
    .line 595
    .line 596
    :goto_c
    const/4 v8, 0x0

    .line 597
    goto/16 :goto_f

    .line 598
    .line 599
    :cond_f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    :goto_d
    iget-object v2, v5, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 604
    .line 605
    instance-of v6, v2, Lcoil3/size/Dimension$Pixels;

    .line 606
    .line 607
    if-eqz v6, :cond_10

    .line 608
    .line 609
    check-cast v2, Lcoil3/size/Dimension$Pixels;

    .line 610
    .line 611
    iget v2, v2, Lcoil3/size/Dimension$Pixels;->px:I

    .line 612
    .line 613
    int-to-float v2, v2

    .line 614
    div-float/2addr v2, v9

    .line 615
    cmpl-float v6, v1, v2

    .line 616
    .line 617
    if-lez v6, :cond_10

    .line 618
    .line 619
    move v1, v2

    .line 620
    :cond_10
    iget-object v2, v5, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 621
    .line 622
    instance-of v5, v2, Lcoil3/size/Dimension$Pixels;

    .line 623
    .line 624
    if-eqz v5, :cond_11

    .line 625
    .line 626
    check-cast v2, Lcoil3/size/Dimension$Pixels;

    .line 627
    .line 628
    iget v2, v2, Lcoil3/size/Dimension$Pixels;->px:I

    .line 629
    .line 630
    int-to-float v2, v2

    .line 631
    div-float/2addr v2, v10

    .line 632
    cmpl-float v5, v1, v2

    .line 633
    .line 634
    if-lez v5, :cond_11

    .line 635
    .line 636
    move v1, v2

    .line 637
    :cond_11
    mul-float v2, v1, v9

    .line 638
    .line 639
    float-to-int v2, v2

    .line 640
    mul-float/2addr v1, v10

    .line 641
    float-to-int v5, v1

    .line 642
    if-nez v4, :cond_13

    .line 643
    .line 644
    sub-float v9, v9, p0

    .line 645
    .line 646
    sub-float v10, v10, p0

    .line 647
    .line 648
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 651
    .line 652
    if-eqz v1, :cond_12

    .line 653
    .line 654
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    .line 655
    .line 656
    move/from16 v6, p0

    .line 657
    .line 658
    invoke-direct {v4, v6, v6, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 659
    .line 660
    .line 661
    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 662
    .line 663
    goto :goto_e

    .line 664
    :cond_12
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    goto :goto_c

    .line 668
    :cond_13
    :goto_e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 671
    .line 672
    if-eqz v1, :cond_16

    .line 673
    .line 674
    const-string v4, "100%"

    .line 675
    .line 676
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 681
    .line 682
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 685
    .line 686
    if-eqz v1, :cond_15

    .line 687
    .line 688
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 693
    .line 694
    sget-object v1, Lcoil3/svg/ImageRequests_androidKt;->cssKey:Lcoil3/Extras$Key;

    .line 695
    .line 696
    invoke-static {v3, v1}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Ljava/lang/String;

    .line 701
    .line 702
    if-eqz v1, :cond_14

    .line 703
    .line 704
    new-instance v3, Lcoil3/svg/internal/AndroidSvg;

    .line 705
    .line 706
    const/16 v4, 0x18

    .line 707
    .line 708
    invoke-direct {v3, v4}, Lcoil3/svg/internal/AndroidSvg;-><init>(I)V

    .line 709
    .line 710
    .line 711
    new-instance v4, Lcom/caverock/androidsvg/CSSParser;

    .line 712
    .line 713
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 714
    .line 715
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 716
    .line 717
    invoke-direct {v4, v7, v6}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 718
    .line 719
    .line 720
    new-instance v6, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 721
    .line 722
    invoke-direct {v6, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4, v6}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lokhttp3/Headers$Builder;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    iput-object v1, v3, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 733
    .line 734
    iput-object v3, v11, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 735
    .line 736
    :cond_14
    new-instance v1, Lcoil3/svg/SvgImage;

    .line 737
    .line 738
    iget-object v3, v11, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v3, Lcoil3/svg/internal/AndroidSvg;

    .line 741
    .line 742
    invoke-direct {v1, v0, v3, v2, v5}, Lcoil3/svg/SvgImage;-><init>(Lcom/caverock/androidsvg/SVG;Lcoil3/svg/internal/AndroidSvg;II)V

    .line 743
    .line 744
    .line 745
    invoke-static {v1}, Lcoil3/UriKt;->toBitmap$default(Lcoil3/Image;)Landroid/graphics/Bitmap;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    new-instance v1, Lcoil3/BitmapImage;

    .line 750
    .line 751
    invoke-direct {v1, v0}, Lcoil3/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    .line 753
    .line 754
    new-instance v0, Lcoil3/decode/DecodeResult;

    .line 755
    .line 756
    const/4 v8, 0x1

    .line 757
    invoke-direct {v0, v1, v8}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 758
    .line 759
    .line 760
    move-object v8, v0

    .line 761
    goto :goto_f

    .line 762
    :cond_15
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_c

    .line 766
    .line 767
    :cond_16
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_c

    .line 771
    .line 772
    :cond_17
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_c

    .line 776
    .line 777
    :cond_18
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_c

    .line 781
    .line 782
    :cond_19
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_c

    .line 786
    .line 787
    :goto_f
    return-object v8

    .line 788
    :cond_1a
    throw v0

    .line 789
    :pswitch_c
    check-cast v0, Lcoil3/RealImageLoader;

    .line 790
    .line 791
    iget-object v0, v0, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 792
    .line 793
    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->diskCacheLazy:Lkotlin/SynchronizedLazyImpl;

    .line 794
    .line 795
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 800
    .line 801
    return-object v0

    .line 802
    :pswitch_d
    check-cast v0, Lcoil3/gif/GifDecoder;

    .line 803
    .line 804
    iget-object v1, v0, Lcoil3/gif/GifDecoder;->source:Lcoil3/decode/ImageSource;

    .line 805
    .line 806
    iget-object v0, v0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 807
    .line 808
    const/4 v8, 0x1

    .line 809
    invoke-static {v1, v8}, Landroidx/room/Room;->maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    :try_start_4
    invoke-interface {v1}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-interface {v2}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 822
    .line 823
    .line 824
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 825
    const/4 v4, 0x0

    .line 826
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 827
    .line 828
    .line 829
    if-eqz v2, :cond_22

    .line 830
    .line 831
    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    if-lez v1, :cond_22

    .line 836
    .line 837
    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    if-lez v1, :cond_22

    .line 842
    .line 843
    new-instance v1, Lcoil3/gif/MovieDrawable;

    .line 844
    .line 845
    invoke-virtual {v2}, Landroid/graphics/Movie;->isOpaque()Z

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    if-eqz v4, :cond_1b

    .line 850
    .line 851
    sget-object v4, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 852
    .line 853
    invoke-static {v0, v4}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v4

    .line 857
    check-cast v4, Ljava/lang/Boolean;

    .line 858
    .line 859
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 860
    .line 861
    .line 862
    move-result v4

    .line 863
    if-eqz v4, :cond_1b

    .line 864
    .line 865
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 866
    .line 867
    goto :goto_10

    .line 868
    :cond_1b
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-static {v4}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    if-eqz v4, :cond_1c

    .line 877
    .line 878
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 879
    .line 880
    goto :goto_10

    .line 881
    :cond_1c
    sget-object v4, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 882
    .line 883
    invoke-static {v0, v4}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    check-cast v4, Landroid/graphics/Bitmap$Config;

    .line 888
    .line 889
    :goto_10
    iget-object v5, v0, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 890
    .line 891
    invoke-direct {v1, v2, v4, v5}, Lcoil3/gif/MovieDrawable;-><init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;)V

    .line 892
    .line 893
    .line 894
    sget-object v2, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 895
    .line 896
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Ljava/lang/Number;

    .line 901
    .line 902
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    const/4 v5, -0x2

    .line 907
    if-eq v4, v5, :cond_1e

    .line 908
    .line 909
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    check-cast v2, Ljava/lang/Number;

    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    if-lt v2, v3, :cond_1d

    .line 920
    .line 921
    iput v2, v1, Lcoil3/gif/MovieDrawable;->repeatCount:I

    .line 922
    .line 923
    goto :goto_11

    .line 924
    :cond_1d
    const-string v0, "Invalid repeatCount: "

    .line 925
    .line 926
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    const/4 v8, 0x0

    .line 934
    goto :goto_13

    .line 935
    :cond_1e
    :goto_11
    sget-object v2, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 936
    .line 937
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 942
    .line 943
    sget-object v3, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 944
    .line 945
    invoke-static {v0, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 950
    .line 951
    if-nez v2, :cond_1f

    .line 952
    .line 953
    if-eqz v3, :cond_20

    .line 954
    .line 955
    :cond_1f
    new-instance v4, Lcoil3/gif/internal/UtilsKt$animatable2CompatCallbackOf$1;

    .line 956
    .line 957
    invoke-direct {v4, v2, v3}, Lcoil3/gif/internal/UtilsKt$animatable2CompatCallbackOf$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 958
    .line 959
    .line 960
    iget-object v2, v1, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/ArrayList;

    .line 961
    .line 962
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    :cond_20
    sget-object v2, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 966
    .line 967
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    const/4 v4, 0x0

    .line 972
    if-nez v0, :cond_21

    .line 973
    .line 974
    iput-object v4, v1, Lcoil3/gif/MovieDrawable;->animatedTransformationPicture:Landroid/graphics/Picture;

    .line 975
    .line 976
    sget-object v0, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 977
    .line 978
    iput-object v0, v1, Lcoil3/gif/MovieDrawable;->pixelOpacity:Lcoil3/gif/PixelOpacity;

    .line 979
    .line 980
    iput-boolean v7, v1, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 981
    .line 982
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 983
    .line 984
    .line 985
    new-instance v8, Lcoil3/decode/DecodeResult;

    .line 986
    .line 987
    invoke-static {v1}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-direct {v8, v0, v7}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 992
    .line 993
    .line 994
    goto :goto_13

    .line 995
    :cond_21
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 996
    .line 997
    .line 998
    :goto_12
    move-object v8, v4

    .line 999
    goto :goto_13

    .line 1000
    :cond_22
    const/4 v4, 0x0

    .line 1001
    const-string v0, "Failed to decode GIF."

    .line 1002
    .line 1003
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_12

    .line 1007
    :goto_13
    return-object v8

    .line 1008
    :catchall_3
    move-exception v0

    .line 1009
    move-object v2, v0

    .line 1010
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1011
    :catchall_4
    move-exception v0

    .line 1012
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1013
    .line 1014
    .line 1015
    throw v0

    .line 1016
    :pswitch_e
    check-cast v0, Lcoil3/decode/BitmapFactoryDecoder;

    .line 1017
    .line 1018
    invoke-static {v0}, Lcoil3/decode/BitmapFactoryDecoder;->decode$lambda$0$0(Lcoil3/decode/BitmapFactoryDecoder;)Lcoil3/decode/DecodeResult;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    return-object v0

    .line 1023
    :pswitch_f
    const/4 v4, 0x0

    .line 1024
    check-cast v0, Lcoil3/ImageLoader$Builder;

    .line 1025
    .line 1026
    const-class v1, Landroid/app/ActivityManager;

    .line 1027
    .line 1028
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v0, Landroid/content/Context;

    .line 1031
    .line 1032
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    :try_start_6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    .line 1043
    .line 1044
    check-cast v5, Landroid/app/ActivityManager;

    .line 1045
    .line 1046
    invoke-virtual {v5}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1050
    if-eqz v5, :cond_23

    .line 1051
    .line 1052
    const-wide v2, 0x3fc3333333333333L    # 0.15

    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    :catch_1
    :cond_23
    const-wide/16 v5, 0x0

    .line 1058
    .line 1059
    cmpg-double v5, v5, v2

    .line 1060
    .line 1061
    if-gtz v5, :cond_25

    .line 1062
    .line 1063
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1064
    .line 1065
    cmpg-double v5, v2, v5

    .line 1066
    .line 1067
    if-gtz v5, :cond_25

    .line 1068
    .line 1069
    new-instance v4, Lokio/PriorityQueue;

    .line 1070
    .line 1071
    const/16 v5, 0x8

    .line 1072
    .line 1073
    invoke-direct {v4, v5, v7}, Lokio/PriorityQueue;-><init>(IB)V

    .line 1074
    .line 1075
    .line 1076
    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    check-cast v1, Landroid/app/ActivityManager;

    .line 1084
    .line 1085
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1090
    .line 1091
    const/high16 v5, 0x100000

    .line 1092
    .line 1093
    and-int/2addr v0, v5

    .line 1094
    if-eqz v0, :cond_24

    .line 1095
    .line 1096
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    goto :goto_14

    .line 1101
    :cond_24
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 1102
    .line 1103
    .line 1104
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1105
    goto :goto_14

    .line 1106
    :catch_2
    const/16 v0, 0x100

    .line 1107
    .line 1108
    :goto_14
    int-to-long v0, v0

    .line 1109
    const-wide/32 v5, 0x100000

    .line 1110
    .line 1111
    .line 1112
    mul-long/2addr v0, v5

    .line 1113
    long-to-double v0, v0

    .line 1114
    mul-double/2addr v2, v0

    .line 1115
    double-to-long v0, v2

    .line 1116
    new-instance v2, Lcoil3/memory/RealStrongMemoryCache;

    .line 1117
    .line 1118
    invoke-direct {v2, v0, v1, v4}, Lcoil3/memory/RealStrongMemoryCache;-><init>(JLokio/PriorityQueue;)V

    .line 1119
    .line 1120
    .line 1121
    new-instance v8, Lcoil3/memory/RealMemoryCache;

    .line 1122
    .line 1123
    invoke-direct {v8, v2, v4}, Lcoil3/memory/RealMemoryCache;-><init>(Lcoil3/memory/RealStrongMemoryCache;Lokio/PriorityQueue;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_15

    .line 1127
    :cond_25
    const-string v0, "percent must be in the range [0.0, 1.0]."

    .line 1128
    .line 1129
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    move-object v8, v4

    .line 1133
    :goto_15
    return-object v8

    .line 1134
    :pswitch_10
    check-cast v0, Lkotlin/Pair;

    .line 1135
    .line 1136
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    return-object v0

    .line 1141
    :pswitch_11
    const/4 v4, 0x0

    .line 1142
    const/4 v8, 0x1

    .line 1143
    check-cast v0, Landroidx/work/impl/WorkContinuationImpl;

    .line 1144
    .line 1145
    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 1146
    .line 1147
    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 1148
    .line 1149
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 1150
    .line 1151
    new-instance v3, Ljava/util/HashSet;

    .line 1152
    .line 1153
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v5

    .line 1165
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v9

    .line 1169
    :cond_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v10

    .line 1173
    if-eqz v10, :cond_27

    .line 1174
    .line 1175
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v10

    .line 1179
    check-cast v10, Ljava/lang/String;

    .line 1180
    .line 1181
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v10

    .line 1185
    if-eqz v10, :cond_26

    .line 1186
    .line 1187
    move v5, v8

    .line 1188
    goto :goto_16

    .line 1189
    :cond_27
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 1190
    .line 1191
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1192
    .line 1193
    .line 1194
    move v5, v7

    .line 1195
    :goto_16
    if-nez v5, :cond_28

    .line 1196
    .line 1197
    iget-object v3, v1, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 1198
    .line 1199
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1200
    .line 1201
    .line 1202
    :try_start_8
    invoke-static {v2, v3, v0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-static {v0}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1213
    .line 1214
    .line 1215
    if-eqz v0, :cond_29

    .line 1216
    .line 1217
    iget-object v0, v1, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 1218
    .line 1219
    invoke-static {v3, v2, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_17

    .line 1223
    :catchall_5
    move-exception v0

    .line 1224
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1225
    .line 1226
    .line 1227
    throw v0

    .line 1228
    :cond_28
    const-string v1, "WorkContinuation has cycles ("

    .line 1229
    .line 1230
    const-string v2, ")"

    .line 1231
    .line 1232
    invoke-static {v0, v2, v1}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    move-object v6, v4

    .line 1236
    :cond_29
    :goto_17
    return-object v6

    .line 1237
    :pswitch_12
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 1238
    .line 1239
    iget-object v9, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 1240
    .line 1241
    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 1242
    .line 1243
    if-eqz v1, :cond_2a

    .line 1244
    .line 1245
    iget-boolean v2, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 1246
    .line 1247
    if-eqz v2, :cond_2a

    .line 1248
    .line 1249
    new-instance v2, Ljava/io/File;

    .line 1250
    .line 1251
    invoke-virtual {v9}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    .line 1257
    .line 1258
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    new-instance v8, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 1262
    .line 1263
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v10

    .line 1267
    new-instance v11, Lcoil3/memory/MemoryCacheService;

    .line 1268
    .line 1269
    invoke-direct {v11, v4, v7}, Lcoil3/memory/MemoryCacheService;-><init>(IB)V

    .line 1270
    .line 1271
    .line 1272
    iget-object v12, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 1273
    .line 1274
    iget-boolean v13, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 1275
    .line 1276
    invoke-direct/range {v8 .. v13}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcoil3/memory/MemoryCacheService;Lokio/PriorityQueue;Z)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_18

    .line 1280
    :cond_2a
    new-instance v8, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 1281
    .line 1282
    iget-object v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 1283
    .line 1284
    new-instance v11, Lcoil3/memory/MemoryCacheService;

    .line 1285
    .line 1286
    invoke-direct {v11, v4, v7}, Lcoil3/memory/MemoryCacheService;-><init>(IB)V

    .line 1287
    .line 1288
    .line 1289
    iget-object v12, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 1290
    .line 1291
    iget-boolean v13, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 1292
    .line 1293
    invoke-direct/range {v8 .. v13}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcoil3/memory/MemoryCacheService;Lokio/PriorityQueue;Z)V

    .line 1294
    .line 1295
    .line 1296
    :goto_18
    iget-boolean v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    .line 1297
    .line 1298
    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 1299
    .line 1300
    .line 1301
    return-object v8

    .line 1302
    :pswitch_13
    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 1303
    .line 1304
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v1

    .line 1308
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 1309
    .line 1310
    invoke-direct {v2, v7, v0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1314
    .line 1315
    .line 1316
    return-object v6

    .line 1317
    :pswitch_14
    check-cast v0, Landroidx/room/coroutines/PassthroughConnectionPool;

    .line 1318
    .line 1319
    iget-object v1, v0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 1320
    .line 1321
    iget-object v0, v0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    .line 1322
    .line 1323
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    return-object v0

    .line 1328
    :pswitch_15
    check-cast v0, Lcoil3/svg/internal/AndroidSvg;

    .line 1329
    .line 1330
    const-string v1, ":memory:"

    .line 1331
    .line 1332
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    return-object v0

    .line 1337
    :pswitch_16
    check-cast v0, Ljava/lang/Runnable;

    .line 1338
    .line 1339
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1340
    .line 1341
    .line 1342
    return-object v6

    .line 1343
    :pswitch_17
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 1344
    .line 1345
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    return-object v0

    .line 1350
    :pswitch_18
    const/4 v8, 0x1

    .line 1351
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 1352
    .line 1353
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    .line 1354
    .line 1355
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    if-eqz v1, :cond_2c

    .line 1360
    .line 1361
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    if-eqz v0, :cond_2b

    .line 1366
    .line 1367
    goto :goto_19

    .line 1368
    :cond_2b
    move v5, v7

    .line 1369
    goto :goto_1a

    .line 1370
    :cond_2c
    :goto_19
    move v5, v8

    .line 1371
    :goto_1a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    return-object v0

    .line 1376
    :pswitch_19
    check-cast v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 1377
    .line 1378
    iget-object v0, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->_onPagesUpdatedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 1379
    .line 1380
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 1381
    .line 1382
    .line 1383
    return-object v6

    .line 1384
    :pswitch_1a
    const/4 v4, 0x0

    .line 1385
    check-cast v0, Landroidx/paging/MulticastedPagingData;

    .line 1386
    .line 1387
    iget-object v0, v0, Landroidx/paging/MulticastedPagingData;->accumulated:Lokhttp3/Request$Builder;

    .line 1388
    .line 1389
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 1390
    .line 1391
    check-cast v0, Lokhttp3/internal/http/StatusLine;

    .line 1392
    .line 1393
    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 1394
    .line 1395
    check-cast v0, Landroidx/paging/FlattenedPageEventStorage;

    .line 1396
    .line 1397
    invoke-virtual {v0}, Landroidx/paging/FlattenedPageEventStorage;->getAsEvents()Ljava/util/List;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    check-cast v0, Landroidx/paging/PageEvent;

    .line 1406
    .line 1407
    if-eqz v0, :cond_2d

    .line 1408
    .line 1409
    instance-of v1, v0, Landroidx/paging/PageEvent$Insert;

    .line 1410
    .line 1411
    if-eqz v1, :cond_2d

    .line 1412
    .line 1413
    check-cast v0, Landroidx/paging/PageEvent$Insert;

    .line 1414
    .line 1415
    iget-object v1, v0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1416
    .line 1417
    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 1418
    .line 1419
    if-ne v1, v2, :cond_2d

    .line 1420
    .line 1421
    move-object v8, v0

    .line 1422
    goto :goto_1b

    .line 1423
    :cond_2d
    move-object v8, v4

    .line 1424
    :goto_1b
    return-object v8

    .line 1425
    :pswitch_1b
    check-cast v0, Ljava/lang/String;

    .line 1426
    .line 1427
    new-instance v1, Landroidx/navigation/NavDeepLink;

    .line 1428
    .line 1429
    invoke-direct {v1, v0}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    return-object v1

    .line 1433
    :pswitch_1c
    check-cast v0, Landroidx/work/Worker;

    .line 1434
    .line 1435
    invoke-virtual {v0}, Landroidx/work/Worker;->doWork()Landroidx/work/ListenableWorker$Result$Success;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    return-object v0

    .line 1440
    nop

    .line 1441
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
