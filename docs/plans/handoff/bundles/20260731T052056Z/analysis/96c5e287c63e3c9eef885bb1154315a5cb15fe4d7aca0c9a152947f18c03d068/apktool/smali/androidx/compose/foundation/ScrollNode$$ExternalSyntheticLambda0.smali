.class public final synthetic Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

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
    iget v1, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v5, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/widget/RemoteViews;

    .line 17
    .line 18
    check-cast v6, Landroid/appwidget/AppWidgetManager;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroid/graphics/Bitmap;

    .line 23
    .line 24
    sget v2, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->$r8$clinit:I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const v2, 0x7f09076f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v5, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 36
    .line 37
    .line 38
    return-object v4

    .line 39
    :pswitch_0
    move-object v7, v0

    .line 40
    check-cast v7, Lkotlin/jvm/functions/Function6;

    .line 41
    .line 42
    move-object v8, v6

    .line 43
    check-cast v8, Lorg/wikipedia/search/SearchResult;

    .line 44
    .line 45
    move-object/from16 v9, p1

    .line 46
    .line 47
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    invoke-virtual {v8}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    invoke-interface/range {v7 .. v13}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-object v4

    .line 68
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function4;

    .line 69
    .line 70
    check-cast v6, Lorg/wikipedia/search/SearchResult;

    .line 71
    .line 72
    move-object/from16 v1, p1

    .line 73
    .line 74
    check-cast v1, Lorg/wikipedia/search/SearchResult;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v6}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v1, v2, v3, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-object v4

    .line 93
    :pswitch_2
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    check-cast v6, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 96
    .line 97
    move-object/from16 v1, p1

    .line 98
    .line 99
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v0, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v4

    .line 112
    :pswitch_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 113
    .line 114
    check-cast v6, Landroidx/collection/MutableObjectIntMap;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/runtime/Composition;

    .line 119
    .line 120
    iget v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 121
    .line 122
    if-ne v7, v5, :cond_8

    .line 123
    .line 124
    iget-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 125
    .line 126
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_8

    .line 131
    .line 132
    instance-of v7, v1, Landroidx/compose/runtime/CompositionImpl;

    .line 133
    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    iget-object v7, v6, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 137
    .line 138
    array-length v8, v7

    .line 139
    add-int/lit8 v8, v8, -0x2

    .line 140
    .line 141
    if-ltz v8, :cond_8

    .line 142
    .line 143
    const/4 v9, 0x0

    .line 144
    :goto_0
    aget-wide v10, v7, v9

    .line 145
    .line 146
    not-long v12, v10

    .line 147
    const/4 v14, 0x7

    .line 148
    shl-long/2addr v12, v14

    .line 149
    and-long/2addr v12, v10

    .line 150
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    and-long/2addr v12, v14

    .line 156
    cmp-long v12, v12, v14

    .line 157
    .line 158
    if-eqz v12, :cond_7

    .line 159
    .line 160
    sub-int v12, v9, v8

    .line 161
    .line 162
    not-int v12, v12

    .line 163
    ushr-int/lit8 v12, v12, 0x1f

    .line 164
    .line 165
    const/16 v13, 0x8

    .line 166
    .line 167
    rsub-int/lit8 v12, v12, 0x8

    .line 168
    .line 169
    const/4 v14, 0x0

    .line 170
    :goto_1
    if-ge v14, v12, :cond_6

    .line 171
    .line 172
    const-wide/16 v15, 0xff

    .line 173
    .line 174
    and-long/2addr v15, v10

    .line 175
    const-wide/16 v17, 0x80

    .line 176
    .line 177
    cmp-long v15, v15, v17

    .line 178
    .line 179
    if-gez v15, :cond_4

    .line 180
    .line 181
    shl-int/lit8 v15, v9, 0x3

    .line 182
    .line 183
    add-int/2addr v15, v14

    .line 184
    iget-object v2, v6, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 185
    .line 186
    aget-object v2, v2, v15

    .line 187
    .line 188
    iget-object v3, v6, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 189
    .line 190
    aget v3, v3, v15

    .line 191
    .line 192
    if-eq v3, v5, :cond_0

    .line 193
    .line 194
    const/4 v3, 0x1

    .line 195
    goto :goto_2

    .line 196
    :cond_0
    const/4 v3, 0x0

    .line 197
    :goto_2
    if-eqz v3, :cond_2

    .line 198
    .line 199
    move/from16 p0, v13

    .line 200
    .line 201
    move-object v13, v1

    .line 202
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 203
    .line 204
    move-object/from16 p1, v1

    .line 205
    .line 206
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 207
    .line 208
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/unit/DpKt;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move/from16 v18, v3

    .line 212
    .line 213
    instance-of v3, v2, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 214
    .line 215
    if-eqz v3, :cond_3

    .line 216
    .line 217
    move-object v3, v2

    .line 218
    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_1

    .line 225
    .line 226
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 227
    .line 228
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/DpKt;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 232
    .line 233
    if-eqz v1, :cond_3

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_2
    move-object/from16 p1, v1

    .line 240
    .line 241
    move/from16 v18, v3

    .line 242
    .line 243
    move/from16 p0, v13

    .line 244
    .line 245
    :cond_3
    :goto_3
    if-eqz v18, :cond_5

    .line 246
    .line 247
    invoke-virtual {v6, v15}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_4
    move-object/from16 p1, v1

    .line 252
    .line 253
    move/from16 p0, v13

    .line 254
    .line 255
    :cond_5
    :goto_4
    shr-long v10, v10, p0

    .line 256
    .line 257
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    move/from16 v13, p0

    .line 260
    .line 261
    move-object/from16 v1, p1

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_6
    move-object/from16 p1, v1

    .line 265
    .line 266
    move v1, v13

    .line 267
    if-ne v12, v1, :cond_8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_7
    move-object/from16 p1, v1

    .line 271
    .line 272
    :goto_5
    if-eq v9, v8, :cond_8

    .line 273
    .line 274
    add-int/lit8 v9, v9, 0x1

    .line 275
    .line 276
    move-object/from16 v1, p1

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_8
    return-object v4

    .line 281
    :pswitch_4
    check-cast v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    .line 282
    .line 283
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 284
    .line 285
    move-object/from16 v7, p1

    .line 286
    .line 287
    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 288
    .line 289
    iget v8, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->cursorOffset:I

    .line 290
    .line 291
    iget-object v1, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 292
    .line 293
    iget-object v9, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->transformedText:Landroidx/compose/ui/text/input/TransformedText;

    .line 294
    .line 295
    iget-object v0, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->textLayoutResultProvider:Lkotlin/jvm/functions/Function0;

    .line 296
    .line 297
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 302
    .line 303
    if-eqz v0, :cond_9

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 306
    .line 307
    :goto_6
    move-object v10, v0

    .line 308
    goto :goto_7

    .line 309
    :cond_9
    const/4 v0, 0x0

    .line 310
    goto :goto_6

    .line 311
    :goto_7
    const/4 v11, 0x0

    .line 312
    iget v12, v6, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 313
    .line 314
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 319
    .line 320
    iget v3, v6, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 321
    .line 322
    invoke-virtual {v1, v2, v0, v5, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 326
    .line 327
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    neg-float v0, v0

    .line 332
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    const/4 v1, 0x0

    .line 337
    invoke-static {v7, v6, v1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 338
    .line 339
    .line 340
    return-object v4

    .line 341
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/ScrollNode;

    .line 342
    .line 343
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 344
    .line 345
    move-object/from16 v1, p1

    .line 346
    .line 347
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 348
    .line 349
    iget-object v2, v0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    .line 350
    .line 351
    iget-object v2, v2, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 352
    .line 353
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-gez v2, :cond_a

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    :cond_a
    if-le v2, v5, :cond_b

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_b
    move v5, v2

    .line 364
    :goto_8
    neg-int v2, v5

    .line 365
    iget-boolean v0, v0, Landroidx/compose/foundation/ScrollNode;->isVertical:Z

    .line 366
    .line 367
    if-eqz v0, :cond_c

    .line 368
    .line 369
    const/4 v3, 0x0

    .line 370
    goto :goto_9

    .line 371
    :cond_c
    move v3, v2

    .line 372
    :goto_9
    if-eqz v0, :cond_d

    .line 373
    .line 374
    :goto_a
    const/4 v0, 0x1

    .line 375
    goto :goto_b

    .line 376
    :cond_d
    const/4 v2, 0x0

    .line 377
    goto :goto_a

    .line 378
    :goto_b
    iput-boolean v0, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 379
    .line 380
    invoke-static {v1, v6, v3, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 381
    .line 382
    .line 383
    const/4 v0, 0x0

    .line 384
    iput-boolean v0, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 385
    .line 386
    return-object v4

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
