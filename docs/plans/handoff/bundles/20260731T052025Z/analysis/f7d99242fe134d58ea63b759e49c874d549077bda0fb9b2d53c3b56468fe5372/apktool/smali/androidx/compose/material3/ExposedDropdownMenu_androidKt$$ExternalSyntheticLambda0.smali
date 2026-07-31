.class public final synthetic Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v2, p2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    and-int/lit8 v3, v2, 0x3

    .line 30
    .line 31
    if-eq v3, v5, :cond_0

    .line 32
    .line 33
    move v4, v7

    .line 34
    :cond_0
    and-int/2addr v2, v7

    .line 35
    move-object v13, v1

    .line 36
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v13, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Close:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    const/16 v15, 0x3c

    .line 48
    .line 49
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object v6

    .line 63
    :pswitch_0
    move-object/from16 v1, p1

    .line 64
    .line 65
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 66
    .line 67
    move-object/from16 v2, p2

    .line 68
    .line 69
    check-cast v2, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    and-int/lit8 v3, v2, 0x3

    .line 76
    .line 77
    if-eq v3, v5, :cond_2

    .line 78
    .line 79
    move v4, v7

    .line 80
    :cond_2
    and-int/2addr v2, v7

    .line 81
    move-object v13, v1

    .line 82
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    invoke-virtual {v13, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    const v1, 0x7f12058d

    .line 91
    .line 92
    .line 93
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const/high16 v14, 0x30000

    .line 98
    .line 99
    const/16 v15, 0x1c

    .line 100
    .line 101
    iget-object v8, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    sget-object v12, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogKt;->lambda$246239164:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-object v6

    .line 116
    :pswitch_1
    move-object/from16 v1, p1

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 119
    .line 120
    move-object/from16 v2, p2

    .line 121
    .line 122
    check-cast v2, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    and-int/lit8 v3, v2, 0x3

    .line 129
    .line 130
    if-eq v3, v5, :cond_4

    .line 131
    .line 132
    move v4, v7

    .line 133
    :cond_4
    and-int/2addr v2, v7

    .line 134
    move-object v13, v1

    .line 135
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 136
    .line 137
    invoke-virtual {v13, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ArrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    const/16 v15, 0x3c

    .line 147
    .line 148
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v11, 0x0

    .line 153
    const/4 v12, 0x0

    .line 154
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    :goto_2
    return-object v6

    .line 162
    :pswitch_2
    move-object/from16 v0, p1

    .line 163
    .line 164
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 165
    .line 166
    move-object/from16 v1, p2

    .line 167
    .line 168
    check-cast v1, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    and-int/lit8 v2, v1, 0x3

    .line 175
    .line 176
    if-eq v2, v5, :cond_6

    .line 177
    .line 178
    move v4, v7

    .line 179
    :cond_6
    and-int/2addr v1, v7

    .line 180
    move-object v11, v0

    .line 181
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 182
    .line 183
    invoke-virtual {v11, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    const v0, 0x7f120201

    .line 190
    .line 191
    .line 192
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    const/4 v1, 0x7

    .line 199
    invoke-direct {v0, v1, v3}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    const v1, -0x1dd810d

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    const/16 v12, 0x180

    .line 210
    .line 211
    const/16 v13, 0xa

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    const/4 v10, 0x0

    .line 215
    invoke-static/range {v7 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 220
    .line 221
    .line 222
    :goto_3
    return-object v6

    .line 223
    :pswitch_3
    move-object/from16 v1, p1

    .line 224
    .line 225
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 226
    .line 227
    move-object/from16 v2, p2

    .line 228
    .line 229
    check-cast v2, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    and-int/lit8 v3, v2, 0x3

    .line 236
    .line 237
    if-eq v3, v5, :cond_8

    .line 238
    .line 239
    move v4, v7

    .line 240
    :cond_8
    and-int/2addr v2, v7

    .line 241
    move-object v13, v1

    .line 242
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 243
    .line 244
    invoke-virtual {v13, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_9

    .line 249
    .line 250
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ArrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 251
    .line 252
    const v1, 0x7f120001

    .line 253
    .line 254
    .line 255
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    const/4 v14, 0x0

    .line 260
    const/16 v15, 0x2c

    .line 261
    .line 262
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    const/4 v10, 0x0

    .line 266
    const/4 v12, 0x0

    .line 267
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 272
    .line 273
    .line 274
    :goto_4
    return-object v6

    .line 275
    :pswitch_4
    move-object/from16 v0, p1

    .line 276
    .line 277
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 278
    .line 279
    move-object/from16 v1, p2

    .line 280
    .line 281
    check-cast v1, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    and-int/lit8 v2, v1, 0x3

    .line 288
    .line 289
    if-eq v2, v5, :cond_a

    .line 290
    .line 291
    move v4, v7

    .line 292
    :cond_a
    and-int/2addr v1, v7

    .line 293
    move-object v11, v0

    .line 294
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 295
    .line 296
    invoke-virtual {v11, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_b

    .line 301
    .line 302
    const v0, 0x7f1205c0

    .line 303
    .line 304
    .line 305
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    const/4 v1, 0x5

    .line 312
    invoke-direct {v0, v1, v3}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 313
    .line 314
    .line 315
    const v1, 0x12912f67

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    const/16 v12, 0x180

    .line 323
    .line 324
    const/16 v13, 0xa

    .line 325
    .line 326
    const/4 v8, 0x0

    .line 327
    const/4 v10, 0x0

    .line 328
    invoke-static/range {v7 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 329
    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 333
    .line 334
    .line 335
    :goto_5
    return-object v6

    .line 336
    :pswitch_5
    move-object/from16 v0, p1

    .line 337
    .line 338
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 339
    .line 340
    move-object/from16 v1, p2

    .line 341
    .line 342
    check-cast v1, Ljava/lang/Integer;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-static {v3, v0, v1}, Landroidx/sqlite/SQLite;->PermissionDeniedContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 352
    .line 353
    .line 354
    return-object v6

    .line 355
    :pswitch_6
    move-object/from16 v1, p1

    .line 356
    .line 357
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 358
    .line 359
    move-object/from16 v3, p2

    .line 360
    .line 361
    check-cast v3, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    and-int/lit8 v8, v3, 0x3

    .line 368
    .line 369
    if-eq v8, v5, :cond_c

    .line 370
    .line 371
    move v4, v7

    .line 372
    :cond_c
    and-int/2addr v3, v7

    .line 373
    move-object v13, v1

    .line 374
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 375
    .line 376
    invoke-virtual {v13, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_d

    .line 381
    .line 382
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ArrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 383
    .line 384
    const-string v1, "TopAppBarBackButton"

    .line 385
    .line 386
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    const/16 v14, 0x180

    .line 391
    .line 392
    const/16 v15, 0x38

    .line 393
    .line 394
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 395
    .line 396
    const/4 v10, 0x0

    .line 397
    const/4 v11, 0x0

    .line 398
    const/4 v12, 0x0

    .line 399
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 404
    .line 405
    .line 406
    :goto_6
    return-object v6

    .line 407
    :pswitch_7
    move-object/from16 v1, p1

    .line 408
    .line 409
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 410
    .line 411
    move-object/from16 v3, p2

    .line 412
    .line 413
    check-cast v3, Ljava/lang/Integer;

    .line 414
    .line 415
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    and-int/lit8 v8, v3, 0x3

    .line 420
    .line 421
    if-eq v8, v5, :cond_e

    .line 422
    .line 423
    move v4, v7

    .line 424
    :cond_e
    and-int/2addr v3, v7

    .line 425
    move-object v13, v1

    .line 426
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 427
    .line 428
    invoke-virtual {v13, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_f

    .line 433
    .line 434
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ArrowBack:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 435
    .line 436
    const-string v1, "SubtitleTopAppBarBackButton"

    .line 437
    .line 438
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    sget-object v1, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_organism_subtitle_top_app_bar_up_description$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 443
    .line 444
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 449
    .line 450
    invoke-static {v1, v13}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    const/16 v14, 0x180

    .line 455
    .line 456
    const/16 v15, 0x28

    .line 457
    .line 458
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 459
    .line 460
    const/4 v10, 0x0

    .line 461
    const/4 v12, 0x0

    .line 462
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 463
    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 467
    .line 468
    .line 469
    :goto_7
    return-object v6

    .line 470
    :pswitch_8
    move-object/from16 v0, p1

    .line 471
    .line 472
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 473
    .line 474
    move-object/from16 v1, p2

    .line 475
    .line 476
    check-cast v1, Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    invoke-static {v3, v0, v1}, Landroidx/compose/material3/CardKt;->OnPlatformWindowBoundsChange(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 486
    .line 487
    .line 488
    return-object v6

    .line 489
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
