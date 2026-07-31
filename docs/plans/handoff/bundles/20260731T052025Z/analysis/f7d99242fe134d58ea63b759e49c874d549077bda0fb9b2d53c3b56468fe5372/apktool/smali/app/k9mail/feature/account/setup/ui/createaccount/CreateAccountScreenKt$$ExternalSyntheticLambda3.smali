.class public final synthetic Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/MutableState;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x2

    .line 8
    const/16 v5, 0x12

    .line 9
    .line 10
    const v6, 0x7f120146

    .line 11
    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 15
    .line 16
    const/16 v9, 0x10

    .line 17
    .line 18
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-object/from16 v1, p2

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 37
    .line 38
    move-object/from16 v2, p3

    .line 39
    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    and-int/lit8 v3, v2, 0x11

    .line 47
    .line 48
    if-eq v3, v9, :cond_0

    .line 49
    .line 50
    move v12, v11

    .line 51
    :cond_0
    and-int/2addr v2, v11

    .line 52
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v1, v2, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-ne v2, v8, :cond_1

    .line 65
    .line 66
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/16 v3, 0x15

    .line 69
    .line 70
    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    move-object v13, v2

    .line 77
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    sget-object v14, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->MoreVert:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 80
    .line 81
    const/16 v20, 0x6

    .line 82
    .line 83
    const/16 v21, 0x3c

    .line 84
    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    const/16 v17, 0x0

    .line 89
    .line 90
    const/16 v18, 0x0

    .line 91
    .line 92
    move-object/from16 v19, v1

    .line 93
    .line 94
    invoke-static/range {v13 .. v21}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move-object/from16 v19, v1

    .line 99
    .line 100
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-object v10

    .line 104
    :pswitch_0
    move-object/from16 v1, p1

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 107
    .line 108
    move-object/from16 v2, p2

    .line 109
    .line 110
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 111
    .line 112
    move-object/from16 v3, p3

    .line 113
    .line 114
    check-cast v3, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    and-int/lit8 v1, v3, 0x11

    .line 124
    .line 125
    if-eq v1, v9, :cond_3

    .line 126
    .line 127
    move v1, v11

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v1, v12

    .line 130
    :goto_1
    and-int/2addr v3, v11

    .line 131
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-ne v1, v8, :cond_4

    .line 144
    .line 145
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 155
    .line 156
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-ne v3, v8, :cond_5

    .line 171
    .line 172
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    const/16 v4, 0xe

    .line 175
    .line 176
    invoke-direct {v3, v1, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    move-object v14, v3

    .line 183
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 184
    .line 185
    invoke-static {v2, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    filled-new-array {v3}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v3}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-ne v3, v8, :cond_6

    .line 202
    .line 203
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;

    .line 204
    .line 205
    invoke-direct {v3, v0, v1, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    move-object/from16 v16, v3

    .line 212
    .line 213
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 216
    .line 217
    const/4 v3, 0x7

    .line 218
    invoke-direct {v0, v1, v3}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 219
    .line 220
    .line 221
    const v1, 0x17d7d6a5

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 225
    .line 226
    .line 227
    move-result-object v20

    .line 228
    const v22, 0xc00c30

    .line 229
    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    const/16 v19, 0x0

    .line 236
    .line 237
    move-object/from16 v21, v2

    .line 238
    .line 239
    invoke-static/range {v13 .. v22}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->DropdownMenuBox(ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_7
    move-object/from16 v21, v2

    .line 244
    .line 245
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 246
    .line 247
    .line 248
    :goto_2
    return-object v10

    .line 249
    :pswitch_1
    move-object/from16 v1, p1

    .line 250
    .line 251
    check-cast v1, Ljava/lang/Boolean;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-object/from16 v1, p2

    .line 257
    .line 258
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 259
    .line 260
    move-object/from16 v2, p3

    .line 261
    .line 262
    check-cast v2, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    and-int/lit8 v3, v2, 0x11

    .line 269
    .line 270
    if-eq v3, v9, :cond_8

    .line 271
    .line 272
    move v12, v11

    .line 273
    :cond_8
    and-int/2addr v2, v11

    .line 274
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 275
    .line 276
    invoke-virtual {v1, v2, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    if-ne v2, v8, :cond_9

    .line 287
    .line 288
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 289
    .line 290
    invoke-direct {v2, v0, v5}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_9
    move-object v13, v2

    .line 297
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 298
    .line 299
    sget-object v14, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->MoreVert:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 300
    .line 301
    const/16 v20, 0x6

    .line 302
    .line 303
    const/16 v21, 0x3c

    .line 304
    .line 305
    const/4 v15, 0x0

    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    const/16 v18, 0x0

    .line 311
    .line 312
    move-object/from16 v19, v1

    .line 313
    .line 314
    invoke-static/range {v13 .. v21}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    move-object/from16 v19, v1

    .line 319
    .line 320
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 321
    .line 322
    .line 323
    :goto_3
    return-object v10

    .line 324
    :pswitch_2
    move-object/from16 v1, p1

    .line 325
    .line 326
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 327
    .line 328
    move-object/from16 v2, p2

    .line 329
    .line 330
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 331
    .line 332
    move-object/from16 v3, p3

    .line 333
    .line 334
    check-cast v3, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    and-int/lit8 v1, v3, 0x11

    .line 344
    .line 345
    if-eq v1, v9, :cond_b

    .line 346
    .line 347
    move v12, v11

    .line 348
    :cond_b
    and-int/lit8 v1, v3, 0x1

    .line 349
    .line 350
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 351
    .line 352
    invoke-virtual {v2, v1, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_f

    .line 357
    .line 358
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-ne v1, v8, :cond_c

    .line 363
    .line 364
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    .line 366
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_c
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 374
    .line 375
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Ljava/lang/Boolean;

    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    if-ne v3, v8, :cond_d

    .line 390
    .line 391
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    const/16 v4, 0xd

    .line 394
    .line 395
    invoke-direct {v3, v1, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :cond_d
    move-object v14, v3

    .line 402
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 403
    .line 404
    invoke-static {v2, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    filled-new-array {v3}, [Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-static {v3}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 413
    .line 414
    .line 415
    move-result-object v15

    .line 416
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    if-ne v3, v8, :cond_e

    .line 421
    .line 422
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;

    .line 423
    .line 424
    invoke-direct {v3, v0, v1, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_e
    move-object/from16 v16, v3

    .line 431
    .line 432
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 433
    .line 434
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 435
    .line 436
    const/4 v3, 0x5

    .line 437
    invoke-direct {v0, v1, v3}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 438
    .line 439
    .line 440
    const v1, 0x6e7aec98

    .line 441
    .line 442
    .line 443
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 444
    .line 445
    .line 446
    move-result-object v20

    .line 447
    const v22, 0xc00c30

    .line 448
    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    const/16 v18, 0x0

    .line 453
    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    move-object/from16 v21, v2

    .line 457
    .line 458
    invoke-static/range {v13 .. v22}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->DropdownMenuBox(ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 459
    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_f
    move-object/from16 v21, v2

    .line 463
    .line 464
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 465
    .line 466
    .line 467
    :goto_4
    return-object v10

    .line 468
    :pswitch_3
    move-object/from16 v1, p1

    .line 469
    .line 470
    check-cast v1, Ljava/lang/Boolean;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    move-object/from16 v1, p2

    .line 476
    .line 477
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 478
    .line 479
    move-object/from16 v2, p3

    .line 480
    .line 481
    check-cast v2, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    and-int/lit8 v3, v2, 0x11

    .line 488
    .line 489
    if-eq v3, v9, :cond_10

    .line 490
    .line 491
    move v12, v11

    .line 492
    :cond_10
    and-int/2addr v2, v11

    .line 493
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 494
    .line 495
    invoke-virtual {v1, v2, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-eqz v2, :cond_12

    .line 500
    .line 501
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-ne v2, v8, :cond_11

    .line 506
    .line 507
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 508
    .line 509
    const/16 v3, 0xf

    .line 510
    .line 511
    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :cond_11
    move-object v13, v2

    .line 518
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 519
    .line 520
    sget-object v14, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->MoreVert:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 521
    .line 522
    const/16 v20, 0x6

    .line 523
    .line 524
    const/16 v21, 0x3c

    .line 525
    .line 526
    const/4 v15, 0x0

    .line 527
    const/16 v16, 0x0

    .line 528
    .line 529
    const/16 v17, 0x0

    .line 530
    .line 531
    const/16 v18, 0x0

    .line 532
    .line 533
    move-object/from16 v19, v1

    .line 534
    .line 535
    invoke-static/range {v13 .. v21}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 536
    .line 537
    .line 538
    goto :goto_5

    .line 539
    :cond_12
    move-object/from16 v19, v1

    .line 540
    .line 541
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 542
    .line 543
    .line 544
    :goto_5
    return-object v10

    .line 545
    :pswitch_4
    move-object/from16 v1, p1

    .line 546
    .line 547
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 548
    .line 549
    move-object/from16 v2, p2

    .line 550
    .line 551
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 552
    .line 553
    move-object/from16 v3, p3

    .line 554
    .line 555
    check-cast v3, Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    and-int/lit8 v1, v3, 0x11

    .line 565
    .line 566
    if-eq v1, v9, :cond_13

    .line 567
    .line 568
    move v12, v11

    .line 569
    :cond_13
    and-int/lit8 v1, v3, 0x1

    .line 570
    .line 571
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 572
    .line 573
    invoke-virtual {v2, v1, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-eqz v1, :cond_17

    .line 578
    .line 579
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    if-ne v1, v8, :cond_14

    .line 584
    .line 585
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 586
    .line 587
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    :cond_14
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 595
    .line 596
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    check-cast v3, Ljava/lang/Boolean;

    .line 601
    .line 602
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 603
    .line 604
    .line 605
    move-result v13

    .line 606
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    if-ne v3, v8, :cond_15

    .line 611
    .line 612
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 613
    .line 614
    const/16 v5, 0xc

    .line 615
    .line 616
    invoke-direct {v3, v1, v5}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    :cond_15
    move-object v14, v3

    .line 623
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 624
    .line 625
    invoke-static {v2, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    filled-new-array {v3}, [Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v3}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 634
    .line 635
    .line 636
    move-result-object v15

    .line 637
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    if-ne v3, v8, :cond_16

    .line 642
    .line 643
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;

    .line 644
    .line 645
    invoke-direct {v3, v0, v1, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    :cond_16
    move-object/from16 v16, v3

    .line 652
    .line 653
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 654
    .line 655
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 656
    .line 657
    invoke-direct {v0, v1, v7}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 658
    .line 659
    .line 660
    const v1, -0x14d360b0

    .line 661
    .line 662
    .line 663
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 664
    .line 665
    .line 666
    move-result-object v20

    .line 667
    const v22, 0xc00c30

    .line 668
    .line 669
    .line 670
    const/16 v17, 0x0

    .line 671
    .line 672
    const/16 v18, 0x0

    .line 673
    .line 674
    const/16 v19, 0x0

    .line 675
    .line 676
    move-object/from16 v21, v2

    .line 677
    .line 678
    invoke-static/range {v13 .. v22}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->DropdownMenuBox(ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 679
    .line 680
    .line 681
    goto :goto_6

    .line 682
    :cond_17
    move-object/from16 v21, v2

    .line 683
    .line 684
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 685
    .line 686
    .line 687
    :goto_6
    return-object v10

    .line 688
    :pswitch_5
    move-object/from16 v1, p1

    .line 689
    .line 690
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 691
    .line 692
    move-object/from16 v6, p2

    .line 693
    .line 694
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 695
    .line 696
    move-object/from16 v8, p3

    .line 697
    .line 698
    check-cast v8, Ljava/lang/Integer;

    .line 699
    .line 700
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    and-int/lit8 v9, v8, 0x6

    .line 708
    .line 709
    if-nez v9, :cond_19

    .line 710
    .line 711
    move-object v9, v6

    .line 712
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 713
    .line 714
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v9

    .line 718
    if-eqz v9, :cond_18

    .line 719
    .line 720
    goto :goto_7

    .line 721
    :cond_18
    move v3, v4

    .line 722
    :goto_7
    or-int/2addr v8, v3

    .line 723
    :cond_19
    and-int/lit8 v3, v8, 0x13

    .line 724
    .line 725
    if-eq v3, v5, :cond_1a

    .line 726
    .line 727
    goto :goto_8

    .line 728
    :cond_1a
    move v11, v12

    .line 729
    :goto_8
    and-int/lit8 v3, v8, 0x1

    .line 730
    .line 731
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 732
    .line 733
    invoke-virtual {v6, v3, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-eqz v3, :cond_1b

    .line 738
    .line 739
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 744
    .line 745
    shl-int/lit8 v3, v8, 0x3

    .line 746
    .line 747
    and-int/lit8 v3, v3, 0x70

    .line 748
    .line 749
    const/16 v4, 0x8

    .line 750
    .line 751
    or-int/2addr v3, v4

    .line 752
    invoke-static {v0, v1, v2, v6, v3}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->SaveServerSettingsContent(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 753
    .line 754
    .line 755
    goto :goto_9

    .line 756
    :cond_1b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 757
    .line 758
    .line 759
    :goto_9
    return-object v10

    .line 760
    :pswitch_6
    move-object/from16 v1, p1

    .line 761
    .line 762
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 763
    .line 764
    move-object/from16 v6, p2

    .line 765
    .line 766
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 767
    .line 768
    move-object/from16 v8, p3

    .line 769
    .line 770
    check-cast v8, Ljava/lang/Integer;

    .line 771
    .line 772
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 773
    .line 774
    .line 775
    move-result v8

    .line 776
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    and-int/lit8 v9, v8, 0x6

    .line 780
    .line 781
    if-nez v9, :cond_1d

    .line 782
    .line 783
    move-object v9, v6

    .line 784
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 785
    .line 786
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    if-eqz v9, :cond_1c

    .line 791
    .line 792
    goto :goto_a

    .line 793
    :cond_1c
    move v3, v4

    .line 794
    :goto_a
    or-int/2addr v8, v3

    .line 795
    :cond_1d
    and-int/lit8 v3, v8, 0x13

    .line 796
    .line 797
    if-eq v3, v5, :cond_1e

    .line 798
    .line 799
    goto :goto_b

    .line 800
    :cond_1e
    move v11, v12

    .line 801
    :goto_b
    and-int/lit8 v3, v8, 0x1

    .line 802
    .line 803
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 804
    .line 805
    invoke-virtual {v6, v3, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    if-eqz v3, :cond_1f

    .line 810
    .line 811
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 816
    .line 817
    shl-int/lit8 v3, v8, 0x3

    .line 818
    .line 819
    and-int/lit8 v3, v3, 0x70

    .line 820
    .line 821
    invoke-static {v0, v1, v2, v6, v3}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt;->CreateAccountContent(Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 822
    .line 823
    .line 824
    goto :goto_c

    .line 825
    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 826
    .line 827
    .line 828
    :goto_c
    return-object v10

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
