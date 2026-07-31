.class public abstract Lokio/Okio;
.super Ljava/lang/Object;


# direct methods
.method public static final FetchingMailSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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
    const v4, -0x68e9bee7

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
    const/16 v9, 0x20

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
    move v7, v9

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
    const/16 v13, 0x4000

    .line 121
    .line 122
    const v16, 0x8000

    .line 123
    .line 124
    .line 125
    if-nez v7, :cond_b

    .line 126
    .line 127
    and-int v7, v15, v16

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
    move v7, v13

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
    const v17, 0x92493

    .line 178
    .line 179
    .line 180
    move/from16 p7, v7

    .line 181
    .line 182
    and-int v7, v4, v17

    .line 183
    .line 184
    const v8, 0x92492

    .line 185
    .line 186
    .line 187
    if-eq v7, v8, :cond_f

    .line 188
    .line 189
    const/4 v7, 0x1

    .line 190
    goto :goto_a

    .line 191
    :cond_f
    const/4 v7, 0x0

    .line 192
    :goto_a
    and-int/lit8 v8, v4, 0x1

    .line 193
    .line 194
    invoke-virtual {v11, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_23

    .line 199
    .line 200
    and-int/lit8 v7, v4, 0xe

    .line 201
    .line 202
    if-ne v7, v6, :cond_10

    .line 203
    .line 204
    const/4 v7, 0x1

    .line 205
    goto :goto_b

    .line 206
    :cond_10
    const/4 v7, 0x0

    .line 207
    :goto_b
    const p6, 0xe000

    .line 208
    .line 209
    .line 210
    and-int v8, v4, p6

    .line 211
    .line 212
    if-eq v8, v13, :cond_12

    .line 213
    .line 214
    and-int v8, v4, v16

    .line 215
    .line 216
    if-eqz v8, :cond_11

    .line 217
    .line 218
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-eqz v8, :cond_11

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_11
    const/4 v8, 0x0

    .line 226
    goto :goto_d

    .line 227
    :cond_12
    :goto_c
    const/4 v8, 0x1

    .line 228
    :goto_d
    or-int/2addr v7, v8

    .line 229
    and-int/lit8 v8, v4, 0x70

    .line 230
    .line 231
    if-ne v8, v9, :cond_13

    .line 232
    .line 233
    const/4 v13, 0x1

    .line 234
    goto :goto_e

    .line 235
    :cond_13
    const/4 v13, 0x0

    .line 236
    :goto_e
    or-int/2addr v7, v13

    .line 237
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 242
    .line 243
    if-nez v7, :cond_15

    .line 244
    .line 245
    if-ne v13, v9, :cond_14

    .line 246
    .line 247
    goto :goto_f

    .line 248
    :cond_14
    move/from16 v28, v4

    .line 249
    .line 250
    goto/16 :goto_10

    .line 251
    .line 252
    :cond_15
    :goto_f
    new-instance v7, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    iget-object v13, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->localFolderSize:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 258
    .line 259
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 260
    .line 261
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    invoke-direct {v12, v0, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    const/16 v5, 0x18

    .line 269
    .line 270
    invoke-direct {v6, v5}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 271
    .line 272
    .line 273
    move/from16 v28, v4

    .line 274
    .line 275
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {v4, v5}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    iget-object v5, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;->fetchingMailSettingsOptionsMapper:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 281
    .line 282
    move-object/from16 v24, v4

    .line 283
    .line 284
    iget-object v4, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->localFolderSizeOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 285
    .line 286
    const-string v21, "local_folder_size"

    .line 287
    .line 288
    const/16 v25, 0x1

    .line 289
    .line 290
    move-object/from16 v27, v4

    .line 291
    .line 292
    move-object/from16 v23, v6

    .line 293
    .line 294
    move-object/from16 v22, v12

    .line 295
    .line 296
    move-object/from16 v26, v13

    .line 297
    .line 298
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v4, v20

    .line 302
    .line 303
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->syncMessageFrom:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 307
    .line 308
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 309
    .line 310
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/16 v12, 0xd

    .line 313
    .line 314
    invoke-direct {v6, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 315
    .line 316
    .line 317
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 318
    .line 319
    const/16 v13, 0x18

    .line 320
    .line 321
    invoke-direct {v12, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v26, v4

    .line 325
    .line 326
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 327
    .line 328
    invoke-direct {v4, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 329
    .line 330
    .line 331
    iget-object v13, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 332
    .line 333
    const-string v21, "sync_message_from"

    .line 334
    .line 335
    move-object/from16 v24, v4

    .line 336
    .line 337
    move-object/from16 v22, v6

    .line 338
    .line 339
    move-object/from16 v23, v12

    .line 340
    .line 341
    move-object/from16 v27, v13

    .line 342
    .line 343
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v4, v20

    .line 347
    .line 348
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->fetchMessageUpTo:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 352
    .line 353
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 354
    .line 355
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 356
    .line 357
    const/4 v12, 0x7

    .line 358
    invoke-direct {v6, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 359
    .line 360
    .line 361
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 362
    .line 363
    const/16 v13, 0x18

    .line 364
    .line 365
    invoke-direct {v12, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v26, v4

    .line 369
    .line 370
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 371
    .line 372
    invoke-direct {v4, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 373
    .line 374
    .line 375
    iget-object v13, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 376
    .line 377
    const-string v21, "fetch_message_up_to"

    .line 378
    .line 379
    move-object/from16 v24, v4

    .line 380
    .line 381
    move-object/from16 v22, v6

    .line 382
    .line 383
    move-object/from16 v23, v12

    .line 384
    .line 385
    move-object/from16 v27, v13

    .line 386
    .line 387
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 388
    .line 389
    .line 390
    move-object/from16 v4, v20

    .line 391
    .line 392
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->folderPollFrequency:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 396
    .line 397
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 398
    .line 399
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const/16 v12, 0xb

    .line 402
    .line 403
    invoke-direct {v6, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 404
    .line 405
    .line 406
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 407
    .line 408
    const/16 v13, 0x18

    .line 409
    .line 410
    invoke-direct {v12, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v26, v4

    .line 414
    .line 415
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    invoke-direct {v4, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 418
    .line 419
    .line 420
    iget-object v13, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 421
    .line 422
    const-string v21, "folder_poll_frequency"

    .line 423
    .line 424
    move-object/from16 v24, v4

    .line 425
    .line 426
    move-object/from16 v22, v6

    .line 427
    .line 428
    move-object/from16 v23, v12

    .line 429
    .line 430
    move-object/from16 v27, v13

    .line 431
    .line 432
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v4, v20

    .line 436
    .line 437
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    iget-boolean v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->syncServerDeletions:Z

    .line 441
    .line 442
    new-instance v6, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 443
    .line 444
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 445
    .line 446
    const/4 v13, 0x1

    .line 447
    invoke-direct {v12, v0, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 448
    .line 449
    .line 450
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 451
    .line 452
    const/4 v10, 0x2

    .line 453
    invoke-direct {v13, v0, v10}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 454
    .line 455
    .line 456
    const-string v10, "sync_server_deletions"

    .line 457
    .line 458
    invoke-direct {v6, v10, v12, v13, v4}, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    iget-boolean v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->markAsReadWhenDeleted:Z

    .line 465
    .line 466
    new-instance v6, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 467
    .line 468
    new-instance v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 469
    .line 470
    const/4 v13, 0x0

    .line 471
    invoke-direct {v10, v0, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 472
    .line 473
    .line 474
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 475
    .line 476
    const/4 v13, 0x6

    .line 477
    invoke-direct {v12, v0, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 478
    .line 479
    .line 480
    const-string v13, "mark_as_read_when_deleted"

    .line 481
    .line 482
    invoke-direct {v6, v13, v10, v12, v4}, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->whenIDeleteAMessage:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 489
    .line 490
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 491
    .line 492
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 493
    .line 494
    const/4 v10, 0x5

    .line 495
    invoke-direct {v6, v0, v10}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 496
    .line 497
    .line 498
    new-instance v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 499
    .line 500
    const/16 v13, 0x18

    .line 501
    .line 502
    invoke-direct {v10, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 503
    .line 504
    .line 505
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 506
    .line 507
    invoke-direct {v12, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 508
    .line 509
    .line 510
    iget-object v13, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 511
    .line 512
    const-string/jumbo v21, "when_i_delete_a_message"

    .line 513
    .line 514
    .line 515
    move-object/from16 v26, v4

    .line 516
    .line 517
    move-object/from16 v22, v6

    .line 518
    .line 519
    move-object/from16 v23, v10

    .line 520
    .line 521
    move-object/from16 v24, v12

    .line 522
    .line 523
    move-object/from16 v27, v13

    .line 524
    .line 525
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 526
    .line 527
    .line 528
    move-object/from16 v4, v20

    .line 529
    .line 530
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->eraseDeletedMessageOnServer:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 534
    .line 535
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 536
    .line 537
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 538
    .line 539
    const/16 v10, 0x9

    .line 540
    .line 541
    invoke-direct {v6, v0, v10}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 542
    .line 543
    .line 544
    new-instance v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 545
    .line 546
    const/16 v13, 0x18

    .line 547
    .line 548
    invoke-direct {v10, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 549
    .line 550
    .line 551
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 552
    .line 553
    invoke-direct {v12, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 554
    .line 555
    .line 556
    iget-object v5, v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 557
    .line 558
    const-string v21, "erase_deleted_message_on_server"

    .line 559
    .line 560
    move-object/from16 v26, v4

    .line 561
    .line 562
    move-object/from16 v27, v5

    .line 563
    .line 564
    move-object/from16 v22, v6

    .line 565
    .line 566
    move-object/from16 v23, v10

    .line 567
    .line 568
    move-object/from16 v24, v12

    .line 569
    .line 570
    invoke-direct/range {v20 .. v27}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v4, v20

    .line 574
    .line 575
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 579
    .line 580
    new-instance v4, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 581
    .line 582
    const/16 v5, 0x8

    .line 583
    .line 584
    invoke-direct {v4, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 585
    .line 586
    .line 587
    new-instance v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 588
    .line 589
    invoke-direct {v5, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 590
    .line 591
    .line 592
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 593
    .line 594
    invoke-direct {v6, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 595
    .line 596
    .line 597
    iget-object v10, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 598
    .line 599
    const v12, 0x7f1200e6

    .line 600
    .line 601
    .line 602
    check-cast v10, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 603
    .line 604
    invoke-virtual {v10, v12}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v25

    .line 608
    new-instance v10, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 609
    .line 610
    const/16 v12, 0x1b

    .line 611
    .line 612
    invoke-direct {v10, v12, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 613
    .line 614
    .line 615
    const-string v21, "in_coming_server"

    .line 616
    .line 617
    move-object/from16 v22, v4

    .line 618
    .line 619
    move-object/from16 v23, v5

    .line 620
    .line 621
    move-object/from16 v24, v6

    .line 622
    .line 623
    move-object/from16 v26, v10

    .line 624
    .line 625
    invoke-direct/range {v20 .. v26}, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 626
    .line 627
    .line 628
    move-object/from16 v4, v20

    .line 629
    .line 630
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    new-instance v20, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 634
    .line 635
    new-instance v4, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 636
    .line 637
    const/4 v5, 0x3

    .line 638
    invoke-direct {v4, v0, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;I)V

    .line 639
    .line 640
    .line 641
    new-instance v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 642
    .line 643
    const/16 v13, 0x18

    .line 644
    .line 645
    invoke-direct {v5, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 646
    .line 647
    .line 648
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 649
    .line 650
    invoke-direct {v6, v13}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 651
    .line 652
    .line 653
    new-instance v10, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 654
    .line 655
    const/16 v12, 0x1a

    .line 656
    .line 657
    invoke-direct {v10, v12, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 658
    .line 659
    .line 660
    const-string v21, "advance"

    .line 661
    .line 662
    const-string v25, ""

    .line 663
    .line 664
    move-object/from16 v22, v4

    .line 665
    .line 666
    move-object/from16 v23, v5

    .line 667
    .line 668
    move-object/from16 v24, v6

    .line 669
    .line 670
    move-object/from16 v26, v10

    .line 671
    .line 672
    invoke-direct/range {v20 .. v26}, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 673
    .line 674
    .line 675
    move-object/from16 v4, v20

    .line 676
    .line 677
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    invoke-static {v7}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    :goto_10
    move-object v5, v13

    .line 688
    check-cast v5, Lkotlinx/collections/immutable/ImmutableList;

    .line 689
    .line 690
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    if-ne v4, v9, :cond_16

    .line 695
    .line 696
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 697
    .line 698
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    :cond_16
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 706
    .line 707
    const v6, 0x7f1200bd

    .line 708
    .line 709
    .line 710
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    iget-object v7, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 715
    .line 716
    const/16 v10, 0x20

    .line 717
    .line 718
    if-ne v8, v10, :cond_17

    .line 719
    .line 720
    const/4 v13, 0x1

    .line 721
    goto :goto_11

    .line 722
    :cond_17
    const/4 v13, 0x0

    .line 723
    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v10

    .line 727
    if-nez v13, :cond_19

    .line 728
    .line 729
    if-ne v10, v9, :cond_18

    .line 730
    .line 731
    goto :goto_12

    .line 732
    :cond_18
    const/4 v13, 0x1

    .line 733
    goto :goto_13

    .line 734
    :cond_19
    :goto_12
    new-instance v10, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 735
    .line 736
    const/4 v13, 0x1

    .line 737
    invoke-direct {v10, v13, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    :goto_13
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 744
    .line 745
    const/16 v12, 0x20

    .line 746
    .line 747
    if-ne v8, v12, :cond_1a

    .line 748
    .line 749
    move v8, v13

    .line 750
    goto :goto_14

    .line 751
    :cond_1a
    const/4 v8, 0x0

    .line 752
    :goto_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v12

    .line 756
    if-nez v8, :cond_1b

    .line 757
    .line 758
    if-ne v12, v9, :cond_1c

    .line 759
    .line 760
    :cond_1b
    new-instance v12, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 761
    .line 762
    const/16 v8, 0x1c

    .line 763
    .line 764
    invoke-direct {v12, v8, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    :cond_1c
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 771
    .line 772
    new-instance v8, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 773
    .line 774
    const/4 v13, 0x2

    .line 775
    invoke-direct {v8, v4, v13}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 776
    .line 777
    .line 778
    const v13, -0x682fa7eb

    .line 779
    .line 780
    .line 781
    invoke-static {v13, v8, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 782
    .line 783
    .line 784
    move-result-object v8

    .line 785
    shr-int/lit8 v13, v28, 0x6

    .line 786
    .line 787
    and-int v13, v13, p6

    .line 788
    .line 789
    or-int v13, v13, p7

    .line 790
    .line 791
    shl-int/lit8 v16, v28, 0xc

    .line 792
    .line 793
    const/high16 v20, 0x1c00000

    .line 794
    .line 795
    and-int v16, v16, v20

    .line 796
    .line 797
    or-int v13, v13, v16

    .line 798
    .line 799
    move-object/from16 v16, v9

    .line 800
    .line 801
    move-object v9, v8

    .line 802
    move-object v8, v7

    .line 803
    move-object v7, v12

    .line 804
    move v12, v13

    .line 805
    const/4 v13, 0x0

    .line 806
    move-object/from16 p6, v4

    .line 807
    .line 808
    move-object v4, v6

    .line 809
    move-object v6, v10

    .line 810
    move-object/from16 v2, v16

    .line 811
    .line 812
    move/from16 v0, v28

    .line 813
    .line 814
    const/4 v14, 0x2

    .line 815
    const/16 v19, 0x1

    .line 816
    .line 817
    move-object/from16 v10, p3

    .line 818
    .line 819
    invoke-static/range {v4 .. v13}, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V

    .line 820
    .line 821
    .line 822
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    check-cast v4, Ljava/lang/Boolean;

    .line 827
    .line 828
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    if-eqz v4, :cond_22

    .line 833
    .line 834
    const v4, 0x26d9c0a3

    .line 835
    .line 836
    .line 837
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 838
    .line 839
    .line 840
    const v4, 0x7f12008a

    .line 841
    .line 842
    .line 843
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v16

    .line 847
    iget-object v4, v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 848
    .line 849
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v4

    .line 853
    move-object/from16 v5, p5

    .line 854
    .line 855
    check-cast v5, Lapp/k9mail/provider/K9AppNameProvider;

    .line 856
    .line 857
    invoke-virtual {v5}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    new-array v6, v14, [Ljava/lang/Object;

    .line 862
    .line 863
    const/4 v13, 0x0

    .line 864
    aput-object v4, v6, v13

    .line 865
    .line 866
    aput-object v5, v6, v19

    .line 867
    .line 868
    const v4, 0x7f120089

    .line 869
    .line 870
    .line 871
    invoke-static {v4, v6, v11}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    const v5, 0x7f120114

    .line 876
    .line 877
    .line 878
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v18

    .line 882
    const v5, 0x7f1200a1

    .line 883
    .line 884
    .line 885
    invoke-static {v11, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v22

    .line 889
    and-int/lit16 v0, v0, 0x380

    .line 890
    .line 891
    const/16 v5, 0x100

    .line 892
    .line 893
    if-ne v0, v5, :cond_1d

    .line 894
    .line 895
    move/from16 v5, v19

    .line 896
    .line 897
    goto :goto_15

    .line 898
    :cond_1d
    move v5, v13

    .line 899
    :goto_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    if-nez v5, :cond_1f

    .line 904
    .line 905
    if-ne v0, v2, :cond_1e

    .line 906
    .line 907
    goto :goto_16

    .line 908
    :cond_1e
    move-object/from16 v5, p6

    .line 909
    .line 910
    goto :goto_17

    .line 911
    :cond_1f
    :goto_16
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;

    .line 912
    .line 913
    move-object/from16 v5, p6

    .line 914
    .line 915
    move/from16 v6, v19

    .line 916
    .line 917
    invoke-direct {v0, v3, v5, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 921
    .line 922
    .line 923
    :goto_17
    move-object/from16 v19, v0

    .line 924
    .line 925
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 926
    .line 927
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    if-ne v0, v2, :cond_20

    .line 932
    .line 933
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 934
    .line 935
    const/16 v6, 0x10

    .line 936
    .line 937
    invoke-direct {v0, v5, v6}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    :cond_20
    move-object/from16 v20, v0

    .line 944
    .line 945
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 946
    .line 947
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    if-ne v0, v2, :cond_21

    .line 952
    .line 953
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 954
    .line 955
    const/16 v2, 0x11

    .line 956
    .line 957
    invoke-direct {v0, v5, v2}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    :cond_21
    move-object/from16 v23, v0

    .line 964
    .line 965
    check-cast v23, Lkotlin/jvm/functions/Function0;

    .line 966
    .line 967
    const/16 v24, 0x0

    .line 968
    .line 969
    const v26, 0x6006000

    .line 970
    .line 971
    .line 972
    const/16 v21, 0x0

    .line 973
    .line 974
    move-object/from16 v17, v4

    .line 975
    .line 976
    move-object/from16 v25, v11

    .line 977
    .line 978
    invoke-static/range {v16 .. v26}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->AlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 982
    .line 983
    .line 984
    goto :goto_18

    .line 985
    :cond_22
    const/4 v13, 0x0

    .line 986
    const v0, 0x26e44129

    .line 987
    .line 988
    .line 989
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 993
    .line 994
    .line 995
    :goto_18
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 996
    .line 997
    move-object v7, v0

    .line 998
    goto :goto_19

    .line 999
    :cond_23
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1000
    .line 1001
    .line 1002
    move-object/from16 v7, p6

    .line 1003
    .line 1004
    :goto_19
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v10

    .line 1008
    if-eqz v10, :cond_24

    .line 1009
    .line 1010
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 1011
    .line 1012
    const/4 v9, 0x4

    .line 1013
    move-object/from16 v2, p1

    .line 1014
    .line 1015
    move-object/from16 v4, p3

    .line 1016
    .line 1017
    move-object/from16 v5, p4

    .line 1018
    .line 1019
    move-object/from16 v6, p5

    .line 1020
    .line 1021
    move v8, v15

    .line 1022
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1023
    .line 1024
    .line 1025
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1026
    .line 1027
    :cond_24
    return-void
.end method

.method public static final FolderCountAndStarredBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x213aa68b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p5

    .line 25
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v1

    .line 42
    :cond_3
    and-int/lit16 v1, p5, 0x180

    .line 43
    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const/16 v1, 0x100

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/16 v1, 0x80

    .line 56
    .line 57
    :goto_3
    or-int/2addr v0, v1

    .line 58
    :cond_5
    and-int/lit16 v1, p5, 0xc00

    .line 59
    .line 60
    if-nez v1, :cond_7

    .line 61
    .line 62
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    const/16 v1, 0x800

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    const/16 v1, 0x400

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v1

    .line 74
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 75
    .line 76
    const/16 v3, 0x492

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eq v1, v3, :cond_8

    .line 81
    .line 82
    move v1, v4

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move v1, v5

    .line 85
    :goto_5
    and-int/2addr v0, v4

    .line 86
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_d

    .line 91
    .line 92
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 93
    .line 94
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 95
    .line 96
    const/16 v3, 0x30

    .line 97
    .line 98
    invoke-static {v1, v0, p4, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-wide v6, p4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 103
    .line 104
    ushr-long v1, v6, v2

    .line 105
    .line 106
    xor-long/2addr v1, v6

    .line 107
    long-to-int v1, v1

    .line 108
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {p4, p3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 122
    .line 123
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 124
    .line 125
    .line 126
    iget-boolean v7, p4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 127
    .line 128
    if-eqz v7, :cond_9

    .line 129
    .line 130
    invoke-virtual {p4, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 135
    .line 136
    .line 137
    :goto_6
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {p4, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {p4, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 152
    .line 153
    invoke-static {p4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 157
    .line 158
    invoke-static {p4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 162
    .line 163
    invoke-static {p4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 167
    .line 168
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/content/res/Resources;

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    if-lez p0, :cond_b

    .line 176
    .line 177
    const v2, -0x53854a07

    .line 178
    .line 179
    .line 180
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->labelForCount(ILandroid/content/res/Resources;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-eqz p2, :cond_a

    .line 188
    .line 189
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Dot:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    move-object v3, v1

    .line 193
    :goto_7
    invoke-static {v2, v1, v3, p4, v5}, Lkotlin/math/MathKt;->NavigationDrawerItemBadge(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_b
    const v2, -0x53811869

    .line 201
    .line 202
    .line 203
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 207
    .line 208
    .line 209
    :goto_8
    if-eqz p2, :cond_c

    .line 210
    .line 211
    if-lez p1, :cond_c

    .line 212
    .line 213
    const v2, -0x53802750

    .line 214
    .line 215
    .line 216
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 217
    .line 218
    .line 219
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 220
    .line 221
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/high16 v2, 0x40800000    # 4.0f

    .line 231
    .line 232
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 233
    .line 234
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {p4, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 239
    .line 240
    .line 241
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->labelForCount(ILandroid/content/res/Resources;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Star:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 246
    .line 247
    invoke-static {v0, v1, v2, p4, v5}, Lkotlin/math/MathKt;->NavigationDrawerItemBadge(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_c
    const v0, -0x537b5bc9

    .line 255
    .line 256
    .line 257
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 261
    .line 262
    .line 263
    :goto_9
    invoke-virtual {p4, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_d
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    :goto_a
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 271
    .line 272
    .line 273
    move-result-object p4

    .line 274
    if-eqz p4, :cond_e

    .line 275
    .line 276
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;

    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    move v1, p0

    .line 280
    move v2, p1

    .line 281
    move v3, p2

    .line 282
    move-object v4, p3

    .line 283
    move v5, p5

    .line 284
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;-><init>(IIZLandroidx/compose/ui/Modifier;II)V

    .line 285
    .line 286
    .line 287
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 288
    .line 289
    :cond_e
    return-void
.end method

.method public static final FolderListItemBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v4, p4

    .line 2
    .line 3
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x731939a7

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    :goto_0
    or-int v1, p5, v1

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v2, 0x10

    .line 32
    .line 33
    :goto_1
    or-int/2addr v1, v2

    .line 34
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const/16 v3, 0x100

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v3, 0x80

    .line 44
    .line 45
    :goto_2
    or-int/2addr v1, v3

    .line 46
    or-int/lit16 v1, v1, 0xc00

    .line 47
    .line 48
    and-int/lit16 v3, v1, 0x493

    .line 49
    .line 50
    const/16 v5, 0x492

    .line 51
    .line 52
    if-eq v3, v5, :cond_3

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    const/4 v3, 0x0

    .line 57
    :goto_3
    and-int/lit8 v5, v1, 0x1

    .line 58
    .line 59
    invoke-virtual {v4, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    and-int/lit16 v5, v1, 0x1ffe

    .line 66
    .line 67
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 68
    .line 69
    move v0, p0

    .line 70
    move v1, p1

    .line 71
    move v2, p2

    .line 72
    invoke-static/range {v0 .. v5}, Lokio/Okio;->FolderCountAndStarredBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 73
    .line 74
    .line 75
    move-object v9, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 78
    .line 79
    .line 80
    move-object v9, p3

    .line 81
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    new-instance v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    move v6, p0

    .line 91
    move v7, p1

    .line 92
    move v8, p2

    .line 93
    move/from16 v10, p5

    .line 94
    .line 95
    invoke-direct/range {v5 .. v11}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;-><init>(IIZLandroidx/compose/ui/Modifier;II)V

    .line 96
    .line 97
    .line 98
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 99
    .line 100
    :cond_5
    return-void
.end method

.method public static final RenderSettingDecoration(Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x1ee9f89b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    and-int/lit8 v0, p3, 0x8

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    :goto_1
    or-int/2addr v0, p3

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, p3

    .line 34
    :goto_2
    or-int/lit8 v0, v0, 0x30

    .line 35
    .line 36
    and-int/lit8 v1, v0, 0x13

    .line 37
    .line 38
    const/16 v2, 0x12

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eq v1, v2, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move v1, v3

    .line 46
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 47
    .line 48
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    instance-of p1, p0, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    const p1, 0x7d7bf82e

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 62
    .line 63
    .line 64
    and-int/lit8 p1, v0, 0x7e

    .line 65
    .line 66
    invoke-static {p0, p2, p1}, Lkotlin/io/ByteStreamsKt;->CustomItem(Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;Landroidx/compose/runtime/Composer;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const p0, 0xc4e4cd1

    .line 76
    .line 77
    .line 78
    invoke-static {p2, p0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0

    .line 83
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/16 v1, 0xe

    .line 95
    .line 96
    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method public static final RenderSettingValue(Lnet/thunderbird/core/ui/setting/SettingValue;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x4078e15c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    and-int/lit8 v0, p5, 0x8

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    :goto_1
    or-int/2addr v0, p5

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, p5

    .line 34
    :goto_2
    and-int/lit8 v1, p5, 0x30

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const/16 v1, 0x10

    .line 48
    .line 49
    :goto_3
    or-int/2addr v0, v1

    .line 50
    :cond_4
    and-int/lit16 v1, p5, 0x180

    .line 51
    .line 52
    if-nez v1, :cond_6

    .line 53
    .line 54
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    const/16 v1, 0x100

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    const/16 v1, 0x80

    .line 64
    .line 65
    :goto_4
    or-int/2addr v0, v1

    .line 66
    :cond_6
    and-int/lit16 v1, p5, 0xc00

    .line 67
    .line 68
    if-nez v1, :cond_8

    .line 69
    .line 70
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    const/16 v1, 0x800

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    const/16 v1, 0x400

    .line 80
    .line 81
    :goto_5
    or-int/2addr v0, v1

    .line 82
    :cond_8
    and-int/lit16 v1, v0, 0x493

    .line 83
    .line 84
    const/16 v2, 0x492

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    if-eq v1, v2, :cond_9

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    goto :goto_6

    .line 91
    :cond_9
    move v1, v3

    .line 92
    :goto_6
    and-int/lit8 v2, v0, 0x1

    .line 93
    .line 94
    invoke-virtual {p4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_11

    .line 99
    .line 100
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 101
    .line 102
    if-eqz v1, :cond_a

    .line 103
    .line 104
    const v1, 0x4d0a2584    # 1.4485715E8f

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 108
    .line 109
    .line 110
    move-object v1, p0

    .line 111
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 112
    .line 113
    and-int/lit8 v2, v0, 0x7e

    .line 114
    .line 115
    shr-int/lit8 v0, v0, 0x3

    .line 116
    .line 117
    and-int/lit16 v0, v0, 0x380

    .line 118
    .line 119
    or-int/2addr v0, v2

    .line 120
    invoke-static {v1, p1, p3, p4, v0}, Lkotlin/text/CharsKt__CharKt;->TextItem(Lnet/thunderbird/core/ui/setting/SettingValue$Text;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_a
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 129
    .line 130
    if-eqz v1, :cond_b

    .line 131
    .line 132
    const v1, 0x4d0d11c1    # 1.4792194E8f

    .line 133
    .line 134
    .line 135
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 136
    .line 137
    .line 138
    move-object v1, p0

    .line 139
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 140
    .line 141
    and-int/lit8 v2, v0, 0xe

    .line 142
    .line 143
    shr-int/lit8 v0, v0, 0x6

    .line 144
    .line 145
    and-int/lit8 v0, v0, 0x70

    .line 146
    .line 147
    or-int/2addr v0, v2

    .line 148
    invoke-static {v1, p3, p4, v0}, Lkotlin/io/CloseableKt;->ActionTextItem(Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :cond_b
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 157
    .line 158
    if-eqz v1, :cond_c

    .line 159
    .line 160
    const v1, 0x4d0f8163    # 1.5047634E8f

    .line 161
    .line 162
    .line 163
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 164
    .line 165
    .line 166
    move-object v1, p0

    .line 167
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 168
    .line 169
    and-int/lit8 v2, v0, 0x7e

    .line 170
    .line 171
    shr-int/lit8 v0, v0, 0x3

    .line 172
    .line 173
    and-int/lit16 v0, v0, 0x380

    .line 174
    .line 175
    or-int/2addr v0, v2

    .line 176
    invoke-static {v1, p1, p3, p4, v0}, Lokhttp3/CacheControl$Companion;->ColorItem(Lnet/thunderbird/core/ui/setting/SettingValue$Color;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_7

    .line 183
    .line 184
    :cond_c
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 185
    .line 186
    if-eqz v1, :cond_d

    .line 187
    .line 188
    const v1, 0x4d1270c6

    .line 189
    .line 190
    .line 191
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 192
    .line 193
    .line 194
    move-object v1, p0

    .line 195
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 196
    .line 197
    and-int/lit8 v2, v0, 0xe

    .line 198
    .line 199
    shr-int/lit8 v0, v0, 0x3

    .line 200
    .line 201
    and-int/lit8 v4, v0, 0x70

    .line 202
    .line 203
    or-int/2addr v2, v4

    .line 204
    and-int/lit16 v0, v0, 0x380

    .line 205
    .line 206
    or-int/2addr v0, v2

    .line 207
    invoke-static {v1, p2, p3, p4, v0}, Lokhttp3/Cookie$Companion;->IconListItem(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_d
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 215
    .line 216
    if-eqz v1, :cond_e

    .line 217
    .line 218
    const v1, 0x4d15f49f    # 1.5723979E8f

    .line 219
    .line 220
    .line 221
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 222
    .line 223
    .line 224
    move-object v1, p0

    .line 225
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 226
    .line 227
    and-int/lit8 v2, v0, 0xe

    .line 228
    .line 229
    shr-int/lit8 v0, v0, 0x3

    .line 230
    .line 231
    and-int/lit8 v4, v0, 0x70

    .line 232
    .line 233
    or-int/2addr v2, v4

    .line 234
    and-int/lit16 v0, v0, 0x380

    .line 235
    .line 236
    or-int/2addr v0, v2

    .line 237
    invoke-static {v1, p2, p3, p4, v0}, Lokhttp3/Handshake$Companion;->SegmentedButtonItem(Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_e
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 245
    .line 246
    if-eqz v1, :cond_f

    .line 247
    .line 248
    const v1, 0x4d196002

    .line 249
    .line 250
    .line 251
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 252
    .line 253
    .line 254
    move-object v1, p0

    .line 255
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 256
    .line 257
    and-int/lit8 v2, v0, 0x7e

    .line 258
    .line 259
    shr-int/lit8 v0, v0, 0x3

    .line 260
    .line 261
    and-int/lit16 v0, v0, 0x380

    .line 262
    .line 263
    or-int/2addr v0, v2

    .line 264
    invoke-static {v1, p1, p3, p4, v0}, Lkotlin/ranges/RangesKt;->SelectItem(Lnet/thunderbird/core/ui/setting/SettingValue$Select;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_f
    instance-of v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 272
    .line 273
    if-eqz v1, :cond_10

    .line 274
    .line 275
    const v1, 0x4d1c7e80    # 1.64096E8f

    .line 276
    .line 277
    .line 278
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 279
    .line 280
    .line 281
    move-object v1, p0

    .line 282
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 283
    .line 284
    and-int/lit8 v2, v0, 0xe

    .line 285
    .line 286
    shr-int/lit8 v4, v0, 0x6

    .line 287
    .line 288
    and-int/lit8 v4, v4, 0x70

    .line 289
    .line 290
    or-int/2addr v2, v4

    .line 291
    and-int/lit16 v0, v0, 0x380

    .line 292
    .line 293
    or-int/2addr v0, v2

    .line 294
    invoke-static {v1, p3, p2, p4, v0}, Lorg/minidns/util/Base64;->SwitchItem(Lnet/thunderbird/core/ui/setting/SettingValue$Switch;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_10
    const p0, -0x5c5dee1

    .line 302
    .line 303
    .line 304
    invoke-static {p4, p0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    throw p0

    .line 309
    :cond_11
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 310
    .line 311
    .line 312
    :goto_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 313
    .line 314
    .line 315
    move-result-object p4

    .line 316
    if-eqz p4, :cond_12

    .line 317
    .line 318
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 319
    .line 320
    move-object v1, p0

    .line 321
    move-object v2, p1

    .line 322
    move-object v3, p2

    .line 323
    move-object v4, p3

    .line 324
    move v5, p5

    .line 325
    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 326
    .line 327
    .line 328
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 329
    .line 330
    :cond_12
    return-void
.end method

.method public static final SettingItem(Lnet/thunderbird/core/ui/setting/Setting;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 9

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
    move-object v6, p4

    .line 11
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x71b3b243

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, p5

    .line 29
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v3, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v3

    .line 41
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x100

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x80

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v4

    .line 53
    and-int/lit16 v4, v0, 0x493

    .line 54
    .line 55
    const/16 v5, 0x492

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-eq v4, v5, :cond_3

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v4, v8

    .line 63
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v6, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    instance-of v4, p0, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    const v4, 0x618dba84

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 79
    .line 80
    .line 81
    move-object v2, p0

    .line 82
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 83
    .line 84
    and-int/lit16 v7, v0, 0x1ffe

    .line 85
    .line 86
    move-object v3, p1

    .line 87
    move-object v4, p2

    .line 88
    move-object v5, p3

    .line 89
    invoke-static/range {v2 .. v7}, Lokio/Okio;->RenderSettingValue(Lnet/thunderbird/core/ui/setting/SettingValue;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    instance-of v2, p0, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    const v2, 0x619196a4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 104
    .line 105
    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 108
    .line 109
    and-int/lit8 v0, v0, 0xe

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static {v2, v3, v6, v0}, Lokio/Okio;->RenderSettingDecoration(Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    const v0, 0x2c6fe816

    .line 120
    .line 121
    .line 122
    invoke-static {v6, v0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    throw v0

    .line 127
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 128
    .line 129
    .line 130
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    const/16 v6, 0xe

    .line 139
    .line 140
    move-object v1, p0

    .line 141
    move-object v2, p1

    .line 142
    move-object v3, p2

    .line 143
    move-object v4, p3

    .line 144
    move v5, p5

    .line 145
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    :cond_7
    return-void
.end method

.method public static final SwipeableRow(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v9, p8

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v10, p7

    .line 15
    .line 16
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v0, 0x6a1f946a

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v0, v9, 0x6

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    :goto_0
    or-int/2addr v0, v9

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v0, v9

    .line 41
    :goto_1
    and-int/lit8 v4, v9, 0x30

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    move-object/from16 v4, p1

    .line 46
    .line 47
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    const/16 v6, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v6, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move-object/from16 v4, p1

    .line 61
    .line 62
    :goto_3
    and-int/lit16 v6, v9, 0x180

    .line 63
    .line 64
    if-nez v6, :cond_5

    .line 65
    .line 66
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    const/16 v6, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/16 v6, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v6

    .line 78
    :cond_5
    and-int/lit16 v6, v9, 0xc00

    .line 79
    .line 80
    if-nez v6, :cond_7

    .line 81
    .line 82
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_6

    .line 87
    .line 88
    const/16 v6, 0x800

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    const/16 v6, 0x400

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v6

    .line 94
    :cond_7
    and-int/lit16 v6, v9, 0x6000

    .line 95
    .line 96
    if-nez v6, :cond_9

    .line 97
    .line 98
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    const/16 v6, 0x4000

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_8
    const/16 v6, 0x2000

    .line 108
    .line 109
    :goto_6
    or-int/2addr v0, v6

    .line 110
    :cond_9
    const/high16 v6, 0x30000

    .line 111
    .line 112
    or-int/2addr v0, v6

    .line 113
    const/high16 v6, 0x180000

    .line 114
    .line 115
    and-int/2addr v6, v9

    .line 116
    if-nez v6, :cond_b

    .line 117
    .line 118
    move-object/from16 v6, p6

    .line 119
    .line 120
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_a

    .line 125
    .line 126
    const/high16 v11, 0x100000

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_a
    const/high16 v11, 0x80000

    .line 130
    .line 131
    :goto_7
    or-int/2addr v0, v11

    .line 132
    goto :goto_8

    .line 133
    :cond_b
    move-object/from16 v6, p6

    .line 134
    .line 135
    :goto_8
    const v11, 0x92493

    .line 136
    .line 137
    .line 138
    and-int/2addr v11, v0

    .line 139
    const v12, 0x92492

    .line 140
    .line 141
    .line 142
    if-eq v11, v12, :cond_c

    .line 143
    .line 144
    const/4 v11, 0x1

    .line 145
    goto :goto_9

    .line 146
    :cond_c
    const/4 v11, 0x0

    .line 147
    :goto_9
    and-int/lit8 v12, v0, 0x1

    .line 148
    .line 149
    invoke-virtual {v10, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_27

    .line 154
    .line 155
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 160
    .line 161
    if-ne v11, v12, :cond_d

    .line 162
    .line 163
    new-instance v11, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/16 v15, 0x19

    .line 166
    .line 167
    invoke-direct {v11, v15}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 176
    .line 177
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    check-cast v15, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 182
    .line 183
    and-int/lit8 v14, v0, 0xe

    .line 184
    .line 185
    if-ne v14, v2, :cond_e

    .line 186
    .line 187
    const/16 v16, 0x1

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_e
    const/16 v16, 0x0

    .line 191
    .line 192
    :goto_a
    const/high16 v17, 0x70000

    .line 193
    .line 194
    and-int v13, v0, v17

    .line 195
    .line 196
    const/high16 v7, 0x20000

    .line 197
    .line 198
    if-ne v13, v7, :cond_f

    .line 199
    .line 200
    const/4 v7, 0x1

    .line 201
    goto :goto_b

    .line 202
    :cond_f
    const/4 v7, 0x0

    .line 203
    :goto_b
    or-int v7, v16, v7

    .line 204
    .line 205
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    const/4 v2, 0x0

    .line 210
    if-nez v7, :cond_10

    .line 211
    .line 212
    if-ne v13, v12, :cond_11

    .line 213
    .line 214
    :cond_10
    new-instance v13, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 215
    .line 216
    const/16 v7, 0x18

    .line 217
    .line 218
    invoke-direct {v13, v1, v11, v2, v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 225
    .line 226
    invoke-static {v1, v11, v13, v10}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 227
    .line 228
    .line 229
    const/4 v7, 0x4

    .line 230
    if-ne v14, v7, :cond_12

    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    goto :goto_c

    .line 234
    :cond_12
    const/4 v7, 0x0

    .line 235
    :goto_c
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    or-int/2addr v7, v13

    .line 240
    const v13, 0xe000

    .line 241
    .line 242
    .line 243
    and-int/2addr v0, v13

    .line 244
    const/16 v13, 0x4000

    .line 245
    .line 246
    if-ne v0, v13, :cond_13

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_d

    .line 250
    :cond_13
    const/4 v0, 0x0

    .line 251
    :goto_d
    or-int/2addr v0, v7

    .line 252
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    if-nez v0, :cond_14

    .line 257
    .line 258
    if-ne v7, v12, :cond_15

    .line 259
    .line 260
    :cond_14
    new-instance v7, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    const/16 v0, 0x1d

    .line 263
    .line 264
    invoke-direct {v7, v1, v15, v5, v0}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_15
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 271
    .line 272
    const v0, 0xa8b3c64

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 276
    .line 277
    .line 278
    if-nez v3, :cond_16

    .line 279
    .line 280
    const/4 v0, 0x0

    .line 281
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 282
    .line 283
    .line 284
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 285
    .line 286
    const/4 v4, 0x1

    .line 287
    goto/16 :goto_15

    .line 288
    .line 289
    :cond_16
    iget-object v0, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->accessibilityActions:Lkotlinx/collections/immutable/ImmutableList;

    .line 290
    .line 291
    new-instance v13, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v17

    .line 304
    if-eqz v17, :cond_22

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v17

    .line 310
    move-object/from16 v2, v17

    .line 311
    .line 312
    check-cast v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction;

    .line 313
    .line 314
    move-object/from16 p5, v0

    .line 315
    .line 316
    instance-of v0, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;

    .line 317
    .line 318
    if-eqz v0, :cond_17

    .line 319
    .line 320
    iget-object v0, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 321
    .line 322
    instance-of v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 323
    .line 324
    if-nez v0, :cond_17

    .line 325
    .line 326
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->EndToStart:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 327
    .line 328
    goto :goto_f

    .line 329
    :cond_17
    instance-of v0, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$StartToEndAccessibilityAction;

    .line 330
    .line 331
    if-eqz v0, :cond_18

    .line 332
    .line 333
    iget-object v0, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 334
    .line 335
    instance-of v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 336
    .line 337
    if-nez v0, :cond_18

    .line 338
    .line 339
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->StartToEnd:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 340
    .line 341
    goto :goto_f

    .line 342
    :cond_18
    const/4 v0, 0x0

    .line 343
    :goto_f
    if-nez v0, :cond_19

    .line 344
    .line 345
    const v0, 0x34b26b4d

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 349
    .line 350
    .line 351
    const/4 v0, 0x0

    .line 352
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 353
    .line 354
    .line 355
    move v2, v0

    .line 356
    const/4 v0, 0x0

    .line 357
    const/4 v4, 0x1

    .line 358
    const/4 v6, 0x0

    .line 359
    goto/16 :goto_14

    .line 360
    .line 361
    :cond_19
    move-object/from16 v17, v2

    .line 362
    .line 363
    const/16 v18, 0x0

    .line 364
    .line 365
    const v2, 0x34b26b4e

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 369
    .line 370
    .line 371
    invoke-interface/range {v17 .. v17}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction;->getDescriptionStringRes()Lorg/jetbrains/compose/resources/StringResource;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-interface/range {v17 .. v17}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction;->getActionLabel()Lkotlin/jvm/functions/Function2;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-interface {v3, v10, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object/from16 p7, v3

    .line 388
    .line 389
    const/4 v4, 0x1

    .line 390
    new-array v3, v4, [Ljava/lang/Object;

    .line 391
    .line 392
    aput-object p7, v3, v18

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    sget-object v4, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 398
    .line 399
    invoke-static {v4, v10}, Lkotlin/ranges/RangesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    move-object/from16 v17, v3

    .line 404
    .line 405
    new-instance v3, Ljava/util/ArrayList;

    .line 406
    .line 407
    const/4 v5, 0x1

    .line 408
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .line 410
    .line 411
    aget-object v5, v17, v18

    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    if-ne v5, v12, :cond_1a

    .line 425
    .line 426
    new-instance v5, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 427
    .line 428
    const/16 v6, 0xa

    .line 429
    .line 430
    invoke-direct {v5, v6}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_1a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 437
    .line 438
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v17

    .line 446
    or-int v6, v6, v17

    .line 447
    .line 448
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v17

    .line 452
    or-int v6, v6, v17

    .line 453
    .line 454
    move-object/from16 v20, v2

    .line 455
    .line 456
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    if-nez v6, :cond_1c

    .line 461
    .line 462
    if-ne v2, v12, :cond_1b

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_1b
    move-object v4, v3

    .line 466
    move-object/from16 v3, v20

    .line 467
    .line 468
    const/4 v6, 0x0

    .line 469
    goto :goto_11

    .line 470
    :cond_1c
    :goto_10
    new-instance v19, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 471
    .line 472
    const/16 v24, 0x1a

    .line 473
    .line 474
    move-object/from16 v21, v3

    .line 475
    .line 476
    move-object/from16 v22, v4

    .line 477
    .line 478
    const/16 v23, 0x0

    .line 479
    .line 480
    invoke-direct/range {v19 .. v24}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 481
    .line 482
    .line 483
    move-object/from16 v2, v19

    .line 484
    .line 485
    move-object/from16 v3, v20

    .line 486
    .line 487
    move-object/from16 v4, v21

    .line 488
    .line 489
    move-object/from16 v6, v23

    .line 490
    .line 491
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :goto_11
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 495
    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    sget-object v5, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 503
    .line 504
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 509
    .line 510
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-static {v10}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    or-int/2addr v3, v4

    .line 526
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    or-int/2addr v3, v4

    .line 531
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    if-nez v3, :cond_1e

    .line 536
    .line 537
    if-ne v4, v12, :cond_1d

    .line 538
    .line 539
    goto :goto_12

    .line 540
    :cond_1d
    move-object v2, v4

    .line 541
    const/4 v4, 0x1

    .line 542
    goto :goto_13

    .line 543
    :cond_1e
    :goto_12
    new-instance v3, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;

    .line 544
    .line 545
    const/4 v4, 0x1

    .line 546
    invoke-direct {v3, v2, v5, v6, v4}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;I)V

    .line 547
    .line 548
    .line 549
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 550
    .line 551
    invoke-static {v2, v3}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    :goto_13
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 563
    .line 564
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    or-int/2addr v3, v5

    .line 583
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    if-nez v3, :cond_1f

    .line 588
    .line 589
    if-ne v5, v12, :cond_20

    .line 590
    .line 591
    :cond_1f
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 592
    .line 593
    const/4 v3, 0x6

    .line 594
    invoke-direct {v5, v3, v7, v0}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    :cond_20
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 601
    .line 602
    new-instance v0, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 603
    .line 604
    invoke-direct {v0, v2, v5}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 605
    .line 606
    .line 607
    const/4 v2, 0x0

    .line 608
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 609
    .line 610
    .line 611
    :goto_14
    if-eqz v0, :cond_21

    .line 612
    .line 613
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    :cond_21
    move-object/from16 v4, p1

    .line 617
    .line 618
    move/from16 v3, p3

    .line 619
    .line 620
    move-object/from16 v5, p4

    .line 621
    .line 622
    move-object/from16 v0, p5

    .line 623
    .line 624
    move-object v2, v6

    .line 625
    move-object/from16 v6, p6

    .line 626
    .line 627
    goto/16 :goto_e

    .line 628
    .line 629
    :cond_22
    const/4 v2, 0x0

    .line 630
    const/4 v4, 0x1

    .line 631
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 632
    .line 633
    .line 634
    move-object v0, v13

    .line 635
    :goto_15
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Dismissed:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 640
    .line 641
    if-ne v2, v3, :cond_23

    .line 642
    .line 643
    move v2, v4

    .line 644
    goto :goto_16

    .line 645
    :cond_23
    const/4 v2, 0x0

    .line 646
    :goto_16
    const-string v3, "SwipeableRow_AnimatedContent"

    .line 647
    .line 648
    invoke-static {v8, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 649
    .line 650
    .line 651
    move-result-object v13

    .line 652
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 653
    .line 654
    .line 655
    move-result-object v17

    .line 656
    const/4 v7, 0x4

    .line 657
    if-ne v14, v7, :cond_24

    .line 658
    .line 659
    move v14, v4

    .line 660
    goto :goto_17

    .line 661
    :cond_24
    const/4 v14, 0x0

    .line 662
    :goto_17
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    if-nez v14, :cond_25

    .line 667
    .line 668
    if-ne v2, v12, :cond_26

    .line 669
    .line 670
    :cond_25
    new-instance v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;

    .line 671
    .line 672
    const/4 v3, 0x0

    .line 673
    invoke-direct {v2, v1, v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    :cond_26
    move-object v12, v2

    .line 680
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 681
    .line 682
    move-object v1, v0

    .line 683
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;

    .line 684
    .line 685
    move-object/from16 v2, p0

    .line 686
    .line 687
    move-object/from16 v4, p1

    .line 688
    .line 689
    move/from16 v3, p3

    .line 690
    .line 691
    move-object/from16 v6, p4

    .line 692
    .line 693
    move-object/from16 v7, p6

    .line 694
    .line 695
    move-object v5, v15

    .line 696
    invoke-direct/range {v0 .. v7}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 697
    .line 698
    .line 699
    const v1, -0x4bc19453

    .line 700
    .line 701
    .line 702
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 703
    .line 704
    .line 705
    move-result-object v16

    .line 706
    const v18, 0x186000

    .line 707
    .line 708
    .line 709
    const/16 v19, 0x28

    .line 710
    .line 711
    move-object v0, v11

    .line 712
    move-object v11, v13

    .line 713
    const/4 v13, 0x0

    .line 714
    const-string v14, "SwipeableRowContentAnimation"

    .line 715
    .line 716
    const/4 v15, 0x0

    .line 717
    move-object/from16 v25, v17

    .line 718
    .line 719
    move-object/from16 v17, v10

    .line 720
    .line 721
    move-object/from16 v10, v25

    .line 722
    .line 723
    invoke-static/range {v10 .. v19}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 724
    .line 725
    .line 726
    move-object v6, v0

    .line 727
    goto :goto_18

    .line 728
    :cond_27
    move-object/from16 v17, v10

    .line 729
    .line 730
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 731
    .line 732
    .line 733
    move-object/from16 v6, p5

    .line 734
    .line 735
    :goto_18
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 736
    .line 737
    .line 738
    move-result-object v10

    .line 739
    if-eqz v10, :cond_28

    .line 740
    .line 741
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda4;

    .line 742
    .line 743
    move-object/from16 v1, p0

    .line 744
    .line 745
    move-object/from16 v2, p1

    .line 746
    .line 747
    move/from16 v4, p3

    .line 748
    .line 749
    move-object/from16 v5, p4

    .line 750
    .line 751
    move-object/from16 v7, p6

    .line 752
    .line 753
    move-object v3, v8

    .line 754
    move v8, v9

    .line 755
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda4;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 756
    .line 757
    .line 758
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 759
    .line 760
    :cond_28
    return-void
.end method

.method public static final SwipeableRowBackground(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x7631d26e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x10

    .line 20
    .line 21
    :goto_0
    or-int/2addr v0, p4

    .line 22
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x100

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v2, 0x80

    .line 32
    .line 33
    :goto_1
    or-int/2addr v0, v2

    .line 34
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/16 v2, 0x800

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v2, 0x400

    .line 44
    .line 45
    :goto_2
    or-int/2addr v0, v2

    .line 46
    and-int/lit16 v2, v0, 0x493

    .line 47
    .line 48
    const/16 v3, 0x492

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eq v2, v3, :cond_3

    .line 53
    .line 54
    move v2, v4

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move v2, v5

    .line 57
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 58
    .line 59
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeDirection$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 74
    .line 75
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 76
    .line 77
    if-eq v2, v3, :cond_5

    .line 78
    .line 79
    const v2, -0x6fd32b64

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "SwipeableRow_background_content"

    .line 92
    .line 93
    invoke-static {v2, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    and-int/lit16 v0, v0, 0x1c00

    .line 98
    .line 99
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 100
    .line 101
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 102
    .line 103
    invoke-static {v3, v6, p3, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-wide v6, p3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 108
    .line 109
    ushr-long v8, v6, v1

    .line 110
    .line 111
    xor-long/2addr v6, v8

    .line 112
    long-to-int v1, v6

    .line 113
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {p3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 127
    .line 128
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 129
    .line 130
    .line 131
    iget-boolean v8, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 132
    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    invoke-virtual {p3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 140
    .line 141
    .line 142
    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {p3, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {p3, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {p3, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 162
    .line 163
    invoke-static {p3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 167
    .line 168
    invoke-static {p3, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    shr-int/lit8 v0, v0, 0x6

    .line 172
    .line 173
    and-int/lit8 v0, v0, 0x70

    .line 174
    .line 175
    or-int/lit8 v0, v0, 0x6

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 182
    .line 183
    invoke-virtual {p2, v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_5
    const v0, -0x6fcff850

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 204
    .line 205
    .line 206
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    if-eqz p3, :cond_7

    .line 211
    .line 212
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 213
    .line 214
    const/4 v2, 0x5

    .line 215
    move-object v3, p0

    .line 216
    move v5, p1

    .line 217
    move-object v4, p2

    .line 218
    move v1, p4

    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 220
    .line 221
    .line 222
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 223
    .line 224
    :cond_7
    return-void
.end method

.method public static final androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-class v0, Landroid/app/Application;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/Application;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    new-instance p0, Lorg/koin/android/error/MissingAndroidContextException;

    .line 19
    .line 20
    const-string v0, "Can\'t resolve Application instance. Please use androidContext() function in your KoinApplication configuration."

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, v1}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static final androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-class v0, Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/Context;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    new-instance p0, Lorg/koin/android/error/MissingAndroidContextException;

    .line 19
    .line 20
    const-string v0, "Can\'t resolve Context instance. Please use androidContext() function in your KoinApplication configuration."

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, v1}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/RealBufferedSink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/RealBufferedSink;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/RealBufferedSource;
    .locals 1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    return-object v0
.end method

.method public static checkArgument(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    invoke-static {p1, p0}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final inAppNotificationStyle(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;

    .line 7
    .line 8
    iput-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 9
    .line 10
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p0, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    iget-object p0, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string p0, "You must pick one in-app notification style."

    .line 25
    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static final varargs persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->addAll(Ljava/util/Collection;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final varargs persistentSetOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;-><init>(Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;->build()Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static final rememberMessageItemConfiguration(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Landroidx/compose/runtime/Composer;I)Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 8
    .line 9
    iget v1, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 10
    .line 11
    and-int/lit8 v2, p5, 0xe

    .line 12
    .line 13
    xor-int/lit8 v2, v2, 0x6

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x4

    .line 18
    if-le v2, v5, :cond_0

    .line 19
    .line 20
    move-object/from16 v2, p4

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v2, p5, 0x6

    .line 31
    .line 32
    if-ne v2, v5, :cond_2

    .line 33
    .line 34
    :cond_1
    move v2, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v2, v3

    .line 37
    :goto_0
    and-int/lit8 v5, p5, 0x70

    .line 38
    .line 39
    xor-int/lit8 v5, v5, 0x30

    .line 40
    .line 41
    const/16 v6, 0x20

    .line 42
    .line 43
    if-le v5, v6, :cond_3

    .line 44
    .line 45
    move-object/from16 v5, p4

    .line 46
    .line 47
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_4

    .line 54
    .line 55
    :cond_3
    and-int/lit8 v5, p5, 0x30

    .line 56
    .line 57
    if-ne v5, v6, :cond_5

    .line 58
    .line 59
    :cond_4
    move v3, v4

    .line 60
    :cond_5
    or-int/2addr v2, v3

    .line 61
    move-object/from16 v3, p4

    .line 62
    .line 63
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v2, :cond_6

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 72
    .line 73
    if-ne v5, v2, :cond_10

    .line 74
    .line 75
    :cond_6
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget v5, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 80
    .line 81
    if-le v5, v4, :cond_7

    .line 82
    .line 83
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;

    .line 84
    .line 85
    invoke-direct {v6, v5, p2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;-><init>(ILnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_7
    iget-boolean v5, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 92
    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$AttachmentIcon;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$AttachmentIcon;

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_8
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 109
    .line 110
    iget v6, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 111
    .line 112
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 113
    .line 114
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    if-eq p1, v4, :cond_b

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    if-ne p1, v4, :cond_9

    .line 127
    .line 128
    sget-object v8, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;->Unread:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 132
    .line 133
    .line 134
    return-object v8

    .line 135
    :cond_a
    sget-object v8, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;->New:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;

    .line 136
    .line 137
    :cond_b
    :goto_1
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 138
    .line 139
    iget-object v4, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 140
    .line 141
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 142
    .line 143
    invoke-direct {v7, v8, v4, p1}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageBadgeStyle;Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Landroidx/compose/ui/graphics/Color;)V

    .line 144
    .line 145
    .line 146
    new-instance v9, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 147
    .line 148
    sget-object p1, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 149
    .line 150
    if-nez v1, :cond_c

    .line 151
    .line 152
    move-object v4, v2

    .line 153
    goto :goto_2

    .line 154
    :cond_c
    move-object v4, p1

    .line 155
    :goto_2
    invoke-direct {v9, v4}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    .line 156
    .line 157
    .line 158
    new-instance v10, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 159
    .line 160
    if-lez v1, :cond_d

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_d
    move-object v2, p1

    .line 164
    :goto_3
    invoke-direct {v10, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    .line 165
    .line 166
    .line 167
    new-instance v11, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 174
    .line 175
    if-eqz v1, :cond_e

    .line 176
    .line 177
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$EncryptedBadge;

    .line 178
    .line 179
    xor-int/lit8 v2, v0, 0x1

    .line 180
    .line 181
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$EncryptedBadge;-><init>(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_e
    if-eqz v0, :cond_f

    .line 188
    .line 189
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 190
    .line 191
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 192
    .line 193
    invoke-direct {v0, p0}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;-><init>(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_f
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-direct {v11, p0}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    .line 208
    .line 209
    .line 210
    move-object v8, p3

    .line 211
    invoke-direct/range {v5 .. v11}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;-><init>(ILnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_10
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 218
    .line 219
    return-object v5
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/InputStreamSource;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/InputStreamSource;

    .line 5
    .line 6
    new-instance v1, Lokio/Timeout;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final throwUnknownIndexException(I)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/SerializationException;

    .line 2
    .line 3
    const-string v1, "An unknown field for index "

    .line 4
    .line 5
    invoke-static {v1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public static final toAccessibilityStringRes(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    const p0, 0x7f12062e

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_1
    const p0, 0x7f120631

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    const p0, 0x7f12062a

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_3
    const p0, 0x7f120628

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_4
    const p0, 0x7f120629

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_5
    const p0, 0x7f120627

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_6
    const p0, 0x7f120626

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_7
    const p0, 0x7f12062c

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_8
    const p0, 0x7f120630

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_9
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public static final toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/collections/immutable/ImmutableList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v0
.end method

.method public static final toImmutableMap(Ljava/util/Map;)Lkotlinx/collections/immutable/PersistentMap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/collections/immutable/PersistentMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/collections/immutable/PersistentMap;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_5

    .line 15
    .line 16
    instance-of v0, p0, Lkotlinx/collections/immutable/PersistentMap$Builder;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lkotlinx/collections/immutable/PersistentMap$Builder;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Lkotlinx/collections/immutable/PersistentMap$Builder;->build()Lkotlinx/collections/immutable/PersistentMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_2
    if-eqz v1, :cond_3

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_3
    sget-object v0, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    new-instance v1, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;-><init>(Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;->build()Lkotlinx/collections/immutable/PersistentMap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static final toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_5

    .line 15
    .line 16
    instance-of v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->build()Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_2
    if-nez v1, :cond_4

    .line 32
    .line 33
    sget-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    instance-of v1, p0, Ljava/util/Collection;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    check-cast p0, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->addAll(Ljava/util/Collection;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->builder()Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->build()Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_4
    return-object v1

    .line 62
    :cond_5
    return-object v0
.end method

.method public static final toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    instance-of v0, p0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move-object v0, v1

    .line 26
    :goto_1
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;->build()Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_3
    if-nez v1, :cond_6

    .line 33
    .line 34
    sget-object v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    instance-of v1, p0, Ljava/util/Collection;

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    check-cast p0, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_4
    new-instance v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;-><init>(Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;->build()Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    new-instance v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;-><init>(Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;->build()Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_6
    return-object v1
.end method
