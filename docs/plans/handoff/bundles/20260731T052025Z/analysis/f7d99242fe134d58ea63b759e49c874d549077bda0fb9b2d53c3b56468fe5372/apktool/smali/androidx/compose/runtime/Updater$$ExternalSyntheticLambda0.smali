.class public final synthetic Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const/16 v3, 0xd

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x2

    .line 16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 24
    .line 25
    move-object/from16 v2, p2

    .line 26
    .line 27
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-wide v3, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 33
    .line 34
    const-wide v5, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v3, v5

    .line 40
    long-to-int v1, v3

    .line 41
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x0

    .line 46
    cmpg-float v1, v1, v3

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-wide v1, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 52
    .line 53
    and-long/2addr v1, v5

    .line 54
    long-to-int v1, v1

    .line 55
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object v9

    .line 67
    :pswitch_0
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 68
    .line 69
    move-object/from16 v2, p2

    .line 70
    .line 71
    check-cast v2, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    and-int/lit8 v3, v2, 0x3

    .line 78
    .line 79
    if-eq v3, v8, :cond_1

    .line 80
    .line 81
    move v6, v7

    .line 82
    :cond_1
    and-int/2addr v2, v7

    .line 83
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    invoke-virtual {v1, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    if-ne v3, v5, :cond_3

    .line 102
    .line 103
    :cond_2
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 104
    .line 105
    const/16 v2, 0x19

    .line 106
    .line 107
    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    move-object v10, v3

    .line 114
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 115
    .line 116
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ArrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    const/16 v18, 0x3c

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v13, 0x0

    .line 124
    const/4 v14, 0x0

    .line 125
    const/4 v15, 0x0

    .line 126
    move-object/from16 v16, v1

    .line 127
    .line 128
    invoke-static/range {v10 .. v18}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object/from16 v16, v1

    .line 133
    .line 134
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-object v9

    .line 138
    :pswitch_1
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 139
    .line 140
    move-object/from16 v2, p2

    .line 141
    .line 142
    check-cast v2, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    and-int/lit8 v3, v2, 0x3

    .line 149
    .line 150
    if-eq v3, v8, :cond_5

    .line 151
    .line 152
    move v6, v7

    .line 153
    :cond_5
    and-int/2addr v2, v7

    .line 154
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 155
    .line 156
    invoke-virtual {v1, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-nez v2, :cond_6

    .line 171
    .line 172
    if-ne v3, v5, :cond_7

    .line 173
    .line 174
    :cond_6
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 175
    .line 176
    const/16 v2, 0xa

    .line 177
    .line 178
    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    move-object v10, v3

    .line 185
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-nez v2, :cond_8

    .line 196
    .line 197
    if-ne v3, v5, :cond_9

    .line 198
    .line 199
    :cond_8
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 200
    .line 201
    const/16 v2, 0xb

    .line 202
    .line 203
    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    move-object v11, v3

    .line 210
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 211
    .line 212
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 213
    .line 214
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    const/16 v17, 0x0

    .line 219
    .line 220
    const/16 v18, 0x38

    .line 221
    .line 222
    const/4 v13, 0x0

    .line 223
    const/4 v14, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    move-object/from16 v16, v1

    .line 226
    .line 227
    invoke-static/range {v10 .. v18}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    move-object/from16 v16, v1

    .line 232
    .line 233
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    :goto_2
    return-object v9

    .line 237
    :pswitch_2
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 238
    .line 239
    move-object/from16 v2, p2

    .line 240
    .line 241
    check-cast v2, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    and-int/lit8 v3, v2, 0x3

    .line 248
    .line 249
    if-eq v3, v8, :cond_b

    .line 250
    .line 251
    move v6, v7

    .line 252
    :cond_b
    and-int/2addr v2, v7

    .line 253
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 254
    .line 255
    invoke-virtual {v1, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_10

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-nez v2, :cond_c

    .line 270
    .line 271
    if-ne v3, v5, :cond_d

    .line 272
    .line 273
    :cond_c
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 274
    .line 275
    const/4 v2, 0x7

    .line 276
    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_d
    move-object v10, v3

    .line 283
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 284
    .line 285
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    if-nez v2, :cond_e

    .line 294
    .line 295
    if-ne v3, v5, :cond_f

    .line 296
    .line 297
    :cond_e
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 298
    .line 299
    const/16 v2, 0x8

    .line 300
    .line 301
    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    :cond_f
    move-object v11, v3

    .line 308
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 309
    .line 310
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 311
    .line 312
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    const/16 v17, 0x0

    .line 317
    .line 318
    const/16 v18, 0x38

    .line 319
    .line 320
    const/4 v13, 0x0

    .line 321
    const/4 v14, 0x0

    .line 322
    const/4 v15, 0x0

    .line 323
    move-object/from16 v16, v1

    .line 324
    .line 325
    invoke-static/range {v10 .. v18}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_10
    move-object/from16 v16, v1

    .line 330
    .line 331
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 332
    .line 333
    .line 334
    :goto_3
    return-object v9

    .line 335
    :pswitch_3
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 336
    .line 337
    move-object/from16 v2, p2

    .line 338
    .line 339
    check-cast v2, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    and-int/lit8 v10, v2, 0x3

    .line 346
    .line 347
    if-eq v10, v8, :cond_11

    .line 348
    .line 349
    move v10, v7

    .line 350
    goto :goto_4

    .line 351
    :cond_11
    move v10, v6

    .line 352
    :goto_4
    and-int/2addr v2, v7

    .line 353
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 354
    .line 355
    invoke-virtual {v1, v2, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_15

    .line 360
    .line 361
    new-instance v2, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 362
    .line 363
    invoke-direct {v2, v3, v6, v6, v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 364
    .line 365
    .line 366
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 367
    .line 368
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v13

    .line 372
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-ne v3, v5, :cond_12

    .line 377
    .line 378
    new-instance v3, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 379
    .line 380
    invoke-direct {v3, v8}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_12
    move-object v11, v3

    .line 387
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    if-nez v3, :cond_13

    .line 398
    .line 399
    if-ne v4, v5, :cond_14

    .line 400
    .line 401
    :cond_13
    new-instance v4, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 402
    .line 403
    const/16 v3, 0x18

    .line 404
    .line 405
    invoke-direct {v4, v3, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_14
    move-object v12, v4

    .line 412
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 413
    .line 414
    const/16 v18, 0x6

    .line 415
    .line 416
    const/16 v19, 0x18

    .line 417
    .line 418
    const/4 v14, 0x0

    .line 419
    const/4 v15, 0x0

    .line 420
    move-object/from16 v17, v1

    .line 421
    .line 422
    move-object/from16 v16, v2

    .line 423
    .line 424
    invoke-static/range {v11 .. v19}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 425
    .line 426
    .line 427
    goto :goto_5

    .line 428
    :cond_15
    move-object/from16 v17, v1

    .line 429
    .line 430
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 431
    .line 432
    .line 433
    :goto_5
    return-object v9

    .line 434
    :pswitch_4
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 435
    .line 436
    move-object/from16 v2, p2

    .line 437
    .line 438
    check-cast v2, Ljava/lang/Integer;

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    and-int/lit8 v10, v2, 0x3

    .line 445
    .line 446
    if-eq v10, v8, :cond_16

    .line 447
    .line 448
    move v10, v7

    .line 449
    goto :goto_6

    .line 450
    :cond_16
    move v10, v6

    .line 451
    :goto_6
    and-int/2addr v2, v7

    .line 452
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 453
    .line 454
    invoke-virtual {v1, v2, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_1a

    .line 459
    .line 460
    new-instance v2, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 461
    .line 462
    invoke-direct {v2, v3, v6, v6, v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 463
    .line 464
    .line 465
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 466
    .line 467
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    if-ne v3, v5, :cond_17

    .line 476
    .line 477
    new-instance v3, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 478
    .line 479
    invoke-direct {v3, v8}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    :cond_17
    move-object v11, v3

    .line 486
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    if-nez v3, :cond_18

    .line 497
    .line 498
    if-ne v4, v5, :cond_19

    .line 499
    .line 500
    :cond_18
    new-instance v4, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 501
    .line 502
    const/16 v3, 0x14

    .line 503
    .line 504
    invoke-direct {v4, v3, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    :cond_19
    move-object v12, v4

    .line 511
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 512
    .line 513
    const/16 v18, 0x6

    .line 514
    .line 515
    const/16 v19, 0x18

    .line 516
    .line 517
    const/4 v14, 0x0

    .line 518
    const/4 v15, 0x0

    .line 519
    move-object/from16 v17, v1

    .line 520
    .line 521
    move-object/from16 v16, v2

    .line 522
    .line 523
    invoke-static/range {v11 .. v19}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 524
    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_1a
    move-object/from16 v17, v1

    .line 528
    .line 529
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 530
    .line 531
    .line 532
    :goto_7
    return-object v9

    .line 533
    :pswitch_5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 534
    .line 535
    move-object/from16 v2, p2

    .line 536
    .line 537
    check-cast v2, Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    and-int/lit8 v3, v2, 0x3

    .line 544
    .line 545
    if-eq v3, v8, :cond_1b

    .line 546
    .line 547
    move v6, v7

    .line 548
    :cond_1b
    and-int/2addr v2, v7

    .line 549
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 550
    .line 551
    invoke-virtual {v1, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_20

    .line 556
    .line 557
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    if-nez v2, :cond_1c

    .line 566
    .line 567
    if-ne v3, v5, :cond_1d

    .line 568
    .line 569
    :cond_1c
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 570
    .line 571
    const/16 v2, 0x11

    .line 572
    .line 573
    invoke-direct {v3, v2, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    :cond_1d
    move-object v10, v3

    .line 580
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 581
    .line 582
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    if-nez v2, :cond_1e

    .line 591
    .line 592
    if-ne v3, v5, :cond_1f

    .line 593
    .line 594
    :cond_1e
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 595
    .line 596
    const/16 v2, 0x12

    .line 597
    .line 598
    invoke-direct {v3, v2, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :cond_1f
    move-object v11, v3

    .line 605
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 606
    .line 607
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 608
    .line 609
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 610
    .line 611
    .line 612
    move-result-object v12

    .line 613
    const/16 v17, 0x0

    .line 614
    .line 615
    const/16 v18, 0x38

    .line 616
    .line 617
    const/4 v13, 0x0

    .line 618
    const/4 v14, 0x0

    .line 619
    const/4 v15, 0x0

    .line 620
    move-object/from16 v16, v1

    .line 621
    .line 622
    invoke-static/range {v10 .. v18}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 623
    .line 624
    .line 625
    goto :goto_8

    .line 626
    :cond_20
    move-object/from16 v16, v1

    .line 627
    .line 628
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 629
    .line 630
    .line 631
    :goto_8
    return-object v9

    .line 632
    :pswitch_6
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 633
    .line 634
    move-object/from16 v2, p2

    .line 635
    .line 636
    check-cast v2, Ljava/lang/Integer;

    .line 637
    .line 638
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    and-int/lit8 v10, v2, 0x3

    .line 643
    .line 644
    if-eq v10, v8, :cond_21

    .line 645
    .line 646
    move v6, v7

    .line 647
    :cond_21
    and-int/2addr v2, v7

    .line 648
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 649
    .line 650
    invoke-virtual {v1, v2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-eqz v2, :cond_26

    .line 655
    .line 656
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    if-nez v2, :cond_22

    .line 665
    .line 666
    if-ne v6, v5, :cond_23

    .line 667
    .line 668
    :cond_22
    new-instance v6, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 669
    .line 670
    const/16 v2, 0xc

    .line 671
    .line 672
    invoke-direct {v6, v2, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    :cond_23
    move-object v10, v6

    .line 679
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 680
    .line 681
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    if-nez v2, :cond_24

    .line 690
    .line 691
    if-ne v6, v5, :cond_25

    .line 692
    .line 693
    :cond_24
    new-instance v6, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 694
    .line 695
    invoke-direct {v6, v3, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_25
    move-object v11, v6

    .line 702
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 703
    .line 704
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 705
    .line 706
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    const/16 v17, 0x0

    .line 711
    .line 712
    const/16 v18, 0x38

    .line 713
    .line 714
    const/4 v13, 0x0

    .line 715
    const/4 v14, 0x0

    .line 716
    const/4 v15, 0x0

    .line 717
    move-object/from16 v16, v1

    .line 718
    .line 719
    invoke-static/range {v10 .. v18}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 720
    .line 721
    .line 722
    goto :goto_9

    .line 723
    :cond_26
    move-object/from16 v16, v1

    .line 724
    .line 725
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 726
    .line 727
    .line 728
    :goto_9
    return-object v9

    .line 729
    :pswitch_7
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 730
    .line 731
    move-object/from16 v2, p2

    .line 732
    .line 733
    check-cast v2, Ljava/lang/Integer;

    .line 734
    .line 735
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 743
    .line 744
    return-object v0

    .line 745
    :pswitch_8
    move-object/from16 v2, p2

    .line 746
    .line 747
    check-cast v2, Lkotlin/Unit;

    .line 748
    .line 749
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    return-object v9

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
