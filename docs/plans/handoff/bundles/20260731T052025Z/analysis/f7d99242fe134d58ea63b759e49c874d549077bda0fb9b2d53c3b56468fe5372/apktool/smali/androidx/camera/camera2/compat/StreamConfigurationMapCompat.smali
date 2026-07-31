.class public final Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cachedFormatOutputSizes:Ljava/util/LinkedHashMap;

.field public final impl:Landroidx/biometric/BiometricPrompt;

.field public final outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 8
    .line 9
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v0, 0x22

    .line 29
    .line 30
    const/16 v1, 0xc

    .line 31
    .line 32
    if-lt p2, v0, :cond_0

    .line 33
    .line 34
    new-instance p2, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;

    .line 35
    .line 36
    invoke-direct {p2, v1, p1}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Landroidx/biometric/BiometricPrompt;

    .line 41
    .line 42
    invoke-direct {p2, v1, p1}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final getOutputSizes(I)[Landroid/util/Size;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "StreamConfigurationMapCompat"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v4, v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Landroid/util/Size;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [Landroid/util/Size;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_0
    return-object v5

    .line 40
    :cond_1
    :try_start_0
    iget-object v0, v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricPrompt;->getOutputSizes(I)[Landroid/util/Size;

    .line 43
    .line 44
    .line 45
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v7, "Failed to get output sizes for "

    .line 51
    .line 52
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v3, v6, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    if-eqz v5, :cond_1c

    .line 66
    .line 67
    array-length v0, v5

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_2
    iget-object v0, v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance v3, Lkotlin/collections/ArrayAsCollection;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-direct {v3, v5, v6}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    const/4 v7, 0x2

    .line 95
    const/16 v8, 0x2d0

    .line 96
    .line 97
    const/16 v9, 0x438

    .line 98
    .line 99
    const/16 v10, 0x5a0

    .line 100
    .line 101
    const/16 v11, 0x22

    .line 102
    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    if-ne v2, v11, :cond_5

    .line 107
    .line 108
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const-string v12, "Motorola"

    .line 114
    .line 115
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_4

    .line 120
    .line 121
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    :cond_4
    const-string v3, "moto e5 play"

    .line 133
    .line 134
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    new-instance v3, Landroid/util/Size;

    .line 143
    .line 144
    invoke-direct {v3, v10, v9}, Landroid/util/Size;-><init>(II)V

    .line 145
    .line 146
    .line 147
    new-instance v12, Landroid/util/Size;

    .line 148
    .line 149
    const/16 v13, 0x3c0

    .line 150
    .line 151
    invoke-direct {v12, v13, v8}, Landroid/util/Size;-><init>(II)V

    .line 152
    .line 153
    .line 154
    new-array v13, v7, [Landroid/util/Size;

    .line 155
    .line 156
    aput-object v3, v13, v6

    .line 157
    .line 158
    aput-object v12, v13, v5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    new-array v13, v6, [Landroid/util/Size;

    .line 162
    .line 163
    :goto_1
    array-length v3, v13

    .line 164
    if-nez v3, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    iget-object v3, v0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    iget-object v0, v0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    .line 175
    .line 176
    if-nez v0, :cond_8

    .line 177
    .line 178
    :cond_7
    move/from16 v16, v6

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_8
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 183
    .line 184
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->camera:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Landroidx/core/util/DebugUtils;->isOnePlus6$camera_camera2()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    const/16 v12, 0xc30

    .line 194
    .line 195
    const/16 v13, 0x1040

    .line 196
    .line 197
    const/16 v14, 0xbb8

    .line 198
    .line 199
    const/16 v15, 0xfa0

    .line 200
    .line 201
    move/from16 p0, v5

    .line 202
    .line 203
    const/16 v5, 0x100

    .line 204
    .line 205
    move/from16 v16, v6

    .line 206
    .line 207
    const-string v6, "0"

    .line 208
    .line 209
    sget-object v17, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 210
    .line 211
    if-eqz v3, :cond_a

    .line 212
    .line 213
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    if-ne v2, v5, :cond_9

    .line 220
    .line 221
    new-instance v0, Landroid/util/Size;

    .line 222
    .line 223
    invoke-direct {v0, v13, v12}, Landroid/util/Size;-><init>(II)V

    .line 224
    .line 225
    .line 226
    new-instance v3, Landroid/util/Size;

    .line 227
    .line 228
    invoke-direct {v3, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 229
    .line 230
    .line 231
    new-array v5, v7, [Landroid/util/Size;

    .line 232
    .line 233
    aput-object v0, v5, v16

    .line 234
    .line 235
    aput-object v3, v5, p0

    .line 236
    .line 237
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    :cond_9
    :goto_3
    move-object/from16 v0, v17

    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :cond_a
    invoke-static {}, Landroidx/core/util/DebugUtils;->isOnePlus6T$camera_camera2()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_b

    .line 250
    .line 251
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_9

    .line 256
    .line 257
    if-ne v2, v5, :cond_9

    .line 258
    .line 259
    new-instance v0, Landroid/util/Size;

    .line 260
    .line 261
    invoke-direct {v0, v13, v12}, Landroid/util/Size;-><init>(II)V

    .line 262
    .line 263
    .line 264
    new-instance v3, Landroid/util/Size;

    .line 265
    .line 266
    invoke-direct {v3, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 267
    .line 268
    .line 269
    new-array v5, v7, [Landroid/util/Size;

    .line 270
    .line 271
    aput-object v0, v5, v16

    .line 272
    .line 273
    aput-object v3, v5, p0

    .line 274
    .line 275
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v17

    .line 279
    goto :goto_3

    .line 280
    :cond_b
    invoke-static {}, Landroidx/core/util/DebugUtils;->isHuaweiP20Lite$camera_camera2()Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    const/16 v12, 0x23

    .line 285
    .line 286
    if-eqz v3, :cond_d

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_9

    .line 293
    .line 294
    if-eq v2, v11, :cond_c

    .line 295
    .line 296
    if-eq v2, v12, :cond_c

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_c
    new-instance v0, Landroid/util/Size;

    .line 300
    .line 301
    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 302
    .line 303
    .line 304
    new-instance v3, Landroid/util/Size;

    .line 305
    .line 306
    const/16 v5, 0x190

    .line 307
    .line 308
    invoke-direct {v3, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 309
    .line 310
    .line 311
    new-array v5, v7, [Landroid/util/Size;

    .line 312
    .line 313
    aput-object v0, v5, v16

    .line 314
    .line 315
    aput-object v3, v5, p0

    .line 316
    .line 317
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v17

    .line 321
    goto :goto_3

    .line 322
    :cond_d
    invoke-static {}, Landroidx/core/util/DebugUtils;->isSamsungJ7PrimeApi27Above$camera_camera2()Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    move/from16 v18, v7

    .line 327
    .line 328
    const/16 v19, 0x5

    .line 329
    .line 330
    const/16 v20, 0x4

    .line 331
    .line 332
    const/16 v21, 0x6

    .line 333
    .line 334
    const/16 v8, 0xc10

    .line 335
    .line 336
    const/16 v10, 0x1020

    .line 337
    .line 338
    const/16 v22, 0x3

    .line 339
    .line 340
    const/16 v14, 0x72c

    .line 341
    .line 342
    const/16 v7, 0x912

    .line 343
    .line 344
    const-string v9, "1"

    .line 345
    .line 346
    const/16 v15, 0xcc0

    .line 347
    .line 348
    const/16 v5, 0x990

    .line 349
    .line 350
    const/16 v13, 0x780

    .line 351
    .line 352
    if-eqz v3, :cond_11

    .line 353
    .line 354
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_f

    .line 359
    .line 360
    if-eq v2, v11, :cond_e

    .line 361
    .line 362
    if-ne v2, v12, :cond_9

    .line 363
    .line 364
    new-instance v0, Landroid/util/Size;

    .line 365
    .line 366
    invoke-direct {v0, v10, v7}, Landroid/util/Size;-><init>(II)V

    .line 367
    .line 368
    .line 369
    new-instance v3, Landroid/util/Size;

    .line 370
    .line 371
    invoke-direct {v3, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 372
    .line 373
    .line 374
    new-instance v6, Landroid/util/Size;

    .line 375
    .line 376
    invoke-direct {v6, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 377
    .line 378
    .line 379
    new-instance v5, Landroid/util/Size;

    .line 380
    .line 381
    invoke-direct {v5, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 382
    .line 383
    .line 384
    new-instance v7, Landroid/util/Size;

    .line 385
    .line 386
    const/16 v8, 0x800

    .line 387
    .line 388
    const/16 v9, 0x600

    .line 389
    .line 390
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 391
    .line 392
    .line 393
    new-instance v9, Landroid/util/Size;

    .line 394
    .line 395
    const/16 v10, 0x480

    .line 396
    .line 397
    invoke-direct {v9, v8, v10}, Landroid/util/Size;-><init>(II)V

    .line 398
    .line 399
    .line 400
    new-instance v8, Landroid/util/Size;

    .line 401
    .line 402
    const/16 v10, 0x438

    .line 403
    .line 404
    invoke-direct {v8, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 405
    .line 406
    .line 407
    const/4 v10, 0x7

    .line 408
    new-array v10, v10, [Landroid/util/Size;

    .line 409
    .line 410
    aput-object v0, v10, v16

    .line 411
    .line 412
    aput-object v3, v10, p0

    .line 413
    .line 414
    aput-object v6, v10, v18

    .line 415
    .line 416
    aput-object v5, v10, v22

    .line 417
    .line 418
    aput-object v7, v10, v20

    .line 419
    .line 420
    aput-object v9, v10, v19

    .line 421
    .line 422
    aput-object v8, v10, v21

    .line 423
    .line 424
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v17

    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :cond_e
    new-instance v0, Landroid/util/Size;

    .line 431
    .line 432
    const/16 v3, 0xc18

    .line 433
    .line 434
    invoke-direct {v0, v10, v3}, Landroid/util/Size;-><init>(II)V

    .line 435
    .line 436
    .line 437
    new-instance v3, Landroid/util/Size;

    .line 438
    .line 439
    invoke-direct {v3, v10, v7}, Landroid/util/Size;-><init>(II)V

    .line 440
    .line 441
    .line 442
    new-instance v6, Landroid/util/Size;

    .line 443
    .line 444
    invoke-direct {v6, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 445
    .line 446
    .line 447
    new-instance v7, Landroid/util/Size;

    .line 448
    .line 449
    invoke-direct {v7, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 450
    .line 451
    .line 452
    new-instance v5, Landroid/util/Size;

    .line 453
    .line 454
    invoke-direct {v5, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 455
    .line 456
    .line 457
    new-instance v8, Landroid/util/Size;

    .line 458
    .line 459
    const/16 v9, 0x800

    .line 460
    .line 461
    const/16 v10, 0x600

    .line 462
    .line 463
    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 464
    .line 465
    .line 466
    new-instance v10, Landroid/util/Size;

    .line 467
    .line 468
    const/16 v11, 0x480

    .line 469
    .line 470
    invoke-direct {v10, v9, v11}, Landroid/util/Size;-><init>(II)V

    .line 471
    .line 472
    .line 473
    new-instance v9, Landroid/util/Size;

    .line 474
    .line 475
    const/16 v11, 0x438

    .line 476
    .line 477
    invoke-direct {v9, v13, v11}, Landroid/util/Size;-><init>(II)V

    .line 478
    .line 479
    .line 480
    const/16 v11, 0x8

    .line 481
    .line 482
    new-array v11, v11, [Landroid/util/Size;

    .line 483
    .line 484
    aput-object v0, v11, v16

    .line 485
    .line 486
    aput-object v3, v11, p0

    .line 487
    .line 488
    aput-object v6, v11, v18

    .line 489
    .line 490
    aput-object v7, v11, v22

    .line 491
    .line 492
    aput-object v5, v11, v20

    .line 493
    .line 494
    aput-object v8, v11, v19

    .line 495
    .line 496
    aput-object v10, v11, v21

    .line 497
    .line 498
    const/16 v24, 0x7

    .line 499
    .line 500
    aput-object v9, v11, v24

    .line 501
    .line 502
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v17

    .line 506
    goto/16 :goto_3

    .line 507
    .line 508
    :cond_f
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_9

    .line 513
    .line 514
    if-eq v2, v11, :cond_10

    .line 515
    .line 516
    if-eq v2, v12, :cond_10

    .line 517
    .line 518
    goto/16 :goto_3

    .line 519
    .line 520
    :cond_10
    new-instance v0, Landroid/util/Size;

    .line 521
    .line 522
    invoke-direct {v0, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 523
    .line 524
    .line 525
    new-instance v3, Landroid/util/Size;

    .line 526
    .line 527
    invoke-direct {v3, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 528
    .line 529
    .line 530
    new-instance v6, Landroid/util/Size;

    .line 531
    .line 532
    invoke-direct {v6, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 533
    .line 534
    .line 535
    new-instance v5, Landroid/util/Size;

    .line 536
    .line 537
    invoke-direct {v5, v13, v13}, Landroid/util/Size;-><init>(II)V

    .line 538
    .line 539
    .line 540
    new-instance v7, Landroid/util/Size;

    .line 541
    .line 542
    const/16 v8, 0x800

    .line 543
    .line 544
    const/16 v9, 0x600

    .line 545
    .line 546
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 547
    .line 548
    .line 549
    new-instance v9, Landroid/util/Size;

    .line 550
    .line 551
    const/16 v10, 0x480

    .line 552
    .line 553
    invoke-direct {v9, v8, v10}, Landroid/util/Size;-><init>(II)V

    .line 554
    .line 555
    .line 556
    new-instance v8, Landroid/util/Size;

    .line 557
    .line 558
    const/16 v10, 0x438

    .line 559
    .line 560
    invoke-direct {v8, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 561
    .line 562
    .line 563
    const/4 v10, 0x7

    .line 564
    new-array v10, v10, [Landroid/util/Size;

    .line 565
    .line 566
    aput-object v0, v10, v16

    .line 567
    .line 568
    aput-object v3, v10, p0

    .line 569
    .line 570
    aput-object v6, v10, v18

    .line 571
    .line 572
    aput-object v5, v10, v22

    .line 573
    .line 574
    aput-object v7, v10, v20

    .line 575
    .line 576
    aput-object v9, v10, v19

    .line 577
    .line 578
    aput-object v8, v10, v21

    .line 579
    .line 580
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 581
    .line 582
    .line 583
    move-result-object v17

    .line 584
    goto/16 :goto_3

    .line 585
    .line 586
    :cond_11
    invoke-static {}, Landroidx/core/util/DebugUtils;->isSamsungJ7Api27Above$camera_camera2()Z

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-eqz v3, :cond_15

    .line 591
    .line 592
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-eqz v3, :cond_13

    .line 597
    .line 598
    if-eq v2, v11, :cond_12

    .line 599
    .line 600
    if-ne v2, v12, :cond_9

    .line 601
    .line 602
    new-instance v0, Landroid/util/Size;

    .line 603
    .line 604
    const/16 v8, 0x800

    .line 605
    .line 606
    const/16 v9, 0x600

    .line 607
    .line 608
    invoke-direct {v0, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 609
    .line 610
    .line 611
    new-instance v3, Landroid/util/Size;

    .line 612
    .line 613
    const/16 v10, 0x480

    .line 614
    .line 615
    invoke-direct {v3, v8, v10}, Landroid/util/Size;-><init>(II)V

    .line 616
    .line 617
    .line 618
    new-instance v5, Landroid/util/Size;

    .line 619
    .line 620
    const/16 v10, 0x438

    .line 621
    .line 622
    invoke-direct {v5, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 623
    .line 624
    .line 625
    move/from16 v6, v22

    .line 626
    .line 627
    new-array v6, v6, [Landroid/util/Size;

    .line 628
    .line 629
    aput-object v0, v6, v16

    .line 630
    .line 631
    aput-object v3, v6, p0

    .line 632
    .line 633
    aput-object v5, v6, v18

    .line 634
    .line 635
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 636
    .line 637
    .line 638
    move-result-object v17

    .line 639
    goto/16 :goto_3

    .line 640
    .line 641
    :cond_12
    new-instance v0, Landroid/util/Size;

    .line 642
    .line 643
    const/16 v3, 0xc18

    .line 644
    .line 645
    invoke-direct {v0, v10, v3}, Landroid/util/Size;-><init>(II)V

    .line 646
    .line 647
    .line 648
    new-instance v3, Landroid/util/Size;

    .line 649
    .line 650
    invoke-direct {v3, v10, v7}, Landroid/util/Size;-><init>(II)V

    .line 651
    .line 652
    .line 653
    new-instance v6, Landroid/util/Size;

    .line 654
    .line 655
    invoke-direct {v6, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 656
    .line 657
    .line 658
    new-instance v7, Landroid/util/Size;

    .line 659
    .line 660
    invoke-direct {v7, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 661
    .line 662
    .line 663
    new-instance v5, Landroid/util/Size;

    .line 664
    .line 665
    invoke-direct {v5, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 666
    .line 667
    .line 668
    new-instance v8, Landroid/util/Size;

    .line 669
    .line 670
    const/16 v9, 0x800

    .line 671
    .line 672
    const/16 v10, 0x600

    .line 673
    .line 674
    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 675
    .line 676
    .line 677
    new-instance v10, Landroid/util/Size;

    .line 678
    .line 679
    const/16 v11, 0x480

    .line 680
    .line 681
    invoke-direct {v10, v9, v11}, Landroid/util/Size;-><init>(II)V

    .line 682
    .line 683
    .line 684
    new-instance v9, Landroid/util/Size;

    .line 685
    .line 686
    const/16 v11, 0x438

    .line 687
    .line 688
    invoke-direct {v9, v13, v11}, Landroid/util/Size;-><init>(II)V

    .line 689
    .line 690
    .line 691
    const/16 v11, 0x8

    .line 692
    .line 693
    new-array v11, v11, [Landroid/util/Size;

    .line 694
    .line 695
    aput-object v0, v11, v16

    .line 696
    .line 697
    aput-object v3, v11, p0

    .line 698
    .line 699
    aput-object v6, v11, v18

    .line 700
    .line 701
    const/16 v22, 0x3

    .line 702
    .line 703
    aput-object v7, v11, v22

    .line 704
    .line 705
    aput-object v5, v11, v20

    .line 706
    .line 707
    aput-object v8, v11, v19

    .line 708
    .line 709
    aput-object v10, v11, v21

    .line 710
    .line 711
    const/16 v24, 0x7

    .line 712
    .line 713
    aput-object v9, v11, v24

    .line 714
    .line 715
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 716
    .line 717
    .line 718
    move-result-object v17

    .line 719
    goto/16 :goto_3

    .line 720
    .line 721
    :cond_13
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    if-eqz v0, :cond_9

    .line 726
    .line 727
    if-eq v2, v11, :cond_14

    .line 728
    .line 729
    if-eq v2, v12, :cond_14

    .line 730
    .line 731
    goto/16 :goto_3

    .line 732
    .line 733
    :cond_14
    new-instance v0, Landroid/util/Size;

    .line 734
    .line 735
    const/16 v3, 0xa10

    .line 736
    .line 737
    const/16 v5, 0x78c

    .line 738
    .line 739
    invoke-direct {v0, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 740
    .line 741
    .line 742
    new-instance v3, Landroid/util/Size;

    .line 743
    .line 744
    const/16 v5, 0xa00

    .line 745
    .line 746
    const/16 v6, 0x5a0

    .line 747
    .line 748
    invoke-direct {v3, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 749
    .line 750
    .line 751
    new-instance v5, Landroid/util/Size;

    .line 752
    .line 753
    invoke-direct {v5, v13, v13}, Landroid/util/Size;-><init>(II)V

    .line 754
    .line 755
    .line 756
    new-instance v6, Landroid/util/Size;

    .line 757
    .line 758
    const/16 v8, 0x800

    .line 759
    .line 760
    const/16 v9, 0x600

    .line 761
    .line 762
    invoke-direct {v6, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 763
    .line 764
    .line 765
    new-instance v7, Landroid/util/Size;

    .line 766
    .line 767
    const/16 v10, 0x480

    .line 768
    .line 769
    invoke-direct {v7, v8, v10}, Landroid/util/Size;-><init>(II)V

    .line 770
    .line 771
    .line 772
    new-instance v8, Landroid/util/Size;

    .line 773
    .line 774
    const/16 v10, 0x438

    .line 775
    .line 776
    invoke-direct {v8, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 777
    .line 778
    .line 779
    move/from16 v9, v21

    .line 780
    .line 781
    new-array v9, v9, [Landroid/util/Size;

    .line 782
    .line 783
    aput-object v0, v9, v16

    .line 784
    .line 785
    aput-object v3, v9, p0

    .line 786
    .line 787
    aput-object v5, v9, v18

    .line 788
    .line 789
    const/16 v22, 0x3

    .line 790
    .line 791
    aput-object v6, v9, v22

    .line 792
    .line 793
    aput-object v7, v9, v20

    .line 794
    .line 795
    aput-object v8, v9, v19

    .line 796
    .line 797
    invoke-static {v9}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 798
    .line 799
    .line 800
    move-result-object v17

    .line 801
    goto/16 :goto_3

    .line 802
    .line 803
    :cond_15
    invoke-static {}, Landroidx/core/util/DebugUtils;->isRedmiNote9Pro$camera_camera2()Z

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    if-eqz v3, :cond_16

    .line 808
    .line 809
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_9

    .line 814
    .line 815
    const/16 v0, 0x100

    .line 816
    .line 817
    if-ne v2, v0, :cond_9

    .line 818
    .line 819
    new-instance v0, Landroid/util/Size;

    .line 820
    .line 821
    const/16 v3, 0x2440

    .line 822
    .line 823
    const/16 v5, 0x1b20

    .line 824
    .line 825
    invoke-direct {v0, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 826
    .line 827
    .line 828
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 829
    .line 830
    .line 831
    move-result-object v17

    .line 832
    goto/16 :goto_3

    .line 833
    .line 834
    :cond_16
    invoke-static {}, Landroidx/core/util/DebugUtils;->isSamsungA05s$camera_camera2()Z

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    const/16 v6, 0xc80

    .line 839
    .line 840
    const/16 v7, 0x960

    .line 841
    .line 842
    if-eqz v3, :cond_17

    .line 843
    .line 844
    if-ne v2, v12, :cond_9

    .line 845
    .line 846
    new-instance v0, Landroid/util/Size;

    .line 847
    .line 848
    const/16 v3, 0xf00

    .line 849
    .line 850
    const/16 v8, 0x870

    .line 851
    .line 852
    invoke-direct {v0, v3, v8}, Landroid/util/Size;-><init>(II)V

    .line 853
    .line 854
    .line 855
    new-instance v3, Landroid/util/Size;

    .line 856
    .line 857
    invoke-direct {v3, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 858
    .line 859
    .line 860
    new-instance v5, Landroid/util/Size;

    .line 861
    .line 862
    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 863
    .line 864
    .line 865
    new-instance v6, Landroid/util/Size;

    .line 866
    .line 867
    const/16 v7, 0xa80

    .line 868
    .line 869
    const/16 v8, 0x5e8

    .line 870
    .line 871
    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 872
    .line 873
    .line 874
    new-instance v7, Landroid/util/Size;

    .line 875
    .line 876
    const/16 v8, 0x798

    .line 877
    .line 878
    const/16 v9, 0xa20

    .line 879
    .line 880
    invoke-direct {v7, v9, v8}, Landroid/util/Size;-><init>(II)V

    .line 881
    .line 882
    .line 883
    new-instance v8, Landroid/util/Size;

    .line 884
    .line 885
    const/16 v10, 0x794

    .line 886
    .line 887
    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 888
    .line 889
    .line 890
    new-instance v9, Landroid/util/Size;

    .line 891
    .line 892
    const/16 v10, 0x5a0

    .line 893
    .line 894
    invoke-direct {v9, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 895
    .line 896
    .line 897
    const/4 v10, 0x7

    .line 898
    new-array v10, v10, [Landroid/util/Size;

    .line 899
    .line 900
    aput-object v0, v10, v16

    .line 901
    .line 902
    aput-object v3, v10, p0

    .line 903
    .line 904
    aput-object v5, v10, v18

    .line 905
    .line 906
    const/16 v22, 0x3

    .line 907
    .line 908
    aput-object v6, v10, v22

    .line 909
    .line 910
    aput-object v7, v10, v20

    .line 911
    .line 912
    aput-object v8, v10, v19

    .line 913
    .line 914
    const/16 v21, 0x6

    .line 915
    .line 916
    aput-object v9, v10, v21

    .line 917
    .line 918
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 919
    .line 920
    .line 921
    move-result-object v17

    .line 922
    goto/16 :goto_3

    .line 923
    .line 924
    :cond_17
    invoke-static {}, Landroidx/core/util/DebugUtils;->isNokia7Plus$camera_camera2()Z

    .line 925
    .line 926
    .line 927
    move-result v3

    .line 928
    if-eqz v3, :cond_18

    .line 929
    .line 930
    if-ne v2, v12, :cond_9

    .line 931
    .line 932
    new-instance v0, Landroid/util/Size;

    .line 933
    .line 934
    const/16 v3, 0xfc0

    .line 935
    .line 936
    const/16 v8, 0xbd0

    .line 937
    .line 938
    invoke-direct {v0, v3, v8}, Landroid/util/Size;-><init>(II)V

    .line 939
    .line 940
    .line 941
    new-instance v3, Landroid/util/Size;

    .line 942
    .line 943
    const/16 v9, 0xbb8

    .line 944
    .line 945
    const/16 v10, 0xfa0

    .line 946
    .line 947
    invoke-direct {v3, v10, v9}, Landroid/util/Size;-><init>(II)V

    .line 948
    .line 949
    .line 950
    new-instance v9, Landroid/util/Size;

    .line 951
    .line 952
    invoke-direct {v9, v15, v5}, Landroid/util/Size;-><init>(II)V

    .line 953
    .line 954
    .line 955
    new-instance v10, Landroid/util/Size;

    .line 956
    .line 957
    invoke-direct {v10, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 958
    .line 959
    .line 960
    new-instance v6, Landroid/util/Size;

    .line 961
    .line 962
    invoke-direct {v6, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 963
    .line 964
    .line 965
    new-instance v7, Landroid/util/Size;

    .line 966
    .line 967
    const/16 v8, 0xba0

    .line 968
    .line 969
    invoke-direct {v7, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 970
    .line 971
    .line 972
    new-instance v8, Landroid/util/Size;

    .line 973
    .line 974
    invoke-direct {v8, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 975
    .line 976
    .line 977
    const/4 v5, 0x7

    .line 978
    new-array v5, v5, [Landroid/util/Size;

    .line 979
    .line 980
    aput-object v0, v5, v16

    .line 981
    .line 982
    aput-object v3, v5, p0

    .line 983
    .line 984
    aput-object v9, v5, v18

    .line 985
    .line 986
    const/16 v22, 0x3

    .line 987
    .line 988
    aput-object v10, v5, v22

    .line 989
    .line 990
    aput-object v6, v5, v20

    .line 991
    .line 992
    aput-object v7, v5, v19

    .line 993
    .line 994
    const/16 v21, 0x6

    .line 995
    .line 996
    aput-object v8, v5, v21

    .line 997
    .line 998
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 999
    .line 1000
    .line 1001
    move-result-object v17

    .line 1002
    goto/16 :goto_3

    .line 1003
    .line 1004
    :cond_18
    invoke-static {}, Landroidx/core/util/DebugUtils;->isSamsungZFold4$camera_camera2()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v3

    .line 1008
    if-eqz v3, :cond_19

    .line 1009
    .line 1010
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    if-eqz v0, :cond_9

    .line 1015
    .line 1016
    if-ne v2, v12, :cond_9

    .line 1017
    .line 1018
    new-instance v0, Landroid/util/Size;

    .line 1019
    .line 1020
    const/16 v3, 0x500

    .line 1021
    .line 1022
    const/16 v5, 0x2d0

    .line 1023
    .line 1024
    invoke-direct {v0, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v3, Landroid/util/Size;

    .line 1028
    .line 1029
    const/16 v10, 0x438

    .line 1030
    .line 1031
    invoke-direct {v3, v13, v10}, Landroid/util/Size;-><init>(II)V

    .line 1032
    .line 1033
    .line 1034
    new-instance v5, Landroid/util/Size;

    .line 1035
    .line 1036
    const/16 v6, 0x900

    .line 1037
    .line 1038
    const/16 v8, 0x510

    .line 1039
    .line 1040
    invoke-direct {v5, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 1041
    .line 1042
    .line 1043
    new-instance v6, Landroid/util/Size;

    .line 1044
    .line 1045
    const/16 v8, 0x280

    .line 1046
    .line 1047
    const/16 v9, 0x168

    .line 1048
    .line 1049
    invoke-direct {v6, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 1050
    .line 1051
    .line 1052
    new-instance v8, Landroid/util/Size;

    .line 1053
    .line 1054
    const/16 v9, 0xb1

    .line 1055
    .line 1056
    const/16 v10, 0x90

    .line 1057
    .line 1058
    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 1059
    .line 1060
    .line 1061
    new-instance v9, Landroid/util/Size;

    .line 1062
    .line 1063
    const/16 v10, 0x920

    .line 1064
    .line 1065
    const/16 v11, 0x438

    .line 1066
    .line 1067
    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v10, Landroid/util/Size;

    .line 1071
    .line 1072
    invoke-direct {v10, v7, v11}, Landroid/util/Size;-><init>(II)V

    .line 1073
    .line 1074
    .line 1075
    new-instance v7, Landroid/util/Size;

    .line 1076
    .line 1077
    const/16 v11, 0x338

    .line 1078
    .line 1079
    invoke-direct {v7, v13, v11}, Landroid/util/Size;-><init>(II)V

    .line 1080
    .line 1081
    .line 1082
    new-instance v11, Landroid/util/Size;

    .line 1083
    .line 1084
    const/16 v12, 0x440

    .line 1085
    .line 1086
    invoke-direct {v11, v12, v12}, Landroid/util/Size;-><init>(II)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v12, Landroid/util/Size;

    .line 1090
    .line 1091
    const/16 v13, 0x6c0

    .line 1092
    .line 1093
    invoke-direct {v12, v13, v13}, Landroid/util/Size;-><init>(II)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v13, Landroid/util/Size;

    .line 1097
    .line 1098
    const/16 v14, 0xab0

    .line 1099
    .line 1100
    invoke-direct {v13, v14, v14}, Landroid/util/Size;-><init>(II)V

    .line 1101
    .line 1102
    .line 1103
    new-instance v14, Landroid/util/Size;

    .line 1104
    .line 1105
    const/16 v15, 0x720

    .line 1106
    .line 1107
    move-object/from16 v17, v0

    .line 1108
    .line 1109
    const/16 v0, 0x2c8

    .line 1110
    .line 1111
    invoke-direct {v14, v15, v0}, Landroid/util/Size;-><init>(II)V

    .line 1112
    .line 1113
    .line 1114
    const/16 v0, 0xc

    .line 1115
    .line 1116
    new-array v0, v0, [Landroid/util/Size;

    .line 1117
    .line 1118
    aput-object v17, v0, v16

    .line 1119
    .line 1120
    aput-object v3, v0, p0

    .line 1121
    .line 1122
    aput-object v5, v0, v18

    .line 1123
    .line 1124
    const/16 v22, 0x3

    .line 1125
    .line 1126
    aput-object v6, v0, v22

    .line 1127
    .line 1128
    aput-object v8, v0, v20

    .line 1129
    .line 1130
    aput-object v9, v0, v19

    .line 1131
    .line 1132
    const/16 v21, 0x6

    .line 1133
    .line 1134
    aput-object v10, v0, v21

    .line 1135
    .line 1136
    const/16 v24, 0x7

    .line 1137
    .line 1138
    aput-object v7, v0, v24

    .line 1139
    .line 1140
    const/16 v23, 0x8

    .line 1141
    .line 1142
    aput-object v11, v0, v23

    .line 1143
    .line 1144
    const/16 v3, 0x9

    .line 1145
    .line 1146
    aput-object v12, v0, v3

    .line 1147
    .line 1148
    const/16 v3, 0xa

    .line 1149
    .line 1150
    aput-object v13, v0, v3

    .line 1151
    .line 1152
    const/16 v3, 0xb

    .line 1153
    .line 1154
    aput-object v14, v0, v3

    .line 1155
    .line 1156
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v17

    .line 1160
    goto/16 :goto_3

    .line 1161
    .line 1162
    :cond_19
    const-string v0, "ExcludedSupportedSizesQuirk"

    .line 1163
    .line 1164
    const-string v3, "Cannot retrieve list of supported sizes to exclude on this device."

    .line 1165
    .line 1166
    invoke-static {v0, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_3

    .line 1170
    .line 1171
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v3

    .line 1175
    if-nez v3, :cond_1a

    .line 1176
    .line 1177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1178
    .line 1179
    .line 1180
    :cond_1a
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    if-eqz v0, :cond_1b

    .line 1185
    .line 1186
    const-string v0, "OutputSizesCorrector"

    .line 1187
    .line 1188
    const-string v3, "Sizes array becomes empty after excluding problematic output sizes."

    .line 1189
    .line 1190
    invoke-static {v0, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    :cond_1b
    move/from16 v0, v16

    .line 1194
    .line 1195
    new-array v0, v0, [Landroid/util/Size;

    .line 1196
    .line 1197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    check-cast v0, [Landroid/util/Size;

    .line 1202
    .line 1203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v1

    .line 1207
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    check-cast v0, [Landroid/util/Size;

    .line 1215
    .line 1216
    return-object v0

    .line 1217
    :cond_1c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    const-string v1, "Retrieved output sizes array is null or empty for format "

    .line 1220
    .line 1221
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    invoke-static {v3, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    return-object v5
.end method
