.class public abstract Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final access$buildSimpleOutputSurfaceMap(Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Lkotlin/collections/builders/MapBuilder;
    .locals 5

    .line 1
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 23
    .line 24
    iget v2, v1, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 25
    .line 26
    new-instance v3, Landroidx/camera/camera2/pipe/StreamId;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/Surface;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 57
    .line 58
    iget v3, v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 59
    .line 60
    new-instance v4, Landroidx/camera/camera2/pipe/OutputId;

    .line 61
    .line 62
    invoke-direct {v4, v3}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static final buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigMap:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v9, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Lkotlin/collections/builders/MapBuilder;

    .line 38
    .line 39
    invoke-virtual {v9}, Lkotlin/collections/builders/MapBuilder;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Lkotlin/collections/builders/MapBuilderKeys;

    .line 44
    .line 45
    invoke-virtual {v9}, Lkotlin/collections/builders/MapBuilderKeys;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const-string v11, "Required value was null."

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    const/4 v13, 0x0

    .line 57
    if-eqz v10, :cond_3

    .line 58
    .line 59
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    check-cast v14, Landroidx/camera/camera2/pipe/StreamId;

    .line 70
    .line 71
    iget v14, v14, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 72
    .line 73
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    .line 78
    .line 79
    invoke-virtual {v1, v14}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    if-eqz v14, :cond_2

    .line 84
    .line 85
    iget-object v11, v14, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-ne v11, v12, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 v1, 0x1f

    .line 97
    .line 98
    if-ge v0, v1, :cond_1

    .line 99
    .line 100
    const-string v0, "Cannot configure multiple outputs pre-S!"

    .line 101
    .line 102
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v13

    .line 106
    :cond_1
    const-class v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    throw v13

    .line 115
    :cond_2
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v13

    .line 119
    :cond_3
    iget-object v9, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-eqz v10, :cond_9

    .line 130
    .line 131
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    check-cast v10, Landroidx/camera/camera2/pipe/CameraStream;

    .line 136
    .line 137
    iget-object v14, v10, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 138
    .line 139
    iget v10, v10, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 140
    .line 141
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-ne v15, v12, :cond_5

    .line 146
    .line 147
    new-instance v15, Landroidx/camera/camera2/pipe/StreamId;

    .line 148
    .line 149
    invoke-direct {v15, v10}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    check-cast v10, Landroid/view/Surface;

    .line 157
    .line 158
    if-eqz v10, :cond_4

    .line 159
    .line 160
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    check-cast v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 165
    .line 166
    iget v14, v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 167
    .line 168
    new-instance v15, Landroidx/camera/camera2/pipe/OutputId;

    .line 169
    .line 170
    invoke-direct {v15, v14}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v7, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-eqz v15, :cond_4

    .line 186
    .line 187
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    check-cast v15, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 192
    .line 193
    invoke-virtual {v4, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    move-object/from16 v17, v13

    .line 198
    .line 199
    if-eqz v16, :cond_8

    .line 200
    .line 201
    move-object/from16 v13, v16

    .line 202
    .line 203
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 204
    .line 205
    invoke-virtual {v8, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    invoke-static {v13}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    if-eqz v13, :cond_6

    .line 214
    .line 215
    invoke-virtual {v13}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    new-instance v13, Landroidx/camera/camera2/pipe/StreamId;

    .line 221
    .line 222
    invoke-direct {v13, v10}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    check-cast v13, Landroid/view/Surface;

    .line 230
    .line 231
    :goto_3
    if-eqz v13, :cond_7

    .line 232
    .line 233
    iget v15, v15, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 234
    .line 235
    new-instance v12, Landroidx/camera/camera2/pipe/OutputId;

    .line 236
    .line 237
    invoke-direct {v12, v15}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-object/from16 v13, v17

    .line 244
    .line 245
    const/4 v12, 0x1

    .line 246
    goto :goto_2

    .line 247
    :cond_7
    move-object/from16 v13, v17

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object v17

    .line 254
    :cond_9
    move-object/from16 v17, v13

    .line 255
    .line 256
    iget-object v4, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigs:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    move-object/from16 v9, v17

    .line 263
    .line 264
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_22

    .line 269
    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    check-cast v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 275
    .line 276
    iget-object v11, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 277
    .line 278
    iget-object v12, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 279
    .line 280
    iget-object v13, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->sensorPixelModes:Ljava/util/List;

    .line 281
    .line 282
    iget-object v14, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 283
    .line 284
    iget-object v15, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->groupNumber:Ljava/lang/Integer;

    .line 285
    .line 286
    move-object/from16 v30, v4

    .line 287
    .line 288
    iget-object v4, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    .line 289
    .line 290
    move-object/from16 v18, v12

    .line 291
    .line 292
    new-instance v12, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v19

    .line 301
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v20

    .line 305
    if-eqz v20, :cond_b

    .line 306
    .line 307
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v20

    .line 311
    move-object/from16 v24, v13

    .line 312
    .line 313
    move-object/from16 v13, v20

    .line 314
    .line 315
    check-cast v13, Landroidx/camera/camera2/pipe/CameraStream;

    .line 316
    .line 317
    iget v13, v13, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 318
    .line 319
    move-object/from16 v20, v14

    .line 320
    .line 321
    new-instance v14, Landroidx/camera/camera2/pipe/StreamId;

    .line 322
    .line 323
    invoke-direct {v14, v13}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    check-cast v13, Landroid/view/Surface;

    .line 331
    .line 332
    if-eqz v13, :cond_a

    .line 333
    .line 334
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_a
    move-object/from16 v14, v20

    .line 338
    .line 339
    move-object/from16 v13, v24

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_b
    move-object/from16 v24, v13

    .line 343
    .line 344
    move-object/from16 v20, v14

    .line 345
    .line 346
    invoke-virtual {v8, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    invoke-static {v13}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    const-string v14, "! Missing surfaces for "

    .line 355
    .line 356
    move-object/from16 v31, v8

    .line 357
    .line 358
    const-string v8, "Surfaces are not yet available for "

    .line 359
    .line 360
    if-eqz v13, :cond_10

    .line 361
    .line 362
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    if-ne v4, v12, :cond_d

    .line 371
    .line 372
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 373
    .line 374
    invoke-direct {v4, v13}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-object/from16 v32, v7

    .line 381
    .line 382
    move-object/from16 v33, v9

    .line 383
    .line 384
    :cond_c
    :goto_6
    const/4 v7, 0x1

    .line 385
    goto/16 :goto_e

    .line 386
    .line 387
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_f

    .line 401
    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    move-object v4, v3

    .line 407
    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    .line 408
    .line 409
    iget v4, v4, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 410
    .line 411
    new-instance v5, Landroidx/camera/camera2/pipe/StreamId;

    .line 412
    .line 413
    invoke-direct {v5, v4}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-nez v4, :cond_e

    .line 421
    .line 422
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const/16 v0, 0x21

    .line 441
    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v1

    .line 459
    :cond_10
    const-string v13, "Failed to create AndroidOutputConfiguration for "

    .line 460
    .line 461
    move-object/from16 v22, v15

    .line 462
    .line 463
    const-string v15, "CXCP"

    .line 464
    .line 465
    const/16 v23, -0x1

    .line 466
    .line 467
    if-eqz v20, :cond_15

    .line 468
    .line 469
    move-object/from16 v32, v7

    .line 470
    .line 471
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    move-object/from16 v33, v9

    .line 476
    .line 477
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    if-eq v7, v9, :cond_16

    .line 482
    .line 483
    iget-object v7, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    .line 484
    .line 485
    iget-object v8, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 486
    .line 487
    iget-object v9, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 488
    .line 489
    iget-object v12, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 490
    .line 491
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 492
    .line 493
    .line 494
    move-result v14

    .line 495
    move-object/from16 v25, v7

    .line 496
    .line 497
    const/4 v7, 0x1

    .line 498
    if-le v14, v7, :cond_11

    .line 499
    .line 500
    const/16 v26, 0x1

    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_11
    const/16 v26, 0x0

    .line 504
    .line 505
    :goto_8
    if-eqz v22, :cond_12

    .line 506
    .line 507
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v23

    .line 511
    :cond_12
    move/from16 v27, v23

    .line 512
    .line 513
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    if-nez v7, :cond_13

    .line 518
    .line 519
    move-object/from16 v28, v4

    .line 520
    .line 521
    goto :goto_9

    .line 522
    :cond_13
    move-object/from16 v28, v17

    .line 523
    .line 524
    :goto_9
    const/16 v19, 0x0

    .line 525
    .line 526
    const/16 v29, 0x2

    .line 527
    .line 528
    const/16 v18, 0x0

    .line 529
    .line 530
    move-object/from16 v21, v8

    .line 531
    .line 532
    move-object/from16 v22, v9

    .line 533
    .line 534
    move-object/from16 v23, v12

    .line 535
    .line 536
    invoke-static/range {v18 .. v29}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->create-gWWoySg$default(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;I)Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    if-nez v4, :cond_14

    .line 541
    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    goto/16 :goto_6

    .line 558
    .line 559
    :cond_14
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 567
    .line 568
    .line 569
    move-result v8

    .line 570
    if-eqz v8, :cond_c

    .line 571
    .line 572
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream;

    .line 577
    .line 578
    iget v8, v8, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 579
    .line 580
    new-instance v9, Landroidx/camera/camera2/pipe/StreamId;

    .line 581
    .line 582
    invoke-direct {v9, v8}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 583
    .line 584
    .line 585
    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_15
    move-object/from16 v32, v7

    .line 590
    .line 591
    move-object/from16 v33, v9

    .line 592
    .line 593
    :cond_16
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-ne v7, v9, :cond_1f

    .line 602
    .line 603
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    check-cast v7, Landroid/view/Surface;

    .line 608
    .line 609
    iget-object v8, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 610
    .line 611
    iget-object v9, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 612
    .line 613
    iget-object v14, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 614
    .line 615
    move-object/from16 v19, v7

    .line 616
    .line 617
    iget-object v7, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    .line 618
    .line 619
    move-object/from16 v25, v7

    .line 620
    .line 621
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    move-object/from16 v18, v8

    .line 626
    .line 627
    const/4 v8, 0x1

    .line 628
    if-le v7, v8, :cond_17

    .line 629
    .line 630
    const/16 v26, 0x1

    .line 631
    .line 632
    goto :goto_b

    .line 633
    :cond_17
    const/16 v26, 0x0

    .line 634
    .line 635
    :goto_b
    if-eqz v22, :cond_18

    .line 636
    .line 637
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    .line 638
    .line 639
    .line 640
    move-result v23

    .line 641
    :cond_18
    move/from16 v27, v23

    .line 642
    .line 643
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-nez v7, :cond_19

    .line 648
    .line 649
    move-object/from16 v28, v4

    .line 650
    .line 651
    goto :goto_c

    .line 652
    :cond_19
    move-object/from16 v28, v17

    .line 653
    .line 654
    :goto_c
    const/16 v29, 0x6

    .line 655
    .line 656
    move-object/from16 v7, v19

    .line 657
    .line 658
    const/16 v19, 0x0

    .line 659
    .line 660
    const/16 v20, 0x0

    .line 661
    .line 662
    move-object/from16 v22, v9

    .line 663
    .line 664
    move-object/from16 v23, v14

    .line 665
    .line 666
    move-object/from16 v21, v18

    .line 667
    .line 668
    move-object/from16 v18, v7

    .line 669
    .line 670
    invoke-static/range {v18 .. v29}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->create-gWWoySg$default(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;I)Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    if-nez v4, :cond_1a

    .line 675
    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    goto/16 :goto_6

    .line 692
    .line 693
    :cond_1a
    const/4 v7, 0x1

    .line 694
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 703
    .line 704
    .line 705
    move-result v9

    .line 706
    if-eqz v9, :cond_1b

    .line 707
    .line 708
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v9

    .line 712
    check-cast v9, Landroid/view/Surface;

    .line 713
    .line 714
    invoke-virtual {v4, v9}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 715
    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_1b
    iget-object v8, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 719
    .line 720
    if-eqz v8, :cond_1e

    .line 721
    .line 722
    iget-object v9, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/LinkedHashMap;

    .line 723
    .line 724
    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v8

    .line 728
    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream;

    .line 729
    .line 730
    if-eqz v8, :cond_1d

    .line 731
    .line 732
    if-nez v33, :cond_1c

    .line 733
    .line 734
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v8

    .line 738
    if-eqz v8, :cond_1c

    .line 739
    .line 740
    move-object v9, v4

    .line 741
    move-object/from16 v4, v30

    .line 742
    .line 743
    move-object/from16 v8, v31

    .line 744
    .line 745
    move-object/from16 v7, v32

    .line 746
    .line 747
    goto/16 :goto_4

    .line 748
    .line 749
    :cond_1c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    goto :goto_e

    .line 753
    :cond_1d
    const-string v0, "Postview Stream in StreamGraph cannot be null for reprocessing request"

    .line 754
    .line 755
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    return-object v17

    .line 759
    :cond_1e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    :goto_e
    move-object/from16 v4, v30

    .line 763
    .line 764
    move-object/from16 v8, v31

    .line 765
    .line 766
    move-object/from16 v7, v32

    .line 767
    .line 768
    move-object/from16 v9, v33

    .line 769
    .line 770
    goto/16 :goto_4

    .line 771
    .line 772
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    :cond_20
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    if-eqz v3, :cond_21

    .line 786
    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    move-object v4, v3

    .line 792
    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    .line 793
    .line 794
    iget v4, v4, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 795
    .line 796
    new-instance v5, Landroidx/camera/camera2/pipe/StreamId;

    .line 797
    .line 798
    invoke-direct {v5, v4}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 799
    .line 800
    .line 801
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v4

    .line 805
    if-nez v4, :cond_20

    .line 806
    .line 807
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    goto :goto_f

    .line 811
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const/16 v0, 0x21

    .line 826
    .line 827
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    throw v1

    .line 844
    :cond_22
    move-object/from16 v32, v7

    .line 845
    .line 846
    move-object/from16 v33, v9

    .line 847
    .line 848
    new-instance v0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    .line 849
    .line 850
    move-object/from16 v1, v32

    .line 851
    .line 852
    move-object/from16 v4, v33

    .line 853
    .line 854
    invoke-direct {v0, v5, v6, v4, v1}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;Ljava/util/LinkedHashMap;)V

    .line 855
    .line 856
    .line 857
    return-object v0
.end method
