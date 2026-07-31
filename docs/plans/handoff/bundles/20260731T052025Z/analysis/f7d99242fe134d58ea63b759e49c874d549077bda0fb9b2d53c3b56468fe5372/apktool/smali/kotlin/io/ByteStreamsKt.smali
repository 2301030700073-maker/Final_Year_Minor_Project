.class public abstract Lkotlin/io/ByteStreamsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AdvancedFetchingMailSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v13, p6

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-object/from16 v10, p5

    .line 24
    .line 25
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    const v3, 0x49b9cb9c    # 1522035.5f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v3, v13, 0x6

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    move v3, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x2

    .line 47
    :goto_0
    or-int/2addr v3, v13

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v3, v13

    .line 50
    :goto_1
    and-int/lit8 v5, v13, 0x30

    .line 51
    .line 52
    const/16 v6, 0x20

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    move v5, v6

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v3, v5

    .line 67
    :cond_3
    and-int/lit16 v5, v13, 0x180

    .line 68
    .line 69
    if-nez v5, :cond_6

    .line 70
    .line 71
    and-int/lit16 v5, v13, 0x200

    .line 72
    .line 73
    if-nez v5, :cond_4

    .line 74
    .line 75
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    :goto_3
    if-eqz v5, :cond_5

    .line 85
    .line 86
    const/16 v5, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/16 v5, 0x80

    .line 90
    .line 91
    :goto_4
    or-int/2addr v3, v5

    .line 92
    :cond_6
    and-int/lit16 v5, v13, 0xc00

    .line 93
    .line 94
    const/16 v7, 0x800

    .line 95
    .line 96
    if-nez v5, :cond_9

    .line 97
    .line 98
    and-int/lit16 v5, v13, 0x1000

    .line 99
    .line 100
    if-nez v5, :cond_7

    .line 101
    .line 102
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    goto :goto_5

    .line 107
    :cond_7
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    :goto_5
    if-eqz v5, :cond_8

    .line 112
    .line 113
    move v5, v7

    .line 114
    goto :goto_6

    .line 115
    :cond_8
    const/16 v5, 0x400

    .line 116
    .line 117
    :goto_6
    or-int/2addr v3, v5

    .line 118
    :cond_9
    or-int/lit16 v3, v3, 0x6000

    .line 119
    .line 120
    and-int/lit16 v5, v3, 0x2493

    .line 121
    .line 122
    const/16 v8, 0x2492

    .line 123
    .line 124
    if-eq v5, v8, :cond_a

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    const/4 v5, 0x0

    .line 129
    :goto_7
    and-int/lit8 v8, v3, 0x1

    .line 130
    .line 131
    invoke-virtual {v10, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_17

    .line 136
    .line 137
    and-int/lit8 v5, v3, 0xe

    .line 138
    .line 139
    if-ne v5, v4, :cond_b

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    goto :goto_8

    .line 143
    :cond_b
    const/4 v4, 0x0

    .line 144
    :goto_8
    and-int/lit16 v5, v3, 0x1c00

    .line 145
    .line 146
    if-eq v5, v7, :cond_d

    .line 147
    .line 148
    and-int/lit16 v5, v3, 0x1000

    .line 149
    .line 150
    if-eqz v5, :cond_c

    .line 151
    .line 152
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_c

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_c
    const/4 v5, 0x0

    .line 160
    goto :goto_a

    .line 161
    :cond_d
    :goto_9
    const/4 v5, 0x1

    .line 162
    :goto_a
    or-int/2addr v4, v5

    .line 163
    and-int/lit8 v5, v3, 0x70

    .line 164
    .line 165
    if-ne v5, v6, :cond_e

    .line 166
    .line 167
    const/4 v7, 0x1

    .line 168
    goto :goto_b

    .line 169
    :cond_e
    const/4 v7, 0x0

    .line 170
    :goto_b
    or-int/2addr v4, v7

    .line 171
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 176
    .line 177
    if-nez v4, :cond_10

    .line 178
    .line 179
    if-ne v7, v8, :cond_f

    .line 180
    .line 181
    goto :goto_c

    .line 182
    :cond_f
    move/from16 v23, v3

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_10
    :goto_c
    new-instance v4, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v7, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->maxFolderToCheckWithPush:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 191
    .line 192
    new-instance v14, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 193
    .line 194
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    const/16 v11, 0xc

    .line 197
    .line 198
    invoke-direct {v15, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 199
    .line 200
    .line 201
    new-instance v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    const/16 v12, 0x18

    .line 204
    .line 205
    invoke-direct {v11, v12}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 206
    .line 207
    .line 208
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {v6, v12}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 211
    .line 212
    .line 213
    iget-object v12, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;->fetchingMailSettingsOptionsMapper:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 214
    .line 215
    move/from16 v23, v3

    .line 216
    .line 217
    iget-object v3, v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 218
    .line 219
    move-object/from16 v16, v15

    .line 220
    .line 221
    const-string v15, "max_folder_to_check_with_push"

    .line 222
    .line 223
    const/16 v19, 0x1

    .line 224
    .line 225
    move-object/from16 v21, v3

    .line 226
    .line 227
    move-object/from16 v18, v6

    .line 228
    .line 229
    move-object/from16 v20, v7

    .line 230
    .line 231
    move-object/from16 v17, v11

    .line 232
    .line 233
    invoke-direct/range {v14 .. v21}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    iget-object v3, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->refreshIdleConnection:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 240
    .line 241
    new-instance v24, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 242
    .line 243
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 244
    .line 245
    const/16 v7, 0xa

    .line 246
    .line 247
    invoke-direct {v6, v0, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 248
    .line 249
    .line 250
    new-instance v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 251
    .line 252
    const/16 v11, 0x18

    .line 253
    .line 254
    invoke-direct {v7, v11}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 255
    .line 256
    .line 257
    new-instance v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 258
    .line 259
    invoke-direct {v14, v11}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 260
    .line 261
    .line 262
    const/16 v29, 0x1

    .line 263
    .line 264
    iget-object v11, v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->refreshIdleConnectionOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 265
    .line 266
    const-string v25, "refresh_idle_connection"

    .line 267
    .line 268
    move-object/from16 v30, v3

    .line 269
    .line 270
    move-object/from16 v26, v6

    .line 271
    .line 272
    move-object/from16 v27, v7

    .line 273
    .line 274
    move-object/from16 v31, v11

    .line 275
    .line 276
    move-object/from16 v28, v14

    .line 277
    .line 278
    invoke-direct/range {v24 .. v31}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v3, v24

    .line 282
    .line 283
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-static {v4}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :goto_d
    move-object v4, v7

    .line 294
    check-cast v4, Lkotlinx/collections/immutable/ImmutableList;

    .line 295
    .line 296
    const v3, 0x7f12012e

    .line 297
    .line 298
    .line 299
    invoke-static {v10, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    iget-object v7, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 304
    .line 305
    const/16 v6, 0x20

    .line 306
    .line 307
    if-ne v5, v6, :cond_11

    .line 308
    .line 309
    const/4 v6, 0x1

    .line 310
    goto :goto_e

    .line 311
    :cond_11
    const/4 v6, 0x0

    .line 312
    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    if-nez v6, :cond_12

    .line 317
    .line 318
    if-ne v11, v8, :cond_13

    .line 319
    .line 320
    :cond_12
    new-instance v11, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 321
    .line 322
    const/4 v6, 0x3

    .line 323
    invoke-direct {v11, v6, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_13
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 330
    .line 331
    const/16 v6, 0x20

    .line 332
    .line 333
    if-ne v5, v6, :cond_14

    .line 334
    .line 335
    const/16 v22, 0x1

    .line 336
    .line 337
    goto :goto_f

    .line 338
    :cond_14
    const/16 v22, 0x0

    .line 339
    .line 340
    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    if-nez v22, :cond_15

    .line 345
    .line 346
    if-ne v5, v8, :cond_16

    .line 347
    .line 348
    :cond_15
    new-instance v5, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 349
    .line 350
    const/16 v6, 0x1d

    .line 351
    .line 352
    invoke-direct {v5, v6, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_16
    move-object v6, v5

    .line 359
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 360
    .line 361
    const v5, 0xe000

    .line 362
    .line 363
    .line 364
    and-int v5, v23, v5

    .line 365
    .line 366
    shl-int/lit8 v8, v23, 0xf

    .line 367
    .line 368
    const/high16 v12, 0x1c00000

    .line 369
    .line 370
    and-int/2addr v8, v12

    .line 371
    or-int/2addr v5, v8

    .line 372
    const/16 v12, 0x40

    .line 373
    .line 374
    const/4 v8, 0x0

    .line 375
    move-object/from16 v32, v11

    .line 376
    .line 377
    move v11, v5

    .line 378
    move-object/from16 v5, v32

    .line 379
    .line 380
    invoke-static/range {v3 .. v12}, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V

    .line 381
    .line 382
    .line 383
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 384
    .line 385
    move-object v5, v3

    .line 386
    goto :goto_10

    .line 387
    :cond_17
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 388
    .line 389
    .line 390
    move-object/from16 v5, p4

    .line 391
    .line 392
    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    if-eqz v8, :cond_18

    .line 397
    .line 398
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 399
    .line 400
    const/16 v7, 0xa

    .line 401
    .line 402
    move-object/from16 v3, p2

    .line 403
    .line 404
    move-object/from16 v4, p3

    .line 405
    .line 406
    move v6, v13

    .line 407
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 408
    .line 409
    .line 410
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 411
    .line 412
    :cond_18
    return-void
.end method

.method public static final CustomItem(Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x77d09d8b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p2, 0x6

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    and-int/lit8 v0, p2, 0x8

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    :goto_1
    or-int/2addr v0, p2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v0, p2

    .line 37
    :goto_2
    and-int/lit8 v1, p2, 0x30

    .line 38
    .line 39
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x20

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/16 v1, 0x10

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v1

    .line 55
    :cond_4
    and-int/lit8 v1, v0, 0x13

    .line 56
    .line 57
    const/16 v3, 0x12

    .line 58
    .line 59
    if-eq v1, v3, :cond_5

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    goto :goto_4

    .line 63
    :cond_5
    const/4 v1, 0x0

    .line 64
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 65
    .line 66
    invoke-virtual {p1, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v3, 0x3

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;->customUi:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 74
    .line 75
    shr-int/2addr v0, v3

    .line 76
    and-int/lit8 v0, v0, 0xe

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 87
    .line 88
    .line 89
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-direct {v0, p2, v3, p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 101
    .line 102
    :cond_7
    return-void
.end method

.method public static final FolderList(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v15, p6

    .line 9
    .line 10
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x1245a30c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x4

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p7, v0

    .line 29
    .line 30
    move-object/from16 v3, p1

    .line 31
    .line 32
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v5, 0x20

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    move v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v4, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v4

    .line 45
    move-object/from16 v4, p2

    .line 46
    .line 47
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    const/16 v6, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v6, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v6

    .line 59
    move/from16 v6, p3

    .line 60
    .line 61
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    const/16 v9, 0x800

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v9, 0x400

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v9

    .line 73
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_4

    .line 78
    .line 79
    const/16 v9, 0x4000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/16 v9, 0x2000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v9

    .line 85
    move/from16 v9, p5

    .line 86
    .line 87
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_5

    .line 92
    .line 93
    const/high16 v11, 0x20000

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_5
    const/high16 v11, 0x10000

    .line 97
    .line 98
    :goto_5
    or-int/2addr v0, v11

    .line 99
    const v11, 0x12493

    .line 100
    .line 101
    .line 102
    and-int/2addr v11, v0

    .line 103
    const v13, 0x12492

    .line 104
    .line 105
    .line 106
    const/4 v14, 0x1

    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    if-eq v11, v13, :cond_6

    .line 110
    .line 111
    move v11, v14

    .line 112
    goto :goto_6

    .line 113
    :cond_6
    move/from16 v11, v16

    .line 114
    .line 115
    :goto_6
    and-int/lit8 v13, v0, 0x1

    .line 116
    .line 117
    invoke-virtual {v15, v13, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_10

    .line 122
    .line 123
    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Landroid/content/res/Resources;

    .line 130
    .line 131
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 136
    .line 137
    if-ne v13, v12, :cond_7

    .line 138
    .line 139
    new-instance v13, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 140
    .line 141
    invoke-direct {v13, v11}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    check-cast v13, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 148
    .line 149
    invoke-static {v15}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 154
    .line 155
    invoke-interface {v7, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    .line 161
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    invoke-static {v14, v8}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    and-int/lit8 v14, v0, 0xe

    .line 176
    .line 177
    if-eq v14, v2, :cond_9

    .line 178
    .line 179
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_8
    move/from16 v2, v16

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_9
    :goto_7
    const/4 v2, 0x1

    .line 190
    :goto_8
    and-int/lit8 v14, v0, 0x70

    .line 191
    .line 192
    if-eq v14, v5, :cond_a

    .line 193
    .line 194
    move/from16 v5, v16

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_a
    const/4 v5, 0x1

    .line 198
    :goto_9
    or-int/2addr v2, v5

    .line 199
    and-int/lit16 v5, v0, 0x380

    .line 200
    .line 201
    const/16 v14, 0x100

    .line 202
    .line 203
    if-ne v5, v14, :cond_b

    .line 204
    .line 205
    const/4 v5, 0x1

    .line 206
    goto :goto_a

    .line 207
    :cond_b
    move/from16 v5, v16

    .line 208
    .line 209
    :goto_a
    or-int/2addr v2, v5

    .line 210
    and-int/lit16 v5, v0, 0x1c00

    .line 211
    .line 212
    const/16 v14, 0x800

    .line 213
    .line 214
    if-ne v5, v14, :cond_c

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    goto :goto_b

    .line 218
    :cond_c
    move/from16 v5, v16

    .line 219
    .line 220
    :goto_b
    or-int/2addr v2, v5

    .line 221
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    or-int/2addr v2, v5

    .line 226
    const/high16 v5, 0x70000

    .line 227
    .line 228
    and-int/2addr v0, v5

    .line 229
    const/high16 v5, 0x20000

    .line 230
    .line 231
    if-ne v0, v5, :cond_d

    .line 232
    .line 233
    const/4 v14, 0x1

    .line 234
    goto :goto_c

    .line 235
    :cond_d
    move/from16 v14, v16

    .line 236
    .line 237
    :goto_c
    or-int v0, v2, v14

    .line 238
    .line 239
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-nez v0, :cond_e

    .line 244
    .line 245
    if-ne v2, v12, :cond_f

    .line 246
    .line 247
    :cond_e
    new-instance v0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;

    .line 248
    .line 249
    move-object v2, v3

    .line 250
    move-object v3, v4

    .line 251
    move v4, v6

    .line 252
    move v6, v9

    .line 253
    move-object v5, v13

    .line 254
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    move-object v2, v0

    .line 261
    :cond_f
    move-object/from16 v18, v2

    .line 262
    .line 263
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 264
    .line 265
    move-object v13, v8

    .line 266
    const/4 v8, 0x0

    .line 267
    const/16 v9, 0x1f8

    .line 268
    .line 269
    move-object/from16 v17, v10

    .line 270
    .line 271
    const/4 v10, 0x0

    .line 272
    move-object v14, v11

    .line 273
    const/4 v11, 0x0

    .line 274
    const/4 v12, 0x0

    .line 275
    const/16 v16, 0x0

    .line 276
    .line 277
    const/16 v19, 0x0

    .line 278
    .line 279
    invoke-static/range {v8 .. v19}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 280
    .line 281
    .line 282
    goto :goto_d

    .line 283
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 284
    .line 285
    .line 286
    :goto_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    if-eqz v8, :cond_11

    .line 291
    .line 292
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;

    .line 293
    .line 294
    move-object/from16 v1, p0

    .line 295
    .line 296
    move-object/from16 v2, p1

    .line 297
    .line 298
    move-object/from16 v3, p2

    .line 299
    .line 300
    move/from16 v4, p3

    .line 301
    .line 302
    move/from16 v6, p5

    .line 303
    .line 304
    move-object v5, v7

    .line 305
    move/from16 v7, p7

    .line 306
    .line 307
    invoke-direct/range {v0 .. v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;ZI)V

    .line 308
    .line 309
    .line 310
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 311
    .line 312
    :cond_11
    return-void
.end method

.method public static final LeadingElements(ZLnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x4f0c4a7d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    move/from16 v1, p0

    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    const/16 v7, 0x492

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v14, 0x1

    .line 62
    if-eq v5, v7, :cond_3

    .line 63
    .line 64
    move v5, v14

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v5, v8

    .line 67
    :goto_3
    and-int/lit8 v7, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {v11, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_9

    .line 74
    .line 75
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 76
    .line 77
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 78
    .line 79
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 89
    .line 90
    new-instance v9, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v10, 0x7

    .line 93
    invoke-direct {v9, v10}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 94
    .line 95
    .line 96
    const/high16 v10, 0x40000000    # 2.0f

    .line 97
    .line 98
    invoke-direct {v7, v10, v14, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 99
    .line 100
    .line 101
    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 102
    .line 103
    const/16 v10, 0x30

    .line 104
    .line 105
    invoke-static {v7, v5, v11, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 110
    .line 111
    ushr-long v6, v12, v6

    .line 112
    .line 113
    xor-long/2addr v6, v12

    .line 114
    long-to-int v6, v6

    .line 115
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v11, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 129
    .line 130
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 131
    .line 132
    .line 133
    iget-boolean v12, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 134
    .line 135
    if-eqz v12, :cond_4

    .line 136
    .line 137
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 142
    .line 143
    .line 144
    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 145
    .line 146
    invoke-static {v11, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 150
    .line 151
    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 164
    .line 165
    invoke-static {v11, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 166
    .line 167
    .line 168
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 169
    .line 170
    invoke-static {v11, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    iget-object v5, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;->badgeStyle:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;

    .line 174
    .line 175
    const/4 v6, -0x1

    .line 176
    if-nez v5, :cond_5

    .line 177
    .line 178
    move v5, v6

    .line 179
    goto :goto_5

    .line 180
    :cond_5
    sget-object v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    aget v5, v7, v5

    .line 187
    .line 188
    :goto_5
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 189
    .line 190
    if-eq v5, v6, :cond_8

    .line 191
    .line 192
    const/4 v6, 0x0

    .line 193
    if-eq v5, v14, :cond_7

    .line 194
    .line 195
    if-ne v5, v4, :cond_6

    .line 196
    .line 197
    const v4, -0x302bf65

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v6, v11, v8}, Lkotlinx/atomicfu/AtomicFU;->UnreadMessageBadge(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_6
    const v0, -0x302ceb8

    .line 211
    .line 212
    .line 213
    invoke-static {v11, v0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    throw v0

    .line 218
    :cond_7
    const v4, -0x302c6a8

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 222
    .line 223
    .line 224
    invoke-static {v6, v11, v8}, Lkotlinx/atomicfu/AtomicFU;->NewMessageBadge(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_8
    const v4, -0x302ba2c

    .line 232
    .line 233
    .line 234
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 235
    .line 236
    .line 237
    const/high16 v4, 0x41600000    # 14.0f

    .line 238
    .line 239
    invoke-static {v15, v4}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-static {v11, v4}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 247
    .line 248
    .line 249
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    new-instance v5, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;

    .line 254
    .line 255
    const/4 v6, 0x5

    .line 256
    invoke-direct {v5, v6, v3, v2}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const v6, 0x5d02be2a

    .line 260
    .line 261
    .line 262
    invoke-static {v6, v5, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    and-int/lit8 v0, v0, 0xe

    .line 267
    .line 268
    const/high16 v5, 0x180000

    .line 269
    .line 270
    or-int v12, v0, v5

    .line 271
    .line 272
    const/16 v13, 0x3e

    .line 273
    .line 274
    const/4 v5, 0x0

    .line 275
    const/4 v6, 0x0

    .line 276
    const/4 v7, 0x0

    .line 277
    const/4 v8, 0x0

    .line 278
    const/4 v9, 0x0

    .line 279
    invoke-static/range {v4 .. v13}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    move-object v4, v15

    .line 286
    goto :goto_7

    .line 287
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    move-object/from16 v4, p3

    .line 291
    .line 292
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    if-eqz v6, :cond_a

    .line 297
    .line 298
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;

    .line 299
    .line 300
    move/from16 v5, p5

    .line 301
    .line 302
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;-><init>(ZLnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V

    .line 303
    .line 304
    .line 305
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 306
    .line 307
    :cond_a
    return-void
.end method

.method public static final MessageItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v3, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object/from16 v0, p13

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0x142bdd30

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v1, v14, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v14

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v5, v14

    :goto_1
    and-int/lit8 v6, v14, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v9, v14, 0x180

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v17

    goto :goto_4

    :cond_4
    move/from16 v18, v16

    :goto_4
    or-int v5, v5, v18

    goto :goto_5

    :cond_5
    move-object/from16 v9, p2

    :goto_5
    and-int/lit16 v2, v14, 0xc00

    if-nez v2, :cond_7

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x800

    goto :goto_6

    :cond_6
    const/16 v18, 0x400

    :goto_6
    or-int v5, v5, v18

    goto :goto_7

    :cond_7
    move-object/from16 v2, p3

    :goto_7
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_a

    const v4, 0x8000

    and-int/2addr v4, v14

    if-nez v4, :cond_8

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_8

    :cond_8
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_9

    :cond_9
    const/16 v4, 0x2000

    :goto_9
    or-int/2addr v5, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int/2addr v4, v14

    if-nez v4, :cond_c

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x20000

    goto :goto_a

    :cond_b
    const/high16 v4, 0x10000

    :goto_a
    or-int/2addr v5, v4

    :cond_c
    const/high16 v4, 0x180000

    and-int/2addr v4, v14

    if-nez v4, :cond_f

    const/high16 v4, 0x200000

    and-int/2addr v4, v14

    if-nez v4, :cond_d

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_b

    :cond_d
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_e

    const/high16 v4, 0x100000

    goto :goto_c

    :cond_e
    const/high16 v4, 0x80000

    :goto_c
    or-int/2addr v5, v4

    :cond_f
    const/high16 v4, 0xc00000

    and-int/2addr v4, v14

    if-nez v4, :cond_11

    move/from16 v4, p7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x800000

    goto :goto_d

    :cond_10
    const/high16 v19, 0x400000

    :goto_d
    or-int v5, v5, v19

    goto :goto_e

    :cond_11
    move/from16 v4, p7

    :goto_e
    const/high16 v19, 0x6000000

    and-int v19, v14, v19

    move-object/from16 v7, p8

    if-nez v19, :cond_13

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x4000000

    goto :goto_f

    :cond_12
    const/high16 v20, 0x2000000

    :goto_f
    or-int v5, v5, v20

    :cond_13
    const/high16 v20, 0x30000000

    and-int v20, v14, v20

    if-nez v20, :cond_15

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x20000000

    goto :goto_10

    :cond_14
    const/high16 v20, 0x10000000

    :goto_10
    or-int v5, v5, v20

    :cond_15
    and-int/lit8 v20, v15, 0x6

    if-nez v20, :cond_17

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/16 v18, 0x4

    goto :goto_11

    :cond_16
    const/16 v18, 0x2

    :goto_11
    or-int v18, v15, v18

    goto :goto_12

    :cond_17
    move/from16 v18, v15

    :goto_12
    and-int/lit8 v20, v15, 0x30

    move-object/from16 v8, p11

    if-nez v20, :cond_19

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v19, 0x20

    goto :goto_13

    :cond_18
    const/16 v19, 0x10

    :goto_13
    or-int v18, v18, v19

    :cond_19
    and-int/lit16 v1, v15, 0x180

    if-nez v1, :cond_1b

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v16, v17

    :cond_1a
    or-int v18, v18, v16

    :goto_14
    move/from16 v1, v18

    goto :goto_15

    :cond_1b
    move-object/from16 v1, p12

    goto :goto_14

    :goto_15
    const v16, 0x12492493

    and-int v2, v5, v16

    const v3, 0x12492492

    const/16 v16, 0x1

    if-ne v2, v3, :cond_1d

    and-int/lit16 v1, v1, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v1, 0x0

    goto :goto_17

    :cond_1d
    :goto_16
    move/from16 v1, v16

    :goto_17
    and-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_18

    .line 2
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_1f
    :goto_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const/16 v1, 0xef

    .line 3
    invoke-static {v10, v13, v12, v1}, Landroidx/compose/foundation/ImageKt;->combinedClickable-hoGz1lA$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 4
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 7
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outlineVariant:J

    .line 8
    new-instance v5, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    move-object/from16 v24, v0

    const/4 v0, 0x7

    invoke-direct {v5, v0, v2, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(IJ)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, v5}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 9
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 10
    iget-wide v0, v11, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;->containerColor:J

    .line 11
    iget-wide v2, v11, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;->contentColor:J

    move-wide/from16 v18, v0

    .line 12
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda1;

    move-object/from16 v5, p3

    move-wide/from16 v20, v2

    move v2, v4

    move-object v1, v7

    move-object v4, v8

    move-object v7, v9

    move-object/from16 v10, v24

    move-object/from16 v3, p4

    move-object/from16 v9, p12

    move-object v8, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x442657b3

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    const/high16 v25, 0x30000

    const/16 v26, 0x12

    const/16 v17, 0x0

    const/16 v22, 0x0

    .line 13
    invoke-static/range {v16 .. v26}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_19

    :cond_20
    move-object/from16 v24, v0

    .line 14
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 15
    :goto_19
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_21

    move-object v1, v0

    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemKt$$ExternalSyntheticLambda1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v27, v1

    move-object v7, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v15}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v1, v27

    .line 16
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final MessageListItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;ZLnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    move-object/from16 v13, p7

    .line 8
    .line 9
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 10
    .line 11
    iget-wide v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->color:J

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v3, 0x5d483206    # 9.0159995E17f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    :goto_0
    or-int v3, p9, v3

    .line 33
    .line 34
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    const/16 v5, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v5, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v3, v5

    .line 46
    move-object/from16 v5, p2

    .line 47
    .line 48
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    const/16 v6, 0x100

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v6, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v3, v6

    .line 60
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    const/16 v6, 0x800

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v6, 0x400

    .line 70
    .line 71
    :goto_3
    or-int/2addr v3, v6

    .line 72
    move-object/from16 v6, p4

    .line 73
    .line 74
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    const/16 v7, 0x4000

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    const/16 v7, 0x2000

    .line 84
    .line 85
    :goto_4
    or-int/2addr v3, v7

    .line 86
    move-object/from16 v7, p5

    .line 87
    .line 88
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_5

    .line 93
    .line 94
    const/high16 v9, 0x20000

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    const/high16 v9, 0x10000

    .line 98
    .line 99
    :goto_5
    or-int/2addr v3, v9

    .line 100
    move-object/from16 v9, p6

    .line 101
    .line 102
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_6

    .line 107
    .line 108
    const/high16 v10, 0x100000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    const/high16 v10, 0x80000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v3, v10

    .line 114
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_7

    .line 119
    .line 120
    const/high16 v10, 0x800000

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_7
    const/high16 v10, 0x400000

    .line 124
    .line 125
    :goto_7
    or-int/2addr v3, v10

    .line 126
    const v10, 0x492493

    .line 127
    .line 128
    .line 129
    and-int/2addr v10, v3

    .line 130
    const v15, 0x492492

    .line 131
    .line 132
    .line 133
    const/4 v14, 0x1

    .line 134
    if-eq v10, v15, :cond_8

    .line 135
    .line 136
    move v10, v14

    .line 137
    goto :goto_8

    .line 138
    :cond_8
    const/4 v10, 0x0

    .line 139
    :goto_8
    and-int/lit8 v15, v3, 0x1

    .line 140
    .line 141
    invoke-virtual {v8, v15, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_18

    .line 146
    .line 147
    iget-object v10, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 148
    .line 149
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    const/high16 v15, 0x70000

    .line 154
    .line 155
    const v16, 0xe000

    .line 156
    .line 157
    .line 158
    const/high16 v17, 0x1c00000

    .line 159
    .line 160
    const/16 v18, 0x0

    .line 161
    .line 162
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 163
    .line 164
    if-eqz v10, :cond_13

    .line 165
    .line 166
    if-eq v10, v14, :cond_e

    .line 167
    .line 168
    const/4 v14, 0x2

    .line 169
    if-ne v10, v14, :cond_d

    .line 170
    .line 171
    const v10, 0x2c048a8d

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 175
    .line 176
    .line 177
    if-eqz v11, :cond_9

    .line 178
    .line 179
    new-instance v10, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 180
    .line 181
    invoke-direct {v10, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;-><init>(J)V

    .line 182
    .line 183
    .line 184
    move-object v2, v10

    .line 185
    goto :goto_9

    .line 186
    :cond_9
    move-object/from16 v2, v18

    .line 187
    .line 188
    :goto_9
    and-int v1, v3, v17

    .line 189
    .line 190
    const/high16 v10, 0x800000

    .line 191
    .line 192
    if-ne v1, v10, :cond_a

    .line 193
    .line 194
    const/4 v14, 0x1

    .line 195
    goto :goto_a

    .line 196
    :cond_a
    const/4 v14, 0x0

    .line 197
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-nez v14, :cond_b

    .line 202
    .line 203
    if-ne v1, v4, :cond_c

    .line 204
    .line 205
    :cond_b
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 206
    .line 207
    const/16 v4, 0x9

    .line 208
    .line 209
    invoke-direct {v1, v4, v13}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 216
    .line 217
    const-string v4, "UnreadMessageListItem_Root"

    .line 218
    .line 219
    invoke-static {v12, v4}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    and-int/lit8 v10, v3, 0xe

    .line 224
    .line 225
    shr-int/lit8 v3, v3, 0x3

    .line 226
    .line 227
    and-int/lit8 v14, v3, 0x70

    .line 228
    .line 229
    or-int/2addr v10, v14

    .line 230
    and-int/lit16 v14, v3, 0x1c00

    .line 231
    .line 232
    or-int/2addr v10, v14

    .line 233
    and-int v14, v3, v16

    .line 234
    .line 235
    or-int/2addr v10, v14

    .line 236
    and-int/2addr v3, v15

    .line 237
    or-int/2addr v3, v10

    .line 238
    const/4 v10, 0x0

    .line 239
    move-object v14, v6

    .line 240
    move-object v6, v1

    .line 241
    move-object v1, v5

    .line 242
    move-object v5, v9

    .line 243
    move v9, v3

    .line 244
    move-object v3, v14

    .line 245
    move-object v14, v7

    .line 246
    move-object v7, v4

    .line 247
    move-object v4, v14

    .line 248
    const/4 v14, 0x0

    .line 249
    invoke-static/range {v0 .. v10}, Lokhttp3/Cookie$Companion;->UnreadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_f

    .line 256
    .line 257
    :cond_d
    const/4 v14, 0x0

    .line 258
    const v0, 0x2c03f5df

    .line 259
    .line 260
    .line 261
    invoke-static {v8, v0, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    throw v0

    .line 266
    :cond_e
    const/4 v14, 0x0

    .line 267
    const v0, 0x2c044129

    .line 268
    .line 269
    .line 270
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 271
    .line 272
    .line 273
    if-eqz v11, :cond_f

    .line 274
    .line 275
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 276
    .line 277
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;-><init>(J)V

    .line 278
    .line 279
    .line 280
    move-object v2, v0

    .line 281
    goto :goto_b

    .line 282
    :cond_f
    move-object/from16 v2, v18

    .line 283
    .line 284
    :goto_b
    and-int v0, v3, v17

    .line 285
    .line 286
    const/high16 v10, 0x800000

    .line 287
    .line 288
    if-ne v0, v10, :cond_10

    .line 289
    .line 290
    const/16 v19, 0x1

    .line 291
    .line 292
    goto :goto_c

    .line 293
    :cond_10
    move/from16 v19, v14

    .line 294
    .line 295
    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-nez v19, :cond_11

    .line 300
    .line 301
    if-ne v0, v4, :cond_12

    .line 302
    .line 303
    :cond_11
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 304
    .line 305
    const/16 v1, 0x8

    .line 306
    .line 307
    invoke-direct {v0, v1, v13}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_12
    move-object v6, v0

    .line 314
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 315
    .line 316
    const-string v0, "ReadMessageListItem_Root"

    .line 317
    .line 318
    invoke-static {v12, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    and-int/lit8 v0, v3, 0xe

    .line 323
    .line 324
    shr-int/lit8 v1, v3, 0x3

    .line 325
    .line 326
    and-int/lit8 v3, v1, 0x70

    .line 327
    .line 328
    or-int/2addr v0, v3

    .line 329
    and-int/lit16 v3, v1, 0x1c00

    .line 330
    .line 331
    or-int/2addr v0, v3

    .line 332
    and-int v3, v1, v16

    .line 333
    .line 334
    or-int/2addr v0, v3

    .line 335
    and-int/2addr v1, v15

    .line 336
    or-int v9, v0, v1

    .line 337
    .line 338
    const/4 v10, 0x0

    .line 339
    move-object/from16 v0, p0

    .line 340
    .line 341
    move-object/from16 v1, p2

    .line 342
    .line 343
    move-object/from16 v3, p4

    .line 344
    .line 345
    move-object/from16 v4, p5

    .line 346
    .line 347
    move-object/from16 v5, p6

    .line 348
    .line 349
    invoke-static/range {v0 .. v10}, Lokhttp3/CacheControl$Companion;->ReadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 353
    .line 354
    .line 355
    goto :goto_f

    .line 356
    :cond_13
    const/4 v14, 0x0

    .line 357
    const v0, 0x2c03f847

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 361
    .line 362
    .line 363
    if-eqz v11, :cond_14

    .line 364
    .line 365
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 366
    .line 367
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;-><init>(J)V

    .line 368
    .line 369
    .line 370
    move-object v2, v0

    .line 371
    goto :goto_d

    .line 372
    :cond_14
    move-object/from16 v2, v18

    .line 373
    .line 374
    :goto_d
    and-int v0, v3, v17

    .line 375
    .line 376
    const/high16 v10, 0x800000

    .line 377
    .line 378
    if-ne v0, v10, :cond_15

    .line 379
    .line 380
    const/16 v19, 0x1

    .line 381
    .line 382
    goto :goto_e

    .line 383
    :cond_15
    move/from16 v19, v14

    .line 384
    .line 385
    :goto_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-nez v19, :cond_16

    .line 390
    .line 391
    if-ne v0, v4, :cond_17

    .line 392
    .line 393
    :cond_16
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 394
    .line 395
    const/4 v1, 0x7

    .line 396
    invoke-direct {v0, v1, v13}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_17
    move-object v6, v0

    .line 403
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 404
    .line 405
    const-string v0, "NewMessageListItem_Root"

    .line 406
    .line 407
    invoke-static {v12, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    and-int/lit8 v0, v3, 0xe

    .line 412
    .line 413
    shr-int/lit8 v1, v3, 0x3

    .line 414
    .line 415
    and-int/lit8 v3, v1, 0x70

    .line 416
    .line 417
    or-int/2addr v0, v3

    .line 418
    and-int/lit16 v3, v1, 0x1c00

    .line 419
    .line 420
    or-int/2addr v0, v3

    .line 421
    and-int v3, v1, v16

    .line 422
    .line 423
    or-int/2addr v0, v3

    .line 424
    and-int/2addr v1, v15

    .line 425
    or-int v9, v0, v1

    .line 426
    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    move-object/from16 v1, p2

    .line 430
    .line 431
    move-object/from16 v3, p4

    .line 432
    .line 433
    move-object/from16 v4, p5

    .line 434
    .line 435
    move-object/from16 v5, p6

    .line 436
    .line 437
    invoke-static/range {v0 .. v9}, Lkotlin/io/CloseableKt;->NewMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_f

    .line 444
    :cond_18
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 445
    .line 446
    .line 447
    :goto_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    if-eqz v10, :cond_19

    .line 452
    .line 453
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda3;

    .line 454
    .line 455
    move-object/from16 v1, p0

    .line 456
    .line 457
    move-object/from16 v3, p2

    .line 458
    .line 459
    move-object/from16 v5, p4

    .line 460
    .line 461
    move-object/from16 v6, p5

    .line 462
    .line 463
    move-object/from16 v7, p6

    .line 464
    .line 465
    move/from16 v9, p9

    .line 466
    .line 467
    move v2, v11

    .line 468
    move-object v4, v12

    .line 469
    move-object v8, v13

    .line 470
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;ZLnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 471
    .line 472
    .line 473
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 474
    .line 475
    :cond_19
    return-void
.end method

.method public static final access$insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    aput-object p3, v0, p1

    .line 22
    .line 23
    return-object v0
.end method

.method public static final access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p0, 0x2

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    array-length v5, p1

    .line 14
    add-int/2addr v4, v5

    .line 15
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v3, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 25
    .line 26
    array-length v2, p1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    iget-object v5, v1, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 33
    .line 34
    iget-object v6, v1, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 35
    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v4}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x3a

    .line 49
    .line 50
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-interface {v5}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    :cond_0
    const-string v5, ""

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    .line 77
    .line 78
    iget-object v5, v5, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method

.method public static buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "1"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 10
    .line 11
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 12
    .line 13
    iget-object v2, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 14
    .line 15
    if-nez v2, :cond_a

    .line 16
    .line 17
    if-nez v1, :cond_a

    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 20
    .line 21
    if-eqz p0, :cond_9

    .line 22
    .line 23
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 26
    .line 27
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 28
    .line 29
    check-cast p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 30
    .line 31
    iget-object v2, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 32
    .line 33
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->CUSTOM:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    sget-object v2, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->CONTAINS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 38
    .line 39
    if-ne v1, v2, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->customQueryTemplate:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->customQueryTemplate:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    const-string p0, "Custom field has no query template!"

    .line 64
    .line 65
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string p0, "Custom fields only support CONTAINS"

    .line 70
    .line 71
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v2, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, " "

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const-string v2, "LIKE ?"

    .line 90
    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    if-eq v1, v3, :cond_6

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    if-ne v1, v2, :cond_5

    .line 98
    .line 99
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 100
    .line 101
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->NUMBER:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 102
    .line 103
    if-ne p0, v1, :cond_4

    .line 104
    .line 105
    const-string p0, "!= ?"

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const-string p0, "NOT LIKE ?"

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 122
    .line 123
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->NUMBER:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 124
    .line 125
    if-ne p0, v1, :cond_7

    .line 126
    .line 127
    const-string p0, "= ?"

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string p1, "%"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    const-string p0, "Leaf node missing condition"

    .line 162
    .line 163
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_a
    sget-object p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->NOT:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 168
    .line 169
    const-string v3, ")"

    .line 170
    .line 171
    if-ne v0, p0, :cond_b

    .line 172
    .line 173
    const-string p0, "NOT ("

    .line 174
    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-static {v2, p1, p2}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    const-string p0, "("

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-static {v2, p1, p2}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 191
    .line 192
    .line 193
    const-string p0, ") "

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p0, " ("

    .line 206
    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-static {v1, p1, p2}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    int-to-long v4, v1

    .line 18
    add-long/2addr v2, v4

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v2
.end method

.method public static formUrlEncode(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, "="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    const-string/jumbo v3, "utf-8"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    const-string p0, "Unable to encode using UTF-8"

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0

    .line 79
    :cond_0
    const-string p0, "&"

    .line 80
    .line 81
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 10
    .line 11
    return-object p0
.end method

.method public static getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final indexSegment(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    const/16 v3, 0x5a

    .line 19
    .line 20
    const/16 v4, 0x41

    .line 21
    .line 22
    if-lez v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-lt v5, v4, :cond_2

    .line 29
    .line 30
    if-gt v5, v3, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    if-lez v0, :cond_6

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_2
    if-lez v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lt v1, v4, :cond_4

    .line 59
    .line 60
    if-gt v1, v3, :cond_4

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x20

    .line 63
    .line 64
    int-to-char v1, v1

    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move-object v0, p0

    .line 83
    :goto_4
    return-object v0
.end method

.method public static final parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Ljava/util/Collection;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_b

    .line 17
    .line 18
    const-class v0, Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_b

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_b

    .line 39
    .line 40
    const-class v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_0
    const-class v0, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    new-instance p2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 73
    .line 74
    invoke-direct {p2, v0, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_1
    const-class v0, Ljava/util/Set;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/4 v4, 0x2

    .line 90
    if-nez v3, :cond_a

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_a

    .line 101
    .line 102
    const-class v0, Ljava/util/LinkedHashSet;

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_2
    const-class v0, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    new-instance p2, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 141
    .line 142
    invoke-direct {p2, v0, v1, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_3
    const-class v0, Ljava/util/Map;

    .line 148
    .line 149
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-nez v3, :cond_9

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_9

    .line 168
    .line 169
    const-class v0, Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_4
    const-class v0, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 200
    .line 201
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    new-instance v3, Lkotlinx/serialization/internal/PairSerializer;

    .line 214
    .line 215
    invoke-direct {v3, p2, v0, v1}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 216
    .line 217
    .line 218
    :goto_0
    move-object p2, v3

    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_5
    const-class v0, Lkotlin/Pair;

    .line 222
    .line 223
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    new-instance v1, Lkotlinx/serialization/internal/PairSerializer;

    .line 252
    .line 253
    invoke-direct {v1, p2, v0, v2}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 254
    .line 255
    .line 256
    :goto_1
    move-object p2, v1

    .line 257
    goto/16 :goto_5

    .line 258
    .line 259
    :cond_6
    const-class v0, Lkotlin/Triple;

    .line 260
    .line 261
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 276
    .line 277
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 282
    .line 283
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    new-instance v3, Lkotlinx/serialization/ContextualSerializer;

    .line 299
    .line 300
    invoke-direct {v3, p2, v0, v1}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 301
    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_7
    invoke-static {p0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_8

    .line 313
    .line 314
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    check-cast p2, Lkotlin/reflect/KClass;

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    new-instance v1, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    .line 333
    .line 334
    invoke-direct {v1, p2, v0}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_8
    const/4 p2, 0x0

    .line 339
    goto :goto_5

    .line 340
    :cond_9
    :goto_2
    new-instance p2, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 347
    .line 348
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 353
    .line 354
    invoke-direct {p2, v0, v3, v1}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_a
    :goto_3
    new-instance p2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 359
    .line 360
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 365
    .line 366
    invoke-direct {p2, v0, v4}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_b
    :goto_4
    new-instance p2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 371
    .line 372
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 377
    .line 378
    invoke-direct {p2, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 379
    .line 380
    .line 381
    :goto_5
    if-nez p2, :cond_c

    .line 382
    .line 383
    new-array p2, v2, [Lkotlinx/serialization/KSerializer;

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 390
    .line 391
    array-length p2, p1

    .line 392
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 397
    .line 398
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/TuplesKt;->constructSerializerForGivenTypeArgs(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :cond_c
    return-object p2
.end method

.method public static final serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {p0}, Lkotlinx/serialization/internal/TuplesKt;->serializerNotRegistered(Lkotlin/reflect/KClass;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static final serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlinx/serialization/internal/TuplesKt;->constructSerializerForGivenTypeArgs(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Lkotlin/collections/builders/MapBuilder;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0}, Lkotlin/io/CloseableKt;->serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializersForParameters(Lkotlinx/serialization/modules/SerialModuleImpl;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lkotlin/reflect/KType;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {p0, v1, v2}, Lkotlin/io/CloseableKt;->serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v1}, Lkotlinx/serialization/internal/TuplesKt;->kclass(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lkotlinx/serialization/internal/TuplesKt;->serializerNotRegistered(Lkotlin/reflect/KClass;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    return-object p2

    .line 60
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lkotlin/reflect/KType;

    .line 84
    .line 85
    invoke-static {p0, v1}, Lkotlin/io/ByteStreamsKt;->serializerOrNull(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    return-object p2
.end method
