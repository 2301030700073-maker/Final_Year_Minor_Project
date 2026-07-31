.class public final synthetic Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/16 v3, 0x12

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    move-object/from16 v9, p2

    .line 29
    .line 30
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 31
    .line 32
    move-object/from16 v10, p3

    .line 33
    .line 34
    check-cast v10, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    and-int/lit8 v11, v10, 0x6

    .line 41
    .line 42
    if-nez v11, :cond_1

    .line 43
    .line 44
    move-object v11, v9

    .line 45
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-eqz v11, :cond_0

    .line 52
    .line 53
    move v4, v5

    .line 54
    :cond_0
    or-int/2addr v10, v4

    .line 55
    :cond_1
    and-int/lit8 v4, v10, 0x13

    .line 56
    .line 57
    if-eq v4, v3, :cond_2

    .line 58
    .line 59
    move v7, v6

    .line 60
    :cond_2
    and-int/lit8 v3, v10, 0x1

    .line 61
    .line 62
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 63
    .line 64
    invoke-virtual {v9, v3, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_7

    .line 69
    .line 70
    const v3, 0x7f120036

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    if-ne v4, v2, :cond_4

    .line 88
    .line 89
    :cond_3
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 90
    .line 91
    const/16 v3, 0x13

    .line 92
    .line 93
    invoke-direct {v4, v3, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    move-object v11, v4

    .line 100
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    xor-int/lit8 v3, v1, 0x1

    .line 103
    .line 104
    invoke-static {v3}, Landroidx/room/util/SchemaInfoUtilKt;->hide(Z)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "onboarding_permissions_next_button"

    .line 109
    .line 110
    invoke-static {v3, v4}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    const/16 v19, 0xf8

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    const/4 v15, 0x0

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    move-object/from16 v17, v9

    .line 124
    .line 125
    invoke-static/range {v10 .. v19}, Landroidx/compose/ui/unit/IntOffsetKt;->ButtonFilled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 126
    .line 127
    .line 128
    const v3, 0x7f120511

    .line 129
    .line 130
    .line 131
    invoke-static {v9, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    if-nez v3, :cond_5

    .line 144
    .line 145
    if-ne v4, v2, :cond_6

    .line 146
    .line 147
    :cond_5
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 148
    .line 149
    const/16 v2, 0x14

    .line 150
    .line 151
    invoke-direct {v4, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    move-object v11, v4

    .line 158
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 159
    .line 160
    invoke-static {v1}, Landroidx/room/util/SchemaInfoUtilKt;->hide(Z)Landroidx/compose/ui/Modifier;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "onboarding_permissions_skip_button"

    .line 165
    .line 166
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const/16 v17, 0x0

    .line 171
    .line 172
    const/16 v18, 0x38

    .line 173
    .line 174
    const/4 v13, 0x0

    .line 175
    const/4 v14, 0x0

    .line 176
    const/4 v15, 0x0

    .line 177
    move-object/from16 v16, v9

    .line 178
    .line 179
    invoke-static/range {v10 .. v18}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_7
    move-object/from16 v16, v9

    .line 184
    .line 185
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    :goto_0
    return-object v8

    .line 189
    :pswitch_0
    move-object/from16 v1, p1

    .line 190
    .line 191
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 192
    .line 193
    move-object/from16 v2, p2

    .line 194
    .line 195
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 196
    .line 197
    move-object/from16 v9, p3

    .line 198
    .line 199
    check-cast v9, Ljava/lang/Integer;

    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    and-int/lit8 v10, v9, 0x6

    .line 209
    .line 210
    if-nez v10, :cond_a

    .line 211
    .line 212
    and-int/lit8 v10, v9, 0x8

    .line 213
    .line 214
    if-nez v10, :cond_8

    .line 215
    .line 216
    move-object v10, v2

    .line 217
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 218
    .line 219
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    goto :goto_1

    .line 224
    :cond_8
    move-object v10, v2

    .line 225
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 226
    .line 227
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    :goto_1
    if-eqz v10, :cond_9

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    move v5, v4

    .line 235
    :goto_2
    or-int/2addr v9, v5

    .line 236
    :cond_a
    and-int/lit8 v5, v9, 0x13

    .line 237
    .line 238
    if-eq v5, v3, :cond_b

    .line 239
    .line 240
    move v3, v6

    .line 241
    goto :goto_3

    .line 242
    :cond_b
    move v3, v7

    .line 243
    :goto_3
    and-int/lit8 v5, v9, 0x1

    .line 244
    .line 245
    move-object v12, v2

    .line 246
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 247
    .line 248
    invoke-virtual {v12, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_d

    .line 253
    .line 254
    iget-boolean v2, v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 255
    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    const v0, 0x154c120e

    .line 259
    .line 260
    .line 261
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 262
    .line 263
    .line 264
    const v0, 0x7f1201bd

    .line 265
    .line 266
    .line 267
    invoke-static {v12, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 272
    .line 273
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    const/high16 v0, 0x41800000    # 16.0f

    .line 283
    .line 284
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 285
    .line 286
    const/4 v2, 0x0

    .line 287
    invoke-static {v1, v0, v2, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    const/4 v13, 0x0

    .line 292
    const/4 v14, 0x4

    .line 293
    const/4 v11, 0x0

    .line 294
    invoke-static/range {v9 .. v14}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_c
    const v2, 0x1550096d

    .line 302
    .line 303
    .line 304
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 308
    .line 309
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 310
    .line 311
    const/16 v3, 0x180

    .line 312
    .line 313
    invoke-static {v1, v0, v2, v12, v3}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->SpecialFoldersFormContent(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 321
    .line 322
    .line 323
    :goto_4
    return-object v8

    .line 324
    :pswitch_1
    move-object/from16 v1, p1

    .line 325
    .line 326
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 327
    .line 328
    move-object/from16 v9, p2

    .line 329
    .line 330
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 331
    .line 332
    move-object/from16 v10, p3

    .line 333
    .line 334
    check-cast v10, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    and-int/lit8 v11, v10, 0x6

    .line 344
    .line 345
    if-nez v11, :cond_10

    .line 346
    .line 347
    and-int/lit8 v11, v10, 0x8

    .line 348
    .line 349
    if-nez v11, :cond_e

    .line 350
    .line 351
    move-object v11, v9

    .line 352
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 353
    .line 354
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    goto :goto_5

    .line 359
    :cond_e
    move-object v11, v9

    .line 360
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 361
    .line 362
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    :goto_5
    if-eqz v11, :cond_f

    .line 367
    .line 368
    move v4, v5

    .line 369
    :cond_f
    or-int/2addr v10, v4

    .line 370
    :cond_10
    and-int/lit8 v4, v10, 0x13

    .line 371
    .line 372
    if-eq v4, v3, :cond_11

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_11
    move v6, v7

    .line 376
    :goto_6
    and-int/lit8 v3, v10, 0x1

    .line 377
    .line 378
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 379
    .line 380
    invoke-virtual {v9, v3, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_14

    .line 385
    .line 386
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    if-nez v3, :cond_12

    .line 395
    .line 396
    if-ne v4, v2, :cond_13

    .line 397
    .line 398
    :cond_12
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 399
    .line 400
    const/16 v2, 0xc

    .line 401
    .line 402
    invoke-direct {v4, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :cond_13
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 409
    .line 410
    and-int/lit8 v0, v10, 0xe

    .line 411
    .line 412
    invoke-static {v1, v4, v9, v0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->SpecialFoldersErrorView(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 413
    .line 414
    .line 415
    goto :goto_7

    .line 416
    :cond_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 417
    .line 418
    .line 419
    :goto_7
    return-object v8

    .line 420
    :pswitch_2
    move-object/from16 v1, p1

    .line 421
    .line 422
    check-cast v1, Ljava/lang/Boolean;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    move-object/from16 v9, p2

    .line 429
    .line 430
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 431
    .line 432
    move-object/from16 v10, p3

    .line 433
    .line 434
    check-cast v10, Ljava/lang/Integer;

    .line 435
    .line 436
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    and-int/lit8 v11, v10, 0x6

    .line 441
    .line 442
    if-nez v11, :cond_16

    .line 443
    .line 444
    move-object v11, v9

    .line 445
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 446
    .line 447
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    if-eqz v11, :cond_15

    .line 452
    .line 453
    move v4, v5

    .line 454
    :cond_15
    or-int/2addr v10, v4

    .line 455
    :cond_16
    and-int/lit8 v4, v10, 0x13

    .line 456
    .line 457
    if-eq v4, v3, :cond_17

    .line 458
    .line 459
    move v3, v6

    .line 460
    goto :goto_8

    .line 461
    :cond_17
    move v3, v7

    .line 462
    :goto_8
    and-int/lit8 v4, v10, 0x1

    .line 463
    .line 464
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 465
    .line 466
    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_1d

    .line 471
    .line 472
    if-eqz v1, :cond_1a

    .line 473
    .line 474
    const v1, -0x578b33d8

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 478
    .line 479
    .line 480
    const v1, 0x7f12004c

    .line 481
    .line 482
    .line 483
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    if-nez v1, :cond_18

    .line 496
    .line 497
    if-ne v3, v2, :cond_19

    .line 498
    .line 499
    :cond_18
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 500
    .line 501
    const/16 v1, 0xa

    .line 502
    .line 503
    invoke-direct {v3, v1, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    :cond_19
    move-object v11, v3

    .line 510
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 511
    .line 512
    sget-object v12, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 513
    .line 514
    const/16 v19, 0x180

    .line 515
    .line 516
    const/16 v20, 0xf8

    .line 517
    .line 518
    const/4 v13, 0x0

    .line 519
    const/4 v14, 0x0

    .line 520
    const/4 v15, 0x0

    .line 521
    const/16 v16, 0x0

    .line 522
    .line 523
    const/16 v17, 0x0

    .line 524
    .line 525
    move-object/from16 v18, v9

    .line 526
    .line 527
    invoke-static/range {v10 .. v20}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 531
    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_1a
    const v1, -0x5785e491

    .line 535
    .line 536
    .line 537
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 538
    .line 539
    .line 540
    const v1, 0x7f12004a

    .line 541
    .line 542
    .line 543
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    if-nez v1, :cond_1b

    .line 556
    .line 557
    if-ne v3, v2, :cond_1c

    .line 558
    .line 559
    :cond_1b
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 560
    .line 561
    const/16 v1, 0x8

    .line 562
    .line 563
    invoke-direct {v3, v1, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    :cond_1c
    move-object v11, v3

    .line 570
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 571
    .line 572
    sget-object v12, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 573
    .line 574
    const/16 v19, 0x180

    .line 575
    .line 576
    const/16 v20, 0xf8

    .line 577
    .line 578
    const/4 v13, 0x0

    .line 579
    const/4 v14, 0x0

    .line 580
    const/4 v15, 0x0

    .line 581
    const/16 v16, 0x0

    .line 582
    .line 583
    const/16 v17, 0x0

    .line 584
    .line 585
    move-object/from16 v18, v9

    .line 586
    .line 587
    invoke-static/range {v10 .. v20}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 591
    .line 592
    .line 593
    goto :goto_9

    .line 594
    :cond_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 595
    .line 596
    .line 597
    :goto_9
    return-object v8

    .line 598
    :pswitch_3
    move-object/from16 v1, p1

    .line 599
    .line 600
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 601
    .line 602
    move-object/from16 v1, p2

    .line 603
    .line 604
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 605
    .line 606
    move-object/from16 v2, p3

    .line 607
    .line 608
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 609
    .line 610
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 611
    .line 612
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 613
    .line 614
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 615
    .line 616
    .line 617
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    return-object v8

    .line 621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
