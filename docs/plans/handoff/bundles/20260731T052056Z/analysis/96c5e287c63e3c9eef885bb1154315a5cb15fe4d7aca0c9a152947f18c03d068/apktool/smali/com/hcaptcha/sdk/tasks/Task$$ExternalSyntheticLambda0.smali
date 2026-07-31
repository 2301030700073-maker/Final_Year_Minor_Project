.class public final synthetic Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0x1d

    .line 2
    .line 3
    iput p2, p0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final run$org$maplibre$android$snapshotter$MapSnapshotter$$ExternalSyntheticLambda1()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x5

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x2

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const/4 v10, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 21
    .line 22
    iget-object v1, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->isSourceUpToDate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->style:Lorg/maplibre/android/maps/Style;

    .line 28
    .line 29
    iget-boolean v1, v1, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    const-string v1, "text-halo-blur"

    .line 36
    .line 37
    const-string v2, "text-halo-width"

    .line 38
    .line 39
    const-string v3, "text-halo-color"

    .line 40
    .line 41
    const-string v4, "text-color"

    .line 42
    .line 43
    const-string v5, "text-opacity"

    .line 44
    .line 45
    const-string v6, "icon-halo-blur"

    .line 46
    .line 47
    const-string v7, "icon-halo-width"

    .line 48
    .line 49
    iget-object v8, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 50
    .line 51
    new-instance v9, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-ge v10, v11, :cond_1d

    .line 61
    .line 62
    invoke-virtual {v8, v10}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    check-cast v11, Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 67
    .line 68
    iget-object v12, v11, Lorg/maplibre/android/plugins/annotation/Symbol;->geometry:Lorg/maplibre/geojson/Point;

    .line 69
    .line 70
    iget-object v13, v11, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 71
    .line 72
    if-eqz v12, :cond_1c

    .line 73
    .line 74
    invoke-static {v12, v13}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string v12, "icon-halo-color"

    .line 82
    .line 83
    const-string v14, "icon-color"

    .line 84
    .line 85
    const-string v15, "icon-opacity"

    .line 86
    .line 87
    move-object/from16 p0, v8

    .line 88
    .line 89
    const-string v8, "text-offset"

    .line 90
    .line 91
    move-object/from16 v16, v9

    .line 92
    .line 93
    const-string v9, "text-transform"

    .line 94
    .line 95
    move/from16 v17, v10

    .line 96
    .line 97
    const-string v10, "text-rotate"

    .line 98
    .line 99
    move-object/from16 v18, v0

    .line 100
    .line 101
    const-string v0, "text-anchor"

    .line 102
    .line 103
    move-object/from16 v19, v1

    .line 104
    .line 105
    const-string v1, "text-radial-offset"

    .line 106
    .line 107
    move-object/from16 v20, v2

    .line 108
    .line 109
    const-string v2, "text-justify"

    .line 110
    .line 111
    move-object/from16 v21, v3

    .line 112
    .line 113
    const-string v3, "text-letter-spacing"

    .line 114
    .line 115
    move-object/from16 v22, v4

    .line 116
    .line 117
    const-string v4, "text-max-width"

    .line 118
    .line 119
    move-object/from16 v23, v5

    .line 120
    .line 121
    const-string v5, "text-size"

    .line 122
    .line 123
    move-object/from16 v24, v6

    .line 124
    .line 125
    const-string v6, "text-font"

    .line 126
    .line 127
    move-object/from16 v25, v7

    .line 128
    .line 129
    const-string v7, "text-field"

    .line 130
    .line 131
    move-object/from16 v26, v12

    .line 132
    .line 133
    const-string v12, "icon-anchor"

    .line 134
    .line 135
    move-object/from16 v27, v14

    .line 136
    .line 137
    const-string v14, "icon-offset"

    .line 138
    .line 139
    move-object/from16 v28, v15

    .line 140
    .line 141
    const-string v15, "icon-rotate"

    .line 142
    .line 143
    move-object/from16 v29, v8

    .line 144
    .line 145
    const-string v8, "icon-image"

    .line 146
    .line 147
    move-object/from16 v30, v9

    .line 148
    .line 149
    const-string v9, "icon-size"

    .line 150
    .line 151
    iget-object v11, v11, Lorg/maplibre/android/plugins/annotation/Symbol;->annotationManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 152
    .line 153
    move-object/from16 v31, v10

    .line 154
    .line 155
    const-string v10, "symbol-sort-key"

    .line 156
    .line 157
    move-object/from16 v32, v0

    .line 158
    .line 159
    invoke-virtual {v13, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 164
    .line 165
    if-nez v0, :cond_1

    .line 166
    .line 167
    invoke-virtual {v11, v10}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    invoke-virtual {v13, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 175
    .line 176
    if-nez v0, :cond_2

    .line 177
    .line 178
    invoke-virtual {v11, v9}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-virtual {v13, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 186
    .line 187
    if-nez v0, :cond_3

    .line 188
    .line 189
    invoke-virtual {v11, v8}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 197
    .line 198
    if-nez v0, :cond_4

    .line 199
    .line 200
    invoke-virtual {v11, v15}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_4
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 208
    .line 209
    if-nez v0, :cond_5

    .line 210
    .line 211
    invoke-virtual {v11, v14}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_5
    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 219
    .line 220
    if-nez v0, :cond_6

    .line 221
    .line 222
    invoke-virtual {v11, v12}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    invoke-virtual {v13, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 230
    .line 231
    if-nez v0, :cond_7

    .line 232
    .line 233
    invoke-virtual {v11, v7}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-virtual {v13, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 241
    .line 242
    if-nez v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {v11, v6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    invoke-virtual {v13, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 252
    .line 253
    if-nez v0, :cond_9

    .line 254
    .line 255
    invoke-virtual {v11, v5}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    invoke-virtual {v13, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 263
    .line 264
    if-nez v0, :cond_a

    .line 265
    .line 266
    invoke-virtual {v11, v4}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    invoke-virtual {v13, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 274
    .line 275
    if-nez v0, :cond_b

    .line 276
    .line 277
    invoke-virtual {v11, v3}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_b
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 285
    .line 286
    if-nez v0, :cond_c

    .line 287
    .line 288
    invoke-virtual {v11, v2}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    instance-of v0, v0, Lcom/google/gson/JsonNull;

    .line 296
    .line 297
    if-nez v0, :cond_d

    .line 298
    .line 299
    invoke-virtual {v11, v1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_d
    move-object/from16 v0, v32

    .line 303
    .line 304
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 309
    .line 310
    if-nez v1, :cond_e

    .line 311
    .line 312
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_e
    move-object/from16 v0, v31

    .line 316
    .line 317
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 322
    .line 323
    if-nez v1, :cond_f

    .line 324
    .line 325
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_f
    move-object/from16 v0, v30

    .line 329
    .line 330
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 335
    .line 336
    if-nez v1, :cond_10

    .line 337
    .line 338
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_10
    move-object/from16 v0, v29

    .line 342
    .line 343
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 348
    .line 349
    if-nez v1, :cond_11

    .line 350
    .line 351
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_11
    move-object/from16 v0, v28

    .line 355
    .line 356
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 361
    .line 362
    if-nez v1, :cond_12

    .line 363
    .line 364
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_12
    move-object/from16 v0, v27

    .line 368
    .line 369
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 374
    .line 375
    if-nez v1, :cond_13

    .line 376
    .line 377
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_13
    move-object/from16 v0, v26

    .line 381
    .line 382
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 387
    .line 388
    if-nez v1, :cond_14

    .line 389
    .line 390
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :cond_14
    move-object/from16 v0, v25

    .line 394
    .line 395
    invoke-virtual {v13, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    instance-of v1, v1, Lcom/google/gson/JsonNull;

    .line 400
    .line 401
    if-nez v1, :cond_15

    .line 402
    .line 403
    invoke-virtual {v11, v0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :cond_15
    move-object/from16 v1, v24

    .line 407
    .line 408
    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    instance-of v2, v2, Lcom/google/gson/JsonNull;

    .line 413
    .line 414
    if-nez v2, :cond_16

    .line 415
    .line 416
    invoke-virtual {v11, v1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_16
    move-object/from16 v2, v23

    .line 420
    .line 421
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    instance-of v3, v3, Lcom/google/gson/JsonNull;

    .line 426
    .line 427
    if-nez v3, :cond_17

    .line 428
    .line 429
    invoke-virtual {v11, v2}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :cond_17
    move-object/from16 v3, v22

    .line 433
    .line 434
    invoke-virtual {v13, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    instance-of v4, v4, Lcom/google/gson/JsonNull;

    .line 439
    .line 440
    if-nez v4, :cond_18

    .line 441
    .line 442
    invoke-virtual {v11, v3}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_18
    move-object/from16 v4, v21

    .line 446
    .line 447
    invoke-virtual {v13, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    instance-of v5, v5, Lcom/google/gson/JsonNull;

    .line 452
    .line 453
    if-nez v5, :cond_19

    .line 454
    .line 455
    invoke-virtual {v11, v4}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    :cond_19
    move-object/from16 v5, v20

    .line 459
    .line 460
    invoke-virtual {v13, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    instance-of v6, v6, Lcom/google/gson/JsonNull;

    .line 465
    .line 466
    if-nez v6, :cond_1a

    .line 467
    .line 468
    invoke-virtual {v11, v5}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    :cond_1a
    move-object/from16 v6, v19

    .line 472
    .line 473
    invoke-virtual {v13, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    instance-of v7, v7, Lcom/google/gson/JsonNull;

    .line 478
    .line 479
    if-nez v7, :cond_1b

    .line 480
    .line 481
    invoke-virtual {v11, v6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :cond_1b
    add-int/lit8 v10, v17, 0x1

    .line 485
    .line 486
    move-object v7, v6

    .line 487
    move-object v6, v1

    .line 488
    move-object v1, v7

    .line 489
    move-object v7, v5

    .line 490
    move-object v5, v2

    .line 491
    move-object v2, v7

    .line 492
    move-object v7, v4

    .line 493
    move-object v4, v3

    .line 494
    move-object v3, v7

    .line 495
    move-object/from16 v8, p0

    .line 496
    .line 497
    move-object v7, v0

    .line 498
    move-object/from16 v9, v16

    .line 499
    .line 500
    move-object/from16 v0, v18

    .line 501
    .line 502
    goto/16 :goto_0

    .line 503
    .line 504
    :cond_1c
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m()V

    .line 505
    .line 506
    .line 507
    goto :goto_1

    .line 508
    :cond_1d
    move-object/from16 v16, v9

    .line 509
    .line 510
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->geoJsonSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 511
    .line 512
    invoke-static/range {v16 .. v16}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    .line 517
    .line 518
    .line 519
    :goto_1
    return-void

    .line 520
    :pswitch_1
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    .line 523
    .line 524
    sget v1, Lorg/maplibre/android/maps/MapView;->$r8$clinit:I

    .line 525
    .line 526
    new-instance v1, Lorg/maplibre/android/maps/MapView$4;

    .line 527
    .line 528
    invoke-direct {v1, v10, v0}, Lorg/maplibre/android/maps/MapView$4;-><init>(ILjava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :pswitch_2
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 538
    .line 539
    sget-object v1, Lcom/google/android/material/textfield/TextInputLayout;->EDIT_TEXT_BACKGROUND_RIPPLE_STATE:[[I

    .line 540
    .line 541
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 542
    .line 543
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :pswitch_3
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 550
    .line 551
    iget-object v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 552
    .line 553
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 558
    .line 559
    .line 560
    iput-boolean v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 561
    .line 562
    return-void

    .line 563
    :pswitch_4
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 566
    .line 567
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :pswitch_5
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;

    .line 574
    .line 575
    iput-boolean v10, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mHasStableIds:Z

    .line 576
    .line 577
    iget-object v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViews:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 580
    .line 581
    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 582
    .line 583
    if-eqz v2, :cond_1e

    .line 584
    .line 585
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_1e

    .line 590
    .line 591
    iget v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->continueSettlingToState(I)V

    .line 594
    .line 595
    .line 596
    goto :goto_2

    .line 597
    :cond_1e
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 598
    .line 599
    if-ne v2, v7, :cond_1f

    .line 600
    .line 601
    iget v0, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 602
    .line 603
    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 604
    .line 605
    .line 606
    :cond_1f
    :goto_2
    return-void

    .line 607
    :pswitch_6
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 610
    .line 611
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 612
    .line 613
    .line 614
    return-void

    .line 615
    :pswitch_7
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 618
    .line 619
    sget-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 620
    .line 621
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->lambda$setOpticalCenterEnabled$5()V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_8
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    .line 628
    .line 629
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieTask;->notifyListenersInternal()V

    .line 630
    .line 631
    .line 632
    return-void

    .line 633
    :pswitch_9
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 636
    .line 637
    if-eqz v0, :cond_20

    .line 638
    .line 639
    invoke-interface {v0, v8}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 640
    .line 641
    .line 642
    :cond_20
    return-void

    .line 643
    :pswitch_a
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 646
    .line 647
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset$1()V

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :pswitch_b
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 654
    .line 655
    iget-object v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 656
    .line 657
    iget v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 658
    .line 659
    if-nez v2, :cond_21

    .line 660
    .line 661
    iput-boolean v9, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 662
    .line 663
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 666
    .line 667
    .line 668
    :cond_21
    iget v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 669
    .line 670
    if-nez v2, :cond_22

    .line 671
    .line 672
    iget-boolean v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 673
    .line 674
    if-eqz v2, :cond_22

    .line 675
    .line 676
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 677
    .line 678
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 679
    .line 680
    .line 681
    iput-boolean v9, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 682
    .line 683
    :cond_22
    return-void

    .line 684
    :pswitch_c
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 687
    .line 688
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-nez v1, :cond_23

    .line 699
    .line 700
    return-void

    .line 701
    :cond_23
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    throw v0

    .line 706
    :pswitch_d
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 709
    .line 710
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 711
    .line 712
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 713
    .line 714
    iget-object v1, v1, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Lcoil3/svg/internal/AndroidSvg;

    .line 715
    .line 716
    invoke-virtual {v1, v2}, Lcoil3/svg/internal/AndroidSvg;->performRestore(Landroid/os/Bundle;)V

    .line 717
    .line 718
    .line 719
    iput-object v8, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 720
    .line 721
    return-void

    .line 722
    :pswitch_e
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 723
    .line 724
    move-object v1, v0

    .line 725
    check-cast v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 726
    .line 727
    const-string v0, "fetchFonts result is not OK. ("

    .line 728
    .line 729
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 730
    .line 731
    monitor-enter v2

    .line 732
    :try_start_0
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lcoil3/util/UtilsKt;

    .line 733
    .line 734
    if-nez v3, :cond_24

    .line 735
    .line 736
    monitor-exit v2

    .line 737
    goto/16 :goto_9

    .line 738
    .line 739
    :catchall_0
    move-exception v0

    .line 740
    goto/16 :goto_b

    .line 741
    .line 742
    :cond_24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :try_start_1
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    iget v3, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 748
    .line 749
    if-ne v3, v7, :cond_25

    .line 750
    .line 751
    iget-object v4, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 752
    .line 753
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 754
    :try_start_2
    monitor-exit v4

    .line 755
    goto :goto_3

    .line 756
    :catchall_1
    move-exception v0

    .line 757
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 759
    :catchall_2
    move-exception v0

    .line 760
    goto/16 :goto_7

    .line 761
    .line 762
    :cond_25
    :goto_3
    if-nez v3, :cond_28

    .line 763
    .line 764
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 765
    .line 766
    sget-object v3, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 767
    .line 768
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 772
    .line 773
    new-array v3, v9, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 774
    .line 775
    aput-object v2, v3, v10

    .line 776
    .line 777
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lkotlin/ResultKt;

    .line 778
    .line 779
    const-string v4, "TypefaceCompat.createFromFontInfo"

    .line 780
    .line 781
    invoke-static {v4}, Lkotlin/TuplesKt;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 786
    .line 787
    .line 788
    :try_start_5
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lkotlin/ResultKt;

    .line 789
    .line 790
    invoke-virtual {v4, v0, v3, v10}, Lkotlin/ResultKt;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    .line 791
    .line 792
    .line 793
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 794
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 795
    .line 796
    .line 797
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 798
    .line 799
    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 800
    .line 801
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->mmap(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 802
    .line 803
    .line 804
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 805
    if-eqz v2, :cond_27

    .line 806
    .line 807
    if-eqz v0, :cond_27

    .line 808
    .line 809
    :try_start_7
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 810
    .line 811
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    new-instance v3, Lcoil3/ImageLoader$Builder;

    .line 815
    .line 816
    invoke-static {v2}, Landroidx/room/Room;->read(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    invoke-direct {v3, v0, v2}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 821
    .line 822
    .line 823
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 824
    .line 825
    .line 826
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 827
    .line 828
    .line 829
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 830
    .line 831
    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 832
    :try_start_a
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lcoil3/util/UtilsKt;

    .line 833
    .line 834
    if-eqz v0, :cond_26

    .line 835
    .line 836
    invoke-virtual {v0, v3}, Lcoil3/util/UtilsKt;->onLoaded(Lcoil3/ImageLoader$Builder;)V

    .line 837
    .line 838
    .line 839
    goto :goto_4

    .line 840
    :catchall_3
    move-exception v0

    .line 841
    goto :goto_5

    .line 842
    :cond_26
    :goto_4
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 843
    :try_start_b
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 844
    .line 845
    .line 846
    goto :goto_9

    .line 847
    :goto_5
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 848
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 849
    :catchall_4
    move-exception v0

    .line 850
    :try_start_e
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 851
    .line 852
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 853
    .line 854
    .line 855
    throw v0

    .line 856
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    .line 857
    .line 858
    const-string v2, "Unable to open file."

    .line 859
    .line 860
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :catchall_5
    move-exception v0

    .line 865
    goto :goto_6

    .line 866
    :catchall_6
    move-exception v0

    .line 867
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 868
    .line 869
    .line 870
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 871
    :goto_6
    :try_start_f
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 872
    .line 873
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 874
    .line 875
    .line 876
    throw v0

    .line 877
    :cond_28
    new-instance v2, Ljava/lang/RuntimeException;

    .line 878
    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    const-string v0, ")"

    .line 888
    .line 889
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 900
    :goto_7
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 901
    .line 902
    monitor-enter v3

    .line 903
    :try_start_10
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lcoil3/util/UtilsKt;

    .line 904
    .line 905
    if-eqz v2, :cond_29

    .line 906
    .line 907
    invoke-virtual {v2, v0}, Lcoil3/util/UtilsKt;->onFailed(Ljava/lang/Throwable;)V

    .line 908
    .line 909
    .line 910
    goto :goto_8

    .line 911
    :catchall_7
    move-exception v0

    .line 912
    goto :goto_a

    .line 913
    :cond_29
    :goto_8
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 914
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V

    .line 915
    .line 916
    .line 917
    :goto_9
    return-void

    .line 918
    :goto_a
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 919
    throw v0

    .line 920
    :goto_b
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 921
    throw v0

    .line 922
    :pswitch_f
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 925
    .line 926
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/paging/HintHandler;

    .line 927
    .line 928
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 931
    .line 932
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 933
    .line 934
    .line 935
    move-result-wide v1

    .line 936
    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 939
    .line 940
    .line 941
    move-result-wide v4

    .line 942
    move v6, v10

    .line 943
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 944
    .line 945
    .line 946
    move-result v11

    .line 947
    if-ge v6, v11, :cond_39

    .line 948
    .line 949
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v11

    .line 953
    check-cast v11, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 954
    .line 955
    if-nez v11, :cond_2a

    .line 956
    .line 957
    goto/16 :goto_17

    .line 958
    .line 959
    :cond_2a
    iget-object v12, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 960
    .line 961
    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v13

    .line 965
    check-cast v13, Ljava/lang/Long;

    .line 966
    .line 967
    if-nez v13, :cond_2b

    .line 968
    .line 969
    goto :goto_d

    .line 970
    :cond_2b
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 971
    .line 972
    .line 973
    move-result-wide v13

    .line 974
    cmp-long v13, v13, v4

    .line 975
    .line 976
    if-gez v13, :cond_38

    .line 977
    .line 978
    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    :goto_d
    iget-wide v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 982
    .line 983
    const-wide/16 v14, 0x0

    .line 984
    .line 985
    cmp-long v16, v12, v14

    .line 986
    .line 987
    if-nez v16, :cond_2c

    .line 988
    .line 989
    iput-wide v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 990
    .line 991
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 992
    .line 993
    invoke-virtual {v11, v12}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_17

    .line 997
    .line 998
    :cond_2c
    sub-long v12, v1, v12

    .line 999
    .line 1000
    iput-wide v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 1001
    .line 1002
    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v7

    .line 1006
    iget v7, v7, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 1007
    .line 1008
    const/4 v14, 0x0

    .line 1009
    cmpl-float v15, v7, v14

    .line 1010
    .line 1011
    if-nez v15, :cond_2d

    .line 1012
    .line 1013
    const-wide/32 v12, 0x7fffffff

    .line 1014
    .line 1015
    .line 1016
    :goto_e
    move-wide/from16 v24, v12

    .line 1017
    .line 1018
    goto :goto_f

    .line 1019
    :cond_2d
    long-to-float v12, v12

    .line 1020
    div-float/2addr v12, v7

    .line 1021
    float-to-long v12, v12

    .line 1022
    goto :goto_e

    .line 1023
    :goto_f
    iget-boolean v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 1024
    .line 1025
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 1026
    .line 1027
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 1028
    .line 1029
    .line 1030
    if-eqz v7, :cond_2f

    .line 1031
    .line 1032
    cmpl-float v7, v12, v13

    .line 1033
    .line 1034
    if-eqz v7, :cond_2e

    .line 1035
    .line 1036
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1037
    .line 1038
    float-to-double v8, v12

    .line 1039
    iput-wide v8, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 1040
    .line 1041
    iput v13, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 1042
    .line 1043
    :cond_2e
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1044
    .line 1045
    iget-wide v7, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 1046
    .line 1047
    double-to-float v7, v7

    .line 1048
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1049
    .line 1050
    iput v14, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1051
    .line 1052
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 1053
    .line 1054
    :goto_10
    const/4 v7, 0x1

    .line 1055
    goto/16 :goto_12

    .line 1056
    .line 1057
    :cond_2f
    cmpl-float v7, v12, v13

    .line 1058
    .line 1059
    iget-object v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1060
    .line 1061
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1062
    .line 1063
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1064
    .line 1065
    if-eqz v7, :cond_30

    .line 1066
    .line 1067
    float-to-double v14, v9

    .line 1068
    move-object/from16 v27, v8

    .line 1069
    .line 1070
    float-to-double v7, v12

    .line 1071
    const-wide/16 v19, 0x2

    .line 1072
    .line 1073
    div-long v32, v24, v19

    .line 1074
    .line 1075
    move-wide/from16 v30, v7

    .line 1076
    .line 1077
    move-wide/from16 v28, v14

    .line 1078
    .line 1079
    invoke-virtual/range {v27 .. v33}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v7

    .line 1083
    iget-object v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1084
    .line 1085
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 1086
    .line 1087
    float-to-double v14, v9

    .line 1088
    iput-wide v14, v8, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 1089
    .line 1090
    iput v13, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 1091
    .line 1092
    iget v9, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 1093
    .line 1094
    float-to-double v12, v9

    .line 1095
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 1096
    .line 1097
    float-to-double v14, v7

    .line 1098
    move-object/from16 v34, v8

    .line 1099
    .line 1100
    move-wide/from16 v35, v12

    .line 1101
    .line 1102
    move-wide/from16 v37, v14

    .line 1103
    .line 1104
    move-wide/from16 v39, v32

    .line 1105
    .line 1106
    invoke-virtual/range {v34 .. v40}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v7

    .line 1110
    iget v8, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 1111
    .line 1112
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1113
    .line 1114
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 1115
    .line 1116
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1117
    .line 1118
    goto :goto_11

    .line 1119
    :cond_30
    move-object/from16 v27, v8

    .line 1120
    .line 1121
    float-to-double v7, v9

    .line 1122
    float-to-double v12, v12

    .line 1123
    move-wide/from16 v20, v7

    .line 1124
    .line 1125
    move-wide/from16 v22, v12

    .line 1126
    .line 1127
    move-object/from16 v19, v27

    .line 1128
    .line 1129
    invoke-virtual/range {v19 .. v25}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v7

    .line 1133
    iget v8, v7, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 1134
    .line 1135
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1136
    .line 1137
    iget v7, v7, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 1138
    .line 1139
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1140
    .line 1141
    :goto_11
    iget v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 1142
    .line 1143
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    .line 1144
    .line 1145
    .line 1146
    move-result v7

    .line 1147
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1148
    .line 1149
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 1150
    .line 1151
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1156
    .line 1157
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1158
    .line 1159
    iget-object v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1160
    .line 1161
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    .line 1163
    .line 1164
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 1165
    .line 1166
    .line 1167
    move-result v8

    .line 1168
    float-to-double v12, v8

    .line 1169
    iget-wide v14, v9, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 1170
    .line 1171
    cmpg-double v8, v12, v14

    .line 1172
    .line 1173
    if-gez v8, :cond_31

    .line 1174
    .line 1175
    iget-wide v12, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 1176
    .line 1177
    double-to-float v8, v12

    .line 1178
    sub-float/2addr v7, v8

    .line 1179
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 1180
    .line 1181
    .line 1182
    move-result v7

    .line 1183
    float-to-double v7, v7

    .line 1184
    iget-wide v12, v9, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 1185
    .line 1186
    cmpg-double v7, v7, v12

    .line 1187
    .line 1188
    if-gez v7, :cond_31

    .line 1189
    .line 1190
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1191
    .line 1192
    iget-wide v7, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 1193
    .line 1194
    double-to-float v7, v7

    .line 1195
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1196
    .line 1197
    const/4 v7, 0x0

    .line 1198
    iput v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 1199
    .line 1200
    goto/16 :goto_10

    .line 1201
    .line 1202
    :cond_31
    move v7, v10

    .line 1203
    :goto_12
    iget v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1204
    .line 1205
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 1206
    .line 1207
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 1208
    .line 1209
    .line 1210
    move-result v8

    .line 1211
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1212
    .line 1213
    iget v9, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 1214
    .line 1215
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 1216
    .line 1217
    .line 1218
    move-result v8

    .line 1219
    iput v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1220
    .line 1221
    invoke-virtual {v11, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 1222
    .line 1223
    .line 1224
    if-eqz v7, :cond_38

    .line 1225
    .line 1226
    iget-object v7, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 1227
    .line 1228
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 1229
    .line 1230
    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v8

    .line 1234
    iget-object v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 1235
    .line 1236
    invoke-virtual {v9, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    iget-object v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 1240
    .line 1241
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1242
    .line 1243
    .line 1244
    move-result v12

    .line 1245
    if-ltz v12, :cond_32

    .line 1246
    .line 1247
    const/4 v15, 0x0

    .line 1248
    invoke-virtual {v9, v12, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    const/4 v9, 0x1

    .line 1252
    iput-boolean v9, v8, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 1253
    .line 1254
    :cond_32
    const-wide/16 v8, 0x0

    .line 1255
    .line 1256
    iput-wide v8, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 1257
    .line 1258
    iput-boolean v10, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 1259
    .line 1260
    move v8, v10

    .line 1261
    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1262
    .line 1263
    .line 1264
    move-result v9

    .line 1265
    if-ge v8, v9, :cond_36

    .line 1266
    .line 1267
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v9

    .line 1271
    if-eqz v9, :cond_35

    .line 1272
    .line 1273
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v9

    .line 1277
    check-cast v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator$$ExternalSyntheticLambda0;

    .line 1278
    .line 1279
    iget v12, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 1280
    .line 1281
    iget-object v9, v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 1282
    .line 1283
    invoke-virtual {v9}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v12

    .line 1287
    if-eqz v12, :cond_35

    .line 1288
    .line 1289
    invoke-virtual {v9}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v12

    .line 1293
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 1294
    .line 1295
    .line 1296
    move-result v12

    .line 1297
    const/16 v13, 0x2710

    .line 1298
    .line 1299
    if-ne v12, v13, :cond_35

    .line 1300
    .line 1301
    iget-object v12, v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    .line 1302
    .line 1303
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 1304
    .line 1305
    .line 1306
    move-result v13

    .line 1307
    if-eqz v13, :cond_33

    .line 1308
    .line 1309
    iget-object v12, v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    .line 1310
    .line 1311
    invoke-virtual {v9, v12}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1312
    .line 1313
    .line 1314
    goto :goto_14

    .line 1315
    :cond_33
    invoke-virtual {v9, v12}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1316
    .line 1317
    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1319
    .line 1320
    .line 1321
    move-result-wide v13

    .line 1322
    move-object/from16 p0, v11

    .line 1323
    .line 1324
    iget-wide v10, v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    .line 1325
    .line 1326
    sub-long/2addr v13, v10

    .line 1327
    iget v10, v9, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    .line 1328
    .line 1329
    int-to-long v10, v10

    .line 1330
    cmp-long v18, v13, v10

    .line 1331
    .line 1332
    if-ltz v18, :cond_34

    .line 1333
    .line 1334
    invoke-virtual {v12}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;->run()V

    .line 1335
    .line 1336
    .line 1337
    goto :goto_15

    .line 1338
    :cond_34
    sub-long/2addr v10, v13

    .line 1339
    invoke-virtual {v9, v12, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1340
    .line 1341
    .line 1342
    goto :goto_15

    .line 1343
    :cond_35
    :goto_14
    move-object/from16 p0, v11

    .line 1344
    .line 1345
    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 1346
    .line 1347
    move-object/from16 v11, p0

    .line 1348
    .line 1349
    const/4 v10, 0x0

    .line 1350
    goto :goto_13

    .line 1351
    :cond_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1352
    .line 1353
    .line 1354
    move-result v8

    .line 1355
    const/16 v26, 0x1

    .line 1356
    .line 1357
    add-int/lit8 v8, v8, -0x1

    .line 1358
    .line 1359
    :goto_16
    if-ltz v8, :cond_38

    .line 1360
    .line 1361
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v9

    .line 1365
    if-nez v9, :cond_37

    .line 1366
    .line 1367
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    :cond_37
    add-int/lit8 v8, v8, -0x1

    .line 1371
    .line 1372
    goto :goto_16

    .line 1373
    :cond_38
    :goto_17
    add-int/lit8 v6, v6, 0x1

    .line 1374
    .line 1375
    const/4 v7, 0x2

    .line 1376
    const/4 v8, 0x0

    .line 1377
    const/4 v9, 0x1

    .line 1378
    const/4 v10, 0x0

    .line 1379
    goto/16 :goto_c

    .line 1380
    .line 1381
    :cond_39
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 1382
    .line 1383
    if-eqz v1, :cond_3d

    .line 1384
    .line 1385
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1386
    .line 1387
    .line 1388
    move-result v1

    .line 1389
    const/16 v26, 0x1

    .line 1390
    .line 1391
    add-int/lit8 v1, v1, -0x1

    .line 1392
    .line 1393
    :goto_18
    if-ltz v1, :cond_3b

    .line 1394
    .line 1395
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v2

    .line 1399
    if-nez v2, :cond_3a

    .line 1400
    .line 1401
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    .line 1405
    .line 1406
    goto :goto_18

    .line 1407
    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1408
    .line 1409
    .line 1410
    move-result v1

    .line 1411
    if-nez v1, :cond_3c

    .line 1412
    .line 1413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1414
    .line 1415
    const/16 v2, 0x21

    .line 1416
    .line 1417
    if-lt v1, v2, :cond_3c

    .line 1418
    .line 1419
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 1420
    .line 1421
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->unregister()Z

    .line 1422
    .line 1423
    .line 1424
    :cond_3c
    const/4 v1, 0x0

    .line 1425
    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 1426
    .line 1427
    :cond_3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    if-lez v1, :cond_3e

    .line 1432
    .line 1433
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/cardview/widget/CardView$1;

    .line 1434
    .line 1435
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 1436
    .line 1437
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1438
    .line 1439
    check-cast v1, Landroid/view/Choreographer;

    .line 1440
    .line 1441
    new-instance v2, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;

    .line 1442
    .line 1443
    const/4 v3, 0x2

    .line 1444
    invoke-direct {v2, v0, v3}, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1448
    .line 1449
    .line 1450
    :cond_3e
    return-void

    .line 1451
    :pswitch_10
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1452
    .line 1453
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 1454
    .line 1455
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1456
    .line 1457
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 1458
    .line 1459
    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 1460
    .line 1461
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 1462
    .line 1463
    if-ne v3, v6, :cond_3f

    .line 1464
    .line 1465
    const/4 v4, 0x1

    .line 1466
    goto :goto_19

    .line 1467
    :cond_3f
    const/4 v4, 0x0

    .line 1468
    :goto_19
    if-eqz v4, :cond_41

    .line 1469
    .line 1470
    invoke-virtual {v1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v7

    .line 1474
    if-eqz v7, :cond_40

    .line 1475
    .line 1476
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 1477
    .line 1478
    .line 1479
    move-result v8

    .line 1480
    neg-int v8, v8

    .line 1481
    goto :goto_1a

    .line 1482
    :cond_40
    const/4 v8, 0x0

    .line 1483
    :goto_1a
    add-int/2addr v8, v2

    .line 1484
    goto :goto_1b

    .line 1485
    :cond_41
    invoke-virtual {v1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v7

    .line 1489
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 1490
    .line 1491
    .line 1492
    move-result v8

    .line 1493
    sub-int/2addr v8, v2

    .line 1494
    :goto_1b
    if-eqz v7, :cond_47

    .line 1495
    .line 1496
    if-eqz v4, :cond_42

    .line 1497
    .line 1498
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 1499
    .line 1500
    .line 1501
    move-result v2

    .line 1502
    if-lt v2, v8, :cond_43

    .line 1503
    .line 1504
    :cond_42
    if-nez v4, :cond_47

    .line 1505
    .line 1506
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 1507
    .line 1508
    .line 1509
    move-result v2

    .line 1510
    if-le v2, v8, :cond_47

    .line 1511
    .line 1512
    :cond_43
    invoke-virtual {v1, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 1513
    .line 1514
    .line 1515
    move-result v2

    .line 1516
    if-nez v2, :cond_47

    .line 1517
    .line 1518
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 1523
    .line 1524
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 1525
    .line 1526
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 1527
    .line 1528
    .line 1529
    move-result v4

    .line 1530
    invoke-virtual {v0, v7, v8, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1531
    .line 1532
    .line 1533
    const/4 v9, 0x1

    .line 1534
    iput-boolean v9, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1535
    .line 1536
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1537
    .line 1538
    .line 1539
    if-ne v3, v6, :cond_44

    .line 1540
    .line 1541
    goto :goto_1c

    .line 1542
    :cond_44
    move v5, v6

    .line 1543
    :goto_1c
    invoke-virtual {v1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    if-eqz v0, :cond_45

    .line 1548
    .line 1549
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1550
    .line 1551
    .line 1552
    :cond_45
    iget-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1553
    .line 1554
    if-nez v0, :cond_47

    .line 1555
    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1557
    .line 1558
    .line 1559
    move-result-wide v2

    .line 1560
    const/4 v8, 0x0

    .line 1561
    const/4 v9, 0x0

    .line 1562
    const/4 v6, 0x3

    .line 1563
    const/4 v7, 0x0

    .line 1564
    move-wide v4, v2

    .line 1565
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1570
    .line 1571
    .line 1572
    move-result v2

    .line 1573
    const/4 v10, 0x0

    .line 1574
    :goto_1d
    if-ge v10, v2, :cond_46

    .line 1575
    .line 1576
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v3

    .line 1580
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1581
    .line 1582
    .line 1583
    add-int/lit8 v10, v10, 0x1

    .line 1584
    .line 1585
    goto :goto_1d

    .line 1586
    :cond_46
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1587
    .line 1588
    .line 1589
    const/4 v9, 0x1

    .line 1590
    iput-boolean v9, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1591
    .line 1592
    :cond_47
    return-void

    .line 1593
    :pswitch_11
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1594
    .line 1595
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1596
    .line 1597
    const/4 v1, 0x0

    .line 1598
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1599
    .line 1600
    .line 1601
    return-void

    .line 1602
    :pswitch_12
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1603
    .line 1604
    check-cast v0, Landroidx/core/view/insets/SystemBarStateMonitor;

    .line 1605
    .line 1606
    iget-object v0, v0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroidx/core/view/insets/SystemBarStateMonitor$1;

    .line 1607
    .line 1608
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 1613
    .line 1614
    if-eqz v2, :cond_48

    .line 1615
    .line 1616
    check-cast v1, Landroid/view/ViewGroup;

    .line 1617
    .line 1618
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1619
    .line 1620
    .line 1621
    :cond_48
    return-void

    .line 1622
    :pswitch_13
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1623
    .line 1624
    move-object v1, v0

    .line 1625
    check-cast v1, Landroid/app/Activity;

    .line 1626
    .line 1627
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 1628
    .line 1629
    .line 1630
    move-result v0

    .line 1631
    if-nez v0, :cond_52

    .line 1632
    .line 1633
    sget-object v7, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    .line 1634
    .line 1635
    sget-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 1636
    .line 1637
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1638
    .line 1639
    const/16 v9, 0x1c

    .line 1640
    .line 1641
    if-lt v8, v9, :cond_49

    .line 1642
    .line 1643
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 1644
    .line 1645
    .line 1646
    goto/16 :goto_23

    .line 1647
    .line 1648
    :cond_49
    const/16 v9, 0x1b

    .line 1649
    .line 1650
    const/16 v10, 0x1a

    .line 1651
    .line 1652
    if-eq v8, v10, :cond_4a

    .line 1653
    .line 1654
    if-ne v8, v9, :cond_4b

    .line 1655
    .line 1656
    :cond_4a
    if-nez v0, :cond_4b

    .line 1657
    .line 1658
    goto/16 :goto_22

    .line 1659
    .line 1660
    :cond_4b
    sget-object v11, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 1661
    .line 1662
    if-nez v11, :cond_4c

    .line 1663
    .line 1664
    sget-object v11, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 1665
    .line 1666
    if-nez v11, :cond_4c

    .line 1667
    .line 1668
    goto/16 :goto_22

    .line 1669
    .line 1670
    :cond_4c
    :try_start_13
    sget-object v11, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    .line 1671
    .line 1672
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v11

    .line 1676
    if-nez v11, :cond_4d

    .line 1677
    .line 1678
    goto/16 :goto_22

    .line 1679
    .line 1680
    :cond_4d
    sget-object v12, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    .line 1681
    .line 1682
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v12

    .line 1686
    if-nez v12, :cond_4e

    .line 1687
    .line 1688
    goto :goto_22

    .line 1689
    :cond_4e
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v13

    .line 1693
    new-instance v14, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 1694
    .line 1695
    invoke-direct {v14, v1}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v13, v14}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1699
    .line 1700
    .line 1701
    const/16 v18, 0x7

    .line 1702
    .line 1703
    new-instance v3, Landroidx/core/app/ActivityRecreator$1;

    .line 1704
    .line 1705
    move/from16 v19, v5

    .line 1706
    .line 1707
    const/4 v5, 0x0

    .line 1708
    invoke-direct {v3, v5, v14, v11}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1712
    .line 1713
    .line 1714
    if-eq v8, v10, :cond_50

    .line 1715
    .line 1716
    if-ne v8, v9, :cond_4f

    .line 1717
    .line 1718
    goto :goto_1e

    .line 1719
    :cond_4f
    move v3, v5

    .line 1720
    goto :goto_1f

    .line 1721
    :cond_50
    :goto_1e
    const/4 v3, 0x1

    .line 1722
    :goto_1f
    if-eqz v3, :cond_51

    .line 1723
    .line 1724
    :try_start_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v3

    .line 1728
    const/16 v8, 0x9

    .line 1729
    .line 1730
    new-array v8, v8, [Ljava/lang/Object;

    .line 1731
    .line 1732
    aput-object v11, v8, v5

    .line 1733
    .line 1734
    const/4 v15, 0x0

    .line 1735
    const/16 v26, 0x1

    .line 1736
    .line 1737
    aput-object v15, v8, v26

    .line 1738
    .line 1739
    const/16 v16, 0x2

    .line 1740
    .line 1741
    aput-object v15, v8, v16

    .line 1742
    .line 1743
    aput-object v3, v8, v6

    .line 1744
    .line 1745
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1746
    .line 1747
    aput-object v3, v8, v4

    .line 1748
    .line 1749
    aput-object v15, v8, v19

    .line 1750
    .line 1751
    const/4 v4, 0x6

    .line 1752
    aput-object v15, v8, v4

    .line 1753
    .line 1754
    aput-object v3, v8, v18

    .line 1755
    .line 1756
    aput-object v3, v8, v2

    .line 1757
    .line 1758
    invoke-virtual {v0, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    goto :goto_20

    .line 1762
    :catchall_8
    move-exception v0

    .line 1763
    goto :goto_21

    .line 1764
    :cond_51
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1765
    .line 1766
    .line 1767
    :goto_20
    :try_start_15
    new-instance v0, Landroidx/core/app/ActivityRecreator$1;

    .line 1768
    .line 1769
    const/4 v5, 0x0

    .line 1770
    const/4 v9, 0x1

    .line 1771
    invoke-direct {v0, v9, v13, v14, v5}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1775
    .line 1776
    .line 1777
    goto :goto_23

    .line 1778
    :goto_21
    new-instance v2, Landroidx/core/app/ActivityRecreator$1;

    .line 1779
    .line 1780
    const/4 v5, 0x0

    .line 1781
    const/4 v9, 0x1

    .line 1782
    invoke-direct {v2, v9, v13, v14, v5}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    .line 1787
    .line 1788
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1789
    :catchall_9
    :goto_22
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 1790
    .line 1791
    .line 1792
    :cond_52
    :goto_23
    return-void

    .line 1793
    :pswitch_14
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1794
    .line 1795
    check-cast v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 1796
    .line 1797
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Lcom/caverock/androidsvg/SVG;

    .line 1798
    .line 1799
    const/4 v15, 0x0

    .line 1800
    iput-object v15, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->frameCallback:Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 1801
    .line 1802
    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandQueue:Landroidx/compose/runtime/collection/MutableVector;

    .line 1803
    .line 1804
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 1805
    .line 1806
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 1807
    .line 1808
    .line 1809
    move-result v3

    .line 1810
    if-nez v3, :cond_53

    .line 1811
    .line 1812
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v0

    .line 1816
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v0

    .line 1820
    if-eqz v0, :cond_53

    .line 1821
    .line 1822
    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 1823
    .line 1824
    .line 1825
    move-result v0

    .line 1826
    const/4 v9, 0x1

    .line 1827
    if-ne v0, v9, :cond_53

    .line 1828
    .line 1829
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 1830
    .line 1831
    .line 1832
    goto/16 :goto_2a

    .line 1833
    .line 1834
    :cond_53
    iget-object v0, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1835
    .line 1836
    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1837
    .line 1838
    const/4 v5, 0x0

    .line 1839
    const/4 v8, 0x0

    .line 1840
    const/4 v15, 0x0

    .line 1841
    :goto_24
    if-ge v5, v3, :cond_5a

    .line 1842
    .line 1843
    aget-object v7, v0, v5

    .line 1844
    .line 1845
    check-cast v7, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 1846
    .line 1847
    sget-object v9, Landroidx/compose/ui/text/input/TextInputServiceAndroid$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1848
    .line 1849
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 1850
    .line 1851
    .line 1852
    move-result v10

    .line 1853
    aget v9, v9, v10

    .line 1854
    .line 1855
    const/4 v10, 0x1

    .line 1856
    if-eq v9, v10, :cond_58

    .line 1857
    .line 1858
    const/4 v10, 0x2

    .line 1859
    if-eq v9, v10, :cond_57

    .line 1860
    .line 1861
    if-eq v9, v6, :cond_55

    .line 1862
    .line 1863
    if-ne v9, v4, :cond_54

    .line 1864
    .line 1865
    goto :goto_25

    .line 1866
    :cond_54
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1867
    .line 1868
    .line 1869
    goto/16 :goto_2a

    .line 1870
    .line 1871
    :cond_55
    :goto_25
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1872
    .line 1873
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1874
    .line 1875
    .line 1876
    move-result v9

    .line 1877
    if-nez v9, :cond_59

    .line 1878
    .line 1879
    sget-object v9, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->ShowKeyboard:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 1880
    .line 1881
    if-ne v7, v9, :cond_56

    .line 1882
    .line 1883
    const/4 v7, 0x1

    .line 1884
    goto :goto_26

    .line 1885
    :cond_56
    const/4 v7, 0x0

    .line 1886
    :goto_26
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v7

    .line 1890
    move-object v15, v7

    .line 1891
    goto :goto_28

    .line 1892
    :cond_57
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1893
    .line 1894
    :goto_27
    move-object v8, v7

    .line 1895
    move-object v15, v8

    .line 1896
    goto :goto_28

    .line 1897
    :cond_58
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1898
    .line 1899
    goto :goto_27

    .line 1900
    :cond_59
    :goto_28
    add-int/lit8 v5, v5, 0x1

    .line 1901
    .line 1902
    goto :goto_24

    .line 1903
    :cond_5a
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 1904
    .line 1905
    .line 1906
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1907
    .line 1908
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v0

    .line 1912
    if-eqz v0, :cond_5b

    .line 1913
    .line 1914
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 1915
    .line 1916
    check-cast v0, Lkotlin/Lazy;

    .line 1917
    .line 1918
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v0

    .line 1922
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1923
    .line 1924
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1925
    .line 1926
    check-cast v2, Landroid/view/View;

    .line 1927
    .line 1928
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1929
    .line 1930
    .line 1931
    :cond_5b
    if-eqz v15, :cond_5d

    .line 1932
    .line 1933
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1934
    .line 1935
    .line 1936
    move-result v0

    .line 1937
    if-eqz v0, :cond_5c

    .line 1938
    .line 1939
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 1940
    .line 1941
    check-cast v0, Landroidx/paging/HintHandler;

    .line 1942
    .line 1943
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 1944
    .line 1945
    check-cast v0, Landroidx/paging/HintHandler;

    .line 1946
    .line 1947
    invoke-virtual {v0}, Landroidx/paging/HintHandler;->show()V

    .line 1948
    .line 1949
    .line 1950
    goto :goto_29

    .line 1951
    :cond_5c
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 1952
    .line 1953
    check-cast v0, Landroidx/paging/HintHandler;

    .line 1954
    .line 1955
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 1956
    .line 1957
    check-cast v0, Landroidx/paging/HintHandler;

    .line 1958
    .line 1959
    invoke-virtual {v0}, Landroidx/paging/HintHandler;->hide()V

    .line 1960
    .line 1961
    .line 1962
    :cond_5d
    :goto_29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1963
    .line 1964
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v0

    .line 1968
    if-eqz v0, :cond_5e

    .line 1969
    .line 1970
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 1971
    .line 1972
    check-cast v0, Lkotlin/Lazy;

    .line 1973
    .line 1974
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1979
    .line 1980
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1981
    .line 1982
    check-cast v1, Landroid/view/View;

    .line 1983
    .line 1984
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1985
    .line 1986
    .line 1987
    :cond_5e
    :goto_2a
    return-void

    .line 1988
    :pswitch_15
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1989
    .line 1990
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 1991
    .line 1992
    const-string v1, "measureAndLayout"

    .line 1993
    .line 1994
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1995
    .line 1996
    .line 1997
    :try_start_16
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1998
    .line 1999
    const/4 v9, 0x1

    .line 2000
    invoke-virtual {v1, v9}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 2001
    .line 2002
    .line 2003
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2004
    .line 2005
    .line 2006
    const-string v1, "checkForSemanticsChanges"

    .line 2007
    .line 2008
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2009
    .line 2010
    .line 2011
    :try_start_17
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 2012
    .line 2013
    .line 2014
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2015
    .line 2016
    .line 2017
    const/4 v5, 0x0

    .line 2018
    iput-boolean v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2019
    .line 2020
    return-void

    .line 2021
    :catchall_a
    move-exception v0

    .line 2022
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2023
    .line 2024
    .line 2025
    throw v0

    .line 2026
    :catchall_b
    move-exception v0

    .line 2027
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2028
    .line 2029
    .line 2030
    throw v0

    .line 2031
    :pswitch_16
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2032
    .line 2033
    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 2034
    .line 2035
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->attachedToWindow()V

    .line 2036
    .line 2037
    .line 2038
    return-void

    .line 2039
    :pswitch_17
    const/16 v18, 0x7

    .line 2040
    .line 2041
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2042
    .line 2043
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2044
    .line 2045
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui()Z

    .line 2046
    .line 2047
    .line 2048
    move-result v1

    .line 2049
    iget-object v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2050
    .line 2051
    if-nez v1, :cond_5f

    .line 2052
    .line 2053
    goto/16 :goto_2d

    .line 2054
    .line 2055
    :cond_5f
    const-string v1, "ContentCapture:changeChecker"

    .line 2056
    .line 2057
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2058
    .line 2059
    .line 2060
    const/4 v9, 0x1

    .line 2061
    :try_start_18
    invoke-virtual {v3, v9}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    .line 2062
    .line 2063
    .line 2064
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 2065
    .line 2066
    iget-object v4, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 2067
    .line 2068
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 2069
    .line 2070
    array-length v5, v1

    .line 2071
    const/16 v16, 0x2

    .line 2072
    .line 2073
    add-int/lit8 v5, v5, -0x2

    .line 2074
    .line 2075
    if-ltz v5, :cond_63

    .line 2076
    .line 2077
    const/4 v6, 0x0

    .line 2078
    :goto_2b
    aget-wide v7, v1, v6

    .line 2079
    .line 2080
    not-long v9, v7

    .line 2081
    shl-long v9, v9, v18

    .line 2082
    .line 2083
    and-long/2addr v9, v7

    .line 2084
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    and-long/2addr v9, v11

    .line 2090
    cmp-long v9, v9, v11

    .line 2091
    .line 2092
    if-eqz v9, :cond_62

    .line 2093
    .line 2094
    sub-int v9, v6, v5

    .line 2095
    .line 2096
    not-int v9, v9

    .line 2097
    ushr-int/lit8 v9, v9, 0x1f

    .line 2098
    .line 2099
    rsub-int/lit8 v9, v9, 0x8

    .line 2100
    .line 2101
    move-wide v10, v7

    .line 2102
    const/4 v7, 0x0

    .line 2103
    :goto_2c
    if-ge v7, v9, :cond_61

    .line 2104
    .line 2105
    const-wide/16 v12, 0xff

    .line 2106
    .line 2107
    and-long/2addr v12, v10

    .line 2108
    const-wide/16 v14, 0x80

    .line 2109
    .line 2110
    cmp-long v8, v12, v14

    .line 2111
    .line 2112
    if-gez v8, :cond_60

    .line 2113
    .line 2114
    shl-int/lit8 v8, v6, 0x3

    .line 2115
    .line 2116
    add-int/2addr v8, v7

    .line 2117
    aget v8, v4, v8

    .line 2118
    .line 2119
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v12

    .line 2123
    invoke-virtual {v12, v8}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 2124
    .line 2125
    .line 2126
    move-result v12

    .line 2127
    if-nez v12, :cond_60

    .line 2128
    .line 2129
    iget-object v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    .line 2130
    .line 2131
    new-instance v19, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    .line 2132
    .line 2133
    iget-wide v13, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    .line 2134
    .line 2135
    sget-object v23, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_DISAPPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    .line 2136
    .line 2137
    const/16 v24, 0x0

    .line 2138
    .line 2139
    move/from16 v20, v8

    .line 2140
    .line 2141
    move-wide/from16 v21, v13

    .line 2142
    .line 2143
    invoke-direct/range {v19 .. v24}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/paging/HintHandler;)V

    .line 2144
    .line 2145
    .line 2146
    move-object/from16 v8, v19

    .line 2147
    .line 2148
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    .line 2150
    .line 2151
    iget-object v8, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2152
    .line 2153
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2154
    .line 2155
    invoke-interface {v8, v12}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    .line 2157
    .line 2158
    :cond_60
    shr-long/2addr v10, v2

    .line 2159
    add-int/lit8 v7, v7, 0x1

    .line 2160
    .line 2161
    goto :goto_2c

    .line 2162
    :cond_61
    if-ne v9, v2, :cond_63

    .line 2163
    .line 2164
    :cond_62
    if-eq v6, v5, :cond_63

    .line 2165
    .line 2166
    add-int/lit8 v6, v6, 0x1

    .line 2167
    .line 2168
    goto :goto_2b

    .line 2169
    :cond_63
    const-string v1, "ContentCapture:sendAppearEvents"

    .line 2170
    .line 2171
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 2172
    .line 2173
    .line 2174
    :try_start_19
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v1

    .line 2178
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v1

    .line 2182
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 2183
    .line 2184
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 2185
    .line 2186
    .line 2187
    :try_start_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v1

    .line 2194
    invoke-virtual {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkForContentCapturePropertyChanges(Landroidx/collection/IntObjectMap;)V

    .line 2195
    .line 2196
    .line 2197
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateSemanticsCopy()V

    .line 2198
    .line 2199
    .line 2200
    const/4 v5, 0x0

    .line 2201
    iput-boolean v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 2202
    .line 2203
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2204
    .line 2205
    .line 2206
    :goto_2d
    return-void

    .line 2207
    :catchall_c
    move-exception v0

    .line 2208
    :try_start_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2209
    .line 2210
    .line 2211
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 2212
    :catchall_d
    move-exception v0

    .line 2213
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2214
    .line 2215
    .line 2216
    throw v0

    .line 2217
    :pswitch_18
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2218
    .line 2219
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 2220
    .line 2221
    invoke-static {v0}, Landroidx/compose/material/ripple/RippleHostView;->$r8$lambda$1-ekBTR8n6pqldXkOecN8lq5XRQ(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 2222
    .line 2223
    .line 2224
    return-void

    .line 2225
    :pswitch_19
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2226
    .line 2227
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 2228
    .line 2229
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 2230
    .line 2231
    if-eqz v0, :cond_64

    .line 2232
    .line 2233
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2234
    .line 2235
    .line 2236
    :cond_64
    return-void

    .line 2237
    :pswitch_1a
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2238
    .line 2239
    check-cast v0, Landroidx/activity/ComponentDialog;

    .line 2240
    .line 2241
    invoke-static {v0}, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher_delegate$lambda$0$0(Landroidx/activity/ComponentDialog;)V

    .line 2242
    .line 2243
    .line 2244
    return-void

    .line 2245
    :pswitch_1b
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2246
    .line 2247
    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 2248
    .line 2249
    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 2250
    .line 2251
    if-eqz v1, :cond_65

    .line 2252
    .line 2253
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2254
    .line 2255
    .line 2256
    const/4 v15, 0x0

    .line 2257
    iput-object v15, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 2258
    .line 2259
    :cond_65
    return-void

    .line 2260
    :pswitch_1c
    iget-object v0, v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2261
    .line 2262
    check-cast v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 2263
    .line 2264
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 2265
    .line 2266
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2267
    .line 2268
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v0

    .line 2272
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2273
    .line 2274
    .line 2275
    move-result v1

    .line 2276
    if-eqz v1, :cond_66

    .line 2277
    .line 2278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v1

    .line 2282
    check-cast v1, Lcom/hcaptcha/sdk/tasks/OnFailureListener;

    .line 2283
    .line 2284
    new-instance v2, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 2285
    .line 2286
    sget-object v3, Lcom/hcaptcha/sdk/HCaptchaError;->TOKEN_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2287
    .line 2288
    const/4 v15, 0x0

    .line 2289
    invoke-direct {v2, v3, v15}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 2290
    .line 2291
    .line 2292
    invoke-interface {v1, v2}, Lcom/hcaptcha/sdk/tasks/OnFailureListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 2293
    .line 2294
    .line 2295
    goto :goto_2e

    .line 2296
    :cond_66
    return-void

    .line 2297
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
