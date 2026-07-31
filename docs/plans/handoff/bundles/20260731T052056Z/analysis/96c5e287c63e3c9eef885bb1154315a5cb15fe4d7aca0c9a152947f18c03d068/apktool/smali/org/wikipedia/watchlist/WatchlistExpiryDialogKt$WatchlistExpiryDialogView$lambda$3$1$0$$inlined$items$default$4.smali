.class public final Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $onExpiryItemSelected$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public final synthetic $selectedWatchListTime$delegate$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$selectedWatchListTime$delegate$inlined:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$onExpiryItemSelected$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$onExpiryItemSelected$inlined:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$selectedWatchListTime$delegate$inlined:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$r8$classId:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 7
    .line 8
    const/high16 v5, 0x41800000    # 16.0f

    .line 9
    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 13
    .line 14
    iget-object v9, v0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$onExpiryItemSelected$inlined:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v11, v0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$selectedWatchListTime$delegate$inlined:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v12, v0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 21
    .line 22
    const/16 v13, 0x92

    .line 23
    .line 24
    const/16 v14, 0x30

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const/16 v17, 0x4

    .line 28
    .line 29
    const/4 v15, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    move-object/from16 v1, p1

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 37
    .line 38
    move-object/from16 v3, p2

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    move-object/from16 v4, p3

    .line 47
    .line 48
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    move-object/from16 v5, p4

    .line 51
    .line 52
    check-cast v5, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    and-int/lit8 v6, v5, 0x6

    .line 59
    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    move/from16 v2, v17

    .line 69
    .line 70
    :cond_0
    or-int/2addr v2, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v2, v5

    .line 73
    :goto_0
    and-int/2addr v5, v14

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    const/16 v14, 0x20

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/16 v14, 0x10

    .line 86
    .line 87
    :goto_1
    or-int/2addr v2, v14

    .line 88
    :cond_3
    and-int/lit16 v5, v2, 0x93

    .line 89
    .line 90
    if-eq v5, v13, :cond_4

    .line 91
    .line 92
    move v5, v7

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v5, v15

    .line 95
    :goto_2
    and-int/2addr v2, v7

    .line 96
    invoke-virtual {v4, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 107
    .line 108
    const v3, -0x2ed93872

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->animateItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;)Landroidx/compose/ui/Modifier;

    .line 115
    .line 116
    .line 117
    move-result-object v19

    .line 118
    check-cast v11, Ljava/util/Set;

    .line 119
    .line 120
    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v21

    .line 124
    iget-object v0, v0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;->$onExpiryItemSelected$inlined:Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    const/16 v24, 0x0

    .line 127
    .line 128
    move-object/from16 v22, v0

    .line 129
    .line 130
    move-object/from16 v20, v2

    .line 131
    .line 132
    move-object/from16 v23, v4

    .line 133
    .line 134
    invoke-static/range {v19 .. v24}, Lorg/wikipedia/compose/components/TabsBoxKt;->ArticleCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/page/PageTitle;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v0, v23

    .line 138
    .line 139
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move-object v0, v4

    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-object v10

    .line 148
    :pswitch_0
    move-object/from16 v0, p1

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 151
    .line 152
    move-object/from16 v1, p2

    .line 153
    .line 154
    check-cast v1, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    move/from16 v20, v7

    .line 161
    .line 162
    move-object/from16 v7, p3

    .line 163
    .line 164
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 165
    .line 166
    move-object/from16 v21, p4

    .line 167
    .line 168
    check-cast v21, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v21

    .line 174
    check-cast v11, Landroid/content/Context;

    .line 175
    .line 176
    and-int/lit8 v22, v21, 0x6

    .line 177
    .line 178
    if-nez v22, :cond_7

    .line 179
    .line 180
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    move/from16 v17, v2

    .line 188
    .line 189
    :goto_4
    or-int v0, v21, v17

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_7
    move/from16 v0, v21

    .line 193
    .line 194
    :goto_5
    and-int/lit8 v17, v21, 0x30

    .line 195
    .line 196
    if-nez v17, :cond_9

    .line 197
    .line 198
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 199
    .line 200
    .line 201
    move-result v17

    .line 202
    if-eqz v17, :cond_8

    .line 203
    .line 204
    const/16 v16, 0x20

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_8
    const/16 v16, 0x10

    .line 208
    .line 209
    :goto_6
    or-int v0, v0, v16

    .line 210
    .line 211
    :cond_9
    and-int/lit16 v15, v0, 0x93

    .line 212
    .line 213
    if-eq v15, v13, :cond_a

    .line 214
    .line 215
    move/from16 v13, v20

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_a
    const/4 v13, 0x0

    .line 219
    :goto_7
    and-int/lit8 v15, v0, 0x1

    .line 220
    .line 221
    invoke-virtual {v7, v15, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-eqz v13, :cond_12

    .line 226
    .line 227
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    check-cast v12, Lorg/wikipedia/language/addlanguages/LanguageListItem;

    .line 232
    .line 233
    const v13, -0x28cc8ddd

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 237
    .line 238
    .line 239
    iget-object v13, v12, Lorg/wikipedia/language/addlanguages/LanguageListItem;->headerText:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v15, v12, Lorg/wikipedia/language/addlanguages/LanguageListItem;->canonicalName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-lez v13, :cond_b

    .line 248
    .line 249
    const v0, -0x28cbecef

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 253
    .line 254
    .line 255
    const/high16 v0, 0x42600000    # 56.0f

    .line 256
    .line 257
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0, v5, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 266
    .line 267
    .line 268
    move-result-object v22

    .line 269
    const/high16 v26, 0x40800000    # 4.0f

    .line 270
    .line 271
    const/16 v27, 0x7

    .line 272
    .line 273
    const/16 v23, 0x0

    .line 274
    .line 275
    const/16 v24, 0x0

    .line 276
    .line 277
    const/16 v25, 0x0

    .line 278
    .line 279
    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, v12, Lorg/wikipedia/language/addlanguages/LanguageListItem;->headerText:Ljava/lang/String;

    .line 284
    .line 285
    const/4 v2, 0x0

    .line 286
    invoke-static {v1, v0, v2, v7, v14}, Lokhttp3/Cookie$Companion;->ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V

    .line 287
    .line 288
    .line 289
    const/4 v0, 0x0

    .line 290
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 291
    .line 292
    .line 293
    move v8, v0

    .line 294
    goto :goto_9

    .line 295
    :cond_b
    const v2, -0x28c55e74

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 299
    .line 300
    .line 301
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 302
    .line 303
    iget-object v2, v12, Lorg/wikipedia/language/addlanguages/LanguageListItem;->localizedName:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-nez v2, :cond_c

    .line 310
    .line 311
    const-string v2, ""

    .line 312
    .line 313
    :cond_c
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    and-int/lit8 v13, v0, 0x70

    .line 318
    .line 319
    xor-int/2addr v13, v14

    .line 320
    move/from16 v22, v14

    .line 321
    .line 322
    const/16 v14, 0x20

    .line 323
    .line 324
    if-le v13, v14, :cond_d

    .line 325
    .line 326
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    if-nez v13, :cond_f

    .line 331
    .line 332
    :cond_d
    and-int/lit8 v0, v0, 0x30

    .line 333
    .line 334
    if-ne v0, v14, :cond_e

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_e
    const/16 v20, 0x0

    .line 338
    .line 339
    :cond_f
    :goto_8
    or-int v0, v3, v20

    .line 340
    .line 341
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    or-int/2addr v0, v3

    .line 346
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    or-int/2addr v0, v3

    .line 351
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    if-nez v0, :cond_10

    .line 356
    .line 357
    if-ne v3, v8, :cond_11

    .line 358
    .line 359
    :cond_10
    new-instance v3, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;

    .line 360
    .line 361
    invoke-direct {v3, v11, v1, v9, v12}, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lorg/wikipedia/language/addlanguages/LanguageListItem;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 368
    .line 369
    const/16 v0, 0xf

    .line 370
    .line 371
    const/4 v1, 0x0

    .line 372
    const/4 v8, 0x0

    .line 373
    invoke-static {v0, v4, v1, v3, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0, v15}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0, v2, v15, v7, v8}, Lokhttp3/Cookie$Companion;->LanguageListItemView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 393
    .line 394
    .line 395
    :goto_9
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 400
    .line 401
    .line 402
    :goto_a
    return-object v10

    .line 403
    :pswitch_1
    move/from16 v20, v7

    .line 404
    .line 405
    move/from16 v22, v14

    .line 406
    .line 407
    move-object/from16 v0, p1

    .line 408
    .line 409
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 410
    .line 411
    move-object/from16 v1, p2

    .line 412
    .line 413
    check-cast v1, Ljava/lang/Number;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    move-object/from16 v3, p3

    .line 420
    .line 421
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 422
    .line 423
    move-object/from16 v4, p4

    .line 424
    .line 425
    check-cast v4, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    and-int/lit8 v5, v4, 0x6

    .line 432
    .line 433
    if-nez v5, :cond_14

    .line 434
    .line 435
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    if-eqz v5, :cond_13

    .line 440
    .line 441
    move/from16 v2, v17

    .line 442
    .line 443
    :cond_13
    or-int/2addr v2, v4

    .line 444
    goto :goto_b

    .line 445
    :cond_14
    move v2, v4

    .line 446
    :goto_b
    and-int/lit8 v4, v4, 0x30

    .line 447
    .line 448
    if-nez v4, :cond_16

    .line 449
    .line 450
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-eqz v4, :cond_15

    .line 455
    .line 456
    const/16 v14, 0x20

    .line 457
    .line 458
    goto :goto_c

    .line 459
    :cond_15
    const/16 v14, 0x10

    .line 460
    .line 461
    :goto_c
    or-int/2addr v2, v14

    .line 462
    :cond_16
    and-int/lit16 v4, v2, 0x93

    .line 463
    .line 464
    if-eq v4, v13, :cond_17

    .line 465
    .line 466
    move/from16 v4, v20

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_17
    const/4 v4, 0x0

    .line 470
    :goto_d
    and-int/lit8 v2, v2, 0x1

    .line 471
    .line 472
    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_1a

    .line 477
    .line 478
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 483
    .line 484
    const v2, -0x45da9caa

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 488
    .line 489
    .line 490
    invoke-static {v0}, Landroidx/compose/animation/core/Animation$-CC;->animateItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;)Landroidx/compose/ui/Modifier;

    .line 491
    .line 492
    .line 493
    move-result-object v23

    .line 494
    check-cast v11, Lorg/wikipedia/feed/personalization/interest/ArticlesState;

    .line 495
    .line 496
    check-cast v11, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Success;

    .line 497
    .line 498
    iget-object v0, v11, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Success;->selectedArticles:Ljava/util/Set;

    .line 499
    .line 500
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v25

    .line 504
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    or-int/2addr v0, v2

    .line 513
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    if-nez v0, :cond_18

    .line 518
    .line 519
    if-ne v2, v8, :cond_19

    .line 520
    .line 521
    :cond_18
    new-instance v2, Landroidx/compose/runtime/Latch$await$2$2;

    .line 522
    .line 523
    const/16 v0, 0x8

    .line 524
    .line 525
    invoke-direct {v2, v0, v9, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    :cond_19
    move-object/from16 v26, v2

    .line 532
    .line 533
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 534
    .line 535
    const/16 v28, 0x0

    .line 536
    .line 537
    move-object/from16 v24, v1

    .line 538
    .line 539
    move-object/from16 v27, v3

    .line 540
    .line 541
    invoke-static/range {v23 .. v28}, Lorg/wikipedia/compose/components/TabsBoxKt;->ArticleCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/page/PageTitle;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 542
    .line 543
    .line 544
    move-object/from16 v0, v27

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 548
    .line 549
    .line 550
    goto :goto_e

    .line 551
    :cond_1a
    move-object v0, v3

    .line 552
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 553
    .line 554
    .line 555
    :goto_e
    return-object v10

    .line 556
    :pswitch_2
    move/from16 v20, v7

    .line 557
    .line 558
    move/from16 v22, v14

    .line 559
    .line 560
    move-object/from16 v0, p1

    .line 561
    .line 562
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 563
    .line 564
    move-object/from16 v1, p2

    .line 565
    .line 566
    check-cast v1, Ljava/lang/Number;

    .line 567
    .line 568
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    move-object/from16 v7, p3

    .line 573
    .line 574
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 575
    .line 576
    move-object/from16 v14, p4

    .line 577
    .line 578
    check-cast v14, Ljava/lang/Number;

    .line 579
    .line 580
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 581
    .line 582
    .line 583
    move-result v14

    .line 584
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 585
    .line 586
    and-int/lit8 v15, v14, 0x6

    .line 587
    .line 588
    if-nez v15, :cond_1c

    .line 589
    .line 590
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_1b

    .line 595
    .line 596
    goto :goto_f

    .line 597
    :cond_1b
    move/from16 v17, v2

    .line 598
    .line 599
    :goto_f
    or-int v0, v14, v17

    .line 600
    .line 601
    goto :goto_10

    .line 602
    :cond_1c
    move v0, v14

    .line 603
    :goto_10
    and-int/lit8 v14, v14, 0x30

    .line 604
    .line 605
    if-nez v14, :cond_1e

    .line 606
    .line 607
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 608
    .line 609
    .line 610
    move-result v14

    .line 611
    if-eqz v14, :cond_1d

    .line 612
    .line 613
    const/16 v14, 0x20

    .line 614
    .line 615
    goto :goto_11

    .line 616
    :cond_1d
    const/16 v14, 0x10

    .line 617
    .line 618
    :goto_11
    or-int/2addr v0, v14

    .line 619
    :cond_1e
    and-int/lit16 v14, v0, 0x93

    .line 620
    .line 621
    if-eq v14, v13, :cond_1f

    .line 622
    .line 623
    move/from16 v13, v20

    .line 624
    .line 625
    goto :goto_12

    .line 626
    :cond_1f
    const/4 v13, 0x0

    .line 627
    :goto_12
    and-int/lit8 v0, v0, 0x1

    .line 628
    .line 629
    invoke-virtual {v7, v0, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_27

    .line 634
    .line 635
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 640
    .line 641
    const v1, 0x81114f9

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 645
    .line 646
    .line 647
    sget-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 648
    .line 649
    if-ne v0, v1, :cond_20

    .line 650
    .line 651
    const v1, 0x7f120a04

    .line 652
    .line 653
    .line 654
    goto :goto_13

    .line 655
    :cond_20
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getStringId()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    :goto_13
    invoke-static {v1, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 664
    .line 665
    .line 666
    move-result-object v12

    .line 667
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 668
    .line 669
    .line 670
    move-result v13

    .line 671
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 672
    .line 673
    .line 674
    move-result v13

    .line 675
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v14

    .line 679
    or-int/2addr v13, v14

    .line 680
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v14

    .line 684
    if-nez v13, :cond_21

    .line 685
    .line 686
    if-ne v14, v8, :cond_22

    .line 687
    .line 688
    :cond_21
    new-instance v14, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;

    .line 689
    .line 690
    move/from16 v8, v20

    .line 691
    .line 692
    invoke-direct {v14, v0, v9, v11, v8}, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    :cond_22
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 699
    .line 700
    const/16 v8, 0xf

    .line 701
    .line 702
    const/4 v9, 0x0

    .line 703
    const/4 v13, 0x0

    .line 704
    invoke-static {v8, v12, v9, v14, v13}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    const/high16 v12, 0x42400000    # 48.0f

    .line 709
    .line 710
    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 711
    .line 712
    .line 713
    move-result-object v8

    .line 714
    invoke-static {v8, v5, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 715
    .line 716
    .line 717
    move-result-object v5

    .line 718
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 719
    .line 720
    sget-object v12, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 721
    .line 722
    move/from16 v13, v22

    .line 723
    .line 724
    invoke-static {v12, v8, v7, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 725
    .line 726
    .line 727
    move-result-object v8

    .line 728
    iget-wide v12, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 729
    .line 730
    const/16 v18, 0x20

    .line 731
    .line 732
    ushr-long v14, v12, v18

    .line 733
    .line 734
    xor-long/2addr v12, v14

    .line 735
    long-to-int v12, v12

    .line 736
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 737
    .line 738
    .line 739
    move-result-object v13

    .line 740
    invoke-static {v7, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 745
    .line 746
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 750
    .line 751
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 752
    .line 753
    .line 754
    iget-boolean v15, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 755
    .line 756
    if-eqz v15, :cond_23

    .line 757
    .line 758
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 759
    .line 760
    .line 761
    goto :goto_14

    .line 762
    :cond_23
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 763
    .line 764
    .line 765
    :goto_14
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 766
    .line 767
    invoke-static {v7, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 768
    .line 769
    .line 770
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 771
    .line 772
    invoke-static {v7, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 773
    .line 774
    .line 775
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 776
    .line 777
    .line 778
    move-result-object v8

    .line 779
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 780
    .line 781
    invoke-static {v7, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 782
    .line 783
    .line 784
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 785
    .line 786
    invoke-static {v7, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 787
    .line 788
    .line 789
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 790
    .line 791
    invoke-static {v7, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getIcon()Ljava/lang/Integer;

    .line 795
    .line 796
    .line 797
    move-result-object v5

    .line 798
    const/high16 v8, 0x41c00000    # 24.0f

    .line 799
    .line 800
    if-eqz v5, :cond_24

    .line 801
    .line 802
    const v5, 0x25b0f9e5

    .line 803
    .line 804
    .line 805
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 806
    .line 807
    .line 808
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 809
    .line 810
    .line 811
    move-result-object v25

    .line 812
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getIcon()Ljava/lang/Integer;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    const/4 v13, 0x0

    .line 821
    invoke-static {v5, v13, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 822
    .line 823
    .line 824
    move-result-object v23

    .line 825
    sget-wide v26, Lorg/wikipedia/compose/ComposeColors;->Yellow500:J

    .line 826
    .line 827
    const/16 v29, 0xdb8

    .line 828
    .line 829
    const/16 v30, 0x0

    .line 830
    .line 831
    const/16 v24, 0x0

    .line 832
    .line 833
    move-object/from16 v28, v7

    .line 834
    .line 835
    invoke-static/range {v23 .. v30}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 836
    .line 837
    .line 838
    move-object/from16 v5, v28

    .line 839
    .line 840
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 841
    .line 842
    .line 843
    goto :goto_15

    .line 844
    :cond_24
    move-object v5, v7

    .line 845
    const/4 v13, 0x0

    .line 846
    const v7, 0x25b60a91

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 850
    .line 851
    .line 852
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    const/4 v12, 0x6

    .line 857
    invoke-static {v7, v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 861
    .line 862
    .line 863
    :goto_15
    new-instance v7, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 864
    .line 865
    const/4 v12, 0x1

    .line 866
    invoke-direct {v7, v6, v12}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 867
    .line 868
    .line 869
    invoke-static {v7, v8, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 870
    .line 871
    .line 872
    move-result-object v24

    .line 873
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 874
    .line 875
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 880
    .line 881
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 882
    .line 883
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 884
    .line 885
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 890
    .line 891
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 892
    .line 893
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v12

    .line 897
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v13

    .line 901
    check-cast v13, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 902
    .line 903
    invoke-virtual {v13}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v13

    .line 907
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v12

    .line 911
    if-eqz v12, :cond_25

    .line 912
    .line 913
    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 914
    .line 915
    :cond_25
    move-object/from16 v30, v9

    .line 916
    .line 917
    const/16 v45, 0x0

    .line 918
    .line 919
    const v46, 0x1ffb8

    .line 920
    .line 921
    .line 922
    const/16 v27, 0x0

    .line 923
    .line 924
    const-wide/16 v28, 0x0

    .line 925
    .line 926
    const/16 v31, 0x0

    .line 927
    .line 928
    const-wide/16 v32, 0x0

    .line 929
    .line 930
    const/16 v34, 0x0

    .line 931
    .line 932
    const-wide/16 v35, 0x0

    .line 933
    .line 934
    const/16 v37, 0x0

    .line 935
    .line 936
    const/16 v38, 0x0

    .line 937
    .line 938
    const/16 v39, 0x0

    .line 939
    .line 940
    const/16 v40, 0x0

    .line 941
    .line 942
    const/16 v41, 0x0

    .line 943
    .line 944
    const/16 v44, 0x0

    .line 945
    .line 946
    move-object/from16 v23, v1

    .line 947
    .line 948
    move-object/from16 v42, v2

    .line 949
    .line 950
    move-object/from16 v43, v5

    .line 951
    .line 952
    move-wide/from16 v25, v6

    .line 953
    .line 954
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 966
    .line 967
    invoke-virtual {v1}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    if-eqz v0, :cond_26

    .line 976
    .line 977
    const v0, 0x25c1ab4b

    .line 978
    .line 979
    .line 980
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 981
    .line 982
    .line 983
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 984
    .line 985
    .line 986
    move-result-object v25

    .line 987
    const v0, 0x7f080139

    .line 988
    .line 989
    .line 990
    const/4 v13, 0x0

    .line 991
    invoke-static {v0, v13, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 992
    .line 993
    .line 994
    move-result-object v23

    .line 995
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1000
    .line 1001
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1002
    .line 1003
    const/16 v29, 0x1b8

    .line 1004
    .line 1005
    const/16 v30, 0x0

    .line 1006
    .line 1007
    const/16 v24, 0x0

    .line 1008
    .line 1009
    move-wide/from16 v26, v0

    .line 1010
    .line 1011
    move-object/from16 v28, v5

    .line 1012
    .line 1013
    invoke-static/range {v23 .. v30}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1017
    .line 1018
    .line 1019
    :goto_16
    const/4 v12, 0x1

    .line 1020
    goto :goto_17

    .line 1021
    :cond_26
    const/4 v13, 0x0

    .line 1022
    const v0, 0x25c6f19c

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_16

    .line 1032
    :goto_17
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_18

    .line 1039
    :cond_27
    move-object v5, v7

    .line 1040
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1041
    .line 1042
    .line 1043
    :goto_18
    return-object v10

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
