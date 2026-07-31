.class public abstract Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalIsInPopupLayout:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalPopupTestTag:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE$3:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE$2:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    .line 20
    return-void
.end method

.method public static final Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p4

    .line 4
    .line 5
    move/from16 v10, p5

    .line 6
    .line 7
    const v0, -0x699ff8ef

    .line 8
    .line 9
    .line 10
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v10, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v10

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v10

    .line 29
    :goto_1
    and-int/lit8 v2, p6, 0x2

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x30

    .line 34
    .line 35
    :cond_2
    move-object/from16 v3, p1

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v3, v10, 0x30

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move-object/from16 v3, p1

    .line 43
    .line 44
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v4

    .line 56
    :goto_3
    and-int/lit16 v4, v10, 0x180

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    move-object/from16 v4, p2

    .line 61
    .line 62
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const/16 v5, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    const/16 v5, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v5

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    move-object/from16 v4, p2

    .line 76
    .line 77
    :goto_5
    and-int/lit16 v5, v10, 0xc00

    .line 78
    .line 79
    move-object/from16 v15, p3

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_7

    .line 88
    .line 89
    const/16 v5, 0x800

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    const/16 v5, 0x400

    .line 93
    .line 94
    :goto_6
    or-int/2addr v0, v5

    .line 95
    :cond_8
    and-int/lit16 v5, v0, 0x493

    .line 96
    .line 97
    const/16 v6, 0x492

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    if-eq v5, v6, :cond_9

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    goto :goto_7

    .line 104
    :cond_9
    move v5, v8

    .line 105
    :goto_7
    and-int/lit8 v6, v0, 0x1

    .line 106
    .line 107
    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_1f

    .line 112
    .line 113
    if-eqz v2, :cond_a

    .line 114
    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    goto :goto_8

    .line 118
    :cond_a
    move-object/from16 v17, v3

    .line 119
    .line 120
    :goto_8
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroid/view/View;

    .line 127
    .line 128
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 129
    .line 130
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 135
    .line 136
    sget-object v6, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    move-object/from16 v19, v6

    .line 143
    .line 144
    check-cast v19, Ljava/lang/String;

    .line 145
    .line 146
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 147
    .line 148
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    move-object/from16 v20, v6

    .line 153
    .line 154
    check-cast v20, Landroidx/compose/ui/unit/LayoutDirection;

    .line 155
    .line 156
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->rememberCompositionContext(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static/range {p3 .. p4}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    new-array v5, v8, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 171
    .line 172
    if-ne v7, v12, :cond_b

    .line 173
    .line 174
    sget-object v7, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    .line 175
    .line 176
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 180
    .line 181
    invoke-static {v5, v7, v9}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    move-object v7, v5

    .line 186
    check-cast v7, Ljava/util/UUID;

    .line 187
    .line 188
    sget-object v5, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 189
    .line 190
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    if-ne v8, v12, :cond_c

    .line 205
    .line 206
    move/from16 v22, v0

    .line 207
    .line 208
    new-instance v0, Landroidx/compose/ui/window/PopupLayout;

    .line 209
    .line 210
    move-object v8, v4

    .line 211
    move-object v4, v2

    .line 212
    move-object v2, v8

    .line 213
    move v8, v5

    .line 214
    move-object/from16 v23, v6

    .line 215
    .line 216
    move/from16 v13, v22

    .line 217
    .line 218
    const/4 v14, 0x0

    .line 219
    move-object v6, v1

    .line 220
    move-object v5, v3

    .line 221
    move-object/from16 v1, v17

    .line 222
    .line 223
    move-object/from16 v3, v19

    .line 224
    .line 225
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Z)V

    .line 226
    .line 227
    .line 228
    move-object v1, v6

    .line 229
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;

    .line 230
    .line 231
    invoke-direct {v2, v0, v11, v14}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/MutableState;I)V

    .line 232
    .line 233
    .line 234
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 235
    .line 236
    const v5, -0x11bbdae4

    .line 237
    .line 238
    .line 239
    const/4 v6, 0x1

    .line 240
    invoke-direct {v4, v2, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v2, v23

    .line 244
    .line 245
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/window/PopupLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    move-object v8, v0

    .line 252
    goto :goto_9

    .line 253
    :cond_c
    move v13, v0

    .line 254
    move-object/from16 v3, v19

    .line 255
    .line 256
    const/4 v14, 0x0

    .line 257
    :goto_9
    check-cast v8, Landroidx/compose/ui/window/PopupLayout;

    .line 258
    .line 259
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    and-int/lit8 v2, v13, 0x70

    .line 264
    .line 265
    const/16 v4, 0x20

    .line 266
    .line 267
    if-ne v2, v4, :cond_d

    .line 268
    .line 269
    const/4 v7, 0x1

    .line 270
    goto :goto_a

    .line 271
    :cond_d
    move v7, v14

    .line 272
    :goto_a
    or-int/2addr v0, v7

    .line 273
    and-int/lit16 v4, v13, 0x380

    .line 274
    .line 275
    const/16 v5, 0x100

    .line 276
    .line 277
    if-ne v4, v5, :cond_e

    .line 278
    .line 279
    const/4 v7, 0x1

    .line 280
    goto :goto_b

    .line 281
    :cond_e
    move v7, v14

    .line 282
    :goto_b
    or-int/2addr v0, v7

    .line 283
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    or-int/2addr v0, v5

    .line 288
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    or-int/2addr v0, v5

    .line 297
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    if-nez v0, :cond_f

    .line 302
    .line 303
    if-ne v5, v12, :cond_10

    .line 304
    .line 305
    :cond_f
    new-instance v15, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;

    .line 306
    .line 307
    move-object/from16 v18, p2

    .line 308
    .line 309
    move-object/from16 v19, v3

    .line 310
    .line 311
    move-object/from16 v16, v8

    .line 312
    .line 313
    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    move-object v5, v15

    .line 320
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 321
    .line 322
    invoke-static {v8, v5, v9}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    const/16 v5, 0x20

    .line 330
    .line 331
    if-ne v2, v5, :cond_11

    .line 332
    .line 333
    const/4 v7, 0x1

    .line 334
    goto :goto_c

    .line 335
    :cond_11
    move v7, v14

    .line 336
    :goto_c
    or-int/2addr v0, v7

    .line 337
    const/16 v5, 0x100

    .line 338
    .line 339
    if-ne v4, v5, :cond_12

    .line 340
    .line 341
    const/4 v7, 0x1

    .line 342
    goto :goto_d

    .line 343
    :cond_12
    move v7, v14

    .line 344
    :goto_d
    or-int/2addr v0, v7

    .line 345
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    or-int/2addr v0, v2

    .line 350
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    or-int/2addr v0, v2

    .line 359
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-nez v0, :cond_14

    .line 364
    .line 365
    if-ne v2, v12, :cond_13

    .line 366
    .line 367
    goto :goto_e

    .line 368
    :cond_13
    move-object/from16 v6, v20

    .line 369
    .line 370
    goto :goto_f

    .line 371
    :cond_14
    :goto_e
    new-instance v15, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;

    .line 372
    .line 373
    const/16 v21, 0x0

    .line 374
    .line 375
    move-object/from16 v18, p2

    .line 376
    .line 377
    move-object/from16 v19, v3

    .line 378
    .line 379
    move-object/from16 v16, v8

    .line 380
    .line 381
    invoke-direct/range {v15 .. v21}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v6, v20

    .line 385
    .line 386
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    move-object v2, v15

    .line 390
    :goto_f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 391
    .line 392
    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    and-int/lit8 v2, v13, 0xe

    .line 400
    .line 401
    const/4 v3, 0x4

    .line 402
    if-ne v2, v3, :cond_15

    .line 403
    .line 404
    const/4 v7, 0x1

    .line 405
    goto :goto_10

    .line 406
    :cond_15
    move v7, v14

    .line 407
    :goto_10
    or-int/2addr v0, v7

    .line 408
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    if-nez v0, :cond_16

    .line 413
    .line 414
    if-ne v2, v12, :cond_17

    .line 415
    .line 416
    :cond_16
    new-instance v2, Landroidx/datastore/core/SimpleActor$1;

    .line 417
    .line 418
    const/16 v0, 0xb

    .line 419
    .line 420
    invoke-direct {v2, v0, v8, v1}, Landroidx/datastore/core/SimpleActor$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 427
    .line 428
    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    if-nez v0, :cond_18

    .line 440
    .line 441
    if-ne v2, v12, :cond_19

    .line 442
    .line 443
    :cond_18
    new-instance v2, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 444
    .line 445
    const/16 v0, 0x1c

    .line 446
    .line 447
    const/4 v3, 0x0

    .line 448
    invoke-direct {v2, v0, v8, v3}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 455
    .line 456
    invoke-static {v9, v8, v2}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    if-nez v0, :cond_1a

    .line 468
    .line 469
    if-ne v2, v12, :cond_1b

    .line 470
    .line 471
    :cond_1a
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;

    .line 472
    .line 473
    invoke-direct {v2, v8, v14}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_1b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 480
    .line 481
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 482
    .line 483
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    or-int/2addr v2, v3

    .line 500
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    if-nez v2, :cond_1c

    .line 505
    .line 506
    if-ne v3, v12, :cond_1d

    .line 507
    .line 508
    :cond_1c
    new-instance v3, Landroidx/compose/foundation/text/TextMeasurePolicy;

    .line 509
    .line 510
    const/4 v2, 0x2

    .line 511
    invoke-direct {v3, v2, v8, v6}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :cond_1d
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 518
    .line 519
    iget-wide v4, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 520
    .line 521
    const/16 v22, 0x20

    .line 522
    .line 523
    ushr-long v6, v4, v22

    .line 524
    .line 525
    xor-long/2addr v4, v6

    .line 526
    long-to-int v2, v4

    .line 527
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    invoke-static {v9, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 536
    .line 537
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 541
    .line 542
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 543
    .line 544
    .line 545
    iget-boolean v6, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 546
    .line 547
    if-eqz v6, :cond_1e

    .line 548
    .line 549
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 550
    .line 551
    .line 552
    goto :goto_11

    .line 553
    :cond_1e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 554
    .line 555
    .line 556
    :goto_11
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 557
    .line 558
    invoke-static {v9, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 559
    .line 560
    .line 561
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 562
    .line 563
    invoke-static {v9, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 571
    .line 572
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 573
    .line 574
    .line 575
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 576
    .line 577
    invoke-static {v9, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 578
    .line 579
    .line 580
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 581
    .line 582
    invoke-static {v9, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 583
    .line 584
    .line 585
    const/4 v6, 0x1

    .line 586
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v2, v17

    .line 590
    .line 591
    goto :goto_12

    .line 592
    :cond_1f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 593
    .line 594
    .line 595
    move-object v2, v3

    .line 596
    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    if-eqz v7, :cond_20

    .line 601
    .line 602
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;

    .line 603
    .line 604
    move-object/from16 v3, p2

    .line 605
    .line 606
    move-object/from16 v4, p3

    .line 607
    .line 608
    move/from16 v6, p6

    .line 609
    .line 610
    move v5, v10

    .line 611
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 612
    .line 613
    .line 614
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 615
    .line 616
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
