.class public abstract Lorg/minidns/util/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lkotlinx/serialization/encoding/CompositeDecoder;


# direct methods
.method public static final AccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v11, p3

    .line 11
    .line 12
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v0, -0x4d8ceed2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v0, v4, 0x6

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    and-int/lit8 v0, v4, 0x8

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x2

    .line 42
    :goto_1
    or-int/2addr v0, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v0, v4

    .line 45
    :goto_2
    and-int/lit8 v5, v4, 0x30

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    if-nez v5, :cond_4

    .line 49
    .line 50
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    const/16 v5, 0x20

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/16 v5, 0x10

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v5

    .line 62
    :cond_4
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    and-int/lit16 v5, v4, 0xc00

    .line 65
    .line 66
    if-nez v5, :cond_6

    .line 67
    .line 68
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    const/16 v5, 0x800

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    const/16 v5, 0x400

    .line 78
    .line 79
    :goto_4
    or-int/2addr v0, v5

    .line 80
    :cond_6
    or-int/lit16 v0, v0, 0x6000

    .line 81
    .line 82
    and-int/lit16 v5, v0, 0x2493

    .line 83
    .line 84
    const/16 v8, 0x2492

    .line 85
    .line 86
    if-eq v5, v8, :cond_7

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    goto :goto_5

    .line 90
    :cond_7
    move v5, v14

    .line 91
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 92
    .line 93
    invoke-virtual {v11, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_14

    .line 98
    .line 99
    and-int/lit8 v5, v0, 0xe

    .line 100
    .line 101
    invoke-static {v1, v11}, Lkotlin/uuid/UuidKt;->getDisplayAccountColor(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v8

    .line 105
    sget-object v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 106
    .line 107
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 112
    .line 113
    iget-wide v12, v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 114
    .line 115
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 120
    .line 121
    iget-wide v2, v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surface:J

    .line 122
    .line 123
    invoke-virtual {v11, v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    or-int v10, v10, v16

    .line 132
    .line 133
    invoke-virtual {v11, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    or-int v10, v10, v16

    .line 138
    .line 139
    const/16 v16, 0x20

    .line 140
    .line 141
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 146
    .line 147
    if-nez v10, :cond_8

    .line 148
    .line 149
    if-ne v6, v15, :cond_9

    .line 150
    .line 151
    :cond_8
    move-object/from16 p1, v15

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_9
    move-object/from16 p1, v15

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :goto_6
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 158
    .line 159
    invoke-static {v8, v9, v14, v15}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_a

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_a
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-static {v6, v2}, Landroidx/work/Data$Companion;->harmonize(II)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    :goto_7
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 183
    .line 184
    invoke-direct {v6, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :goto_8
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 191
    .line 192
    iget-wide v2, v6, Landroidx/compose/ui/graphics/Color;->value:J

    .line 193
    .line 194
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 195
    .line 196
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    if-nez v8, :cond_b

    .line 211
    .line 212
    move-object/from16 v8, p1

    .line 213
    .line 214
    if-ne v9, v8, :cond_c

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_b
    move-object/from16 v8, p1

    .line 218
    .line 219
    :goto_9
    invoke-static {v2, v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->toColorRoles-DxMtmZc(JLandroid/content/Context;)Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 227
    .line 228
    invoke-static {v1}, Lkotlin/uuid/UuidKt;->getDisplayAccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    .line 233
    .line 234
    const/4 v10, 0x0

    .line 235
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 240
    .line 241
    ushr-long v14, v12, v16

    .line 242
    .line 243
    xor-long/2addr v12, v14

    .line 244
    long-to-int v10, v12

    .line 245
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 250
    .line 251
    invoke-static {v11, v14}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 256
    .line 257
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 261
    .line 262
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 263
    .line 264
    .line 265
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 266
    .line 267
    if-eqz v7, :cond_d

    .line 268
    .line 269
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 270
    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 274
    .line 275
    .line 276
    :goto_a
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 277
    .line 278
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 279
    .line 280
    .line 281
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 282
    .line 283
    invoke-static {v11, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 291
    .line 292
    invoke-static {v11, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 293
    .line 294
    .line 295
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 296
    .line 297
    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 298
    .line 299
    .line 300
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 301
    .line 302
    invoke-static {v11, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    if-nez p2, :cond_e

    .line 306
    .line 307
    const v5, -0x5dadbe7f

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 311
    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 315
    .line 316
    .line 317
    const/4 v5, 0x0

    .line 318
    move-object/from16 v15, p2

    .line 319
    .line 320
    :goto_b
    move-object v10, v5

    .line 321
    goto :goto_12

    .line 322
    :cond_e
    const v7, -0x5dadbe7e

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 326
    .line 327
    .line 328
    and-int/lit16 v7, v0, 0x1c00

    .line 329
    .line 330
    const/16 v9, 0x800

    .line 331
    .line 332
    if-ne v7, v9, :cond_f

    .line 333
    .line 334
    const/4 v7, 0x1

    .line 335
    :goto_c
    const/4 v9, 0x4

    .line 336
    goto :goto_d

    .line 337
    :cond_f
    const/4 v7, 0x0

    .line 338
    goto :goto_c

    .line 339
    :goto_d
    if-eq v5, v9, :cond_11

    .line 340
    .line 341
    and-int/lit8 v5, v0, 0x8

    .line 342
    .line 343
    if-eqz v5, :cond_10

    .line 344
    .line 345
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-eqz v5, :cond_10

    .line 350
    .line 351
    goto :goto_e

    .line 352
    :cond_10
    const/4 v5, 0x0

    .line 353
    goto :goto_f

    .line 354
    :cond_11
    :goto_e
    const/4 v5, 0x1

    .line 355
    :goto_f
    or-int/2addr v5, v7

    .line 356
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    if-nez v5, :cond_13

    .line 361
    .line 362
    if-ne v7, v8, :cond_12

    .line 363
    .line 364
    goto :goto_10

    .line 365
    :cond_12
    move-object/from16 v15, p2

    .line 366
    .line 367
    goto :goto_11

    .line 368
    :cond_13
    :goto_10
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;

    .line 369
    .line 370
    move-object/from16 v15, p2

    .line 371
    .line 372
    const/4 v5, 0x1

    .line 373
    invoke-direct {v7, v15, v1, v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :goto_11
    move-object v5, v7

    .line 380
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 381
    .line 382
    const/4 v10, 0x0

    .line 383
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :goto_12
    shl-int/lit8 v0, v0, 0xc

    .line 388
    .line 389
    const/high16 v5, 0x70000

    .line 390
    .line 391
    and-int/2addr v0, v5

    .line 392
    or-int/lit16 v12, v0, 0x180

    .line 393
    .line 394
    const/16 v13, 0x8

    .line 395
    .line 396
    sget-object v8, Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;->MEDIUM:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 397
    .line 398
    const/4 v9, 0x0

    .line 399
    move-object v5, v6

    .line 400
    move-wide v6, v2

    .line 401
    invoke-static/range {v5 .. v13}, Lorg/jsoup/nodes/NodeUtils;->Avatar-OadGlvw(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 402
    .line 403
    .line 404
    const v0, -0x5da9ed06

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 408
    .line 409
    .line 410
    const/4 v10, 0x0

    .line 411
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 412
    .line 413
    .line 414
    const/4 v5, 0x1

    .line 415
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 416
    .line 417
    .line 418
    move-object v2, v14

    .line 419
    goto :goto_13

    .line 420
    :cond_14
    move-object v15, v3

    .line 421
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 422
    .line 423
    .line 424
    move-object/from16 v2, p1

    .line 425
    .line 426
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    if-eqz v6, :cond_15

    .line 431
    .line 432
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 433
    .line 434
    const/4 v5, 0x7

    .line 435
    move-object v3, v15

    .line 436
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    .line 437
    .line 438
    .line 439
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 440
    .line 441
    :cond_15
    return-void
.end method

.method public static final AutoHeightLazyVerticalGrid-Q2ewo60(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/ui/Modifier;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v4, p5

    .line 5
    .line 6
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0x55fa2a85

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p6, v0

    .line 24
    .line 25
    const/high16 v1, 0x42400000    # 48.0f

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    or-int/lit16 v0, v0, 0x2580

    .line 40
    .line 41
    const v1, 0x12493

    .line 42
    .line 43
    .line 44
    and-int/2addr v1, v0

    .line 45
    const v2, 0x12492

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    move v1, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_2
    and-int/2addr v0, v3

    .line 55
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 62
    .line 63
    .line 64
    and-int/lit8 v0, p6, 0x1

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 76
    .line 77
    .line 78
    move-object v0, p1

    .line 79
    move v6, p2

    .line 80
    move v8, p3

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    :goto_3
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 83
    .line 84
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const/high16 v0, 0x41000000    # 8.0f

    .line 103
    .line 104
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 105
    .line 106
    move v6, v0

    .line 107
    move v8, v6

    .line 108
    move-object v0, v1

    .line 109
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-instance v5, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    move-object v7, p0

    .line 119
    move-object/from16 v10, p4

    .line 120
    .line 121
    invoke-direct/range {v5 .. v10}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;-><init>(FLkotlinx/collections/immutable/ImmutableList;FLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 122
    .line 123
    .line 124
    move v7, v6

    .line 125
    const v1, -0x31beb211

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/16 v5, 0xc06

    .line 133
    .line 134
    const/4 v6, 0x6

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 138
    .line 139
    .line 140
    move v9, v8

    .line 141
    move v8, v7

    .line 142
    move-object v7, v0

    .line 143
    goto :goto_5

    .line 144
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    move-object v7, p1

    .line 148
    move v8, p2

    .line 149
    move v9, p3

    .line 150
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    new-instance v5, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;

    .line 157
    .line 158
    move-object v6, p0

    .line 159
    move-object/from16 v10, p4

    .line 160
    .line 161
    move/from16 v11, p6

    .line 162
    .line 163
    invoke-direct/range {v5 .. v11}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;-><init>(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/ui/Modifier;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 164
    .line 165
    .line 166
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_6
    return-void
.end method

.method public static final ChooseArchiveFolderDialogContent(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v8, p3

    .line 8
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x4379bf1e

    .line 11
    .line 12
    .line 13
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, p4, 0x6

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int/2addr v0, p4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, p4

    .line 32
    :goto_1
    and-int/lit8 v3, p4, 0x30

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/16 v3, 0x20

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v3, 0x10

    .line 46
    .line 47
    :goto_2
    or-int/2addr v0, v3

    .line 48
    :cond_3
    or-int/lit16 v0, v0, 0x180

    .line 49
    .line 50
    and-int/lit16 v3, v0, 0x93

    .line 51
    .line 52
    const/16 v4, 0x92

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-eq v3, v4, :cond_4

    .line 56
    .line 57
    move v3, v5

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 v3, 0x0

    .line 60
    :goto_3
    and-int/2addr v0, v5

    .line 61
    invoke-virtual {v8, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->isLoadingFolders:Z

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 74
    .line 75
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 76
    .line 77
    const/16 v5, 0x18

    .line 78
    .line 79
    invoke-direct {v0, v5, p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    const v5, 0x4f0725bf

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v0, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const/16 v9, 0x6000

    .line 90
    .line 91
    const/16 v10, 0xc

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 99
    .line 100
    move-object v3, v0

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 103
    .line 104
    .line 105
    move-object v3, p2

    .line 106
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    const/4 v5, 0x6

    .line 115
    move-object v1, p0

    .line 116
    move-object v2, p1

    .line 117
    move v4, p4

    .line 118
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 122
    .line 123
    :cond_6
    return-void
.end method

.method public static final ReadingMailSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    move/from16 v15, p8

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-object/from16 v11, p7

    .line 34
    .line 35
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    const v4, -0x6b933891

    .line 38
    .line 39
    .line 40
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v4, v15, 0x6

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    move v4, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v4, 0x2

    .line 57
    :goto_0
    or-int/2addr v4, v15

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v4, v15

    .line 60
    :goto_1
    and-int/lit8 v7, v15, 0x30

    .line 61
    .line 62
    const/16 v8, 0x20

    .line 63
    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    move v7, v8

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/16 v7, 0x10

    .line 75
    .line 76
    :goto_2
    or-int/2addr v4, v7

    .line 77
    :cond_3
    and-int/lit16 v7, v15, 0x180

    .line 78
    .line 79
    if-nez v7, :cond_5

    .line 80
    .line 81
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    const/16 v7, 0x100

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/16 v7, 0x80

    .line 91
    .line 92
    :goto_3
    or-int/2addr v4, v7

    .line 93
    :cond_5
    and-int/lit16 v7, v15, 0xc00

    .line 94
    .line 95
    if-nez v7, :cond_8

    .line 96
    .line 97
    and-int/lit16 v7, v15, 0x1000

    .line 98
    .line 99
    if-nez v7, :cond_6

    .line 100
    .line 101
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    :goto_4
    if-eqz v7, :cond_7

    .line 111
    .line 112
    const/16 v7, 0x800

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    const/16 v7, 0x400

    .line 116
    .line 117
    :goto_5
    or-int/2addr v4, v7

    .line 118
    :cond_8
    and-int/lit16 v7, v15, 0x6000

    .line 119
    .line 120
    const/16 v12, 0x4000

    .line 121
    .line 122
    const v13, 0x8000

    .line 123
    .line 124
    .line 125
    if-nez v7, :cond_b

    .line 126
    .line 127
    and-int v7, v15, v13

    .line 128
    .line 129
    if-nez v7, :cond_9

    .line 130
    .line 131
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    goto :goto_6

    .line 136
    :cond_9
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    :goto_6
    if-eqz v7, :cond_a

    .line 141
    .line 142
    move v7, v12

    .line 143
    goto :goto_7

    .line 144
    :cond_a
    const/16 v7, 0x2000

    .line 145
    .line 146
    :goto_7
    or-int/2addr v4, v7

    .line 147
    :cond_b
    const/high16 v7, 0x30000

    .line 148
    .line 149
    and-int/2addr v7, v15

    .line 150
    if-nez v7, :cond_e

    .line 151
    .line 152
    const/high16 v7, 0x40000

    .line 153
    .line 154
    and-int/2addr v7, v15

    .line 155
    if-nez v7, :cond_c

    .line 156
    .line 157
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    goto :goto_8

    .line 162
    :cond_c
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    :goto_8
    if-eqz v7, :cond_d

    .line 167
    .line 168
    const/high16 v7, 0x20000

    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_d
    const/high16 v7, 0x10000

    .line 172
    .line 173
    :goto_9
    or-int/2addr v4, v7

    .line 174
    :cond_e
    const/high16 v7, 0x180000

    .line 175
    .line 176
    or-int/2addr v4, v7

    .line 177
    const v16, 0x92493

    .line 178
    .line 179
    .line 180
    move/from16 p7, v7

    .line 181
    .line 182
    and-int v7, v4, v16

    .line 183
    .line 184
    const v9, 0x92492

    .line 185
    .line 186
    .line 187
    move/from16 v17, v13

    .line 188
    .line 189
    const/4 v5, 0x0

    .line 190
    if-eq v7, v9, :cond_f

    .line 191
    .line 192
    const/4 v7, 0x1

    .line 193
    goto :goto_a

    .line 194
    :cond_f
    move v7, v5

    .line 195
    :goto_a
    and-int/lit8 v9, v4, 0x1

    .line 196
    .line 197
    invoke-virtual {v11, v9, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_23

    .line 202
    .line 203
    and-int/lit8 v7, v4, 0xe

    .line 204
    .line 205
    if-ne v7, v6, :cond_10

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    goto :goto_b

    .line 209
    :cond_10
    move v7, v5

    .line 210
    :goto_b
    const p6, 0xe000

    .line 211
    .line 212
    .line 213
    and-int v9, v4, p6

    .line 214
    .line 215
    if-eq v9, v12, :cond_12

    .line 216
    .line 217
    and-int v9, v4, v17

    .line 218
    .line 219
    if-eqz v9, :cond_11

    .line 220
    .line 221
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_11

    .line 226
    .line 227
    goto :goto_c

    .line 228
    :cond_11
    move v9, v5

    .line 229
    goto :goto_d

    .line 230
    :cond_12
    :goto_c
    const/4 v9, 0x1

    .line 231
    :goto_d
    or-int/2addr v7, v9

    .line 232
    and-int/lit8 v9, v4, 0x70

    .line 233
    .line 234
    if-ne v9, v8, :cond_13

    .line 235
    .line 236
    const/4 v12, 0x1

    .line 237
    goto :goto_e

    .line 238
    :cond_13
    move v12, v5

    .line 239
    :goto_e
    or-int/2addr v7, v12

    .line 240
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 245
    .line 246
    if-nez v7, :cond_15

    .line 247
    .line 248
    if-ne v12, v6, :cond_14

    .line 249
    .line 250
    goto :goto_f

    .line 251
    :cond_14
    move/from16 v28, v4

    .line 252
    .line 253
    goto :goto_10

    .line 254
    :cond_15
    :goto_f
    new-instance v7, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-object v12, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 260
    .line 261
    new-instance v19, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 262
    .line 263
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 264
    .line 265
    invoke-direct {v8, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 266
    .line 267
    .line 268
    new-instance v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 269
    .line 270
    const/16 v13, 0x18

    .line 271
    .line 272
    invoke-direct {v5, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 273
    .line 274
    .line 275
    move/from16 v28, v4

    .line 276
    .line 277
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 278
    .line 279
    invoke-direct {v4, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 280
    .line 281
    .line 282
    const/16 v24, 0x1

    .line 283
    .line 284
    iget-object v13, v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;->selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 285
    .line 286
    const-string v20, "show_pictures"

    .line 287
    .line 288
    move-object/from16 v23, v4

    .line 289
    .line 290
    move-object/from16 v22, v5

    .line 291
    .line 292
    move-object/from16 v21, v8

    .line 293
    .line 294
    move-object/from16 v25, v12

    .line 295
    .line 296
    move-object/from16 v26, v13

    .line 297
    .line 298
    invoke-direct/range {v19 .. v26}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v4, v19

    .line 302
    .line 303
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-boolean v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 307
    .line 308
    new-instance v5, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 309
    .line 310
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/4 v12, 0x1

    .line 313
    invoke-direct {v8, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 314
    .line 315
    .line 316
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 317
    .line 318
    const/4 v12, 0x2

    .line 319
    invoke-direct {v13, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 320
    .line 321
    .line 322
    const-string v12, "marked_as_read_on_view"

    .line 323
    .line 324
    invoke-direct {v5, v12, v8, v13, v4}, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    invoke-static {v7}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :goto_10
    move-object v5, v12

    .line 338
    check-cast v5, Lkotlinx/collections/immutable/ImmutableList;

    .line 339
    .line 340
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    if-ne v4, v6, :cond_16

    .line 345
    .line 346
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_16
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 356
    .line 357
    const v7, 0x7f12013c

    .line 358
    .line 359
    .line 360
    invoke-static {v11, v7}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    iget-object v8, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 365
    .line 366
    const/16 v12, 0x20

    .line 367
    .line 368
    if-ne v9, v12, :cond_17

    .line 369
    .line 370
    const/4 v12, 0x1

    .line 371
    goto :goto_11

    .line 372
    :cond_17
    const/4 v12, 0x0

    .line 373
    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    if-nez v12, :cond_18

    .line 378
    .line 379
    if-ne v13, v6, :cond_19

    .line 380
    .line 381
    :cond_18
    new-instance v13, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 382
    .line 383
    const/4 v12, 0x7

    .line 384
    invoke-direct {v13, v12, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    :cond_19
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 391
    .line 392
    const/16 v12, 0x20

    .line 393
    .line 394
    if-ne v9, v12, :cond_1a

    .line 395
    .line 396
    const/4 v9, 0x1

    .line 397
    goto :goto_12

    .line 398
    :cond_1a
    const/4 v9, 0x0

    .line 399
    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    if-nez v9, :cond_1b

    .line 404
    .line 405
    if-ne v12, v6, :cond_1c

    .line 406
    .line 407
    :cond_1b
    new-instance v12, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 408
    .line 409
    const/4 v9, 0x3

    .line 410
    invoke-direct {v12, v9, v2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_1c
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 417
    .line 418
    new-instance v9, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 419
    .line 420
    const/4 v0, 0x4

    .line 421
    invoke-direct {v9, v4, v0}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 422
    .line 423
    .line 424
    const v0, -0x7b698e0d

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v9, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    shr-int/lit8 v0, v28, 0x6

    .line 432
    .line 433
    and-int v0, v0, p6

    .line 434
    .line 435
    or-int v0, v0, p7

    .line 436
    .line 437
    shl-int/lit8 v17, v28, 0xc

    .line 438
    .line 439
    const/high16 v19, 0x1c00000

    .line 440
    .line 441
    and-int v17, v17, v19

    .line 442
    .line 443
    or-int v0, v0, v17

    .line 444
    .line 445
    move-object/from16 v17, v6

    .line 446
    .line 447
    move-object v6, v13

    .line 448
    const/4 v13, 0x0

    .line 449
    move-object/from16 p6, v4

    .line 450
    .line 451
    move-object v4, v7

    .line 452
    move-object v7, v12

    .line 453
    move-object/from16 v2, v17

    .line 454
    .line 455
    const/4 v14, 0x2

    .line 456
    const/16 v27, 0x1

    .line 457
    .line 458
    move v12, v0

    .line 459
    move/from16 v0, v28

    .line 460
    .line 461
    invoke-static/range {v4 .. v13}, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V

    .line 462
    .line 463
    .line 464
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    check-cast v4, Ljava/lang/Boolean;

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eqz v4, :cond_22

    .line 475
    .line 476
    const v4, 0x5ed3e04d

    .line 477
    .line 478
    .line 479
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 480
    .line 481
    .line 482
    const v4, 0x7f12008a

    .line 483
    .line 484
    .line 485
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    iget-object v5, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    move-object/from16 v6, p5

    .line 496
    .line 497
    check-cast v6, Lapp/k9mail/provider/K9AppNameProvider;

    .line 498
    .line 499
    invoke-virtual {v6}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    new-array v7, v14, [Ljava/lang/Object;

    .line 504
    .line 505
    const/4 v8, 0x0

    .line 506
    aput-object v5, v7, v8

    .line 507
    .line 508
    aput-object v6, v7, v27

    .line 509
    .line 510
    const v5, 0x7f120089

    .line 511
    .line 512
    .line 513
    invoke-static {v5, v7, v11}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v17

    .line 517
    const v5, 0x7f120114

    .line 518
    .line 519
    .line 520
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v18

    .line 524
    const v5, 0x7f1200a1

    .line 525
    .line 526
    .line 527
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v22

    .line 531
    and-int/lit16 v0, v0, 0x380

    .line 532
    .line 533
    const/16 v5, 0x100

    .line 534
    .line 535
    if-ne v0, v5, :cond_1d

    .line 536
    .line 537
    move/from16 v13, v27

    .line 538
    .line 539
    goto :goto_13

    .line 540
    :cond_1d
    move v13, v8

    .line 541
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-nez v13, :cond_1f

    .line 546
    .line 547
    if-ne v0, v2, :cond_1e

    .line 548
    .line 549
    goto :goto_14

    .line 550
    :cond_1e
    move-object/from16 v5, p6

    .line 551
    .line 552
    goto :goto_15

    .line 553
    :cond_1f
    :goto_14
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;

    .line 554
    .line 555
    move-object/from16 v5, p6

    .line 556
    .line 557
    invoke-direct {v0, v3, v5, v14}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    :goto_15
    move-object/from16 v19, v0

    .line 564
    .line 565
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 566
    .line 567
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    if-ne v0, v2, :cond_20

    .line 572
    .line 573
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 574
    .line 575
    const/16 v6, 0x13

    .line 576
    .line 577
    invoke-direct {v0, v5, v6}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    :cond_20
    move-object/from16 v20, v0

    .line 584
    .line 585
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 586
    .line 587
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    if-ne v0, v2, :cond_21

    .line 592
    .line 593
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 594
    .line 595
    const/16 v2, 0x14

    .line 596
    .line 597
    invoke-direct {v0, v5, v2}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    :cond_21
    move-object/from16 v23, v0

    .line 604
    .line 605
    check-cast v23, Lkotlin/jvm/functions/Function0;

    .line 606
    .line 607
    const/16 v24, 0x0

    .line 608
    .line 609
    const v26, 0x6006000

    .line 610
    .line 611
    .line 612
    const/16 v21, 0x0

    .line 613
    .line 614
    move-object/from16 v16, v4

    .line 615
    .line 616
    move-object/from16 v25, v11

    .line 617
    .line 618
    invoke-static/range {v16 .. v26}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->AlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 622
    .line 623
    .line 624
    goto :goto_16

    .line 625
    :cond_22
    const/4 v8, 0x0

    .line 626
    const v0, 0x5ede60d3

    .line 627
    .line 628
    .line 629
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 633
    .line 634
    .line 635
    :goto_16
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 636
    .line 637
    move-object v7, v0

    .line 638
    goto :goto_17

    .line 639
    :cond_23
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 640
    .line 641
    .line 642
    move-object/from16 v7, p6

    .line 643
    .line 644
    :goto_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    if-eqz v10, :cond_24

    .line 649
    .line 650
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 651
    .line 652
    const/4 v9, 0x5

    .line 653
    move-object/from16 v2, p1

    .line 654
    .line 655
    move-object/from16 v4, p3

    .line 656
    .line 657
    move-object/from16 v5, p4

    .line 658
    .line 659
    move-object/from16 v6, p5

    .line 660
    .line 661
    move v8, v15

    .line 662
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 663
    .line 664
    .line 665
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 666
    .line 667
    :cond_24
    return-void
.end method

.method public static final RemoteFolderListItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v7, p4

    .line 8
    .line 9
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x437c00c8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v4

    .line 27
    :goto_0
    or-int v0, p5, v0

    .line 28
    .line 29
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    move v5, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v5, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v5

    .line 42
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/16 v5, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v5, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v5

    .line 54
    or-int/lit16 v0, v0, 0xc00

    .line 55
    .line 56
    and-int/lit16 v5, v0, 0x493

    .line 57
    .line 58
    const/16 v8, 0x492

    .line 59
    .line 60
    const/4 v10, 0x1

    .line 61
    if-eq v5, v8, :cond_3

    .line 62
    .line 63
    move v5, v10

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/4 v5, 0x0

    .line 66
    :goto_3
    and-int/lit8 v8, v0, 0x1

    .line 67
    .line 68
    invoke-virtual {v7, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 75
    .line 76
    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 77
    .line 78
    new-instance v9, Landroidx/compose/ui/semantics/Role;

    .line 79
    .line 80
    const/4 v11, 0x3

    .line 81
    invoke-direct {v9, v11}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v8, v2, v9, v3}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const/high16 v12, 0x41400000    # 12.0f

    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    invoke-static {v9, v12, v13, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    sget-object v14, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 107
    .line 108
    const/16 v15, 0x30

    .line 109
    .line 110
    invoke-static {v14, v5, v7, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget-wide v12, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 115
    .line 116
    ushr-long v16, v12, v6

    .line 117
    .line 118
    xor-long v12, v12, v16

    .line 119
    .line 120
    long-to-int v6, v12

    .line 121
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-static {v7, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 137
    .line 138
    .line 139
    iget-boolean v14, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 140
    .line 141
    if-eqz v14, :cond_4

    .line 142
    .line 143
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 148
    .line 149
    .line 150
    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v7, v5, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v7, v12, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 170
    .line 171
    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v7, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    new-instance v5, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/16 v6, 0xa

    .line 182
    .line 183
    invoke-direct {v5, v1, v6}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    const v6, -0xfa37dd3    # -2.729763E29f

    .line 187
    .line 188
    .line 189
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    const/high16 v6, 0x41400000    # 12.0f

    .line 203
    .line 204
    const/4 v9, 0x0

    .line 205
    invoke-static {v8, v6, v9, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    shr-int/lit8 v6, v0, 0x3

    .line 210
    .line 211
    and-int/lit8 v6, v6, 0xe

    .line 212
    .line 213
    or-int/2addr v6, v15

    .line 214
    and-int/lit16 v0, v0, 0x380

    .line 215
    .line 216
    or-int v8, v6, v0

    .line 217
    .line 218
    const/16 v9, 0x10

    .line 219
    .line 220
    const/4 v6, 0x0

    .line 221
    move-object/from16 v18, v4

    .line 222
    .line 223
    move-object v4, v3

    .line 224
    move-object v3, v5

    .line 225
    move-object/from16 v5, v18

    .line 226
    .line 227
    invoke-static/range {v2 .. v9}, Landroidx/room/util/DBUtil;->RadioButton(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 234
    .line 235
    move-object v4, v0

    .line 236
    goto :goto_5

    .line 237
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 238
    .line 239
    .line 240
    move-object/from16 v4, p3

    .line 241
    .line 242
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    if-eqz v7, :cond_6

    .line 247
    .line 248
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;

    .line 249
    .line 250
    const/4 v6, 0x1

    .line 251
    move/from16 v2, p1

    .line 252
    .line 253
    move-object/from16 v3, p2

    .line 254
    .line 255
    move/from16 v5, p5

    .line 256
    .line 257
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;ZLjava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 258
    .line 259
    .line 260
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 261
    .line 262
    :cond_6
    return-void
.end method

.method public static final SentFolderNotFoundNotification(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->L$1:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->sent_folder_not_found_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 51
    .line 52
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lorg/jetbrains/compose/resources/StringResource;

    .line 57
    .line 58
    iput-object p0, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->L$1:Ljava/lang/String;

    .line 59
    .line 60
    iput v2, v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1;->label:I

    .line 61
    .line 62
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 63
    .line 64
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;

    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;->invoke()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 71
    .line 72
    sget-object v2, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 73
    .line 74
    invoke-static {p1, v2, v1, v0}, Lkotlin/text/CharsKt__CharKt;->loadString(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 79
    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;

    .line 86
    .line 87
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public static final SwitchItem(Lnet/thunderbird/core/ui/setting/SettingValue$Switch;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v12, p3

    .line 16
    .line 17
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v0, -0x5bc15a60

    .line 20
    .line 21
    .line 22
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, v4, 0x6

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    and-int/lit8 v0, v4, 0x8

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x2

    .line 47
    :goto_1
    or-int/2addr v0, v4

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v0, v4

    .line 50
    :goto_2
    and-int/lit8 v5, v4, 0x30

    .line 51
    .line 52
    const/16 v6, 0x20

    .line 53
    .line 54
    if-nez v5, :cond_4

    .line 55
    .line 56
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    move v5, v6

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v5

    .line 67
    :cond_4
    and-int/lit16 v5, v4, 0x180

    .line 68
    .line 69
    if-nez v5, :cond_6

    .line 70
    .line 71
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    const/16 v5, 0x100

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    const/16 v5, 0x80

    .line 81
    .line 82
    :goto_4
    or-int/2addr v0, v5

    .line 83
    :cond_6
    and-int/lit16 v5, v0, 0x93

    .line 84
    .line 85
    const/16 v8, 0x92

    .line 86
    .line 87
    const/4 v9, 0x1

    .line 88
    if-eq v5, v8, :cond_7

    .line 89
    .line 90
    move v5, v9

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    const/4 v5, 0x0

    .line 93
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 94
    .line 95
    invoke-virtual {v12, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_10

    .line 100
    .line 101
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 102
    .line 103
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 104
    .line 105
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/high16 v11, 0x41800000    # 16.0f

    .line 115
    .line 116
    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 121
    .line 122
    const/16 v14, 0x30

    .line 123
    .line 124
    invoke-static {v13, v5, v12, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 129
    .line 130
    ushr-long v16, v13, v6

    .line 131
    .line 132
    xor-long v13, v13, v16

    .line 133
    .line 134
    long-to-int v13, v13

    .line 135
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    invoke-static {v12, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 144
    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move/from16 p3, v6

    .line 149
    .line 150
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 151
    .line 152
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 153
    .line 154
    .line 155
    iget-boolean v7, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 156
    .line 157
    if-eqz v7, :cond_8

    .line 158
    .line 159
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 164
    .line 165
    .line 166
    :goto_6
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 167
    .line 168
    invoke-static {v12, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 172
    .line 173
    invoke-static {v12, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 181
    .line 182
    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 186
    .line 187
    invoke-static {v12, v13}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 188
    .line 189
    .line 190
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 191
    .line 192
    invoke-static {v12, v11, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    new-instance v11, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 196
    .line 197
    const/high16 v10, 0x3f800000    # 1.0f

    .line 198
    .line 199
    invoke-direct {v11, v10, v9}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 200
    .line 201
    .line 202
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 203
    .line 204
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-static {v10, v9, v12, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    iget-wide v2, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 212
    .line 213
    ushr-long v18, v2, p3

    .line 214
    .line 215
    xor-long v2, v2, v18

    .line 216
    .line 217
    long-to-int v2, v2

    .line 218
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {v12, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 227
    .line 228
    .line 229
    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 230
    .line 231
    if-eqz v11, :cond_9

    .line 232
    .line 233
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 238
    .line 239
    .line 240
    :goto_7
    invoke-static {v12, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v12, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v12, v14, v12, v13}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v12, v10, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    iget-object v2, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->title:Lkotlin/jvm/functions/Function0;

    .line 253
    .line 254
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    move-object v5, v2

    .line 259
    check-cast v5, Ljava/lang/String;

    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    const/16 v14, 0x3e

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    move-object v2, v8

    .line 266
    const-wide/16 v7, 0x0

    .line 267
    .line 268
    const/4 v9, 0x0

    .line 269
    const/4 v10, 0x0

    .line 270
    const/4 v11, 0x0

    .line 271
    move-object v3, v2

    .line 272
    const/4 v2, 0x1

    .line 273
    const/4 v15, 0x0

    .line 274
    invoke-static/range {v5 .. v14}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 275
    .line 276
    .line 277
    iget-object v5, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->description:Lkotlin/jvm/functions/Function0;

    .line 278
    .line 279
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    check-cast v5, Ljava/lang/String;

    .line 284
    .line 285
    if-nez v5, :cond_a

    .line 286
    .line 287
    const v5, 0x37fafc7e

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_a
    const v6, 0x37fafc7f    # 2.99199E-5f

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 301
    .line 302
    .line 303
    const/4 v13, 0x0

    .line 304
    const/16 v14, 0x7e

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    const-wide/16 v7, 0x0

    .line 308
    .line 309
    const/4 v9, 0x0

    .line 310
    const/4 v10, 0x0

    .line 311
    const/4 v11, 0x0

    .line 312
    invoke-static/range {v5 .. v14}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 316
    .line 317
    .line 318
    :goto_8
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    const/high16 v3, 0x41000000    # 8.0f

    .line 331
    .line 332
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 333
    .line 334
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 339
    .line 340
    .line 341
    iget-boolean v5, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->value:Z

    .line 342
    .line 343
    and-int/lit16 v3, v0, 0x380

    .line 344
    .line 345
    const/16 v6, 0x100

    .line 346
    .line 347
    if-ne v3, v6, :cond_b

    .line 348
    .line 349
    move v9, v2

    .line 350
    goto :goto_9

    .line 351
    :cond_b
    move v9, v15

    .line 352
    :goto_9
    and-int/lit8 v3, v0, 0xe

    .line 353
    .line 354
    const/4 v6, 0x4

    .line 355
    if-eq v3, v6, :cond_c

    .line 356
    .line 357
    and-int/lit8 v0, v0, 0x8

    .line 358
    .line 359
    if-eqz v0, :cond_d

    .line 360
    .line 361
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_d

    .line 366
    .line 367
    :cond_c
    move v15, v2

    .line 368
    :cond_d
    or-int v0, v9, v15

    .line 369
    .line 370
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-nez v0, :cond_f

    .line 375
    .line 376
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 377
    .line 378
    if-ne v3, v0, :cond_e

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_e
    move-object/from16 v11, p2

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_f
    :goto_a
    new-instance v3, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 385
    .line 386
    const/4 v0, 0x6

    .line 387
    move-object/from16 v11, p2

    .line 388
    .line 389
    invoke-direct {v3, v0, v11, v1}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :goto_b
    move-object v6, v3

    .line 396
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 397
    .line 398
    const/4 v8, 0x0

    .line 399
    const/4 v10, 0x0

    .line 400
    const/4 v7, 0x0

    .line 401
    move-object v9, v12

    .line 402
    invoke-static/range {v5 .. v10}, Landroidx/work/Operation$State;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 406
    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_10
    move-object v11, v3

    .line 410
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 411
    .line 412
    .line 413
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    if-eqz v6, :cond_11

    .line 418
    .line 419
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 420
    .line 421
    const/4 v5, 0x4

    .line 422
    move-object/from16 v2, p1

    .line 423
    .line 424
    move-object v3, v11

    .line 425
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    .line 426
    .line 427
    .line 428
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 429
    .line 430
    :cond_11
    return-void
.end method

.method public static closeQuietly(Lkotlinx/io/InputStreamSource;Lkotlinx/io/OutputStreamSink;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->m(Lkotlinx/io/InputStreamSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    :try_start_1
    invoke-static {p1}, Lkotlinx/io/Sink$-CC;->m(Lkotlinx/io/OutputStreamSink;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    .line 6
    .line 7
    :catch_1
    return-void
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    rem-int/lit8 v0, v0, 0x3

    .line 3
    .line 4
    rsub-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    rem-int/lit8 v0, v0, 0x3

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    add-int/2addr v1, v0

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    move v4, v3

    .line 23
    :goto_0
    array-length v5, p0

    .line 24
    if-ge v4, v5, :cond_0

    .line 25
    .line 26
    aget-byte v5, v1, v4

    .line 27
    .line 28
    and-int/lit16 v5, v5, 0xff

    .line 29
    .line 30
    shl-int/lit8 v5, v5, 0x10

    .line 31
    .line 32
    add-int/lit8 v6, v4, 0x1

    .line 33
    .line 34
    aget-byte v6, v1, v6

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    shl-int/lit8 v6, v6, 0x8

    .line 39
    .line 40
    add-int/2addr v5, v6

    .line 41
    add-int/lit8 v6, v4, 0x2

    .line 42
    .line 43
    aget-byte v6, v1, v6

    .line 44
    .line 45
    and-int/lit16 v6, v6, 0xff

    .line 46
    .line 47
    add-int/2addr v5, v6

    .line 48
    shr-int/lit8 v6, v5, 0x12

    .line 49
    .line 50
    and-int/lit8 v6, v6, 0x3f

    .line 51
    .line 52
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    shr-int/lit8 v6, v5, 0xc

    .line 62
    .line 63
    and-int/lit8 v6, v6, 0x3f

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    shr-int/lit8 v6, v5, 0x6

    .line 73
    .line 74
    and-int/lit8 v6, v6, 0x3f

    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    and-int/lit8 v5, v5, 0x3f

    .line 84
    .line 85
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    sub-int/2addr p0, v0

    .line 100
    invoke-virtual {v2, v3, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v1, "=="

    .line 105
    .line 106
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

.method public static iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v0, p0}, Lkotlinx/atomicfu/AtomicFU;->createCoroutineUnintercepted(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    return-object v0
.end method

.method public static final rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p3, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 17
    .line 18
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    or-int/2addr p0, p1

    .line 42
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    or-int/2addr p0, p1

    .line 47
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    or-int/2addr p0, p1

    .line 52
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 59
    .line 60
    if-ne p1, p0, :cond_1

    .line 61
    .line 62
    :cond_0
    new-instance p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;

    .line 63
    .line 64
    const/4 p1, 0x2

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-direct {p0, p4, p3, p2, p1}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 70
    .line 71
    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    return-object p1
.end method

.method public static final startUndispatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p3, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-static {p3, p2, p0}, Lkotlinx/atomicfu/AtomicFU;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_4

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-static {v1, p3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2
    :try_end_0
    .catch Lkotlinx/coroutines/DispatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    new-instance p3, Lkotlinx/coroutines/CompletedExceptionally;

    .line 25
    .line 26
    invoke-direct {p3, p2, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 27
    .line 28
    .line 29
    move-object p2, p3

    .line 30
    :goto_1
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    if-ne p2, p3, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lkotlinx/coroutines/JobKt;->COMPLETING_WAITING_CHILDREN:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    :goto_2
    return-object p3

    .line 44
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ScopeCoroutine;->afterCompletionUndispatched()V

    .line 45
    .line 46
    .line 47
    instance-of p3, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 48
    .line 49
    if-eqz p3, :cond_5

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    move-object p1, v0

    .line 54
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 55
    .line 56
    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 57
    .line 58
    instance-of p3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 63
    .line 64
    iget-object p1, p1, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    .line 65
    .line 66
    if-ne p1, p0, :cond_4

    .line 67
    .line 68
    instance-of p0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 69
    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    check-cast p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 74
    .line 75
    iget-object p0, p2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 76
    .line 77
    throw p0

    .line 78
    :cond_4
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 79
    .line 80
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 81
    .line 82
    throw p0

    .line 83
    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_3
    return-object p2

    .line 88
    :goto_4
    new-instance p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 89
    .line 90
    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->cause:Ljava/lang/Throwable;

    .line 91
    .line 92
    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    throw p1
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


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public decodeBoolean()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeBoolean()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeByte()B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Byte;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeByteElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)B
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeByte()B

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeChar()C
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Character;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeCharElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)C
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeChar()C

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Double;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public decodeDoubleElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)D
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeDouble()D

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public decodeFloat()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeFloatElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeFloat()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/minidns/util/Base64;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public decodeInt()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeInt()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeLong()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeLong()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeNotNullMark()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lorg/minidns/util/Base64;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lorg/minidns/util/Base64;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public decodeShort()S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Short;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public decodeShortElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)S
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeShort()S

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/minidns/util/Base64;->decodeString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public decodeValue()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/SerializationException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " can\'t retrieve untyped values"

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
