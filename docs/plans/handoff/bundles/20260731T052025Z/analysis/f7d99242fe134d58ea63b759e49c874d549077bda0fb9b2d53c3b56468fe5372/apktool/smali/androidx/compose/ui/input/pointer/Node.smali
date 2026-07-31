.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public coordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public hasExited:Z

.field public isIn:Z

.field public final modifierNode:Landroidx/compose/ui/Modifier$Node;

.field public pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

.field public final pointerIds:Lokio/PriorityQueue;

.field public final relevantChanges:Landroidx/collection/LongSparseArray;

.field public wasIn:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    new-instance p1, Lokio/PriorityQueue;

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1}, Lokio/PriorityQueue;-><init>(IB)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v1, v0, [J

    .line 15
    .line 16
    iput-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 19
    .line 20
    new-instance p1, Landroidx/collection/LongSparseArray;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z
    .locals 55

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_0
    const/4 v8, 0x0

    .line 22
    :goto_0
    if-eqz v5, :cond_8

    .line 23
    .line 24
    instance-of v10, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 25
    .line 26
    const/16 v11, 0x10

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 31
    .line 32
    invoke-static {v5, v11}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 40
    .line 41
    and-int/2addr v10, v11

    .line 42
    if-eqz v10, :cond_7

    .line 43
    .line 44
    instance-of v10, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 45
    .line 46
    if-eqz v10, :cond_7

    .line 47
    .line 48
    move-object v10, v5

    .line 49
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 50
    .line 51
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-eqz v10, :cond_6

    .line 55
    .line 56
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 57
    .line 58
    and-int/2addr v12, v11

    .line 59
    if-eqz v12, :cond_5

    .line 60
    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    if-ne v9, v7, :cond_2

    .line 64
    .line 65
    move-object v5, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    if-nez v8, :cond_3

    .line 68
    .line 69
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 70
    .line 71
    new-array v12, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 72
    .line 73
    invoke-direct {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    :cond_4
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-ne v9, v7, :cond_7

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_0

    .line 96
    :cond_8
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 97
    .line 98
    if-nez v5, :cond_9

    .line 99
    .line 100
    :goto_4
    return v7

    .line 101
    :cond_9
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    const/4 v8, 0x0

    .line 106
    :goto_5
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 107
    .line 108
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 109
    .line 110
    if-ge v8, v5, :cond_12

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 121
    .line 122
    invoke-virtual {v10, v12, v13}, Lokio/PriorityQueue;->contains(J)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_11

    .line 127
    .line 128
    move v15, v7

    .line 129
    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 130
    .line 131
    iget-object v10, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/ArrayList;

    .line 132
    .line 133
    move-object/from16 v16, v10

    .line 134
    .line 135
    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 136
    .line 137
    const-wide v17, 0x7fffffff7fffffffL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    and-long v19, v6, v17

    .line 143
    .line 144
    const-wide v21, 0x7fffff007fffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    add-long v19, v19, v21

    .line 150
    .line 151
    const-wide v23, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    and-long v19, v19, v23

    .line 157
    .line 158
    const-wide/16 v25, 0x0

    .line 159
    .line 160
    cmp-long v19, v19, v25

    .line 161
    .line 162
    if-nez v19, :cond_10

    .line 163
    .line 164
    and-long v19, v9, v17

    .line 165
    .line 166
    add-long v19, v19, v21

    .line 167
    .line 168
    and-long v19, v19, v23

    .line 169
    .line 170
    cmp-long v19, v19, v25

    .line 171
    .line 172
    if-nez v19, :cond_10

    .line 173
    .line 174
    move/from16 v19, v15

    .line 175
    .line 176
    new-instance v15, Ljava/util/ArrayList;

    .line 177
    .line 178
    sget-object v20, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 179
    .line 180
    if-nez v16, :cond_a

    .line 181
    .line 182
    move-object/from16 v27, v20

    .line 183
    .line 184
    :goto_6
    move/from16 v50, v4

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_a
    move-object/from16 v27, v16

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .line 196
    .line 197
    if-nez v16, :cond_b

    .line 198
    .line 199
    move-object/from16 v4, v20

    .line 200
    .line 201
    :goto_8
    move/from16 v16, v5

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_b
    move-object/from16 v4, v16

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :goto_9
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    move/from16 v20, v8

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    :goto_a
    if-ge v8, v5, :cond_d

    .line 215
    .line 216
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v27

    .line 220
    move-object/from16 v28, v4

    .line 221
    .line 222
    move-object/from16 v4, v27

    .line 223
    .line 224
    check-cast v4, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 225
    .line 226
    move-object/from16 v51, v11

    .line 227
    .line 228
    move-wide/from16 v52, v12

    .line 229
    .line 230
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    .line 231
    .line 232
    and-long v29, v11, v17

    .line 233
    .line 234
    add-long v29, v29, v21

    .line 235
    .line 236
    and-long v29, v29, v23

    .line 237
    .line 238
    cmp-long v13, v29, v25

    .line 239
    .line 240
    if-nez v13, :cond_c

    .line 241
    .line 242
    new-instance v29, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 243
    .line 244
    move-object/from16 v54, v14

    .line 245
    .line 246
    iget-wide v13, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    .line 247
    .line 248
    move/from16 v27, v5

    .line 249
    .line 250
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v2, v11, v12}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 256
    .line 257
    .line 258
    move-result-wide v32

    .line 259
    iget v5, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->scaleFactor:F

    .line 260
    .line 261
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->panOffset:J

    .line 262
    .line 263
    move/from16 v34, v5

    .line 264
    .line 265
    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    .line 266
    .line 267
    move-wide/from16 v37, v4

    .line 268
    .line 269
    move-wide/from16 v35, v11

    .line 270
    .line 271
    move-wide/from16 v30, v13

    .line 272
    .line 273
    invoke-direct/range {v29 .. v38}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJJ)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v4, v29

    .line 277
    .line 278
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_c
    move/from16 v27, v5

    .line 283
    .line 284
    move-object/from16 v54, v14

    .line 285
    .line 286
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    move/from16 v5, v27

    .line 289
    .line 290
    move-object/from16 v4, v28

    .line 291
    .line 292
    move-object/from16 v11, v51

    .line 293
    .line 294
    move-wide/from16 v12, v52

    .line 295
    .line 296
    move-object/from16 v14, v54

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_d
    move-object/from16 v51, v11

    .line 300
    .line 301
    move-wide/from16 v52, v12

    .line 302
    .line 303
    move-object/from16 v54, v14

    .line 304
    .line 305
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v2, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 311
    .line 312
    .line 313
    move-result-wide v38

    .line 314
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v2, v9, v10}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 320
    .line 321
    .line 322
    move-result-wide v32

    .line 323
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 324
    .line 325
    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 326
    .line 327
    iget-boolean v8, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 328
    .line 329
    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 330
    .line 331
    iget-boolean v11, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 332
    .line 333
    iget v12, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 334
    .line 335
    move-wide/from16 v28, v4

    .line 336
    .line 337
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 338
    .line 339
    iget v13, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressure:F

    .line 340
    .line 341
    new-instance v27, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 342
    .line 343
    iget v2, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->scaleFactor:F

    .line 344
    .line 345
    move-wide/from16 v43, v4

    .line 346
    .line 347
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->panOffset:J

    .line 348
    .line 349
    move-wide/from16 v46, v4

    .line 350
    .line 351
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->originalEventPosition:J

    .line 352
    .line 353
    move/from16 v45, v2

    .line 354
    .line 355
    move-wide/from16 v48, v4

    .line 356
    .line 357
    move-wide/from16 v30, v6

    .line 358
    .line 359
    move/from16 v34, v8

    .line 360
    .line 361
    move-wide/from16 v36, v9

    .line 362
    .line 363
    move/from16 v40, v11

    .line 364
    .line 365
    move/from16 v41, v12

    .line 366
    .line 367
    move/from16 v35, v13

    .line 368
    .line 369
    move-object/from16 v42, v15

    .line 370
    .line 371
    invoke-direct/range {v27 .. v49}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/ArrayList;JFJJ)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v2, v27

    .line 375
    .line 376
    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 377
    .line 378
    if-nez v4, :cond_e

    .line 379
    .line 380
    move-object v4, v14

    .line 381
    :cond_e
    iput-object v4, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 382
    .line 383
    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 384
    .line 385
    if-nez v4, :cond_f

    .line 386
    .line 387
    goto :goto_c

    .line 388
    :cond_f
    move-object v14, v4

    .line 389
    :goto_c
    iput-object v14, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 390
    .line 391
    move-object/from16 v6, v51

    .line 392
    .line 393
    move-wide/from16 v4, v52

    .line 394
    .line 395
    invoke-virtual {v6, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    goto :goto_d

    .line 399
    :cond_10
    move/from16 v50, v4

    .line 400
    .line 401
    move/from16 v16, v5

    .line 402
    .line 403
    move/from16 v20, v8

    .line 404
    .line 405
    move/from16 v19, v15

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_11
    move/from16 v50, v4

    .line 409
    .line 410
    move/from16 v16, v5

    .line 411
    .line 412
    move/from16 v19, v7

    .line 413
    .line 414
    move/from16 v20, v8

    .line 415
    .line 416
    :goto_d
    add-int/lit8 v8, v20, 0x1

    .line 417
    .line 418
    move-object/from16 v2, p2

    .line 419
    .line 420
    move/from16 v5, v16

    .line 421
    .line 422
    move/from16 v7, v19

    .line 423
    .line 424
    move/from16 v4, v50

    .line 425
    .line 426
    goto/16 :goto_5

    .line 427
    .line 428
    :cond_12
    move/from16 v50, v4

    .line 429
    .line 430
    move/from16 v19, v7

    .line 431
    .line 432
    move-object v6, v11

    .line 433
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_13

    .line 438
    .line 439
    const/4 v2, 0x0

    .line 440
    iput v2, v10, Lokio/PriorityQueue;->size:I

    .line 441
    .line 442
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 443
    .line 444
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 445
    .line 446
    .line 447
    return v19

    .line 448
    :cond_13
    iget v2, v10, Lokio/PriorityQueue;->size:I

    .line 449
    .line 450
    add-int/lit8 v2, v2, -0x1

    .line 451
    .line 452
    :goto_e
    const/4 v4, -0x1

    .line 453
    if-ge v4, v2, :cond_17

    .line 454
    .line 455
    iget-object v5, v10, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v5, [J

    .line 458
    .line 459
    aget-wide v7, v5, v2

    .line 460
    .line 461
    invoke-virtual {v1, v7, v8}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-ltz v5, :cond_14

    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_14
    iget v5, v10, Lokio/PriorityQueue;->size:I

    .line 469
    .line 470
    if-ge v2, v5, :cond_16

    .line 471
    .line 472
    add-int/lit8 v5, v5, -0x1

    .line 473
    .line 474
    move v7, v2

    .line 475
    :goto_f
    if-ge v7, v5, :cond_15

    .line 476
    .line 477
    iget-object v8, v10, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v8, [J

    .line 480
    .line 481
    add-int/lit8 v9, v7, 0x1

    .line 482
    .line 483
    aget-wide v11, v8, v9

    .line 484
    .line 485
    aput-wide v11, v8, v7

    .line 486
    .line 487
    move v7, v9

    .line 488
    goto :goto_f

    .line 489
    :cond_15
    iget v5, v10, Lokio/PriorityQueue;->size:I

    .line 490
    .line 491
    add-int/2addr v5, v4

    .line 492
    iput v5, v10, Lokio/PriorityQueue;->size:I

    .line 493
    .line 494
    :cond_16
    :goto_10
    add-int/lit8 v2, v2, -0x1

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    const/4 v4, 0x0

    .line 511
    :goto_11
    if-ge v4, v2, :cond_18

    .line 512
    .line 513
    invoke-virtual {v6, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    add-int/lit8 v4, v4, 0x1

    .line 521
    .line 522
    goto :goto_11

    .line 523
    :cond_18
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 524
    .line 525
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    const/4 v5, 0x0

    .line 533
    :goto_12
    if-ge v5, v4, :cond_1a

    .line 534
    .line 535
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    move-object v7, v6

    .line 540
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 541
    .line 542
    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 543
    .line 544
    invoke-virtual {v3, v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder$12;->activeHoverEvent-0FcD4WY(J)Z

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    if-eqz v7, :cond_19

    .line 549
    .line 550
    goto :goto_13

    .line 551
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 552
    .line 553
    goto :goto_12

    .line 554
    :cond_1a
    const/4 v6, 0x0

    .line 555
    :goto_13
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 556
    .line 557
    const/4 v1, 0x3

    .line 558
    if-eqz v6, :cond_27

    .line 559
    .line 560
    iget-boolean v3, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 561
    .line 562
    if-nez p4, :cond_1b

    .line 563
    .line 564
    const/4 v4, 0x0

    .line 565
    iput-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 566
    .line 567
    goto :goto_18

    .line 568
    :cond_1b
    const/4 v4, 0x0

    .line 569
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 570
    .line 571
    if-nez v5, :cond_21

    .line 572
    .line 573
    if-nez v3, :cond_1c

    .line 574
    .line 575
    iget-boolean v5, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 576
    .line 577
    if-eqz v5, :cond_21

    .line 578
    .line 579
    :cond_1c
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 580
    .line 581
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    iget-wide v7, v5, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 585
    .line 586
    iget-wide v5, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 587
    .line 588
    const/16 v9, 0x20

    .line 589
    .line 590
    shr-long v10, v5, v9

    .line 591
    .line 592
    long-to-int v10, v10

    .line 593
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 594
    .line 595
    .line 596
    move-result v10

    .line 597
    const-wide v11, 0xffffffffL

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    and-long/2addr v5, v11

    .line 603
    long-to-int v5, v5

    .line 604
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    shr-long v13, v7, v9

    .line 609
    .line 610
    long-to-int v6, v13

    .line 611
    and-long/2addr v7, v11

    .line 612
    long-to-int v7, v7

    .line 613
    const/4 v8, 0x0

    .line 614
    cmpg-float v9, v10, v8

    .line 615
    .line 616
    if-gez v9, :cond_1d

    .line 617
    .line 618
    move/from16 v9, v19

    .line 619
    .line 620
    goto :goto_14

    .line 621
    :cond_1d
    move v9, v4

    .line 622
    :goto_14
    int-to-float v6, v6

    .line 623
    cmpl-float v6, v10, v6

    .line 624
    .line 625
    if-lez v6, :cond_1e

    .line 626
    .line 627
    move/from16 v6, v19

    .line 628
    .line 629
    goto :goto_15

    .line 630
    :cond_1e
    move v6, v4

    .line 631
    :goto_15
    or-int/2addr v6, v9

    .line 632
    cmpg-float v8, v5, v8

    .line 633
    .line 634
    if-gez v8, :cond_1f

    .line 635
    .line 636
    move/from16 v8, v19

    .line 637
    .line 638
    goto :goto_16

    .line 639
    :cond_1f
    move v8, v4

    .line 640
    :goto_16
    or-int/2addr v6, v8

    .line 641
    int-to-float v7, v7

    .line 642
    cmpl-float v5, v5, v7

    .line 643
    .line 644
    if-lez v5, :cond_20

    .line 645
    .line 646
    move/from16 v5, v19

    .line 647
    .line 648
    goto :goto_17

    .line 649
    :cond_20
    move v5, v4

    .line 650
    :goto_17
    or-int/2addr v5, v6

    .line 651
    xor-int/lit8 v5, v5, 0x1

    .line 652
    .line 653
    iput-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 654
    .line 655
    :cond_21
    :goto_18
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 656
    .line 657
    iget-boolean v6, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 658
    .line 659
    const/4 v7, 0x5

    .line 660
    const/4 v8, 0x4

    .line 661
    if-eq v5, v6, :cond_25

    .line 662
    .line 663
    iget v9, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 664
    .line 665
    if-ne v9, v1, :cond_22

    .line 666
    .line 667
    goto :goto_19

    .line 668
    :cond_22
    if-ne v9, v8, :cond_23

    .line 669
    .line 670
    goto :goto_19

    .line 671
    :cond_23
    if-ne v9, v7, :cond_25

    .line 672
    .line 673
    :goto_19
    if-eqz v5, :cond_24

    .line 674
    .line 675
    move v7, v8

    .line 676
    :cond_24
    iput v7, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 677
    .line 678
    goto :goto_1a

    .line 679
    :cond_25
    iget v9, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 680
    .line 681
    if-ne v9, v8, :cond_26

    .line 682
    .line 683
    if-eqz v6, :cond_26

    .line 684
    .line 685
    iget-boolean v6, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 686
    .line 687
    if-nez v6, :cond_26

    .line 688
    .line 689
    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 690
    .line 691
    goto :goto_1a

    .line 692
    :cond_26
    if-ne v9, v7, :cond_28

    .line 693
    .line 694
    if-eqz v5, :cond_28

    .line 695
    .line 696
    if-eqz v3, :cond_28

    .line 697
    .line 698
    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 699
    .line 700
    goto :goto_1a

    .line 701
    :cond_27
    const/4 v4, 0x0

    .line 702
    :cond_28
    :goto_1a
    if-nez v50, :cond_2c

    .line 703
    .line 704
    iget v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 705
    .line 706
    if-ne v3, v1, :cond_2c

    .line 707
    .line 708
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 709
    .line 710
    if-eqz v1, :cond_2c

    .line 711
    .line 712
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 713
    .line 714
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    iget-object v5, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 719
    .line 720
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 721
    .line 722
    .line 723
    move-result v6

    .line 724
    if-eq v3, v6, :cond_29

    .line 725
    .line 726
    goto :goto_1c

    .line 727
    :cond_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    move v6, v4

    .line 732
    :goto_1b
    if-ge v6, v3, :cond_2b

    .line 733
    .line 734
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 739
    .line 740
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 745
    .line 746
    iget-wide v9, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 747
    .line 748
    iget-wide v7, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 749
    .line 750
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    if-nez v7, :cond_2a

    .line 755
    .line 756
    goto :goto_1c

    .line 757
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    .line 758
    .line 759
    goto :goto_1b

    .line 760
    :cond_2b
    move v7, v4

    .line 761
    goto :goto_1d

    .line 762
    :cond_2c
    :goto_1c
    move/from16 v7, v19

    .line 763
    .line 764
    :goto_1d
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 765
    .line 766
    return v7
.end method

.method public final cleanUpHits(Lcom/fsck/k9/mailstore/LocalFolder$12;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 28
    .line 29
    iget-boolean v6, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 30
    .line 31
    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 32
    .line 33
    invoke-virtual {p1, v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder$12;->activeHoverEvent-0FcD4WY(J)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 38
    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    :cond_1
    if-nez v6, :cond_3

    .line 44
    .line 45
    if-nez v9, :cond_3

    .line 46
    .line 47
    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 48
    .line 49
    invoke-virtual {v5, v7, v8}, Lokio/PriorityQueue;->remove(J)V

    .line 50
    .line 51
    .line 52
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 56
    .line 57
    iget p1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    if-ne p1, v0, :cond_5

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 64
    .line 65
    return-void
.end method

.method public final dispatchCancel()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    :goto_1
    if-eqz p0, :cond_8

    .line 26
    .line 27
    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    check-cast p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 32
    .line 33
    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 38
    .line 39
    const/16 v4, 0x10

    .line 40
    .line 41
    and-int/2addr v3, v4

    .line 42
    if-eqz v3, :cond_7

    .line 43
    .line 44
    instance-of v3, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 45
    .line 46
    if-eqz v3, :cond_7

    .line 47
    .line 48
    move-object v3, p0

    .line 49
    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    move v5, v2

    .line 54
    :goto_2
    const/4 v6, 0x1

    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    iget v7, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 58
    .line 59
    and-int/2addr v7, v4

    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    if-ne v5, v6, :cond_2

    .line 65
    .line 66
    move-object p0, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    if-nez v1, :cond_3

    .line 69
    .line 70
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 71
    .line 72
    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 73
    .line 74
    invoke-direct {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    if-eqz p0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object p0, v0

    .line 83
    :cond_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    if-ne v5, v6, :cond_7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_4
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_1

    .line 97
    :cond_8
    return-void
.end method

.method public final dispatchFinalEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_1
    iget-object v4, v1, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v4, v3

    .line 35
    :goto_0
    if-nez v4, :cond_3

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v5, v5, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 50
    .line 51
    move-object v7, v1

    .line 52
    move-object v8, v2

    .line 53
    :goto_1
    const/4 v9, 0x1

    .line 54
    if-eqz v7, :cond_b

    .line 55
    .line 56
    instance-of v10, v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 57
    .line 58
    if-eqz v10, :cond_4

    .line 59
    .line 60
    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 61
    .line 62
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 63
    .line 64
    invoke-interface {v7, v4, v9, v5, v6}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 69
    .line 70
    const/16 v11, 0x10

    .line 71
    .line 72
    and-int/2addr v10, v11

    .line 73
    if-eqz v10, :cond_a

    .line 74
    .line 75
    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 76
    .line 77
    if-eqz v10, :cond_a

    .line 78
    .line 79
    move-object v10, v7

    .line 80
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 81
    .line 82
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 83
    .line 84
    move v12, v3

    .line 85
    :goto_2
    if-eqz v10, :cond_9

    .line 86
    .line 87
    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 88
    .line 89
    and-int/2addr v13, v11

    .line 90
    if-eqz v13, :cond_8

    .line 91
    .line 92
    add-int/lit8 v12, v12, 0x1

    .line 93
    .line 94
    if-ne v12, v9, :cond_5

    .line 95
    .line 96
    move-object v7, v10

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    if-nez v8, :cond_6

    .line 99
    .line 100
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 101
    .line 102
    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 103
    .line 104
    invoke-direct {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    if-eqz v7, :cond_7

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move-object v7, v2

    .line 113
    :cond_7
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    :goto_3
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    if-ne v12, v9, :cond_a

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_a
    :goto_4
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    goto :goto_1

    .line 127
    :cond_b
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 128
    .line 129
    if-eqz v1, :cond_c

    .line 130
    .line 131
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 132
    .line 133
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 134
    .line 135
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 136
    .line 137
    :goto_5
    if-ge v3, v1, :cond_c

    .line 138
    .line 139
    aget-object v5, v4, v3

    .line 140
    .line 141
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 142
    .line 143
    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_c
    move v3, v9

    .line 150
    :goto_6
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 154
    .line 155
    .line 156
    iput-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 157
    .line 158
    return v3
.end method

.method public final dispatchMainEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 12
    .line 13
    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v2, v1

    .line 32
    :goto_0
    if-nez v2, :cond_3

    .line 33
    .line 34
    :goto_1
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-wide v3, v3, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v6, v0

    .line 49
    move-object v7, v5

    .line 50
    :goto_2
    const/16 v8, 0x10

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    if-eqz v6, :cond_b

    .line 54
    .line 55
    instance-of v10, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 56
    .line 57
    if-eqz v10, :cond_4

    .line 58
    .line 59
    check-cast v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 60
    .line 61
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 62
    .line 63
    invoke-interface {v6, v2, v8, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_4
    iget v10, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 68
    .line 69
    and-int/2addr v10, v8

    .line 70
    if-eqz v10, :cond_a

    .line 71
    .line 72
    instance-of v10, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 73
    .line 74
    if-eqz v10, :cond_a

    .line 75
    .line 76
    move-object v10, v6

    .line 77
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 78
    .line 79
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 80
    .line 81
    move v11, v1

    .line 82
    :goto_3
    if-eqz v10, :cond_9

    .line 83
    .line 84
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 85
    .line 86
    and-int/2addr v12, v8

    .line 87
    if-eqz v12, :cond_8

    .line 88
    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    if-ne v11, v9, :cond_5

    .line 92
    .line 93
    move-object v6, v10

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    if-nez v7, :cond_6

    .line 96
    .line 97
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 98
    .line 99
    new-array v12, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 100
    .line 101
    invoke-direct {v7, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    if-eqz v6, :cond_7

    .line 105
    .line 106
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v6, v5

    .line 110
    :cond_7
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_4
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_9
    if-ne v11, v9, :cond_a

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_a
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    goto :goto_2

    .line 124
    :cond_b
    iget-boolean v6, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 125
    .line 126
    if-eqz v6, :cond_c

    .line 127
    .line 128
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 129
    .line 130
    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 131
    .line 132
    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 133
    .line 134
    move v10, v1

    .line 135
    :goto_6
    if-ge v10, v6, :cond_c

    .line 136
    .line 137
    aget-object v11, v7, v10

    .line 138
    .line 139
    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    .line 140
    .line 141
    iget-object v12, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 142
    .line 143
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z

    .line 147
    .line 148
    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    iget-boolean p0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 153
    .line 154
    if-eqz p0, :cond_14

    .line 155
    .line 156
    move-object p0, v5

    .line 157
    :goto_7
    if-eqz v0, :cond_14

    .line 158
    .line 159
    instance-of p1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 160
    .line 161
    if-eqz p1, :cond_d

    .line 162
    .line 163
    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 164
    .line 165
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 166
    .line 167
    invoke-interface {v0, v2, p1, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 168
    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_d
    iget p1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 172
    .line 173
    and-int/2addr p1, v8

    .line 174
    if-eqz p1, :cond_13

    .line 175
    .line 176
    instance-of p1, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 177
    .line 178
    if-eqz p1, :cond_13

    .line 179
    .line 180
    move-object p1, v0

    .line 181
    check-cast p1, Landroidx/compose/ui/node/DelegatingNode;

    .line 182
    .line 183
    iget-object p1, p1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 184
    .line 185
    move p2, v1

    .line 186
    :goto_8
    if-eqz p1, :cond_12

    .line 187
    .line 188
    iget v6, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 189
    .line 190
    and-int/2addr v6, v8

    .line 191
    if-eqz v6, :cond_11

    .line 192
    .line 193
    add-int/lit8 p2, p2, 0x1

    .line 194
    .line 195
    if-ne p2, v9, :cond_e

    .line 196
    .line 197
    move-object v0, p1

    .line 198
    goto :goto_9

    .line 199
    :cond_e
    if-nez p0, :cond_f

    .line 200
    .line 201
    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 202
    .line 203
    new-array v6, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 204
    .line 205
    invoke-direct {p0, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_f
    if-eqz v0, :cond_10

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    move-object v0, v5

    .line 214
    :cond_10
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_11
    :goto_9
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_12
    if-ne p2, v9, :cond_13

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_13
    :goto_a
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_7

    .line 228
    :cond_14
    return v9
.end method

.method public final removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lokio/PriorityQueue;->contains(J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/collection/MutableObjectList;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lokio/PriorityQueue;->remove(J)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 27
    .line 28
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_1
    if-ge v1, p0, :cond_2

    .line 32
    .line 33
    aget-object v2, v0, v1

    .line 34
    .line 35
    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    .line 36
    .line 37
    invoke-virtual {v2, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Node(modifierNode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", children="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pointerIds="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Lokio/PriorityQueue;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
