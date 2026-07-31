.class public abstract Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LocalIsInPopupLayout:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final LocalPopupTestTag:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE$3:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE$2:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 18
    .line 19
    return-void
.end method

.method public static final Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move/from16 v10, p5

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x699ff8ef

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v10, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, v10

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v10

    .line 33
    :goto_1
    and-int/lit8 v2, p6, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x30

    .line 38
    .line 39
    :cond_2
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    and-int/lit8 v3, v10, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v10, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_6

    .line 63
    .line 64
    move-object/from16 v4, p2

    .line 65
    .line 66
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v5, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v5

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move-object/from16 v4, p2

    .line 80
    .line 81
    :goto_5
    and-int/lit16 v5, v10, 0xc00

    .line 82
    .line 83
    if-nez v5, :cond_8

    .line 84
    .line 85
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_7

    .line 90
    .line 91
    const/16 v5, 0x800

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_7
    const/16 v5, 0x400

    .line 95
    .line 96
    :goto_6
    or-int/2addr v0, v5

    .line 97
    :cond_8
    and-int/lit16 v5, v0, 0x493

    .line 98
    .line 99
    const/16 v6, 0x492

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    if-eq v5, v6, :cond_9

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    goto :goto_7

    .line 106
    :cond_9
    move v5, v8

    .line 107
    :goto_7
    and-int/lit8 v6, v0, 0x1

    .line 108
    .line 109
    invoke-virtual {v11, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_1f

    .line 114
    .line 115
    if-eqz v2, :cond_a

    .line 116
    .line 117
    const/16 v18, 0x0

    .line 118
    .line 119
    goto :goto_8

    .line 120
    :cond_a
    move-object/from16 v18, v3

    .line 121
    .line 122
    :goto_8
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 123
    .line 124
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/view/View;

    .line 129
    .line 130
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 131
    .line 132
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 137
    .line 138
    sget-object v6, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    move-object/from16 v20, v6

    .line 145
    .line 146
    check-cast v20, Ljava/lang/String;

    .line 147
    .line 148
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 149
    .line 150
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    move-object/from16 v21, v6

    .line 155
    .line 156
    check-cast v21, Landroidx/compose/ui/unit/LayoutDirection;

    .line 157
    .line 158
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->rememberCompositionContext(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v9, v11}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    new-array v5, v8, [Ljava/lang/Object;

    .line 167
    .line 168
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 173
    .line 174
    if-ne v7, v13, :cond_b

    .line 175
    .line 176
    sget-object v7, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 177
    .line 178
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    const/16 v8, 0x30

    .line 184
    .line 185
    invoke-static {v5, v7, v11, v8}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    move-object v7, v5

    .line 190
    check-cast v7, Ljava/util/UUID;

    .line 191
    .line 192
    sget-object v5, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 193
    .line 194
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-ne v5, v13, :cond_c

    .line 209
    .line 210
    move/from16 v22, v0

    .line 211
    .line 212
    new-instance v0, Landroidx/compose/ui/window/PopupLayout;

    .line 213
    .line 214
    move-object v5, v4

    .line 215
    move-object v4, v2

    .line 216
    move-object v2, v5

    .line 217
    move-object v5, v3

    .line 218
    move-object/from16 v23, v6

    .line 219
    .line 220
    move-object/from16 v3, v20

    .line 221
    .line 222
    move/from16 v14, v22

    .line 223
    .line 224
    const/4 v15, 0x0

    .line 225
    move-object v6, v1

    .line 226
    move-object/from16 v1, v18

    .line 227
    .line 228
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Z)V

    .line 229
    .line 230
    .line 231
    move-object v1, v6

    .line 232
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;

    .line 233
    .line 234
    invoke-direct {v2, v0, v12, v15}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/MutableState;I)V

    .line 235
    .line 236
    .line 237
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 238
    .line 239
    const v5, -0x11bbdae4

    .line 240
    .line 241
    .line 242
    const/4 v6, 0x1

    .line 243
    invoke-direct {v4, v5, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v2, v23

    .line 247
    .line 248
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/window/PopupLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    move-object v5, v0

    .line 255
    goto :goto_9

    .line 256
    :cond_c
    move v14, v0

    .line 257
    move-object/from16 v3, v20

    .line 258
    .line 259
    const/4 v15, 0x0

    .line 260
    :goto_9
    check-cast v5, Landroidx/compose/ui/window/PopupLayout;

    .line 261
    .line 262
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    and-int/lit8 v2, v14, 0x70

    .line 267
    .line 268
    const/16 v4, 0x20

    .line 269
    .line 270
    if-ne v2, v4, :cond_d

    .line 271
    .line 272
    const/4 v7, 0x1

    .line 273
    goto :goto_a

    .line 274
    :cond_d
    move v7, v15

    .line 275
    :goto_a
    or-int/2addr v0, v7

    .line 276
    and-int/lit16 v4, v14, 0x380

    .line 277
    .line 278
    const/16 v6, 0x100

    .line 279
    .line 280
    if-ne v4, v6, :cond_e

    .line 281
    .line 282
    const/4 v7, 0x1

    .line 283
    goto :goto_b

    .line 284
    :cond_e
    move v7, v15

    .line 285
    :goto_b
    or-int/2addr v0, v7

    .line 286
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    or-int/2addr v0, v6

    .line 291
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    or-int/2addr v0, v6

    .line 300
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    if-nez v0, :cond_f

    .line 305
    .line 306
    if-ne v6, v13, :cond_10

    .line 307
    .line 308
    :cond_f
    new-instance v16, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;

    .line 309
    .line 310
    move-object/from16 v19, p2

    .line 311
    .line 312
    move-object/from16 v20, v3

    .line 313
    .line 314
    move-object/from16 v17, v5

    .line 315
    .line 316
    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v6, v16

    .line 320
    .line 321
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_10
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 325
    .line 326
    invoke-static {v5, v6, v11}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    const/16 v6, 0x20

    .line 334
    .line 335
    if-ne v2, v6, :cond_11

    .line 336
    .line 337
    const/4 v7, 0x1

    .line 338
    goto :goto_c

    .line 339
    :cond_11
    move v7, v15

    .line 340
    :goto_c
    or-int/2addr v0, v7

    .line 341
    const/16 v6, 0x100

    .line 342
    .line 343
    if-ne v4, v6, :cond_12

    .line 344
    .line 345
    const/4 v7, 0x1

    .line 346
    goto :goto_d

    .line 347
    :cond_12
    move v7, v15

    .line 348
    :goto_d
    or-int/2addr v0, v7

    .line 349
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    or-int/2addr v0, v2

    .line 354
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    or-int/2addr v0, v2

    .line 363
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-nez v0, :cond_14

    .line 368
    .line 369
    if-ne v2, v13, :cond_13

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_13
    move-object/from16 v6, v21

    .line 373
    .line 374
    goto :goto_f

    .line 375
    :cond_14
    :goto_e
    new-instance v16, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;

    .line 376
    .line 377
    move-object/from16 v19, p2

    .line 378
    .line 379
    move-object/from16 v20, v3

    .line 380
    .line 381
    move-object/from16 v17, v5

    .line 382
    .line 383
    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v2, v16

    .line 387
    .line 388
    move-object/from16 v6, v21

    .line 389
    .line 390
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :goto_f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 394
    .line 395
    invoke-static {v2, v11}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    and-int/lit8 v2, v14, 0xe

    .line 403
    .line 404
    const/4 v3, 0x4

    .line 405
    if-ne v2, v3, :cond_15

    .line 406
    .line 407
    const/4 v7, 0x1

    .line 408
    goto :goto_10

    .line 409
    :cond_15
    move v7, v15

    .line 410
    :goto_10
    or-int/2addr v0, v7

    .line 411
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    if-nez v0, :cond_16

    .line 416
    .line 417
    if-ne v2, v13, :cond_17

    .line 418
    .line 419
    :cond_16
    new-instance v2, Landroidx/compose/ui/ZIndexNode$measure$1;

    .line 420
    .line 421
    const/16 v0, 0xb

    .line 422
    .line 423
    invoke-direct {v2, v0, v5, v1}, Landroidx/compose/ui/ZIndexNode$measure$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 430
    .line 431
    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    if-nez v0, :cond_18

    .line 443
    .line 444
    if-ne v2, v13, :cond_19

    .line 445
    .line 446
    :cond_18
    new-instance v2, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 447
    .line 448
    const/4 v0, 0x5

    .line 449
    const/4 v3, 0x0

    .line 450
    invoke-direct {v2, v5, v3, v0}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 457
    .line 458
    invoke-static {v11, v5, v2}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    if-nez v0, :cond_1a

    .line 470
    .line 471
    if-ne v2, v13, :cond_1b

    .line 472
    .line 473
    :cond_1a
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;

    .line 474
    .line 475
    invoke-direct {v2, v5, v15}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_1b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 482
    .line 483
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 484
    .line 485
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    or-int/2addr v2, v3

    .line 502
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    if-nez v2, :cond_1c

    .line 507
    .line 508
    if-ne v3, v13, :cond_1d

    .line 509
    .line 510
    :cond_1c
    new-instance v3, Landroidx/compose/foundation/text/TextMeasurePolicy;

    .line 511
    .line 512
    const/4 v2, 0x2

    .line 513
    invoke-direct {v3, v2, v5, v6}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    :cond_1d
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 520
    .line 521
    iget-wide v4, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 522
    .line 523
    const/16 v22, 0x20

    .line 524
    .line 525
    ushr-long v6, v4, v22

    .line 526
    .line 527
    xor-long/2addr v4, v6

    .line 528
    long-to-int v2, v4

    .line 529
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 543
    .line 544
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 545
    .line 546
    .line 547
    iget-boolean v6, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 548
    .line 549
    if-eqz v6, :cond_1e

    .line 550
    .line 551
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 552
    .line 553
    .line 554
    goto :goto_11

    .line 555
    :cond_1e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 556
    .line 557
    .line 558
    :goto_11
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 559
    .line 560
    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 561
    .line 562
    .line 563
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 564
    .line 565
    invoke-static {v11, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 573
    .line 574
    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    .line 576
    .line 577
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 578
    .line 579
    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 580
    .line 581
    .line 582
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 583
    .line 584
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 585
    .line 586
    .line 587
    const/4 v6, 0x1

    .line 588
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 589
    .line 590
    .line 591
    move-object/from16 v2, v18

    .line 592
    .line 593
    goto :goto_12

    .line 594
    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 595
    .line 596
    .line 597
    move-object v2, v3

    .line 598
    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    if-eqz v7, :cond_20

    .line 603
    .line 604
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;

    .line 605
    .line 606
    move-object/from16 v3, p2

    .line 607
    .line 608
    move/from16 v6, p6

    .line 609
    .line 610
    move-object v4, v9

    .line 611
    move v5, v10

    .line 612
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 613
    .line 614
    .line 615
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 616
    .line 617
    :cond_20
    return-void
.end method

.method public static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    .line 22
    and-int/lit16 p0, p0, 0x2000

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    return v0
.end method
