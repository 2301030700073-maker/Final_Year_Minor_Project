.class public final Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 7
    .line 8
    return-void
.end method

.method public static create-gWWoySg$default(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;I)Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move-object/from16 v5, p10

    .line 12
    .line 13
    move/from16 v6, p11

    .line 14
    .line 15
    and-int/lit8 v7, v6, 0x2

    .line 16
    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v7, p1

    .line 22
    .line 23
    :goto_0
    and-int/lit8 v9, v6, 0x4

    .line 24
    .line 25
    sget-object v10, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 26
    .line 27
    if-eqz v9, :cond_1

    .line 28
    .line 29
    move-object v9, v10

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object/from16 v9, p2

    .line 32
    .line 33
    :goto_1
    and-int/lit16 v11, v6, 0x200

    .line 34
    .line 35
    if-eqz v11, :cond_2

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move/from16 v11, p8

    .line 40
    .line 41
    :goto_2
    and-int/lit16 v6, v6, 0x400

    .line 42
    .line 43
    const/4 v12, -0x1

    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    move v6, v12

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move/from16 v6, p9

    .line 49
    .line 50
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v13, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_DEFERRED_FOR_QUERY_ONLY:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 54
    .line 55
    const/16 v14, 0x1a

    .line 56
    .line 57
    const/16 v15, 0x23

    .line 58
    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    const-string v8, "CXCP"

    .line 62
    .line 63
    if-eq v9, v13, :cond_4

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    if-lt v13, v15, :cond_7

    .line 69
    .line 70
    const-string v1, "Required value was null."

    .line 71
    .line 72
    if-eqz v7, :cond_6

    .line 73
    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v1, v4}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline0;->m(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_5
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v16

    .line 90
    :cond_6
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v16

    .line 94
    :cond_7
    :goto_4
    if-eq v9, v10, :cond_10

    .line 95
    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    if-lt v1, v14, :cond_f

    .line 99
    .line 100
    if-eqz v4, :cond_e

    .line 101
    .line 102
    sget-object v6, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 103
    .line 104
    if-eq v9, v6, :cond_d

    .line 105
    .line 106
    sget-object v6, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 107
    .line 108
    if-eq v9, v6, :cond_c

    .line 109
    .line 110
    sget-object v6, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_CODEC:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 111
    .line 112
    if-eq v9, v6, :cond_a

    .line 113
    .line 114
    sget-object v6, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_RECORDER:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 115
    .line 116
    if-ne v9, v6, :cond_9

    .line 117
    .line 118
    if-lt v1, v15, :cond_8

    .line 119
    .line 120
    const-class v1, Landroid/media/MediaRecorder;

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_8
    const-string v0, "OutputType.MEDIA_RECORDER requires API 35 or higher."

    .line 124
    .line 125
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v16

    .line 129
    :cond_9
    const-string v0, "Unsupported OutputType: "

    .line 130
    .line 131
    invoke-static {v9, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v16

    .line 135
    :cond_a
    if-lt v1, v15, :cond_b

    .line 136
    .line 137
    const-class v1, Landroid/media/MediaCodec;

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_b
    const-string v0, "OutputType.MEDIA_CODEC requires API 35 or higher."

    .line 141
    .line 142
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object v16

    .line 146
    :cond_c
    const-class v1, Landroid/view/SurfaceHolder;

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_d
    const-class v1, Landroid/graphics/SurfaceTexture;

    .line 150
    .line 151
    :goto_5
    invoke-static {v4, v1}, Landroidx/camera/camera2/pipe/compat/Api26Compat$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    goto :goto_6

    .line 156
    :cond_e
    const-string v0, "Size must defined when creating a deferred OutputConfiguration."

    .line 157
    .line 158
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v16

    .line 162
    :cond_f
    const-string v0, "Deferred OutputConfigurations are not supported on API "

    .line 163
    .line 164
    const-string v2, " (requires API 26)"

    .line 165
    .line 166
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v16

    .line 174
    :cond_10
    if-eqz v1, :cond_21

    .line 175
    .line 176
    if-eq v6, v12, :cond_11

    .line 177
    .line 178
    :try_start_0
    invoke-static {}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m()V

    .line 179
    .line 180
    .line 181
    invoke-static {v6, v1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(ILandroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto :goto_6

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    goto/16 :goto_c

    .line 188
    .line 189
    :cond_11
    invoke-static {}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m()V

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 193
    .line 194
    .line 195
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_6
    if-eqz v11, :cond_13

    .line 197
    .line 198
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 199
    .line 200
    const/16 v6, 0x18

    .line 201
    .line 202
    if-lt v4, v6, :cond_12

    .line 203
    .line 204
    if-lt v4, v14, :cond_13

    .line 205
    .line 206
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->enableSurfaceSharing(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_12
    const-string v0, "surfaceSharing is not supported on API "

    .line 211
    .line 212
    const-string v1, " (requires API 24)"

    .line 213
    .line 214
    invoke-static {v4, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-object v16

    .line 222
    :cond_13
    :goto_7
    const/16 v4, 0x1c

    .line 223
    .line 224
    if-eqz v5, :cond_15

    .line 225
    .line 226
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 227
    .line 228
    if-lt v6, v4, :cond_14

    .line 229
    .line 230
    if-lt v6, v4, :cond_15

    .line 231
    .line 232
    invoke-static {v1, v5}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_14
    const-string v0, "physicalCameraId is not supported on API "

    .line 237
    .line 238
    const-string v1, " (requires API 28)"

    .line 239
    .line 240
    invoke-static {v6, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    return-object v16

    .line 248
    :cond_15
    :goto_8
    const-string v5, ". This may result in unexpected behavior. Requested "

    .line 249
    .line 250
    if-eqz v0, :cond_18

    .line 251
    .line 252
    iget v0, v0, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->value:I

    .line 253
    .line 254
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 255
    .line 256
    const/16 v7, 0x21

    .line 257
    .line 258
    if-lt v6, v7, :cond_16

    .line 259
    .line 260
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setMirrorMode(Landroid/hardware/camera2/params/OutputConfiguration;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_16
    if-nez v0, :cond_17

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_17
    const-string v7, "Cannot set mirrorMode to a non-default value on API "

    .line 268
    .line 269
    invoke-static {v6, v7, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->toString-impl(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    :cond_18
    :goto_9
    if-eqz v2, :cond_1b

    .line 288
    .line 289
    iget-wide v6, v2, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->value:J

    .line 290
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    .line 293
    const/16 v2, 0x21

    .line 294
    .line 295
    if-lt v0, v2, :cond_19

    .line 296
    .line 297
    invoke-static {v1, v6, v7}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setDynamicRangeProfile(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_19
    const-wide/16 v9, 0x1

    .line 302
    .line 303
    cmp-long v2, v6, v9

    .line 304
    .line 305
    if-nez v2, :cond_1a

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_1a
    const-string v2, "Cannot set dynamicRangeProfile to a non-default value on API "

    .line 309
    .line 310
    invoke-static {v0, v2, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->toString-impl(J)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :cond_1b
    :goto_a
    if-eqz v3, :cond_1c

    .line 329
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 331
    .line 332
    const/16 v7, 0x21

    .line 333
    .line 334
    if-lt v0, v7, :cond_1c

    .line 335
    .line 336
    iget-wide v2, v3, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    .line 337
    .line 338
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setStreamUseCase(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    .line 339
    .line 340
    .line 341
    :cond_1c
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_1f

    .line 346
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    const/16 v2, 0x1f

    .line 350
    .line 351
    if-lt v0, v2, :cond_1e

    .line 352
    .line 353
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_1d

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_1d
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    throw v0

    .line 369
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v3, "Cannot add sensorPixelModeUsed value on API "

    .line 372
    .line 373
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    move-object/from16 v0, p6

    .line 383
    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :cond_1f
    :goto_b
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 395
    .line 396
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 397
    .line 398
    if-lt v2, v4, :cond_20

    .line 399
    .line 400
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->getMaxSharedSurfaceCount(Landroid/hardware/camera2/params/OutputConfiguration;)I

    .line 401
    .line 402
    .line 403
    :cond_20
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 404
    .line 405
    .line 406
    return-object v0

    .line 407
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v3, "Failed to create an OutputConfiguration for "

    .line 410
    .line 411
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const/16 v7, 0x21

    .line 418
    .line 419
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-static {v8, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .line 428
    .line 429
    return-object v16

    .line 430
    :cond_21
    const-string v0, "non-null surface!"

    .line 431
    .line 432
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    return-object v16
.end method

.method public static shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(IZ)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v0, 0x1d

    .line 6
    .line 7
    if-gt v0, p1, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x21

    .line 10
    .line 11
    if-ge p1, v0, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x6

    .line 22
    if-ne p0, v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return p1

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z
    .locals 5

    .line 1
    invoke-static {p0, p5}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(IZ)Z

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    const-string v0, "CXCP"

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    const-string v1, "shouldRetry: Active resume mode is activated"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    if-nez p5, :cond_3

    .line 16
    .line 17
    const-wide v2, 0x2540be400L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-nez p6, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide p5, p6, Landroidx/camera/camera2/pipe/core/DurationNs;->value:J

    .line 26
    .line 27
    invoke-static {v2, v3, p5, p6}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, v1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-wide v2, p5

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const-wide v2, 0x1a3185c5000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    if-nez p6, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-wide p5, p6, Landroidx/camera/camera2/pipe/core/DurationNs;->value:J

    .line 45
    .line 46
    invoke-static {v2, v3, p5, p6}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v1, :cond_2

    .line 51
    .line 52
    :goto_0
    invoke-static {p2, p3, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const/4 p3, 0x0

    .line 57
    if-lez p2, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    const/4 p2, 0x1

    .line 61
    if-nez p0, :cond_6

    .line 62
    .line 63
    if-gt p1, p2, :cond_11

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_6
    if-ne p0, p2, :cond_7

    .line 67
    .line 68
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 p4, 0x1d

    .line 71
    .line 72
    if-ge p0, p4, :cond_10

    .line 73
    .line 74
    if-gt p1, p2, :cond_11

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_7
    const/4 p5, 0x2

    .line 78
    if-ne p0, p5, :cond_8

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_8
    const/4 p5, 0x3

    .line 82
    if-ne p0, p5, :cond_9

    .line 83
    .line 84
    if-eqz p4, :cond_10

    .line 85
    .line 86
    if-gt p1, p2, :cond_11

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_9
    const/4 p4, 0x4

    .line 90
    if-ne p0, p4, :cond_a

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_a
    const/4 p4, 0x5

    .line 94
    if-ne p0, p4, :cond_b

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_b
    const/4 p4, 0x6

    .line 98
    if-ne p0, p4, :cond_c

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_c
    const/4 p4, 0x7

    .line 102
    if-ne p0, p4, :cond_d

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_d
    const/16 p4, 0x8

    .line 106
    .line 107
    if-ne p0, p4, :cond_e

    .line 108
    .line 109
    if-gt p1, p2, :cond_11

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_e
    const/16 p4, 0xa

    .line 113
    .line 114
    if-ne p0, p4, :cond_f

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_f
    const/16 p4, 0xb

    .line 118
    .line 119
    if-ne p0, p4, :cond_12

    .line 120
    .line 121
    if-gt p1, p2, :cond_11

    .line 122
    .line 123
    :cond_10
    :goto_1
    return p2

    .line 124
    :cond_11
    :goto_2
    return p3

    .line 125
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p1, "Unexpected CameraError: "

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    return p3
.end method
