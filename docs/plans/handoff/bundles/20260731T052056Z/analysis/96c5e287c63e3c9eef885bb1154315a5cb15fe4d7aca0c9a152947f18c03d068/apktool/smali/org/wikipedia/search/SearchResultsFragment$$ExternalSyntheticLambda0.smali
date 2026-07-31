.class public final synthetic Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    and-int/lit8 v7, v6, 0x3

    .line 28
    .line 29
    if-eq v7, v3, :cond_0

    .line 30
    .line 31
    move v7, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v7, v5

    .line 34
    :goto_0
    and-int/2addr v6, v4

    .line 35
    invoke-virtual {v1, v6, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2c

    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getShowHybridSearch()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/4 v7, 0x5

    .line 46
    const/4 v8, 0x3

    .line 47
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 48
    .line 49
    if-eqz v6, :cond_1b

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lorg/wikipedia/search/SearchResultsViewModel;->isHybridSearchExperimentOn()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1b

    .line 60
    .line 61
    const v6, 0x1e8df8a9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move-object v10, v6

    .line 72
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    if-nez v11, :cond_1

    .line 83
    .line 84
    if-ne v12, v9, :cond_2

    .line 85
    .line 86
    :cond_1
    new-instance v12, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda2;

    .line 87
    .line 88
    invoke-direct {v12, v0, v5}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    check-cast v12, Lkotlin/jvm/functions/Function4;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    if-nez v11, :cond_3

    .line 105
    .line 106
    if-ne v13, v9, :cond_4

    .line 107
    .line 108
    :cond_3
    new-instance v13, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 109
    .line 110
    invoke-direct {v13, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    if-ne v11, v9, :cond_6

    .line 129
    .line 130
    :cond_5
    new-instance v11, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;

    .line 131
    .line 132
    invoke-direct {v11, v5, v0}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function6;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    if-ne v14, v9, :cond_8

    .line 151
    .line 152
    :cond_7
    new-instance v14, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;

    .line 153
    .line 154
    invoke-direct {v14, v0, v4}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    check-cast v14, Lkotlin/jvm/functions/Function3;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    const/4 v5, 0x4

    .line 171
    if-nez v3, :cond_9

    .line 172
    .line 173
    if-ne v15, v9, :cond_a

    .line 174
    .line 175
    :cond_9
    new-instance v15, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 176
    .line 177
    invoke-direct {v15, v0, v5}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_a
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    if-nez v3, :cond_b

    .line 194
    .line 195
    if-ne v5, v9, :cond_c

    .line 196
    .line 197
    :cond_b
    new-instance v5, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 198
    .line 199
    invoke-direct {v5, v0, v8}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    if-nez v3, :cond_d

    .line 216
    .line 217
    if-ne v8, v9, :cond_e

    .line 218
    .line 219
    :cond_d
    new-instance v8, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    invoke-direct {v8, v0, v4}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_e
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    if-nez v3, :cond_f

    .line 238
    .line 239
    if-ne v4, v9, :cond_10

    .line 240
    .line 241
    :cond_f
    new-instance v4, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 242
    .line 243
    invoke-direct {v4, v0, v7}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    if-nez v3, :cond_11

    .line 260
    .line 261
    if-ne v7, v9, :cond_12

    .line 262
    .line 263
    :cond_11
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 264
    .line 265
    const/4 v3, 0x6

    .line 266
    invoke-direct {v7, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_12
    move-object/from16 v16, v7

    .line 273
    .line 274
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    if-nez v3, :cond_13

    .line 285
    .line 286
    if-ne v7, v9, :cond_14

    .line 287
    .line 288
    :cond_13
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 289
    .line 290
    const/4 v3, 0x4

    .line 291
    invoke-direct {v7, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_14
    move-object/from16 v17, v7

    .line 298
    .line 299
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 300
    .line 301
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    if-nez v3, :cond_15

    .line 310
    .line 311
    if-ne v7, v9, :cond_16

    .line 312
    .line 313
    :cond_15
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 314
    .line 315
    const/4 v3, 0x0

    .line 316
    invoke-direct {v7, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_16
    move-object/from16 v18, v7

    .line 323
    .line 324
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    if-nez v3, :cond_17

    .line 335
    .line 336
    if-ne v7, v9, :cond_18

    .line 337
    .line 338
    :cond_17
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 339
    .line 340
    const/4 v3, 0x7

    .line 341
    invoke-direct {v7, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    move-object/from16 v19, v7

    .line 348
    .line 349
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    if-nez v3, :cond_1a

    .line 360
    .line 361
    if-ne v7, v9, :cond_19

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_19
    const/4 v3, 0x0

    .line 365
    goto :goto_2

    .line 366
    :cond_1a
    :goto_1
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 367
    .line 368
    const/4 v3, 0x0

    .line 369
    invoke-direct {v7, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :goto_2
    move-object/from16 v20, v7

    .line 376
    .line 377
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 378
    .line 379
    const/16 v22, 0x6

    .line 380
    .line 381
    move-object/from16 v21, v1

    .line 382
    .line 383
    move-object v7, v10

    .line 384
    move-object v10, v11

    .line 385
    move-object v9, v13

    .line 386
    move-object v11, v14

    .line 387
    move-object v13, v5

    .line 388
    move-object v14, v8

    .line 389
    move-object v8, v12

    .line 390
    move-object v12, v15

    .line 391
    move-object v15, v4

    .line 392
    invoke-static/range {v6 .. v22}, Lorg/wikipedia/search/NoSearchResultsKt;->HybridSearchResultsScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/search/SearchResultsViewModel;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_1b
    const v5, 0x1edc594a

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 411
    .line 412
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    if-nez v10, :cond_1c

    .line 421
    .line 422
    if-ne v11, v9, :cond_1d

    .line 423
    .line 424
    :cond_1c
    new-instance v11, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda2;

    .line 425
    .line 426
    invoke-direct {v11, v0, v4}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    :cond_1d
    check-cast v11, Lkotlin/jvm/functions/Function4;

    .line 433
    .line 434
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v12

    .line 442
    if-nez v10, :cond_1e

    .line 443
    .line 444
    if-ne v12, v9, :cond_1f

    .line 445
    .line 446
    :cond_1e
    new-instance v12, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;

    .line 447
    .line 448
    const/4 v10, 0x0

    .line 449
    invoke-direct {v12, v0, v10}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_1f
    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 456
    .line 457
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    if-nez v10, :cond_20

    .line 466
    .line 467
    if-ne v13, v9, :cond_21

    .line 468
    .line 469
    :cond_20
    new-instance v13, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;

    .line 470
    .line 471
    invoke-direct {v13, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :cond_21
    move-object v10, v13

    .line 478
    check-cast v10, Lkotlin/jvm/functions/Function3;

    .line 479
    .line 480
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v14

    .line 488
    if-nez v13, :cond_22

    .line 489
    .line 490
    if-ne v14, v9, :cond_23

    .line 491
    .line 492
    :cond_22
    new-instance v14, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 493
    .line 494
    invoke-direct {v14, v0, v7}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    :cond_23
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 501
    .line 502
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v13

    .line 510
    if-nez v7, :cond_24

    .line 511
    .line 512
    if-ne v13, v9, :cond_25

    .line 513
    .line 514
    :cond_24
    new-instance v13, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 515
    .line 516
    invoke-direct {v13, v0, v4}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    :cond_25
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 523
    .line 524
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v7

    .line 528
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v15

    .line 532
    if-nez v7, :cond_26

    .line 533
    .line 534
    if-ne v15, v9, :cond_27

    .line 535
    .line 536
    :cond_26
    new-instance v15, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 537
    .line 538
    invoke-direct {v15, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    :cond_27
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 545
    .line 546
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    if-nez v3, :cond_28

    .line 555
    .line 556
    if-ne v7, v9, :cond_29

    .line 557
    .line 558
    :cond_28
    new-instance v7, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;

    .line 559
    .line 560
    invoke-direct {v7, v0, v4}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    :cond_29
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 567
    .line 568
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    if-nez v3, :cond_2a

    .line 577
    .line 578
    if-ne v4, v9, :cond_2b

    .line 579
    .line 580
    :cond_2a
    new-instance v4, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;

    .line 581
    .line 582
    invoke-direct {v4, v0, v8}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    :cond_2b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 589
    .line 590
    const/16 v17, 0x6

    .line 591
    .line 592
    move-object/from16 v16, v1

    .line 593
    .line 594
    move-object v8, v11

    .line 595
    move-object v9, v12

    .line 596
    move-object v12, v13

    .line 597
    move-object v11, v14

    .line 598
    move-object v13, v15

    .line 599
    move-object v15, v4

    .line 600
    move-object v14, v7

    .line 601
    move-object v7, v5

    .line 602
    invoke-static/range {v6 .. v17}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultsScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/search/SearchResultsViewModel;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 603
    .line 604
    .line 605
    const/4 v10, 0x0

    .line 606
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 607
    .line 608
    .line 609
    goto :goto_3

    .line 610
    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 611
    .line 612
    .line 613
    :goto_3
    return-object v2

    .line 614
    :pswitch_0
    move-object/from16 v1, p1

    .line 615
    .line 616
    check-cast v1, Ljava/lang/Boolean;

    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    move-object/from16 v3, p2

    .line 623
    .line 624
    check-cast v3, Lorg/wikipedia/search/SearchResult;

    .line 625
    .line 626
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-static {v4}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    if-eqz v5, :cond_2e

    .line 638
    .line 639
    if-eqz v1, :cond_2d

    .line 640
    .line 641
    const-string v1, "thumb_up"

    .line 642
    .line 643
    :goto_4
    move-object v9, v1

    .line 644
    goto :goto_5

    .line 645
    :cond_2d
    const-string v1, "thumb_down"

    .line 646
    .line 647
    goto :goto_4

    .line 648
    :goto_5
    sget-object v1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 649
    .line 650
    iget-object v1, v3, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 651
    .line 652
    invoke-static {v1}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v0, v3}, Lorg/wikipedia/search/SearchResultsViewModel;->getHybridEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 661
    .line 662
    .line 663
    move-result-object v11

    .line 664
    const/16 v12, 0x56

    .line 665
    .line 666
    const-string v6, "click"

    .line 667
    .line 668
    const/4 v7, 0x0

    .line 669
    const/4 v8, 0x0

    .line 670
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 671
    .line 672
    .line 673
    :cond_2e
    return-object v2

    .line 674
    :pswitch_1
    move v10, v5

    .line 675
    move-object/from16 v1, p1

    .line 676
    .line 677
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 678
    .line 679
    move-object/from16 v5, p2

    .line 680
    .line 681
    check-cast v5, Ljava/lang/Integer;

    .line 682
    .line 683
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    and-int/lit8 v6, v5, 0x3

    .line 688
    .line 689
    if-eq v6, v3, :cond_2f

    .line 690
    .line 691
    move v10, v4

    .line 692
    :cond_2f
    and-int/2addr v5, v4

    .line 693
    invoke-virtual {v1, v5, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-eqz v5, :cond_30

    .line 698
    .line 699
    new-instance v5, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;

    .line 700
    .line 701
    invoke-direct {v5, v0, v3}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    .line 702
    .line 703
    .line 704
    const v0, 0xf853533

    .line 705
    .line 706
    .line 707
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    const/16 v3, 0x30

    .line 712
    .line 713
    const/4 v5, 0x0

    .line 714
    invoke-static {v5, v0, v1, v3, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 715
    .line 716
    .line 717
    goto :goto_6

    .line 718
    :cond_30
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 719
    .line 720
    .line 721
    :goto_6
    return-object v2

    .line 722
    nop

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
