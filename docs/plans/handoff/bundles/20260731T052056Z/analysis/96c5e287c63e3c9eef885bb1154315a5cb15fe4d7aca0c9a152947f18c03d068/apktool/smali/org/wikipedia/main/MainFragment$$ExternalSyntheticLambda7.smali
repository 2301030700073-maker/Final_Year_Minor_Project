.class public final synthetic Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 15
    iput p5, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput p4, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget v7, v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$2:I

    .line 13
    .line 14
    iget-object v8, v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 24
    .line 25
    check-cast v9, Landroidx/compose/runtime/internal/IntRef;

    .line 26
    .line 27
    check-cast v8, Landroidx/collection/MutableObjectIntMap;

    .line 28
    .line 29
    if-eq v1, v0, :cond_2

    .line 30
    .line 31
    instance-of v0, v1, Landroidx/compose/runtime/snapshots/StateObject;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget v0, v9, Landroidx/compose/runtime/internal/IntRef;->element:I

    .line 36
    .line 37
    sub-int/2addr v0, v7

    .line 38
    invoke-virtual {v8, v1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ltz v2, :cond_0

    .line 43
    .line 44
    iget-object v3, v8, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 45
    .line 46
    aget v2, v3, v2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const v2, 0x7fffffff

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v8, v0, v1}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    move-object v5, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string v0, "A derived state calculation cannot read itself"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v5

    .line 67
    :pswitch_0
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    check-cast v9, Landroidx/compose/ui/layout/MeasureScope;

    .line 70
    .line 71
    check-cast v8, Ljava/util/ArrayList;

    .line 72
    .line 73
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    move v5, v3

    .line 80
    :goto_2
    if-ge v5, v2, :cond_9

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    new-array v12, v11, [I

    .line 93
    .line 94
    move v13, v3

    .line 95
    :goto_3
    if-ge v13, v11, :cond_4

    .line 96
    .line 97
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 102
    .line 103
    iget v14, v14, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 104
    .line 105
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    sub-int/2addr v15, v4

    .line 110
    if-ge v13, v15, :cond_3

    .line 111
    .line 112
    const/high16 v15, 0x41000000    # 8.0f

    .line 113
    .line 114
    invoke-interface {v9, v15}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    goto :goto_4

    .line 119
    :cond_3
    move v15, v3

    .line 120
    :goto_4
    add-int/2addr v14, v15

    .line 121
    aput v14, v12, v13

    .line 122
    .line 123
    add-int/lit8 v13, v13, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    new-array v13, v11, [I

    .line 127
    .line 128
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 133
    .line 134
    if-ne v14, v15, :cond_6

    .line 135
    .line 136
    move v14, v3

    .line 137
    move v15, v14

    .line 138
    :goto_5
    if-ge v14, v11, :cond_5

    .line 139
    .line 140
    aget v16, v12, v14

    .line 141
    .line 142
    add-int v15, v15, v16

    .line 143
    .line 144
    add-int/lit8 v14, v14, 0x1

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_5
    sub-int v14, v7, v15

    .line 148
    .line 149
    move v15, v3

    .line 150
    move/from16 v16, v15

    .line 151
    .line 152
    :goto_6
    if-ge v15, v11, :cond_7

    .line 153
    .line 154
    aget v17, v12, v15

    .line 155
    .line 156
    add-int/lit8 v18, v16, 0x1

    .line 157
    .line 158
    aput v14, v13, v16

    .line 159
    .line 160
    add-int v14, v14, v17

    .line 161
    .line 162
    add-int/lit8 v15, v15, 0x1

    .line 163
    .line 164
    move/from16 v16, v18

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_6
    add-int/lit8 v11, v11, -0x1

    .line 168
    .line 169
    move v14, v3

    .line 170
    :goto_7
    const/4 v15, -0x1

    .line 171
    if-ge v15, v11, :cond_7

    .line 172
    .line 173
    aget v15, v12, v11

    .line 174
    .line 175
    aput v14, v13, v11

    .line 176
    .line 177
    add-int/2addr v14, v15

    .line 178
    add-int/lit8 v11, v11, -0x1

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_7
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    move v12, v3

    .line 186
    :goto_8
    if-ge v12, v11, :cond_8

    .line 187
    .line 188
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 193
    .line 194
    aget v15, v13, v12

    .line 195
    .line 196
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v16

    .line 200
    check-cast v16, Ljava/lang/Number;

    .line 201
    .line 202
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-static {v1, v14, v15, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v12, v12, 0x1

    .line 210
    .line 211
    const/4 v4, 0x1

    .line 212
    goto :goto_8

    .line 213
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :cond_9
    return-object v6

    .line 219
    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 220
    .line 221
    check-cast v9, Landroidx/compose/ui/layout/MeasureScope;

    .line 222
    .line 223
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 224
    .line 225
    move-object v10, v1

    .line 226
    check-cast v10, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 227
    .line 228
    iget v11, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->cursorOffset:I

    .line 229
    .line 230
    iget-object v1, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 231
    .line 232
    iget-object v12, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->transformedText:Landroidx/compose/ui/text/input/TransformedText;

    .line 233
    .line 234
    iget-object v0, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->textLayoutResultProvider:Lkotlin/jvm/functions/Function0;

    .line 235
    .line 236
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 241
    .line 242
    if-eqz v0, :cond_a

    .line 243
    .line 244
    iget-object v5, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 245
    .line 246
    :cond_a
    move-object v13, v5

    .line 247
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 252
    .line 253
    if-ne v0, v2, :cond_b

    .line 254
    .line 255
    const/4 v14, 0x1

    .line 256
    goto :goto_9

    .line 257
    :cond_b
    move v14, v3

    .line 258
    :goto_9
    iget v15, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 259
    .line 260
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/text/BasicTextKt;->getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 265
    .line 266
    iget v4, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 267
    .line 268
    invoke-virtual {v1, v2, v0, v7, v4}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    neg-float v0, v0

    .line 278
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-static {v10, v8, v0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 283
    .line 284
    .line 285
    return-object v6

    .line 286
    :pswitch_2
    check-cast v0, [Landroidx/compose/ui/layout/Placeable;

    .line 287
    .line 288
    check-cast v9, Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 289
    .line 290
    check-cast v8, [I

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 293
    .line 294
    array-length v2, v0

    .line 295
    move v4, v3

    .line 296
    :goto_a
    if-ge v3, v2, :cond_f

    .line 297
    .line 298
    aget-object v10, v0, v3

    .line 299
    .line 300
    add-int/lit8 v11, v4, 0x1

    .line 301
    .line 302
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    instance-of v13, v12, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 310
    .line 311
    if-eqz v13, :cond_c

    .line 312
    .line 313
    check-cast v12, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 314
    .line 315
    goto :goto_b

    .line 316
    :cond_c
    move-object v12, v5

    .line 317
    :goto_b
    if-eqz v12, :cond_d

    .line 318
    .line 319
    iget-object v12, v12, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/OffsetKt;

    .line 320
    .line 321
    goto :goto_c

    .line 322
    :cond_d
    move-object v12, v5

    .line 323
    :goto_c
    if-eqz v12, :cond_e

    .line 324
    .line 325
    iget v13, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 326
    .line 327
    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 328
    .line 329
    invoke-virtual {v12, v7, v13, v14}, Landroidx/compose/foundation/layout/OffsetKt;->align$foundation_layout(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    goto :goto_d

    .line 334
    :cond_e
    iget-object v12, v9, Landroidx/compose/foundation/layout/RowMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 335
    .line 336
    iget v13, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 337
    .line 338
    invoke-virtual {v12, v13, v7}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    :goto_d
    aget v4, v8, v4

    .line 343
    .line 344
    invoke-static {v1, v10, v4, v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 345
    .line 346
    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 348
    .line 349
    move v4, v11

    .line 350
    goto :goto_a

    .line 351
    :cond_f
    return-object v6

    .line 352
    :pswitch_3
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 353
    .line 354
    check-cast v9, Ljava/lang/String;

    .line 355
    .line 356
    move-object v13, v8

    .line 357
    check-cast v13, Ljava/lang/String;

    .line 358
    .line 359
    move-object v15, v1

    .line 360
    check-cast v15, Landroid/graphics/Bitmap;

    .line 361
    .line 362
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_10

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_10
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    new-instance v2, Ljava/io/File;

    .line 381
    .line 382
    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v16

    .line 389
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const v2, 0x7f12022a

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sget-object v2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 404
    .line 405
    const-string v2, "UTC"

    .line 406
    .line 407
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    const/4 v4, 0x5

    .line 416
    neg-int v7, v7

    .line 417
    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 428
    .line 429
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-static {v4}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v0, " | "

    .line 460
    .line 461
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 475
    .line 476
    invoke-direct {v0, v11}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    new-instance v10, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 480
    .line 481
    const/16 v17, 0x0

    .line 482
    .line 483
    const/4 v14, 0x0

    .line 484
    invoke-direct/range {v10 .. v17}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 485
    .line 486
    .line 487
    const/4 v2, 0x2

    .line 488
    invoke-static {v1, v0, v5, v10, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 489
    .line 490
    .line 491
    :goto_e
    return-object v6

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
