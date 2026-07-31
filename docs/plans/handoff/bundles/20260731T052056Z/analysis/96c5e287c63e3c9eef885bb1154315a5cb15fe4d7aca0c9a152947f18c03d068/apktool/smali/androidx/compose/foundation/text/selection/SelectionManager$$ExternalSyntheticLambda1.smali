.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    iget-object v10, v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 20
    .line 21
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    sget-object v2, Landroidx/collection/LongObjectMapKt;->EmptyLongObjectMap:Landroidx/collection/MutableLongObjectMap;

    .line 38
    .line 39
    new-instance v2, Landroidx/collection/MutableLongObjectMap;

    .line 40
    .line 41
    invoke-direct {v2}, Landroidx/collection/MutableLongObjectMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move v4, v8

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    :goto_0
    if-ge v4, v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 58
    .line 59
    iget-wide v12, v11, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 60
    .line 61
    iget-object v14, v11, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-virtual {v14}, Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    check-cast v14, Landroidx/compose/ui/text/TextLayoutResult;

    .line 68
    .line 69
    if-nez v14, :cond_1

    .line 70
    .line 71
    move-object/from16 p0, v1

    .line 72
    .line 73
    move/from16 v16, v3

    .line 74
    .line 75
    move/from16 v17, v4

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v15, v14, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 80
    .line 81
    iget-object v15, v15, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 82
    .line 83
    iget-object v15, v15, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    new-instance v6, Landroidx/compose/foundation/text/selection/Selection;

    .line 90
    .line 91
    move-object/from16 p0, v1

    .line 92
    .line 93
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 94
    .line 95
    move/from16 v16, v3

    .line 96
    .line 97
    invoke-virtual {v14, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v1, v3, v8, v12, v13}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 105
    .line 106
    move/from16 v17, v4

    .line 107
    .line 108
    add-int/lit8 v4, v15, -0x1

    .line 109
    .line 110
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {v14, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-direct {v3, v4, v15, v12, v13}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v1, v3, v8}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 122
    .line 123
    .line 124
    :goto_1
    if-nez v6, :cond_2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    if-nez v5, :cond_3

    .line 128
    .line 129
    move-object v5, v6

    .line 130
    :cond_3
    iget-wide v3, v11, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 131
    .line 132
    invoke-virtual {v2, v3, v4}, Landroidx/collection/MutableLongObjectMap;->findAbsoluteInsertIndex(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget-object v9, v2, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 137
    .line 138
    aget-object v11, v9, v1

    .line 139
    .line 140
    iget-object v11, v2, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 141
    .line 142
    aput-wide v3, v11, v1

    .line 143
    .line 144
    aput-object v6, v9, v1

    .line 145
    .line 146
    move-object v9, v6

    .line 147
    :goto_2
    add-int/lit8 v4, v17, 0x1

    .line 148
    .line 149
    move-object/from16 v1, p0

    .line 150
    .line 151
    move/from16 v3, v16

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_4
    iget v1, v2, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 155
    .line 156
    if-nez v1, :cond_5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    if-ne v5, v9, :cond_6

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v3, v5, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget-object v4, v9, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 173
    .line 174
    invoke-direct {v1, v3, v4, v8}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 175
    .line 176
    .line 177
    move-object v5, v1

    .line 178
    :goto_3
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 184
    .line 185
    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    iput-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 190
    .line 191
    :goto_4
    return-object v7

    .line 192
    :pswitch_0
    iget-boolean v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 193
    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_8

    .line 201
    .line 202
    :cond_7
    move v8, v9

    .line 203
    :cond_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :pswitch_1
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->copy$foundation()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 218
    .line 219
    .line 220
    :cond_9
    return-object v7

    .line 221
    :pswitch_2
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 222
    .line 223
    iget-object v1, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->positionChangeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 224
    .line 225
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-nez v1, :cond_a

    .line 233
    .line 234
    goto/16 :goto_e

    .line 235
    .line 236
    :cond_a
    iget-object v1, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 237
    .line 238
    if-nez v1, :cond_b

    .line 239
    .line 240
    goto/16 :goto_e

    .line 241
    .line 242
    :cond_b
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_c

    .line 247
    .line 248
    goto/16 :goto_e

    .line 249
    .line 250
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    move v7, v8

    .line 272
    :goto_5
    if-ge v7, v6, :cond_f

    .line 273
    .line 274
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    check-cast v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 279
    .line 280
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    iget-wide v12, v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 285
    .line 286
    invoke-virtual {v11, v12, v13}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Landroidx/compose/foundation/text/selection/Selection;

    .line 291
    .line 292
    if-eqz v11, :cond_d

    .line 293
    .line 294
    new-instance v12, Lkotlin/Pair;

    .line 295
    .line 296
    invoke-direct {v12, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_d
    const/4 v12, 0x0

    .line 301
    :goto_6
    if-eqz v12, :cond_e

    .line 302
    .line 303
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/4 v2, 0x2

    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    if-eq v0, v9, :cond_10

    .line 317
    .line 318
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    new-array v6, v2, [Ljava/lang/Object;

    .line 327
    .line 328
    aput-object v0, v6, v8

    .line 329
    .line 330
    aput-object v3, v6, v9

    .line 331
    .line 332
    invoke-static {v6}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_11

    .line 341
    .line 342
    goto/16 :goto_e

    .line 343
    .line 344
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    sget-object v6, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    .line 349
    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    move-object v0, v6

    .line 353
    goto/16 :goto_d

    .line 354
    .line 355
    :cond_12
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    move v11, v8

    .line 360
    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 361
    .line 362
    const/high16 v13, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 363
    .line 364
    const/high16 v14, -0x800000    # Float.NEGATIVE_INFINITY

    .line 365
    .line 366
    const/high16 v15, -0x800000    # Float.NEGATIVE_INFINITY

    .line 367
    .line 368
    :goto_7
    if-ge v11, v0, :cond_19

    .line 369
    .line 370
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v16

    .line 374
    move-object/from16 v7, v16

    .line 375
    .line 376
    check-cast v7, Lkotlin/Pair;

    .line 377
    .line 378
    iget-object v10, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 381
    .line 382
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v7, Landroidx/compose/foundation/text/selection/Selection;

    .line 385
    .line 386
    iget-object v4, v7, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 387
    .line 388
    iget v4, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 389
    .line 390
    iget-object v5, v7, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 391
    .line 392
    iget v5, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 393
    .line 394
    if-eq v4, v5, :cond_13

    .line 395
    .line 396
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    if-nez v7, :cond_14

    .line 401
    .line 402
    :cond_13
    move/from16 v23, v0

    .line 403
    .line 404
    move-object/from16 v25, v3

    .line 405
    .line 406
    goto/16 :goto_c

    .line 407
    .line 408
    :cond_14
    move/from16 v19, v8

    .line 409
    .line 410
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    sub-int/2addr v4, v9

    .line 419
    if-ne v8, v4, :cond_15

    .line 420
    .line 421
    new-array v4, v9, [I

    .line 422
    .line 423
    aput v8, v4, v19

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_15
    new-array v5, v2, [I

    .line 427
    .line 428
    aput v8, v5, v19

    .line 429
    .line 430
    aput v4, v5, v9

    .line 431
    .line 432
    move-object v4, v5

    .line 433
    :goto_8
    array-length v5, v4

    .line 434
    move/from16 v8, v19

    .line 435
    .line 436
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 437
    .line 438
    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 439
    .line 440
    const/high16 v21, -0x800000    # Float.NEGATIVE_INFINITY

    .line 441
    .line 442
    const/high16 v22, -0x800000    # Float.NEGATIVE_INFINITY

    .line 443
    .line 444
    :goto_9
    if-ge v8, v5, :cond_18

    .line 445
    .line 446
    aget v9, v4, v8

    .line 447
    .line 448
    move/from16 v23, v0

    .line 449
    .line 450
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;

    .line 451
    .line 452
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 457
    .line 458
    sget-object v24, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 459
    .line 460
    if-nez v0, :cond_16

    .line 461
    .line 462
    move-object/from16 v25, v3

    .line 463
    .line 464
    move-object/from16 v26, v4

    .line 465
    .line 466
    :goto_a
    move-object/from16 v0, v24

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_16
    move-object/from16 v25, v3

    .line 470
    .line 471
    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 472
    .line 473
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 474
    .line 475
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    move-object/from16 v26, v4

    .line 482
    .line 483
    const/4 v4, 0x1

    .line 484
    if-ge v3, v4, :cond_17

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_17
    add-int/lit8 v3, v3, -0x1

    .line 488
    .line 489
    move/from16 v4, v19

    .line 490
    .line 491
    invoke-static {v9, v4, v3}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 496
    .line 497
    .line 498
    move-result-object v24

    .line 499
    goto :goto_a

    .line 500
    :goto_b
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 501
    .line 502
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 507
    .line 508
    move/from16 v4, v20

    .line 509
    .line 510
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 511
    .line 512
    .line 513
    move-result v20

    .line 514
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 515
    .line 516
    move/from16 v9, v21

    .line 517
    .line 518
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    .line 519
    .line 520
    .line 521
    move-result v21

    .line 522
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 523
    .line 524
    move/from16 v3, v22

    .line 525
    .line 526
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 527
    .line 528
    .line 529
    move-result v22

    .line 530
    add-int/lit8 v8, v8, 0x1

    .line 531
    .line 532
    move/from16 v0, v23

    .line 533
    .line 534
    move-object/from16 v3, v25

    .line 535
    .line 536
    move-object/from16 v4, v26

    .line 537
    .line 538
    const/4 v9, 0x1

    .line 539
    const/16 v19, 0x0

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_18
    move/from16 v23, v0

    .line 543
    .line 544
    move-object/from16 v25, v3

    .line 545
    .line 546
    move/from16 v4, v20

    .line 547
    .line 548
    move/from16 v9, v21

    .line 549
    .line 550
    move/from16 v3, v22

    .line 551
    .line 552
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    move v5, v3

    .line 557
    int-to-long v2, v0

    .line 558
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    move-wide/from16 v20, v2

    .line 563
    .line 564
    int-to-long v2, v0

    .line 565
    const/16 v0, 0x20

    .line 566
    .line 567
    shl-long v20, v20, v0

    .line 568
    .line 569
    const-wide v26, 0xffffffffL

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    and-long v2, v2, v26

    .line 575
    .line 576
    or-long v2, v20, v2

    .line 577
    .line 578
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    int-to-long v8, v4

    .line 583
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    int-to-long v4, v4

    .line 588
    shl-long/2addr v8, v0

    .line 589
    and-long v4, v4, v26

    .line 590
    .line 591
    or-long/2addr v4, v8

    .line 592
    invoke-interface {v1, v7, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 593
    .line 594
    .line 595
    move-result-wide v2

    .line 596
    invoke-interface {v1, v7, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 597
    .line 598
    .line 599
    move-result-wide v4

    .line 600
    shr-long v7, v2, v0

    .line 601
    .line 602
    long-to-int v7, v7

    .line 603
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    and-long v2, v2, v26

    .line 612
    .line 613
    long-to-int v2, v2

    .line 614
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    .line 619
    .line 620
    .line 621
    move-result v13

    .line 622
    shr-long v2, v4, v0

    .line 623
    .line 624
    long-to-int v0, v2

    .line 625
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    .line 630
    .line 631
    .line 632
    move-result v14

    .line 633
    and-long v2, v4, v26

    .line 634
    .line 635
    long-to-int v0, v2

    .line 636
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    .line 641
    .line 642
    .line 643
    move-result v15

    .line 644
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 645
    .line 646
    move/from16 v0, v23

    .line 647
    .line 648
    move-object/from16 v3, v25

    .line 649
    .line 650
    const/4 v2, 0x2

    .line 651
    const/4 v8, 0x0

    .line 652
    const/4 v9, 0x1

    .line 653
    goto/16 :goto_7

    .line 654
    .line 655
    :cond_19
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 656
    .line 657
    invoke-direct {v0, v12, v13, v14, v15}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 658
    .line 659
    .line 660
    :goto_d
    invoke-virtual {v0, v6}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-eqz v2, :cond_1a

    .line 665
    .line 666
    goto :goto_e

    .line 667
    :cond_1a
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-virtual {v2, v0}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 676
    .line 677
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 678
    .line 679
    sub-float/2addr v2, v3

    .line 680
    const/4 v3, 0x0

    .line 681
    cmpg-float v2, v2, v3

    .line 682
    .line 683
    if-ltz v2, :cond_1c

    .line 684
    .line 685
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 686
    .line 687
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 688
    .line 689
    sub-float/2addr v2, v4

    .line 690
    cmpg-float v2, v2, v3

    .line 691
    .line 692
    if-gez v2, :cond_1b

    .line 693
    .line 694
    goto :goto_e

    .line 695
    :cond_1b
    const-wide/16 v4, 0x0

    .line 696
    .line 697
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    .line 698
    .line 699
    .line 700
    move-result-wide v1

    .line 701
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 706
    .line 707
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 708
    .line 709
    const/high16 v2, 0x42c80000    # 100.0f

    .line 710
    .line 711
    add-float/2addr v1, v2

    .line 712
    const/4 v2, 0x7

    .line 713
    invoke-static {v0, v3, v3, v1, v2}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFI)Landroidx/compose/ui/geometry/Rect;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    goto :goto_f

    .line 718
    :cond_1c
    :goto_e
    const/4 v6, 0x0

    .line 719
    :goto_f
    return-object v6

    .line 720
    :pswitch_3
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 721
    .line 722
    const/4 v4, 0x1

    .line 723
    iput-boolean v4, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 724
    .line 725
    invoke-virtual {v9}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 726
    .line 727
    .line 728
    iget-object v0, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 729
    .line 730
    const/4 v1, 0x0

    .line 731
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    iget-object v0, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    iget-boolean v0, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 740
    .line 741
    if-eqz v0, :cond_22

    .line 742
    .line 743
    invoke-virtual {v9}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation()Z

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-eqz v0, :cond_22

    .line 748
    .line 749
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 750
    .line 751
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 752
    .line 753
    .line 754
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 755
    .line 756
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 757
    .line 758
    .line 759
    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    .line 760
    .line 761
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 762
    .line 763
    .line 764
    iget-object v0, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 765
    .line 766
    invoke-virtual {v9}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    :cond_1d
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    const/4 v5, -0x1

    .line 787
    if-eqz v3, :cond_1e

    .line 788
    .line 789
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    check-cast v3, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 794
    .line 795
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    iget-wide v13, v3, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 800
    .line 801
    invoke-virtual {v6, v13, v14}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    check-cast v3, Landroidx/compose/foundation/text/selection/Selection;

    .line 806
    .line 807
    if-eqz v3, :cond_1d

    .line 808
    .line 809
    iget-object v6, v3, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 810
    .line 811
    iget v6, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 812
    .line 813
    iget-object v3, v3, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 814
    .line 815
    iget v3, v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 816
    .line 817
    if-eq v6, v3, :cond_1d

    .line 818
    .line 819
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    goto :goto_10

    .line 824
    :cond_1e
    move v2, v5

    .line 825
    :goto_10
    if-eq v2, v5, :cond_21

    .line 826
    .line 827
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    const/4 v5, 0x0

    .line 832
    :goto_11
    if-ge v5, v3, :cond_21

    .line 833
    .line 834
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v6

    .line 838
    check-cast v6, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 839
    .line 840
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 841
    .line 842
    .line 843
    move-result-object v8

    .line 844
    iget-wide v13, v6, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 845
    .line 846
    invoke-virtual {v8, v13, v14}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    check-cast v8, Landroidx/compose/foundation/text/selection/Selection;

    .line 851
    .line 852
    if-eqz v8, :cond_20

    .line 853
    .line 854
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    iget-object v1, v8, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 859
    .line 860
    iget v1, v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 861
    .line 862
    iget-object v3, v8, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 863
    .line 864
    iget v3, v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 865
    .line 866
    invoke-static {v1, v3}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 867
    .line 868
    .line 869
    move-result-wide v13

    .line 870
    if-lt v5, v2, :cond_1f

    .line 871
    .line 872
    goto :goto_12

    .line 873
    :cond_1f
    const/4 v4, 0x0

    .line 874
    :goto_12
    iget-wide v1, v6, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 875
    .line 876
    if-eqz v4, :cond_21

    .line 877
    .line 878
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 879
    .line 880
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 881
    .line 882
    invoke-direct {v0, v13, v14}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 883
    .line 884
    .line 885
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 886
    .line 887
    iput-wide v1, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 888
    .line 889
    goto :goto_13

    .line 890
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 891
    .line 892
    goto :goto_11

    .line 893
    :cond_21
    :goto_13
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 894
    .line 895
    if-eqz v0, :cond_22

    .line 896
    .line 897
    iget-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 898
    .line 899
    if-eqz v1, :cond_22

    .line 900
    .line 901
    iget-wide v1, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 902
    .line 903
    const-wide/16 v17, 0x0

    .line 904
    .line 905
    cmp-long v1, v1, v17

    .line 906
    .line 907
    if-eqz v1, :cond_22

    .line 908
    .line 909
    check-cast v0, Ljava/lang/CharSequence;

    .line 910
    .line 911
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-lez v0, :cond_22

    .line 916
    .line 917
    iget-object v0, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 918
    .line 919
    if-eqz v0, :cond_22

    .line 920
    .line 921
    new-instance v8, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 922
    .line 923
    const/4 v13, 0x0

    .line 924
    const/4 v14, 0x5

    .line 925
    invoke-direct/range {v8 .. v14}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 926
    .line 927
    .line 928
    const/4 v1, 0x3

    .line 929
    const/4 v2, 0x0

    .line 930
    invoke-static {v0, v2, v2, v8, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 931
    .line 932
    .line 933
    :cond_22
    const/4 v4, 0x0

    .line 934
    iput-boolean v4, v9, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 935
    .line 936
    return-object v7

    .line 937
    :pswitch_4
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 938
    .line 939
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 944
    .line 945
    if-eqz v0, :cond_23

    .line 946
    .line 947
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 948
    .line 949
    :cond_23
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 950
    .line 951
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 952
    .line 953
    .line 954
    return-object v0

    .line 955
    :pswitch_5
    iget-object v0, v10, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 956
    .line 957
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 962
    .line 963
    if-eqz v0, :cond_24

    .line 964
    .line 965
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 966
    .line 967
    :cond_24
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 968
    .line 969
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 970
    .line 971
    .line 972
    return-object v0

    .line 973
    :pswitch_6
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 974
    .line 975
    .line 976
    return-object v7

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
