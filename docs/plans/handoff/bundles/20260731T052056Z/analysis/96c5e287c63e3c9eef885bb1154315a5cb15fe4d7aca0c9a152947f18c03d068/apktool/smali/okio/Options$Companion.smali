.class public abstract Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final ForYouModulesScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 25

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x5f500472

    .line 12
    .line 13
    .line 14
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    or-int/lit8 v0, p4, 0x2

    .line 18
    .line 19
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v1, 0x10

    .line 30
    .line 31
    :goto_0
    or-int/2addr v0, v1

    .line 32
    move-object/from16 v9, p2

    .line 33
    .line 34
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v1, 0x80

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v1

    .line 46
    and-int/lit16 v1, v0, 0x93

    .line 47
    .line 48
    const/16 v4, 0x92

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v13, 0x0

    .line 52
    if-eq v1, v4, :cond_2

    .line 53
    .line 54
    move v1, v5

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v1, v13

    .line 57
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 58
    .line 59
    invoke-virtual {v10, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_14

    .line 64
    .line 65
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 66
    .line 67
    .line 68
    and-int/lit8 v1, p4, 0x1

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    and-int/lit8 v0, v0, -0xf

    .line 83
    .line 84
    move-object/from16 v8, p0

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    :goto_3
    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/GapComposer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_13

    .line 92
    .line 93
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-class v6, Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 98
    .line 99
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 100
    .line 101
    invoke-virtual {v7, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const/4 v7, 0x0

    .line 106
    invoke-static {v6, v1, v7, v4, v10}, Lkotlin/UnsignedKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/GapComposer;)Landroidx/lifecycle/ViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 111
    .line 112
    and-int/lit8 v0, v0, -0xf

    .line 113
    .line 114
    move-object v8, v1

    .line 115
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 116
    .line 117
    .line 118
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 119
    .line 120
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v15, v1

    .line 125
    check-cast v15, Landroid/content/Context;

    .line 126
    .line 127
    iget-object v1, v8, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->hiddenModules:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 128
    .line 129
    invoke-static {v1, v10}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 138
    .line 139
    if-ne v4, v6, :cond_5

    .line 140
    .line 141
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    move-object/from16 v18, v4

    .line 151
    .line 152
    check-cast v18, Landroidx/compose/runtime/MutableState;

    .line 153
    .line 154
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-ne v4, v6, :cond_6

    .line 159
    .line 160
    const-string v4, ""

    .line 161
    .line 162
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    move-object/from16 v17, v4

    .line 170
    .line 171
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 172
    .line 173
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Ljava/util/Set;

    .line 178
    .line 179
    if-nez v1, :cond_7

    .line 180
    .line 181
    const v0, -0x5f441812

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 188
    .line 189
    .line 190
    move-object v14, v6

    .line 191
    move-object v3, v10

    .line 192
    move-object v1, v15

    .line 193
    move-object/from16 v0, v18

    .line 194
    .line 195
    move-object v15, v8

    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_7
    const v4, -0x5f441811

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 202
    .line 203
    .line 204
    const v4, 0x7f1201fa

    .line 205
    .line 206
    .line 207
    invoke-static {v4, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const v7, 0x7f1202ad

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    sget-object v11, Lorg/wikipedia/settings/homefeed/ForYouModuleType;->Companion:Lorg/wikipedia/settings/homefeed/ForYouModuleType$Companion;

    .line 219
    .line 220
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    move v11, v5

    .line 224
    invoke-static {}, Lorg/wikipedia/settings/homefeed/ForYouModuleType$Companion;->entries()Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    or-int/2addr v12, v14

    .line 237
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    if-nez v12, :cond_9

    .line 242
    .line 243
    if-ne v14, v6, :cond_8

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    move-object/from16 v24, v15

    .line 247
    .line 248
    move-object v15, v8

    .line 249
    move-object/from16 v8, v24

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    :goto_5
    new-instance v14, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;

    .line 253
    .line 254
    const/16 v19, 0x0

    .line 255
    .line 256
    move-object/from16 v16, v8

    .line 257
    .line 258
    invoke-direct/range {v14 .. v19}, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/settings/homefeed/ModulesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 259
    .line 260
    .line 261
    move-object v8, v15

    .line 262
    move-object/from16 v15, v16

    .line 263
    .line 264
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :goto_6
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 268
    .line 269
    and-int/lit8 v12, v0, 0x70

    .line 270
    .line 271
    if-ne v12, v3, :cond_a

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_a
    move v11, v13

    .line 275
    :goto_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    if-nez v11, :cond_b

    .line 280
    .line 281
    if-ne v3, v6, :cond_c

    .line 282
    .line 283
    :cond_b
    new-instance v3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    .line 284
    .line 285
    const/4 v11, 0x5

    .line 286
    invoke-direct {v3, v11, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 293
    .line 294
    shl-int/lit8 v0, v0, 0xc

    .line 295
    .line 296
    const/high16 v11, 0x380000

    .line 297
    .line 298
    and-int/2addr v11, v0

    .line 299
    const/4 v12, 0x0

    .line 300
    move-object v0, v6

    .line 301
    move-object v6, v1

    .line 302
    move-object v1, v8

    .line 303
    move-object v8, v3

    .line 304
    move-object v3, v4

    .line 305
    move-object v4, v7

    .line 306
    move-object v7, v14

    .line 307
    move-object v14, v0

    .line 308
    move-object/from16 v0, v18

    .line 309
    .line 310
    invoke-static/range {v3 .. v12}, Lorg/wikipedia/compose/components/TabsBoxKt;->ToggleListScreen(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 311
    .line 312
    .line 313
    move-object v3, v10

    .line 314
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 315
    .line 316
    .line 317
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Ljava/lang/Boolean;

    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_12

    .line 328
    .line 329
    const v4, -0x5f324d3f

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 333
    .line 334
    .line 335
    const v4, 0x7f1202ac

    .line 336
    .line 337
    .line 338
    invoke-static {v4, v3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    const v5, 0x7f12029f

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    const v6, 0x7f12029e

    .line 350
    .line 351
    .line 352
    invoke-static {v6, v3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    const/high16 v6, 0x1040000

    .line 357
    .line 358
    invoke-static {v6, v3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v16

    .line 362
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    if-ne v6, v14, :cond_d

    .line 367
    .line 368
    new-instance v6, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 369
    .line 370
    const/16 v7, 0xa

    .line 371
    .line 372
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_d
    move-object/from16 v18, v6

    .line 379
    .line 380
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 381
    .line 382
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    if-nez v6, :cond_e

    .line 391
    .line 392
    if-ne v7, v14, :cond_f

    .line 393
    .line 394
    :cond_e
    new-instance v7, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda3;

    .line 395
    .line 396
    invoke-direct {v7, v1, v0, v13}, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_f
    move-object/from16 v19, v7

    .line 403
    .line 404
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 405
    .line 406
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    or-int/2addr v6, v7

    .line 415
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    if-nez v6, :cond_11

    .line 420
    .line 421
    if-ne v7, v14, :cond_10

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_10
    move-object v1, v15

    .line 425
    goto :goto_a

    .line 426
    :cond_11
    :goto_9
    new-instance v6, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;

    .line 427
    .line 428
    const/4 v11, 0x0

    .line 429
    move-object v9, v0

    .line 430
    move-object v7, v1

    .line 431
    move-object v8, v15

    .line 432
    move-object/from16 v10, v17

    .line 433
    .line 434
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lorg/wikipedia/settings/homefeed/ModulesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 435
    .line 436
    .line 437
    move-object v1, v8

    .line 438
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    move-object v7, v6

    .line 442
    :goto_a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 443
    .line 444
    const/16 v22, 0x180

    .line 445
    .line 446
    const/16 v23, 0xaed

    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    move-object/from16 v17, v18

    .line 450
    .line 451
    move-object/from16 v18, v19

    .line 452
    .line 453
    move-object/from16 v19, v7

    .line 454
    .line 455
    move-object v7, v5

    .line 456
    const/4 v5, 0x0

    .line 457
    const/4 v6, 0x0

    .line 458
    const/4 v8, 0x0

    .line 459
    const/4 v9, 0x0

    .line 460
    const/4 v10, 0x0

    .line 461
    move-object v11, v12

    .line 462
    move v0, v13

    .line 463
    const-wide/16 v12, 0x0

    .line 464
    .line 465
    move-object/from16 v14, v16

    .line 466
    .line 467
    const-wide/16 v15, 0x0

    .line 468
    .line 469
    const/16 v21, 0x0

    .line 470
    .line 471
    move-object/from16 v20, p3

    .line 472
    .line 473
    invoke-static/range {v3 .. v23}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikipediaAlertDialog-sK9R1Co(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ILjava/lang/String;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JLjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 474
    .line 475
    .line 476
    move-object/from16 v10, v20

    .line 477
    .line 478
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 479
    .line 480
    .line 481
    goto :goto_b

    .line 482
    :cond_12
    move-object v10, v3

    .line 483
    move v0, v13

    .line 484
    move-object v1, v15

    .line 485
    const v3, -0x5f240130

    .line 486
    .line 487
    .line 488
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_13
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 496
    .line 497
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :cond_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 502
    .line 503
    .line 504
    move-object/from16 v1, p0

    .line 505
    .line 506
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    if-eqz v6, :cond_15

    .line 511
    .line 512
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 513
    .line 514
    const/16 v5, 0x17

    .line 515
    .line 516
    move-object/from16 v3, p2

    .line 517
    .line 518
    move/from16 v4, p4

    .line 519
    .line 520
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 521
    .line 522
    .line 523
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 524
    .line 525
    :cond_15
    return-void
.end method

.method public static final OnThisDayGameCardCompleted(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v7, p8

    .line 2
    .line 3
    move/from16 v10, p9

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v0, 0x3e5a4a78

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    and-int/lit8 v0, v10, 0x6

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    move-object/from16 v0, p0

    .line 31
    .line 32
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x2

    .line 41
    :goto_0
    or-int/2addr v1, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object/from16 v0, p0

    .line 44
    .line 45
    move v1, v10

    .line 46
    :goto_1
    and-int/lit8 v2, v10, 0x30

    .line 47
    .line 48
    move/from16 v12, p1

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v2, 0x10

    .line 62
    .line 63
    :goto_2
    or-int/2addr v1, v2

    .line 64
    :cond_3
    and-int/lit16 v2, v10, 0x180

    .line 65
    .line 66
    move-object/from16 v15, p2

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    const/16 v2, 0x100

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    const/16 v2, 0x80

    .line 80
    .line 81
    :goto_3
    or-int/2addr v1, v2

    .line 82
    :cond_5
    and-int/lit16 v2, v10, 0xc00

    .line 83
    .line 84
    move-object/from16 v14, p3

    .line 85
    .line 86
    if-nez v2, :cond_7

    .line 87
    .line 88
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    const/16 v2, 0x800

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    const/16 v2, 0x400

    .line 98
    .line 99
    :goto_4
    or-int/2addr v1, v2

    .line 100
    :cond_7
    and-int/lit16 v2, v10, 0x6000

    .line 101
    .line 102
    move-object/from16 v13, p4

    .line 103
    .line 104
    if-nez v2, :cond_9

    .line 105
    .line 106
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_8

    .line 111
    .line 112
    const/16 v2, 0x4000

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_8
    const/16 v2, 0x2000

    .line 116
    .line 117
    :goto_5
    or-int/2addr v1, v2

    .line 118
    :cond_9
    const/high16 v2, 0x30000

    .line 119
    .line 120
    and-int/2addr v2, v10

    .line 121
    move-object/from16 v6, p5

    .line 122
    .line 123
    if-nez v2, :cond_b

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    const/high16 v2, 0x20000

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_a
    const/high16 v2, 0x10000

    .line 135
    .line 136
    :goto_6
    or-int/2addr v1, v2

    .line 137
    :cond_b
    const/high16 v2, 0x180000

    .line 138
    .line 139
    and-int/2addr v2, v10

    .line 140
    if-nez v2, :cond_d

    .line 141
    .line 142
    move-object/from16 v2, p6

    .line 143
    .line 144
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_c

    .line 149
    .line 150
    const/high16 v3, 0x100000

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_c
    const/high16 v3, 0x80000

    .line 154
    .line 155
    :goto_7
    or-int/2addr v1, v3

    .line 156
    goto :goto_8

    .line 157
    :cond_d
    move-object/from16 v2, p6

    .line 158
    .line 159
    :goto_8
    const/high16 v3, 0xc00000

    .line 160
    .line 161
    and-int/2addr v3, v10

    .line 162
    move-object/from16 v8, p7

    .line 163
    .line 164
    if-nez v3, :cond_f

    .line 165
    .line 166
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_e

    .line 171
    .line 172
    const/high16 v3, 0x800000

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_e
    const/high16 v3, 0x400000

    .line 176
    .line 177
    :goto_9
    or-int/2addr v1, v3

    .line 178
    :cond_f
    const v3, 0x492493

    .line 179
    .line 180
    .line 181
    and-int/2addr v3, v1

    .line 182
    const v4, 0x492492

    .line 183
    .line 184
    .line 185
    if-eq v3, v4, :cond_10

    .line 186
    .line 187
    const/4 v3, 0x1

    .line 188
    goto :goto_a

    .line 189
    :cond_10
    const/4 v3, 0x0

    .line 190
    :goto_a
    and-int/lit8 v4, v1, 0x1

    .line 191
    .line 192
    invoke-virtual {v7, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_11

    .line 197
    .line 198
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 199
    .line 200
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    move-object/from16 v19, v3

    .line 205
    .line 206
    check-cast v19, Landroid/content/Context;

    .line 207
    .line 208
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 209
    .line 210
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 215
    .line 216
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 217
    .line 218
    const/high16 v5, 0x3f000000    # 0.5f

    .line 219
    .line 220
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    new-instance v11, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda5;

    .line 225
    .line 226
    move-object/from16 v18, v2

    .line 227
    .line 228
    move-object/from16 v17, v6

    .line 229
    .line 230
    move-object/from16 v16, v8

    .line 231
    .line 232
    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda5;-><init>(ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    const v2, -0x108a399b

    .line 236
    .line 237
    .line 238
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    and-int/lit8 v1, v1, 0xe

    .line 243
    .line 244
    const v2, 0x180030

    .line 245
    .line 246
    .line 247
    or-int v8, v1, v2

    .line 248
    .line 249
    const/16 v9, 0x34

    .line 250
    .line 251
    const/high16 v1, 0x40000000    # 2.0f

    .line 252
    .line 253
    const/4 v2, 0x0

    .line 254
    const/4 v4, 0x0

    .line 255
    const/4 v5, 0x0

    .line 256
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 257
    .line 258
    .line 259
    goto :goto_b

    .line 260
    :cond_11
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 261
    .line 262
    .line 263
    :goto_b
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    if-eqz v11, :cond_12

    .line 268
    .line 269
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 270
    .line 271
    move-object/from16 v1, p0

    .line 272
    .line 273
    move/from16 v2, p1

    .line 274
    .line 275
    move-object/from16 v3, p2

    .line 276
    .line 277
    move-object/from16 v4, p3

    .line 278
    .line 279
    move-object/from16 v5, p4

    .line 280
    .line 281
    move-object/from16 v6, p5

    .line 282
    .line 283
    move-object/from16 v7, p6

    .line 284
    .line 285
    move-object/from16 v8, p7

    .line 286
    .line 287
    move v9, v10

    .line 288
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 289
    .line 290
    .line 291
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 292
    .line 293
    :cond_12
    return-void
.end method

.method public static final OnThisDayGameCardPreview(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v7, p4

    .line 2
    .line 3
    move/from16 v10, p5

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x338f3d0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v10, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v10

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v0, p0

    .line 35
    .line 36
    move v1, v10

    .line 37
    :goto_1
    and-int/lit8 v2, v10, 0x30

    .line 38
    .line 39
    move-object/from16 v12, p1

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v1, v2

    .line 55
    :cond_3
    and-int/lit16 v2, v10, 0x180

    .line 56
    .line 57
    move-object/from16 v13, p2

    .line 58
    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const/16 v2, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v2, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v2

    .line 73
    :cond_5
    and-int/lit16 v2, v10, 0xc00

    .line 74
    .line 75
    move-object/from16 v14, p3

    .line 76
    .line 77
    if-nez v2, :cond_7

    .line 78
    .line 79
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v2, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v1, v2

    .line 91
    :cond_7
    and-int/lit16 v2, v1, 0x493

    .line 92
    .line 93
    const/16 v3, 0x492

    .line 94
    .line 95
    if-eq v2, v3, :cond_8

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    goto :goto_5

    .line 99
    :cond_8
    const/4 v2, 0x0

    .line 100
    :goto_5
    and-int/lit8 v3, v1, 0x1

    .line 101
    .line 102
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_9

    .line 107
    .line 108
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 109
    .line 110
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move-object v15, v2

    .line 115
    check-cast v15, Landroid/content/Context;

    .line 116
    .line 117
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 118
    .line 119
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 124
    .line 125
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 126
    .line 127
    const/high16 v4, 0x3f000000    # 0.5f

    .line 128
    .line 129
    invoke-static {v4, v2, v3}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    new-instance v11, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    const/16 v16, 0x8

    .line 136
    .line 137
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    const v2, -0x5e70803

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    and-int/lit8 v1, v1, 0xe

    .line 148
    .line 149
    const v2, 0x180030

    .line 150
    .line 151
    .line 152
    or-int v8, v1, v2

    .line 153
    .line 154
    const/16 v9, 0x34

    .line 155
    .line 156
    const/high16 v1, 0x40000000    # 2.0f

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 166
    .line 167
    .line 168
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-eqz v6, :cond_a

    .line 173
    .line 174
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 175
    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    move-object/from16 v2, p1

    .line 179
    .line 180
    move-object/from16 v3, p2

    .line 181
    .line 182
    move-object/from16 v4, p3

    .line 183
    .line 184
    move v5, v10

    .line 185
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 186
    .line 187
    .line 188
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 189
    .line 190
    :cond_a
    return-void
.end method

.method public static final OnThisDayGameCardProgress(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v7, p5

    .line 2
    .line 3
    move/from16 v10, p6

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x35a8b7b3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v10, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v10

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v0, p0

    .line 35
    .line 36
    move v1, v10

    .line 37
    :goto_1
    and-int/lit8 v2, v10, 0x30

    .line 38
    .line 39
    move/from16 v12, p1

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v1, v2

    .line 55
    :cond_3
    and-int/lit16 v2, v10, 0x180

    .line 56
    .line 57
    move-object/from16 v15, p2

    .line 58
    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const/16 v2, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v2, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v2

    .line 73
    :cond_5
    and-int/lit16 v2, v10, 0xc00

    .line 74
    .line 75
    move-object/from16 v14, p3

    .line 76
    .line 77
    if-nez v2, :cond_7

    .line 78
    .line 79
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v2, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v1, v2

    .line 91
    :cond_7
    and-int/lit16 v2, v10, 0x6000

    .line 92
    .line 93
    move-object/from16 v13, p4

    .line 94
    .line 95
    if-nez v2, :cond_9

    .line 96
    .line 97
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_8

    .line 102
    .line 103
    const/16 v2, 0x4000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/16 v2, 0x2000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v1, v2

    .line 109
    :cond_9
    and-int/lit16 v2, v1, 0x2493

    .line 110
    .line 111
    const/16 v3, 0x2492

    .line 112
    .line 113
    if-eq v2, v3, :cond_a

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const/4 v2, 0x0

    .line 118
    :goto_6
    and-int/lit8 v3, v1, 0x1

    .line 119
    .line 120
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_b

    .line 125
    .line 126
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    move-object/from16 v16, v2

    .line 133
    .line 134
    check-cast v16, Landroid/content/Context;

    .line 135
    .line 136
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 143
    .line 144
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 145
    .line 146
    const/high16 v4, 0x3f000000    # 0.5f

    .line 147
    .line 148
    invoke-static {v4, v2, v3}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    new-instance v11, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    invoke-direct/range {v11 .. v16}, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    const v2, -0x2a551fa0

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    and-int/lit8 v1, v1, 0xe

    .line 165
    .line 166
    const v2, 0x180030

    .line 167
    .line 168
    .line 169
    or-int v8, v1, v2

    .line 170
    .line 171
    const/16 v9, 0x34

    .line 172
    .line 173
    const/high16 v1, 0x40000000    # 2.0f

    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    if-eqz v7, :cond_c

    .line 190
    .line 191
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 192
    .line 193
    move-object/from16 v1, p0

    .line 194
    .line 195
    move/from16 v2, p1

    .line 196
    .line 197
    move-object/from16 v3, p2

    .line 198
    .line 199
    move-object/from16 v4, p3

    .line 200
    .line 201
    move-object/from16 v5, p4

    .line 202
    .line 203
    move v6, v10

    .line 204
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;ZLorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 205
    .line 206
    .line 207
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    :cond_c
    return-void
.end method

.method public static final OnThisDayGameCardSimple-T042LqI(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    move/from16 v10, p7

    .line 4
    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, -0x545c0cfe

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v10, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v10

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v0, p0

    .line 35
    .line 36
    move v1, v10

    .line 37
    :goto_1
    and-int/lit8 v2, v10, 0x30

    .line 38
    .line 39
    move/from16 v13, p1

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v1, v2

    .line 55
    :cond_3
    and-int/lit16 v2, v10, 0x180

    .line 56
    .line 57
    move-wide/from16 v14, p2

    .line 58
    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const/16 v2, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v2, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v2

    .line 73
    :cond_5
    and-int/lit16 v2, v10, 0xc00

    .line 74
    .line 75
    move-object/from16 v5, p4

    .line 76
    .line 77
    if-nez v2, :cond_7

    .line 78
    .line 79
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v2, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v1, v2

    .line 91
    :cond_7
    and-int/lit16 v2, v10, 0x6000

    .line 92
    .line 93
    move-object/from16 v12, p5

    .line 94
    .line 95
    if-nez v2, :cond_9

    .line 96
    .line 97
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_8

    .line 102
    .line 103
    const/16 v2, 0x4000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/16 v2, 0x2000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v1, v2

    .line 109
    :cond_9
    and-int/lit16 v2, v1, 0x2493

    .line 110
    .line 111
    const/16 v3, 0x2492

    .line 112
    .line 113
    if-eq v2, v3, :cond_a

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const/4 v2, 0x0

    .line 118
    :goto_6
    and-int/lit8 v3, v1, 0x1

    .line 119
    .line 120
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_b

    .line 125
    .line 126
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 133
    .line 134
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 135
    .line 136
    const/high16 v4, 0x3f000000    # 0.5f

    .line 137
    .line 138
    invoke-static {v4, v2, v3}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v11, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    move-object/from16 v16, v5

    .line 145
    .line 146
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;IJLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const v2, -0x6f3b8b8b

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    and-int/lit8 v1, v1, 0xe

    .line 157
    .line 158
    const v2, 0x180030

    .line 159
    .line 160
    .line 161
    or-int v8, v1, v2

    .line 162
    .line 163
    const/16 v9, 0x34

    .line 164
    .line 165
    const/high16 v1, 0x40000000    # 2.0f

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    const/4 v4, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 171
    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 175
    .line 176
    .line 177
    :goto_7
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    if-eqz v8, :cond_c

    .line 182
    .line 183
    new-instance v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 184
    .line 185
    move-object/from16 v1, p0

    .line 186
    .line 187
    move/from16 v2, p1

    .line 188
    .line 189
    move-wide/from16 v3, p2

    .line 190
    .line 191
    move-object/from16 v5, p4

    .line 192
    .line 193
    move-object/from16 v6, p5

    .line 194
    .line 195
    move v7, v10

    .line 196
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 197
    .line 198
    .line 199
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 200
    .line 201
    :cond_c
    return-void
.end method

.method public static final OnThisDayGameCountdown(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v9, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 13
    .line 14
    iget v10, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const v2, 0x2b4e9326

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v11, 0x2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v11

    .line 35
    :goto_0
    or-int v2, p4, v2

    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v2, v3

    .line 49
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v3, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v2, v3

    .line 61
    and-int/lit16 v3, v2, 0x93

    .line 62
    .line 63
    const/16 v5, 0x92

    .line 64
    .line 65
    const/4 v12, 0x1

    .line 66
    const/4 v13, 0x0

    .line 67
    if-eq v3, v5, :cond_3

    .line 68
    .line 69
    move v3, v12

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v3, v13

    .line 72
    :goto_3
    and-int/2addr v2, v12

    .line 73
    invoke-virtual {v8, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 89
    .line 90
    if-ne v2, v5, :cond_4

    .line 91
    .line 92
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-wide/16 v6, 0x1

    .line 101
    .line 102
    invoke-virtual {v5, v6, v7}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    sget-object v6, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    .line 107
    .line 108
    invoke-static {v5, v6}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v2, v5}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v5, v2

    .line 127
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 130
    .line 131
    const/16 v7, 0xe

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    invoke-direct/range {v2 .. v7}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    invoke-static {v8, v3, v2}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    const v2, -0x531f65a6

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 148
    .line 149
    .line 150
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    new-array v4, v11, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v2, v4, v13

    .line 161
    .line 162
    aput-object v3, v4, v12

    .line 163
    .line 164
    const v2, 0x7f1204ca

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v4, v8}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    const v2, -0x531d3d57

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLocale:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 190
    .line 191
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Landroidx/compose/ui/text/intl/Locale;

    .line 196
    .line 197
    iget-object v4, v4, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 198
    .line 199
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Lj$/time/Duration;

    .line 204
    .line 205
    invoke-virtual {v6}, Lj$/time/Duration;->toHoursPart()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    check-cast v7, Lj$/time/Duration;

    .line 218
    .line 219
    invoke-virtual {v7}, Lj$/time/Duration;->toMinutesPart()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Lj$/time/Duration;

    .line 232
    .line 233
    invoke-virtual {v5}, Lj$/time/Duration;->toSecondsPart()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const/4 v9, 0x3

    .line 242
    new-array v10, v9, [Ljava/lang/Object;

    .line 243
    .line 244
    aput-object v6, v10, v13

    .line 245
    .line 246
    aput-object v7, v10, v12

    .line 247
    .line 248
    aput-object v5, v10, v11

    .line 249
    .line 250
    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    const-string v6, "%02d:%02d:%02d"

    .line 255
    .line 256
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    new-array v5, v9, [Ljava/lang/Object;

    .line 261
    .line 262
    aput-object v2, v5, v13

    .line 263
    .line 264
    aput-object v3, v5, v12

    .line 265
    .line 266
    aput-object v4, v5, v11

    .line 267
    .line 268
    const v2, 0x7f1204c9

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v5, v8}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 276
    .line 277
    .line 278
    :goto_4
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 279
    .line 280
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 285
    .line 286
    iget-wide v4, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 287
    .line 288
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 289
    .line 290
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 295
    .line 296
    iget-object v14, v3, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 297
    .line 298
    const/16 v3, 0x18

    .line 299
    .line 300
    invoke-static {v3}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 301
    .line 302
    .line 303
    move-result-wide v23

    .line 304
    invoke-static {v13}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v21

    .line 308
    const/16 v25, 0x0

    .line 309
    .line 310
    const v26, 0xfdff7f

    .line 311
    .line 312
    .line 313
    const-wide/16 v15, 0x0

    .line 314
    .line 315
    const-wide/16 v17, 0x0

    .line 316
    .line 317
    const/16 v19, 0x0

    .line 318
    .line 319
    const/16 v20, 0x0

    .line 320
    .line 321
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 322
    .line 323
    .line 324
    move-result-object v21

    .line 325
    const/16 v24, 0x0

    .line 326
    .line 327
    const v25, 0x1fff8

    .line 328
    .line 329
    .line 330
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    const-wide/16 v7, 0x0

    .line 334
    .line 335
    const/4 v9, 0x0

    .line 336
    const/4 v10, 0x0

    .line 337
    const-wide/16 v11, 0x0

    .line 338
    .line 339
    const/4 v13, 0x0

    .line 340
    const-wide/16 v14, 0x0

    .line 341
    .line 342
    const/16 v16, 0x0

    .line 343
    .line 344
    const/16 v17, 0x0

    .line 345
    .line 346
    const/16 v18, 0x0

    .line 347
    .line 348
    const/16 v19, 0x0

    .line 349
    .line 350
    const/16 v23, 0x30

    .line 351
    .line 352
    move-object/from16 v22, p3

    .line 353
    .line 354
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 359
    .line 360
    .line 361
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    if-eqz v2, :cond_7

    .line 366
    .line 367
    new-instance v3, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;

    .line 368
    .line 369
    move-object/from16 v4, p2

    .line 370
    .line 371
    move/from16 v5, p4

    .line 372
    .line 373
    invoke-direct {v3, v0, v1, v4, v5}, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;ZLkotlin/jvm/functions/Function0;I)V

    .line 374
    .line 375
    .line 376
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 377
    .line 378
    :cond_7
    return-void
.end method

.method public static final OnThisDayGameFirstEventView(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Landroidx/compose/runtime/GapComposer;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v2, -0x6ed53778

    .line 11
    .line 12
    .line 13
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    :goto_0
    or-int v2, p3, v2

    .line 26
    .line 27
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v3, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v2, v3

    .line 40
    and-int/lit8 v3, v2, 0x13

    .line 41
    .line 42
    const/16 v5, 0x12

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    if-eq v3, v5, :cond_2

    .line 47
    .line 48
    move v3, v7

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v3, v6

    .line 51
    :goto_2
    and-int/2addr v2, v7

    .line 52
    invoke-virtual {v10, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_a

    .line 57
    .line 58
    const/high16 v2, 0x41800000    # 16.0f

    .line 59
    .line 60
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 65
    .line 66
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v9, 0xa

    .line 69
    .line 70
    invoke-direct {v8, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v5, v2, v7, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 74
    .line 75
    .line 76
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 77
    .line 78
    const/4 v8, 0x6

    .line 79
    invoke-static {v5, v2, v10, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 84
    .line 85
    ushr-long v4, v8, v4

    .line 86
    .line 87
    xor-long/2addr v4, v8

    .line 88
    long-to-int v4, v4

    .line 89
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v10, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 103
    .line 104
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 105
    .line 106
    .line 107
    iget-boolean v9, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 108
    .line 109
    if-eqz v9, :cond_3

    .line 110
    .line 111
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 116
    .line 117
    .line 118
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 119
    .line 120
    invoke-static {v10, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v10, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {v10, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 138
    .line 139
    invoke-static {v10, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    const/high16 v4, 0x3f800000    # 1.0f

    .line 145
    .line 146
    invoke-static {v10, v3, v2, v4, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v2, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 151
    .line 152
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 153
    .line 154
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 159
    .line 160
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 161
    .line 162
    sget-object v8, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Landroidx/compose/material3/Typography;

    .line 169
    .line 170
    iget-object v11, v8, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 171
    .line 172
    const/16 v8, 0x18

    .line 173
    .line 174
    invoke-static {v8}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v20

    .line 178
    invoke-static {v6}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v18

    .line 182
    const/16 v22, 0x0

    .line 183
    .line 184
    const v23, 0xfdff7f

    .line 185
    .line 186
    .line 187
    const-wide/16 v12, 0x0

    .line 188
    .line 189
    const-wide/16 v14, 0x0

    .line 190
    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    const/16 v17, 0x0

    .line 194
    .line 195
    invoke-static/range {v11 .. v23}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 196
    .line 197
    .line 198
    move-result-object v21

    .line 199
    const/16 v24, 0x6180

    .line 200
    .line 201
    const v25, 0x1aff8

    .line 202
    .line 203
    .line 204
    move v8, v6

    .line 205
    const/4 v6, 0x0

    .line 206
    move v11, v7

    .line 207
    move v9, v8

    .line 208
    const-wide/16 v7, 0x0

    .line 209
    .line 210
    move v12, v9

    .line 211
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 213
    move v14, v11

    .line 214
    move v13, v12

    .line 215
    const-wide/16 v11, 0x0

    .line 216
    .line 217
    move v15, v13

    .line 218
    const/4 v13, 0x0

    .line 219
    move/from16 v17, v14

    .line 220
    .line 221
    move/from16 v16, v15

    .line 222
    .line 223
    const-wide/16 v14, 0x0

    .line 224
    .line 225
    move/from16 v18, v16

    .line 226
    .line 227
    const/16 v16, 0x2

    .line 228
    .line 229
    move/from16 v19, v17

    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    move/from16 v20, v18

    .line 234
    .line 235
    const/16 v18, 0x3

    .line 236
    .line 237
    move/from16 v22, v19

    .line 238
    .line 239
    const/16 v19, 0x0

    .line 240
    .line 241
    move/from16 v23, v20

    .line 242
    .line 243
    const/16 v20, 0x0

    .line 244
    .line 245
    move/from16 v26, v23

    .line 246
    .line 247
    const/16 v23, 0x0

    .line 248
    .line 249
    move-object/from16 v22, p2

    .line 250
    .line 251
    move/from16 v0, v26

    .line 252
    .line 253
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v10, v22

    .line 257
    .line 258
    iget-object v2, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    const/4 v4, 0x0

    .line 269
    if-eqz v3, :cond_5

    .line 270
    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    move-object v5, v3

    .line 276
    check-cast v5, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 277
    .line 278
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    if-eqz v5, :cond_4

    .line 283
    .line 284
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-nez v5, :cond_6

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_5
    move-object v3, v4

    .line 292
    :cond_6
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 293
    .line 294
    if-eqz v3, :cond_7

    .line 295
    .line 296
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    :cond_7
    move-object v12, v4

    .line 301
    if-nez v12, :cond_8

    .line 302
    .line 303
    const v2, 0x438b2df8

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 310
    .line 311
    .line 312
    :goto_5
    const/4 v14, 0x1

    .line 313
    goto :goto_6

    .line 314
    :cond_8
    const v2, 0x438b2df9

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 318
    .line 319
    .line 320
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 321
    .line 322
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    move-object v11, v2

    .line 327
    check-cast v11, Landroid/content/Context;

    .line 328
    .line 329
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 330
    .line 331
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    sget-object v2, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 335
    .line 336
    const/4 v15, 0x0

    .line 337
    if-eqz v2, :cond_9

    .line 338
    .line 339
    move-object v14, v13

    .line 340
    move-object/from16 v16, v15

    .line 341
    .line 342
    invoke-static/range {v11 .. v16}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 347
    .line 348
    .line 349
    move-result-object v15

    .line 350
    :cond_9
    move-object v2, v15

    .line 351
    new-instance v6, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 352
    .line 353
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 354
    .line 355
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 356
    .line 357
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 362
    .line 363
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 364
    .line 365
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v6, v3}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 369
    .line 370
    .line 371
    const/high16 v3, 0x42900000    # 72.0f

    .line 372
    .line 373
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 374
    .line 375
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    const/high16 v4, 0x41000000    # 8.0f

    .line 380
    .line 381
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    const/4 v12, 0x6

    .line 390
    const/16 v13, 0x7be8

    .line 391
    .line 392
    const/4 v3, 0x0

    .line 393
    const/4 v5, 0x0

    .line 394
    const/4 v7, 0x0

    .line 395
    const/4 v8, 0x0

    .line 396
    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 397
    .line 398
    const v11, 0x8030

    .line 399
    .line 400
    .line 401
    invoke-static/range {v2 .. v13}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 405
    .line 406
    .line 407
    goto :goto_5

    .line 408
    :goto_6
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 409
    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 413
    .line 414
    .line 415
    :goto_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-eqz v0, :cond_b

    .line 420
    .line 421
    new-instance v2, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 422
    .line 423
    const/4 v3, 0x3

    .line 424
    move-object/from16 v4, p0

    .line 425
    .line 426
    move/from16 v5, p3

    .line 427
    .line 428
    invoke-direct {v2, v4, v1, v5, v3}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 429
    .line 430
    .line 431
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 432
    .line 433
    :cond_b
    return-void
.end method

.method public static final WatchlistExpiryDialogView(Landroidx/compose/ui/Modifier;Ljava/util/List;Lorg/wikipedia/watchlist/WatchlistExpiry;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v14, p4

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v0, 0x73200acf

    .line 19
    .line 20
    .line 21
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p5, v0

    .line 34
    .line 35
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/16 v6, 0x20

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    move v5, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v5, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v5

    .line 48
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    const/16 v5, 0x800

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v5, 0x400

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v5

    .line 60
    and-int/lit16 v5, v0, 0x493

    .line 61
    .line 62
    const/16 v8, 0x492

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    if-eq v5, v8, :cond_3

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move v5, v9

    .line 70
    :goto_3
    and-int/lit8 v8, v0, 0x1

    .line 71
    .line 72
    invoke-virtual {v14, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_a

    .line 77
    .line 78
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 83
    .line 84
    if-ne v5, v8, :cond_4

    .line 85
    .line 86
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 94
    .line 95
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 96
    .line 97
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 98
    .line 99
    invoke-static {v11, v12, v14, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 104
    .line 105
    ushr-long v15, v12, v6

    .line 106
    .line 107
    xor-long/2addr v12, v15

    .line 108
    long-to-int v12, v12

    .line 109
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 118
    .line 119
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move/from16 v16, v6

    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 125
    .line 126
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 127
    .line 128
    .line 129
    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 130
    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 138
    .line 139
    .line 140
    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {v14, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 146
    .line 147
    invoke-static {v14, v13, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 155
    .line 156
    invoke-static {v14, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 160
    .line 161
    invoke-static {v14, v12}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 162
    .line 163
    .line 164
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v14, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    const/high16 v15, 0x3f800000    # 1.0f

    .line 170
    .line 171
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 172
    .line 173
    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 178
    .line 179
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v21

    .line 183
    move-object/from16 v1, v21

    .line 184
    .line 185
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 186
    .line 187
    move-object/from16 v21, v5

    .line 188
    .line 189
    iget-wide v4, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 190
    .line 191
    sget-object v1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 192
    .line 193
    invoke-static {v15, v4, v5, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const/high16 v4, 0x42400000    # 48.0f

    .line 198
    .line 199
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/high16 v4, 0x41800000    # 16.0f

    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    const/4 v15, 0x2

    .line 207
    invoke-static {v1, v4, v5, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 212
    .line 213
    const/4 v5, 0x0

    .line 214
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    move-object v15, v6

    .line 219
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 220
    .line 221
    ushr-long v22, v5, v16

    .line 222
    .line 223
    xor-long v5, v5, v22

    .line 224
    .line 225
    long-to-int v5, v5

    .line 226
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 235
    .line 236
    .line 237
    move-object/from16 v16, v8

    .line 238
    .line 239
    iget-boolean v8, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 240
    .line 241
    if-eqz v8, :cond_6

    .line 242
    .line 243
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 248
    .line 249
    .line 250
    :goto_5
    invoke-static {v14, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v14, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v14, v13, v14, v12}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v14, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 263
    .line 264
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    .line 265
    .line 266
    invoke-virtual {v1, v9, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    const v1, 0x7f120a07

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 278
    .line 279
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 284
    .line 285
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 286
    .line 287
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 292
    .line 293
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 294
    .line 295
    const/16 v27, 0x0

    .line 296
    .line 297
    const v28, 0x1fff8

    .line 298
    .line 299
    .line 300
    const/4 v9, 0x0

    .line 301
    const-wide/16 v10, 0x0

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    const/4 v13, 0x0

    .line 305
    const-wide/16 v14, 0x0

    .line 306
    .line 307
    move-object/from16 v3, v16

    .line 308
    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    const/16 v4, 0x800

    .line 312
    .line 313
    const/16 v20, 0x1

    .line 314
    .line 315
    const-wide/16 v17, 0x0

    .line 316
    .line 317
    const/16 v22, 0x0

    .line 318
    .line 319
    const/16 v19, 0x0

    .line 320
    .line 321
    move/from16 v23, v20

    .line 322
    .line 323
    const/16 v20, 0x0

    .line 324
    .line 325
    move-object/from16 v24, v21

    .line 326
    .line 327
    const/16 v21, 0x0

    .line 328
    .line 329
    move/from16 v25, v22

    .line 330
    .line 331
    const/16 v22, 0x0

    .line 332
    .line 333
    move/from16 v26, v23

    .line 334
    .line 335
    const/16 v23, 0x0

    .line 336
    .line 337
    move/from16 v29, v26

    .line 338
    .line 339
    const/16 v26, 0x0

    .line 340
    .line 341
    move-object/from16 v25, p4

    .line 342
    .line 343
    move-object/from16 v30, v3

    .line 344
    .line 345
    move-object/from16 v3, v24

    .line 346
    .line 347
    move-object/from16 v24, v1

    .line 348
    .line 349
    move/from16 v1, v29

    .line 350
    .line 351
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v14, v25

    .line 355
    .line 356
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    and-int/lit16 v0, v0, 0x1c00

    .line 364
    .line 365
    if-ne v0, v4, :cond_7

    .line 366
    .line 367
    move v9, v1

    .line 368
    goto :goto_6

    .line 369
    :cond_7
    const/4 v9, 0x0

    .line 370
    :goto_6
    or-int v0, v5, v9

    .line 371
    .line 372
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    if-nez v0, :cond_9

    .line 377
    .line 378
    move-object/from16 v0, v30

    .line 379
    .line 380
    if-ne v4, v0, :cond_8

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_8
    move-object/from16 v0, p3

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_9
    :goto_7
    new-instance v4, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;

    .line 387
    .line 388
    move-object/from16 v0, p3

    .line 389
    .line 390
    invoke-direct {v4, v2, v0, v3, v1}, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :goto_8
    move-object v13, v4

    .line 397
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 398
    .line 399
    const/4 v15, 0x0

    .line 400
    const/16 v16, 0x1ff

    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    const/4 v6, 0x0

    .line 404
    const/4 v7, 0x0

    .line 405
    const/4 v8, 0x0

    .line 406
    const/4 v9, 0x0

    .line 407
    const/4 v10, 0x0

    .line 408
    const/4 v11, 0x0

    .line 409
    const/4 v12, 0x0

    .line 410
    invoke-static/range {v5 .. v16}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 414
    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_a
    move-object v0, v4

    .line 418
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 419
    .line 420
    .line 421
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    if-eqz v7, :cond_b

    .line 426
    .line 427
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 428
    .line 429
    const/16 v6, 0x11

    .line 430
    .line 431
    move-object/from16 v1, p0

    .line 432
    .line 433
    move-object/from16 v3, p2

    .line 434
    .line 435
    move-object/from16 v4, p3

    .line 436
    .line 437
    move/from16 v5, p5

    .line 438
    .line 439
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    .line 440
    .line 441
    .line 442
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 443
    .line 444
    :cond_b
    return-void
.end method

.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v10, :cond_11

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_0
    if-ge v4, v10, :cond_1

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lokio/ByteString;

    .line 25
    .line 26
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v6, v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lokio/ByteString;

    .line 44
    .line 45
    add-int/lit8 v4, v10, -0x1

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lokio/ByteString;

    .line 52
    .line 53
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v1, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lokio/ByteString;

    .line 76
    .line 77
    move-object/from16 v19, v6

    .line 78
    .line 79
    move v6, v2

    .line 80
    move v2, v3

    .line 81
    move-object/from16 v3, v19

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v6, v2

    .line 85
    const/4 v2, -0x1

    .line 86
    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const-wide/16 v14, 0x2

    .line 95
    .line 96
    if-eq v7, v9, :cond_c

    .line 97
    .line 98
    add-int/lit8 v3, v6, 0x1

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    :goto_2
    if-ge v3, v10, :cond_4

    .line 102
    .line 103
    add-int/lit8 v7, v3, -0x1

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lokio/ByteString;

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Lokio/ByteString;

    .line 120
    .line 121
    invoke-virtual {v9, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eq v7, v9, :cond_3

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const/16 v16, -0x1

    .line 133
    .line 134
    const-wide/16 v17, 0x4

    .line 135
    .line 136
    iget-wide v11, v0, Lokio/Buffer;->size:J

    .line 137
    .line 138
    div-long v11, v11, v17

    .line 139
    .line 140
    add-long v11, v11, p0

    .line 141
    .line 142
    add-long/2addr v11, v14

    .line 143
    mul-int/lit8 v3, v4, 0x2

    .line 144
    .line 145
    int-to-long v13, v3

    .line 146
    add-long/2addr v11, v13

    .line 147
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    move v2, v6

    .line 154
    :goto_3
    if-ge v2, v10, :cond_7

    .line 155
    .line 156
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lokio/ByteString;

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eq v2, v6, :cond_5

    .line 167
    .line 168
    add-int/lit8 v4, v2, -0x1

    .line 169
    .line 170
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lokio/ByteString;

    .line 175
    .line 176
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eq v3, v4, :cond_6

    .line 181
    .line 182
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    new-instance v4, Lokio/Buffer;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    move v7, v6

    .line 196
    :goto_4
    if-ge v7, v10, :cond_b

    .line 197
    .line 198
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lokio/ByteString;

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    add-int/lit8 v3, v7, 0x1

    .line 209
    .line 210
    move v6, v3

    .line 211
    :goto_5
    if-ge v6, v10, :cond_9

    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    check-cast v9, Lokio/ByteString;

    .line 218
    .line 219
    invoke-virtual {v9, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eq v2, v9, :cond_8

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    move v6, v10

    .line 230
    :goto_6
    if-ne v3, v6, :cond_a

    .line 231
    .line 232
    add-int/lit8 v2, v1, 0x1

    .line 233
    .line 234
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Lokio/ByteString;

    .line 239
    .line 240
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-ne v2, v3, :cond_a

    .line 245
    .line 246
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 257
    .line 258
    .line 259
    move-object v9, v8

    .line 260
    move-wide v2, v11

    .line 261
    move v8, v6

    .line 262
    goto :goto_7

    .line 263
    :cond_a
    iget-wide v2, v4, Lokio/Buffer;->size:J

    .line 264
    .line 265
    div-long v2, v2, v17

    .line 266
    .line 267
    add-long/2addr v2, v11

    .line 268
    long-to-int v2, v2

    .line 269
    mul-int/lit8 v2, v2, -0x1

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v5, v1, 0x1

    .line 275
    .line 276
    move-object v9, v8

    .line 277
    move-wide v2, v11

    .line 278
    move v8, v6

    .line 279
    move-object/from16 v6, p4

    .line 280
    .line 281
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 282
    .line 283
    .line 284
    move-object v5, v6

    .line 285
    :goto_7
    move-wide v11, v2

    .line 286
    move v7, v8

    .line 287
    move-object v8, v9

    .line 288
    goto :goto_4

    .line 289
    :cond_b
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_c
    move-object v9, v8

    .line 294
    const/16 v16, -0x1

    .line 295
    .line 296
    const-wide/16 v17, 0x4

    .line 297
    .line 298
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual {v4}, Lokio/ByteString;->getSize$okio()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    const/4 v8, 0x0

    .line 311
    move v11, v1

    .line 312
    :goto_8
    if-ge v11, v7, :cond_d

    .line 313
    .line 314
    invoke-virtual {v3, v11}, Lokio/ByteString;->internalGet$okio(I)B

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    invoke-virtual {v4, v11}, Lokio/ByteString;->internalGet$okio(I)B

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    if-ne v12, v13, :cond_d

    .line 323
    .line 324
    add-int/lit8 v8, v8, 0x1

    .line 325
    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_d
    iget-wide v11, v0, Lokio/Buffer;->size:J

    .line 330
    .line 331
    div-long v11, v11, v17

    .line 332
    .line 333
    add-long v11, v11, p0

    .line 334
    .line 335
    add-long/2addr v11, v14

    .line 336
    int-to-long v13, v8

    .line 337
    add-long/2addr v11, v13

    .line 338
    const-wide/16 v13, 0x1

    .line 339
    .line 340
    add-long/2addr v11, v13

    .line 341
    neg-int v4, v8

    .line 342
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 346
    .line 347
    .line 348
    add-int v4, v1, v8

    .line 349
    .line 350
    :goto_9
    if-ge v1, v4, :cond_e

    .line 351
    .line 352
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    and-int/lit16 v2, v2, 0xff

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 359
    .line 360
    .line 361
    add-int/lit8 v1, v1, 0x1

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 365
    .line 366
    if-ne v1, v10, :cond_10

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Lokio/ByteString;

    .line 373
    .line 374
    invoke-virtual {v1}, Lokio/ByteString;->getSize$okio()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-ne v4, v1, :cond_f

    .line 379
    .line 380
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Ljava/lang/Number;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_f
    const-string v0, "Check failed."

    .line 395
    .line 396
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_10
    new-instance v3, Lokio/Buffer;

    .line 401
    .line 402
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 403
    .line 404
    .line 405
    iget-wide v1, v3, Lokio/Buffer;->size:J

    .line 406
    .line 407
    div-long v1, v1, v17

    .line 408
    .line 409
    add-long/2addr v1, v11

    .line 410
    long-to-int v1, v1

    .line 411
    mul-int/lit8 v1, v1, -0x1

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 414
    .line 415
    .line 416
    move-object v8, v9

    .line 417
    move v7, v10

    .line 418
    move-wide v1, v11

    .line 419
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_11
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-void
.end method

.method public static calculateCentroid(Ljava/util/List;)Landroid/location/Location;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 35
    .line 36
    iget-object v3, v3, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/util/ArrayList;)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 80
    .line 81
    iget-object v1, v1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-wide v6, v4

    .line 91
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/util/ArrayList;)D

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    new-instance p0, Landroid/location/Location;

    .line 104
    .line 105
    const-string v4, "centroid"

    .line 106
    .line 107
    invoke-direct {p0, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_4
    const-string p0, "Cannot calculate centroid of empty list"

    .line 118
    .line 119
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static clusterLocations(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v6, 0x0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_a

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 34
    .line 35
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-static {v7, v0}, Lokio/Options$Companion;->getNeighbors(Lorg/wikipedia/history/db/HistoryEntryWithImage;Ljava/util/List;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v10, 0x3

    .line 53
    if-ge v9, v10, :cond_1

    .line 54
    .line 55
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v9, Lorg/wikipedia/util/GeoUtil$Cluster;

    .line 60
    .line 61
    add-int/lit8 v11, v6, 0x1

    .line 62
    .line 63
    new-instance v12, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    invoke-direct {v9, v6, v12, v13}, Lorg/wikipedia/util/GeoUtil$Cluster;-><init>(ILjava/util/List;Landroid/location/Location;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ge v6, v7, :cond_8

    .line 81
    .line 82
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 87
    .line 88
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-nez v13, :cond_4

    .line 93
    .line 94
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-static {v7, v0}, Lokio/Options$Companion;->getNeighbors(Lorg/wikipedia/history/db/HistoryEntryWithImage;Ljava/util/List;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-lt v14, v10, :cond_4

    .line 106
    .line 107
    new-instance v14, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-eqz v15, :cond_3

    .line 121
    .line 122
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    move-object v5, v15

    .line 127
    check-cast v5, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 128
    .line 129
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_2

    .line 134
    .line 135
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_7

    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    check-cast v13, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 164
    .line 165
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_6

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    :goto_3
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_9

    .line 183
    .line 184
    invoke-static {v12}, Lokio/Options$Companion;->calculateCentroid(Ljava/util/List;)Landroid/location/Location;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_9
    move v6, v11

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 194
    .line 195
    const/16 v2, 0xa

    .line 196
    .line 197
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lorg/wikipedia/util/GeoUtil$Cluster;

    .line 219
    .line 220
    iget-object v3, v2, Lorg/wikipedia/util/GeoUtil$Cluster;->locations:Ljava/util/List;

    .line 221
    .line 222
    invoke-static {v3}, Lokio/Options$Companion;->calculateCentroid(Ljava/util/List;)Landroid/location/Location;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget v4, v2, Lorg/wikipedia/util/GeoUtil$Cluster;->id:I

    .line 227
    .line 228
    iget-object v2, v2, Lorg/wikipedia/util/GeoUtil$Cluster;->locations:Ljava/util/List;

    .line 229
    .line 230
    new-instance v5, Lorg/wikipedia/util/GeoUtil$Cluster;

    .line 231
    .line 232
    invoke-direct {v5, v4, v2, v3}, Lorg/wikipedia/util/GeoUtil$Cluster;-><init>(ILjava/util/List;Landroid/location/Location;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    return-object v0
.end method

.method public static generateSessionId()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v1, v3, v4

    .line 19
    .line 20
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "%08x"

    .line 25
    .line 26
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    new-array v6, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v5, v6, v4

    .line 41
    .line 42
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const v5, 0xffff

    .line 55
    .line 56
    .line 57
    and-int/2addr v0, v5

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v0, v5, v4

    .line 65
    .line 66
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "%04x"

    .line 71
    .line 72
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v3, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static final getInstrumentActionContext(Ljava/lang/Throwable;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v2, "class"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    instance-of v1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    const-string v3, "code"

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    check-cast v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 40
    .line 41
    iget v1, v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const-string v1, "timeout"

    .line 56
    .line 57
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    instance-of v1, p0, Ljava/net/UnknownHostException;

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    instance-of v1, p0, Ljava/net/SocketException;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    instance-of v1, p0, Lorg/wikipedia/createaccount/CreateAccountException;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    move-object v1, p0

    .line 75
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountException;

    .line 76
    .line 77
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountException;->messageCode:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    instance-of v1, p0, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptchaException;->hCaptchaError:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/hcaptcha/sdk/HCaptchaError;->getErrorId()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    instance-of v1, p0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 105
    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    move-object v1, p0

    .line 109
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 110
    .line 111
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 112
    .line 113
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v1, :cond_6

    .line 116
    .line 117
    move-object v1, v2

    .line 118
    :cond_6
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_0
    const-string v1, "network_unavailable"

    .line 123
    .line 124
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_b

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_b

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_9

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-nez p0, :cond_a

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_a
    move-object v2, p0

    .line 154
    :goto_2
    const/16 p0, 0x40

    .line 155
    .line 156
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string v1, "message"

    .line 161
    .line 162
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_b
    :goto_3
    return-object v0
.end method

.method public static getNeighbors(Lorg/wikipedia/history/db/HistoryEntryWithImage;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 22
    .line 23
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-wide v6, v4

    .line 41
    :goto_1
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move-wide v8, v4

    .line 51
    :goto_2
    iget-object v3, v2, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move-wide v10, v4

    .line 61
    :goto_3
    iget-object v2, v2, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    :cond_4
    sub-double v2, v10, v6

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    sub-double/2addr v4, v8

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 81
    .line 82
    div-double/2addr v2, v8

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v10

    .line 103
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    mul-double/2addr v10, v6

    .line 108
    div-double/2addr v4, v8

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    mul-double/2addr v4, v10

    .line 118
    add-double/2addr v4, v2

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 124
    .line 125
    sub-double/2addr v6, v4

    .line 126
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    mul-double/2addr v2, v8

    .line 135
    const-wide v4, 0x40b8e30000000000L    # 6371.0

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    mul-double/2addr v2, v4

    .line 141
    const-wide v4, 0x407f400000000000L    # 500.0

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    cmpg-double v2, v2, v4

    .line 147
    .line 148
    if-gtz v2, :cond_0

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "title"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lokio/Options;

    .line 7
    .line 8
    new-array v0, v2, [Lokio/ByteString;

    .line 9
    .line 10
    filled-new-array {v2, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Lkotlin/collections/ArrayAsCollection;

    .line 21
    .line 22
    invoke-direct {v0, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sort(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-instance v10, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v3, v0, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    array-length v0, p0

    .line 54
    move v1, v2

    .line 55
    move v3, v1

    .line 56
    :goto_1
    if-ge v1, v0, :cond_2

    .line 57
    .line 58
    aget-object v4, p0, v1

    .line 59
    .line 60
    add-int/lit8 v5, v3, 0x1

    .line 61
    .line 62
    invoke-static {v7, v4}, Landroidx/room/Room;->binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v10, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    move v3, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lokio/ByteString;

    .line 82
    .line 83
    invoke-virtual {v0}, Lokio/ByteString;->getSize$okio()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x0

    .line 88
    if-lez v0, :cond_8

    .line 89
    .line 90
    move v0, v2

    .line 91
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-ge v0, v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lokio/ByteString;

    .line 102
    .line 103
    add-int/lit8 v4, v0, 0x1

    .line 104
    .line 105
    move v5, v4

    .line 106
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ge v5, v6, :cond_5

    .line 111
    .line 112
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lokio/ByteString;

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-virtual {v6, v2, v3, v8}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_5

    .line 133
    .line 134
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eq v8, v9, :cond_4

    .line 143
    .line 144
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-le v6, v8, :cond_3

    .line 165
    .line 166
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Ljava/lang/Number;

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    const-string p0, "duplicate option: "

    .line 183
    .line 184
    invoke-static {p0, v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :cond_5
    move v0, v4

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    new-instance v5, Lokio/Buffer;

    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    const-wide/16 v3, 0x0

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    invoke-static/range {v3 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 204
    .line 205
    .line 206
    iget-wide v0, v5, Lokio/Buffer;->size:J

    .line 207
    .line 208
    const-wide/16 v3, 0x4

    .line 209
    .line 210
    div-long/2addr v0, v3

    .line 211
    long-to-int v0, v0

    .line 212
    new-array v1, v0, [I

    .line 213
    .line 214
    :goto_4
    if-ge v2, v0, :cond_7

    .line 215
    .line 216
    invoke-virtual {v5}, Lokio/Buffer;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    aput v3, v1, v2

    .line 221
    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_7
    new-instance v0, Lokio/Options;

    .line 226
    .line 227
    array-length v2, p0

    .line 228
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    check-cast p0, [Lokio/ByteString;

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 235
    .line 236
    .line 237
    return-object v0

    .line 238
    :cond_8
    const-string p0, "the empty byte string is not a supported option"

    .line 239
    .line 240
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v1
.end method

.method public static final stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lokhttp3/internal/UnreadableResponseBody;

    .line 9
    .line 10
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 11
    .line 12
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 24
    .line 25
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static final toAnnotatedString(Landroid/text/Spanned;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-class v3, Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    array-length v3, v2

    .line 32
    move v5, v4

    .line 33
    :goto_0
    if-ge v5, v3, :cond_19

    .line 34
    .line 35
    aget-object v6, v2, v5

    .line 36
    .line 37
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-static {v7, v8}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 53
    .line 54
    const/16 v9, 0x20

    .line 55
    .line 56
    shr-long v9, v7, v9

    .line 57
    .line 58
    long-to-int v9, v9

    .line 59
    const-wide v10, 0xffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v7, v10

    .line 65
    long-to-int v7, v7

    .line 66
    instance-of v8, v6, Landroid/text/style/AbsoluteSizeSpan;

    .line 67
    .line 68
    if-nez v8, :cond_4

    .line 69
    .line 70
    instance-of v8, v6, Landroid/text/style/AlignmentSpan;

    .line 71
    .line 72
    const/16 v10, 0x8

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    iget-object v12, v1, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 76
    .line 77
    const/4 v13, 0x1

    .line 78
    const/4 v14, 0x2

    .line 79
    const/4 v15, 0x3

    .line 80
    if-eqz v8, :cond_5

    .line 81
    .line 82
    check-cast v6, Landroid/text/style/AlignmentSpan;

    .line 83
    .line 84
    invoke-interface {v6}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    if-nez v6, :cond_0

    .line 89
    .line 90
    const/4 v6, -0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    sget-object v8, Lorg/wikipedia/compose/extensions/HtmlKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    aget v6, v8, v6

    .line 99
    .line 100
    :goto_1
    if-eq v6, v13, :cond_2

    .line 101
    .line 102
    if-eq v6, v14, :cond_3

    .line 103
    .line 104
    if-eq v6, v15, :cond_1

    .line 105
    .line 106
    move v15, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    const/4 v15, 0x6

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const/4 v15, 0x5

    .line 111
    :cond_3
    :goto_2
    new-instance v6, Landroidx/compose/ui/text/ParagraphStyle;

    .line 112
    .line 113
    const/16 v8, 0x1fe

    .line 114
    .line 115
    invoke-direct {v6, v15, v11, v8}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(ILandroidx/compose/ui/text/style/TextIndent;I)V

    .line 116
    .line 117
    .line 118
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 119
    .line 120
    invoke-direct {v8, v6, v9, v7, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_3
    move-object/from16 v11, p1

    .line 127
    .line 128
    move-object/from16 v13, p2

    .line 129
    .line 130
    goto/16 :goto_9

    .line 131
    .line 132
    :cond_5
    instance-of v8, v6, Landroid/text/style/BackgroundColorSpan;

    .line 133
    .line 134
    if-eqz v8, :cond_6

    .line 135
    .line 136
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 137
    .line 138
    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v31

    .line 148
    const/16 v34, 0x0

    .line 149
    .line 150
    const v35, 0xf7ff

    .line 151
    .line 152
    .line 153
    const-wide/16 v17, 0x0

    .line 154
    .line 155
    const-wide/16 v19, 0x0

    .line 156
    .line 157
    const/16 v21, 0x0

    .line 158
    .line 159
    const/16 v22, 0x0

    .line 160
    .line 161
    const/16 v23, 0x0

    .line 162
    .line 163
    const/16 v24, 0x0

    .line 164
    .line 165
    const/16 v25, 0x0

    .line 166
    .line 167
    const-wide/16 v26, 0x0

    .line 168
    .line 169
    const/16 v28, 0x0

    .line 170
    .line 171
    const/16 v29, 0x0

    .line 172
    .line 173
    const/16 v30, 0x0

    .line 174
    .line 175
    const/16 v33, 0x0

    .line 176
    .line 177
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 178
    .line 179
    .line 180
    move-object/from16 v6, v16

    .line 181
    .line 182
    invoke-virtual {v1, v6, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    instance-of v8, v6, Landroid/text/style/ForegroundColorSpan;

    .line 187
    .line 188
    if-eqz v8, :cond_7

    .line 189
    .line 190
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 191
    .line 192
    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    .line 193
    .line 194
    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v17

    .line 202
    const/16 v34, 0x0

    .line 203
    .line 204
    const v35, 0xfffe

    .line 205
    .line 206
    .line 207
    const-wide/16 v19, 0x0

    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    const/16 v22, 0x0

    .line 212
    .line 213
    const/16 v23, 0x0

    .line 214
    .line 215
    const/16 v24, 0x0

    .line 216
    .line 217
    const/16 v25, 0x0

    .line 218
    .line 219
    const-wide/16 v26, 0x0

    .line 220
    .line 221
    const/16 v28, 0x0

    .line 222
    .line 223
    const/16 v29, 0x0

    .line 224
    .line 225
    const/16 v30, 0x0

    .line 226
    .line 227
    const-wide/16 v31, 0x0

    .line 228
    .line 229
    const/16 v33, 0x0

    .line 230
    .line 231
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v6, v16

    .line 235
    .line 236
    invoke-virtual {v1, v6, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_7
    instance-of v8, v6, Landroid/text/style/RelativeSizeSpan;

    .line 241
    .line 242
    if-eqz v8, :cond_8

    .line 243
    .line 244
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 245
    .line 246
    check-cast v6, Landroid/text/style/RelativeSizeSpan;

    .line 247
    .line 248
    invoke-virtual {v6}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    const-wide v10, 0x200000000L

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    invoke-static {v6, v10, v11}, Lcoil3/util/ContextsKt;->pack(FJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide v19

    .line 261
    const/16 v34, 0x0

    .line 262
    .line 263
    const v35, 0xfffd

    .line 264
    .line 265
    .line 266
    const-wide/16 v17, 0x0

    .line 267
    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    const/16 v22, 0x0

    .line 271
    .line 272
    const/16 v23, 0x0

    .line 273
    .line 274
    const/16 v24, 0x0

    .line 275
    .line 276
    const/16 v25, 0x0

    .line 277
    .line 278
    const-wide/16 v26, 0x0

    .line 279
    .line 280
    const/16 v28, 0x0

    .line 281
    .line 282
    const/16 v29, 0x0

    .line 283
    .line 284
    const/16 v30, 0x0

    .line 285
    .line 286
    const-wide/16 v31, 0x0

    .line 287
    .line 288
    const/16 v33, 0x0

    .line 289
    .line 290
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v6, v16

    .line 294
    .line 295
    invoke-virtual {v1, v6, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :cond_8
    instance-of v8, v6, Landroid/text/style/StrikethroughSpan;

    .line 301
    .line 302
    if-eqz v8, :cond_9

    .line 303
    .line 304
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 305
    .line 306
    const/16 v34, 0x0

    .line 307
    .line 308
    const v35, 0xefff

    .line 309
    .line 310
    .line 311
    const-wide/16 v17, 0x0

    .line 312
    .line 313
    const-wide/16 v19, 0x0

    .line 314
    .line 315
    const/16 v21, 0x0

    .line 316
    .line 317
    const/16 v22, 0x0

    .line 318
    .line 319
    const/16 v23, 0x0

    .line 320
    .line 321
    const/16 v24, 0x0

    .line 322
    .line 323
    const/16 v25, 0x0

    .line 324
    .line 325
    const-wide/16 v26, 0x0

    .line 326
    .line 327
    const/16 v28, 0x0

    .line 328
    .line 329
    const/16 v29, 0x0

    .line 330
    .line 331
    const/16 v30, 0x0

    .line 332
    .line 333
    const-wide/16 v31, 0x0

    .line 334
    .line 335
    sget-object v33, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 336
    .line 337
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v6, v16

    .line 341
    .line 342
    invoke-virtual {v1, v6, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    :cond_9
    instance-of v8, v6, Landroid/text/style/StyleSpan;

    .line 348
    .line 349
    if-eqz v8, :cond_d

    .line 350
    .line 351
    check-cast v6, Landroid/text/style/StyleSpan;

    .line 352
    .line 353
    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eq v6, v13, :cond_c

    .line 358
    .line 359
    if-eq v6, v14, :cond_b

    .line 360
    .line 361
    if-eq v6, v15, :cond_a

    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :cond_a
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 366
    .line 367
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 368
    .line 369
    new-instance v6, Landroidx/compose/ui/text/font/FontStyle;

    .line 370
    .line 371
    invoke-direct {v6, v13}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 372
    .line 373
    .line 374
    const/16 v34, 0x0

    .line 375
    .line 376
    const v35, 0xfff3

    .line 377
    .line 378
    .line 379
    const-wide/16 v17, 0x0

    .line 380
    .line 381
    const-wide/16 v19, 0x0

    .line 382
    .line 383
    const/16 v23, 0x0

    .line 384
    .line 385
    const/16 v24, 0x0

    .line 386
    .line 387
    const/16 v25, 0x0

    .line 388
    .line 389
    const-wide/16 v26, 0x0

    .line 390
    .line 391
    const/16 v28, 0x0

    .line 392
    .line 393
    const/16 v29, 0x0

    .line 394
    .line 395
    const/16 v30, 0x0

    .line 396
    .line 397
    const-wide/16 v31, 0x0

    .line 398
    .line 399
    const/16 v33, 0x0

    .line 400
    .line 401
    move-object/from16 v22, v6

    .line 402
    .line 403
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v11, v16

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_b
    new-instance v17, Landroidx/compose/ui/text/SpanStyle;

    .line 410
    .line 411
    new-instance v6, Landroidx/compose/ui/text/font/FontStyle;

    .line 412
    .line 413
    invoke-direct {v6, v13}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 414
    .line 415
    .line 416
    const/16 v35, 0x0

    .line 417
    .line 418
    const v36, 0xfff7

    .line 419
    .line 420
    .line 421
    const-wide/16 v18, 0x0

    .line 422
    .line 423
    const-wide/16 v20, 0x0

    .line 424
    .line 425
    const/16 v22, 0x0

    .line 426
    .line 427
    const/16 v24, 0x0

    .line 428
    .line 429
    const/16 v25, 0x0

    .line 430
    .line 431
    const/16 v26, 0x0

    .line 432
    .line 433
    const-wide/16 v27, 0x0

    .line 434
    .line 435
    const/16 v29, 0x0

    .line 436
    .line 437
    const/16 v30, 0x0

    .line 438
    .line 439
    const/16 v31, 0x0

    .line 440
    .line 441
    const-wide/16 v32, 0x0

    .line 442
    .line 443
    const/16 v34, 0x0

    .line 444
    .line 445
    move-object/from16 v23, v6

    .line 446
    .line 447
    invoke-direct/range {v17 .. v36}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 448
    .line 449
    .line 450
    move-object/from16 v11, v17

    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_c
    new-instance v18, Landroidx/compose/ui/text/SpanStyle;

    .line 454
    .line 455
    sget-object v23, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 456
    .line 457
    const/16 v36, 0x0

    .line 458
    .line 459
    const v37, 0xfffb

    .line 460
    .line 461
    .line 462
    const-wide/16 v19, 0x0

    .line 463
    .line 464
    const-wide/16 v21, 0x0

    .line 465
    .line 466
    const/16 v24, 0x0

    .line 467
    .line 468
    const/16 v25, 0x0

    .line 469
    .line 470
    const/16 v26, 0x0

    .line 471
    .line 472
    const/16 v27, 0x0

    .line 473
    .line 474
    const-wide/16 v28, 0x0

    .line 475
    .line 476
    const/16 v30, 0x0

    .line 477
    .line 478
    const/16 v31, 0x0

    .line 479
    .line 480
    const/16 v32, 0x0

    .line 481
    .line 482
    const-wide/16 v33, 0x0

    .line 483
    .line 484
    const/16 v35, 0x0

    .line 485
    .line 486
    invoke-direct/range {v18 .. v37}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 487
    .line 488
    .line 489
    move-object/from16 v11, v18

    .line 490
    .line 491
    :goto_4
    if-eqz v11, :cond_4

    .line 492
    .line 493
    invoke-virtual {v1, v11, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_3

    .line 497
    .line 498
    :cond_d
    instance-of v8, v6, Landroid/text/style/SubscriptSpan;

    .line 499
    .line 500
    if-eqz v8, :cond_e

    .line 501
    .line 502
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 503
    .line 504
    new-instance v6, Landroidx/compose/ui/text/style/BaselineShift;

    .line 505
    .line 506
    const/high16 v8, -0x41000000    # -0.5f

    .line 507
    .line 508
    invoke-direct {v6, v8}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 509
    .line 510
    .line 511
    const/16 v31, 0x0

    .line 512
    .line 513
    const v32, 0xfeff

    .line 514
    .line 515
    .line 516
    const-wide/16 v14, 0x0

    .line 517
    .line 518
    const-wide/16 v16, 0x0

    .line 519
    .line 520
    const/16 v18, 0x0

    .line 521
    .line 522
    const/16 v19, 0x0

    .line 523
    .line 524
    const/16 v20, 0x0

    .line 525
    .line 526
    const/16 v21, 0x0

    .line 527
    .line 528
    const/16 v22, 0x0

    .line 529
    .line 530
    const-wide/16 v23, 0x0

    .line 531
    .line 532
    const/16 v26, 0x0

    .line 533
    .line 534
    const/16 v27, 0x0

    .line 535
    .line 536
    const-wide/16 v28, 0x0

    .line 537
    .line 538
    const/16 v30, 0x0

    .line 539
    .line 540
    move-object/from16 v25, v6

    .line 541
    .line 542
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v13, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :cond_e
    instance-of v8, v6, Landroid/text/style/SuperscriptSpan;

    .line 551
    .line 552
    if-eqz v8, :cond_f

    .line 553
    .line 554
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 555
    .line 556
    new-instance v6, Landroidx/compose/ui/text/style/BaselineShift;

    .line 557
    .line 558
    const/high16 v8, 0x3f000000    # 0.5f

    .line 559
    .line 560
    invoke-direct {v6, v8}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 561
    .line 562
    .line 563
    const/16 v31, 0x0

    .line 564
    .line 565
    const v32, 0xfeff

    .line 566
    .line 567
    .line 568
    const-wide/16 v14, 0x0

    .line 569
    .line 570
    const-wide/16 v16, 0x0

    .line 571
    .line 572
    const/16 v18, 0x0

    .line 573
    .line 574
    const/16 v19, 0x0

    .line 575
    .line 576
    const/16 v20, 0x0

    .line 577
    .line 578
    const/16 v21, 0x0

    .line 579
    .line 580
    const/16 v22, 0x0

    .line 581
    .line 582
    const-wide/16 v23, 0x0

    .line 583
    .line 584
    const/16 v26, 0x0

    .line 585
    .line 586
    const/16 v27, 0x0

    .line 587
    .line 588
    const-wide/16 v28, 0x0

    .line 589
    .line 590
    const/16 v30, 0x0

    .line 591
    .line 592
    move-object/from16 v25, v6

    .line 593
    .line 594
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v13, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_3

    .line 601
    .line 602
    :cond_f
    instance-of v8, v6, Landroid/text/style/TypefaceSpan;

    .line 603
    .line 604
    if-eqz v8, :cond_17

    .line 605
    .line 606
    check-cast v6, Landroid/text/style/TypefaceSpan;

    .line 607
    .line 608
    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    const-string v10, "cursive"

    .line 613
    .line 614
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v10

    .line 618
    if-eqz v10, :cond_10

    .line 619
    .line 620
    sget-object v6, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 621
    .line 622
    :goto_5
    move-object/from16 v20, v6

    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_10
    const-string v10, "monospace"

    .line 626
    .line 627
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v10

    .line 631
    if-eqz v10, :cond_11

    .line 632
    .line 633
    sget-object v6, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 634
    .line 635
    goto :goto_5

    .line 636
    :cond_11
    const-string v10, "sans-serif"

    .line 637
    .line 638
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v10

    .line 642
    if-eqz v10, :cond_12

    .line 643
    .line 644
    sget-object v6, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 645
    .line 646
    goto :goto_5

    .line 647
    :cond_12
    const-string v10, "serif"

    .line 648
    .line 649
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-eqz v8, :cond_13

    .line 654
    .line 655
    sget-object v6, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 656
    .line 657
    goto :goto_5

    .line 658
    :cond_13
    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    if-eqz v6, :cond_16

    .line 663
    .line 664
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-nez v8, :cond_14

    .line 669
    .line 670
    goto :goto_7

    .line 671
    :cond_14
    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 676
    .line 677
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    if-nez v10, :cond_15

    .line 682
    .line 683
    invoke-static {v8, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 684
    .line 685
    .line 686
    move-result-object v8

    .line 687
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    if-nez v8, :cond_15

    .line 692
    .line 693
    goto :goto_6

    .line 694
    :cond_15
    move-object v6, v11

    .line 695
    :goto_6
    if-eqz v6, :cond_16

    .line 696
    .line 697
    new-instance v8, Landroidx/paging/HintHandler;

    .line 698
    .line 699
    const/16 v10, 0xa

    .line 700
    .line 701
    invoke-direct {v8, v10, v6}, Landroidx/paging/HintHandler;-><init>(ILjava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    new-instance v11, Landroidx/compose/ui/text/font/LoadedFontFamily;

    .line 705
    .line 706
    invoke-direct {v11, v8}, Landroidx/compose/ui/text/font/LoadedFontFamily;-><init>(Landroidx/paging/HintHandler;)V

    .line 707
    .line 708
    .line 709
    :cond_16
    :goto_7
    move-object/from16 v20, v11

    .line 710
    .line 711
    :goto_8
    new-instance v12, Landroidx/compose/ui/text/SpanStyle;

    .line 712
    .line 713
    const/16 v30, 0x0

    .line 714
    .line 715
    const v31, 0xffdf

    .line 716
    .line 717
    .line 718
    const-wide/16 v13, 0x0

    .line 719
    .line 720
    const-wide/16 v15, 0x0

    .line 721
    .line 722
    const/16 v17, 0x0

    .line 723
    .line 724
    const/16 v18, 0x0

    .line 725
    .line 726
    const/16 v19, 0x0

    .line 727
    .line 728
    const/16 v21, 0x0

    .line 729
    .line 730
    const-wide/16 v22, 0x0

    .line 731
    .line 732
    const/16 v24, 0x0

    .line 733
    .line 734
    const/16 v25, 0x0

    .line 735
    .line 736
    const/16 v26, 0x0

    .line 737
    .line 738
    const-wide/16 v27, 0x0

    .line 739
    .line 740
    const/16 v29, 0x0

    .line 741
    .line 742
    invoke-direct/range {v12 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v12, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_3

    .line 749
    .line 750
    :cond_17
    instance-of v8, v6, Landroid/text/style/UnderlineSpan;

    .line 751
    .line 752
    if-eqz v8, :cond_18

    .line 753
    .line 754
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 755
    .line 756
    const/16 v31, 0x0

    .line 757
    .line 758
    const v32, 0xefff

    .line 759
    .line 760
    .line 761
    const-wide/16 v14, 0x0

    .line 762
    .line 763
    const-wide/16 v16, 0x0

    .line 764
    .line 765
    const/16 v18, 0x0

    .line 766
    .line 767
    const/16 v19, 0x0

    .line 768
    .line 769
    const/16 v20, 0x0

    .line 770
    .line 771
    const/16 v21, 0x0

    .line 772
    .line 773
    const/16 v22, 0x0

    .line 774
    .line 775
    const-wide/16 v23, 0x0

    .line 776
    .line 777
    const/16 v25, 0x0

    .line 778
    .line 779
    const/16 v26, 0x0

    .line 780
    .line 781
    const/16 v27, 0x0

    .line 782
    .line 783
    const-wide/16 v28, 0x0

    .line 784
    .line 785
    sget-object v30, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 786
    .line 787
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v13, v9, v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_3

    .line 794
    .line 795
    :cond_18
    instance-of v8, v6, Landroid/text/style/URLSpan;

    .line 796
    .line 797
    if-eqz v8, :cond_4

    .line 798
    .line 799
    check-cast v6, Landroid/text/style/URLSpan;

    .line 800
    .line 801
    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    if-eqz v6, :cond_4

    .line 806
    .line 807
    new-instance v8, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 808
    .line 809
    move-object/from16 v11, p1

    .line 810
    .line 811
    move-object/from16 v13, p2

    .line 812
    .line 813
    invoke-direct {v8, v6, v11, v13}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 814
    .line 815
    .line 816
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 817
    .line 818
    invoke-direct {v6, v8, v9, v7, v10}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 825
    .line 826
    goto/16 :goto_0

    .line 827
    .line 828
    :cond_19
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    return-object v0
.end method
