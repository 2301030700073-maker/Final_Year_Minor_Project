.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;Landroidx/navigation/NavHostController;Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/16 v3, 0x90

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v10, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 28
    .line 29
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    check-cast v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 36
    .line 37
    move-object/from16 v2, p2

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    move-object/from16 v8, p3

    .line 46
    .line 47
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 48
    .line 49
    move-object/from16 v12, p4

    .line 50
    .line 51
    check-cast v12, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    and-int/lit8 v1, v12, 0x30

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    move-object v1, v8

    .line 65
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    move v4, v5

    .line 74
    :cond_0
    or-int/2addr v12, v4

    .line 75
    :cond_1
    and-int/lit16 v1, v12, 0x91

    .line 76
    .line 77
    if-eq v1, v3, :cond_2

    .line 78
    .line 79
    move v1, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v1, v6

    .line 82
    :goto_0
    and-int/lit8 v3, v12, 0x1

    .line 83
    .line 84
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    invoke-virtual {v8, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const v1, -0x582abd4b    # -5.91917E-15f

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v11, v10, v8, v6}, Lokhttp3/Handshake$Companion;->AccountContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const v1, -0x5827608f

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v11, v8, v6}, Lokhttp3/Handshake$Companion;->FolderContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object v9

    .line 124
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    move-object v12, v11

    .line 127
    check-cast v12, Ljava/lang/String;

    .line 128
    .line 129
    move-object v13, v10

    .line 130
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 135
    .line 136
    move-object/from16 v2, p2

    .line 137
    .line 138
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 139
    .line 140
    move-object/from16 v10, p3

    .line 141
    .line 142
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 143
    .line 144
    move-object/from16 v11, p4

    .line 145
    .line 146
    check-cast v11, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    and-int/lit8 v1, v11, 0x30

    .line 159
    .line 160
    if-nez v1, :cond_7

    .line 161
    .line 162
    and-int/lit8 v1, v11, 0x40

    .line 163
    .line 164
    if-nez v1, :cond_5

    .line 165
    .line 166
    move-object v1, v10

    .line 167
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    move-object v1, v10

    .line 175
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    :goto_2
    if-eqz v1, :cond_6

    .line 182
    .line 183
    move v4, v5

    .line 184
    :cond_6
    or-int/2addr v11, v4

    .line 185
    :cond_7
    and-int/lit16 v1, v11, 0x91

    .line 186
    .line 187
    if-eq v1, v3, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    move v7, v6

    .line 191
    :goto_3
    and-int/lit8 v1, v11, 0x1

    .line 192
    .line 193
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 194
    .line 195
    invoke-virtual {v10, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_b

    .line 200
    .line 201
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 202
    .line 203
    if-eqz v1, :cond_9

    .line 204
    .line 205
    const v1, 0x4bac7128    # 2.260232E7f

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 209
    .line 210
    .line 211
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 212
    .line 213
    shr-int/lit8 v1, v11, 0x3

    .line 214
    .line 215
    and-int/lit8 v1, v1, 0xe

    .line 216
    .line 217
    invoke-static {v2, v0, v8, v10, v1}, Lorg/minidns/util/Base64;->ChooseArchiveFolderDialogContent(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_9
    instance-of v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 225
    .line 226
    if-eqz v0, :cond_a

    .line 227
    .line 228
    const v0, 0x29e4619b

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 232
    .line 233
    .line 234
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 235
    .line 236
    iget-object v15, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->syncingMessage:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->errorMessage:Ljava/lang/String;

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    move-object/from16 v16, v0

    .line 244
    .line 245
    move-object/from16 v17, v10

    .line 246
    .line 247
    invoke-static/range {v12 .. v18}, Lorg/minidns/util/Hex;->CreateNewArchiveFolderDialogContent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_a
    const v0, 0x4baca904    # 2.263092E7f

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 258
    .line 259
    .line 260
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 261
    .line 262
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    const/high16 v0, 0x40800000    # 4.0f

    .line 272
    .line 273
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 274
    .line 275
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    :goto_4
    return-object v9

    .line 290
    :pswitch_1
    check-cast v11, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 291
    .line 292
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 293
    .line 294
    check-cast v10, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 295
    .line 296
    move-object/from16 v1, p1

    .line 297
    .line 298
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 299
    .line 300
    move-object/from16 v3, p2

    .line 301
    .line 302
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 303
    .line 304
    move-object/from16 v4, p3

    .line 305
    .line 306
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 307
    .line 308
    move-object/from16 v5, p4

    .line 309
    .line 310
    check-cast v5, Ljava/lang/Integer;

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 322
    .line 323
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    if-nez v1, :cond_c

    .line 332
    .line 333
    if-ne v3, v2, :cond_d

    .line 334
    .line 335
    :cond_c
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 336
    .line 337
    const/16 v1, 0x16

    .line 338
    .line 339
    invoke-direct {v3, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_d
    move-object v12, v3

    .line 346
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 347
    .line 348
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    if-nez v1, :cond_e

    .line 357
    .line 358
    if-ne v3, v2, :cond_f

    .line 359
    .line 360
    :cond_e
    new-instance v3, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 361
    .line 362
    const/16 v1, 0x1a

    .line 363
    .line 364
    invoke-direct {v3, v1, v10}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_f
    move-object v13, v3

    .line 371
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 372
    .line 373
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    if-nez v1, :cond_10

    .line 382
    .line 383
    if-ne v3, v2, :cond_11

    .line 384
    .line 385
    :cond_10
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 386
    .line 387
    const/16 v1, 0x17

    .line 388
    .line 389
    invoke-direct {v3, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_11
    move-object v14, v3

    .line 396
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 397
    .line 398
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    if-nez v1, :cond_12

    .line 407
    .line 408
    if-ne v3, v2, :cond_13

    .line 409
    .line 410
    :cond_12
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 411
    .line 412
    const/16 v1, 0x18

    .line 413
    .line 414
    invoke-direct {v3, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_13
    move-object v15, v3

    .line 421
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    move-object/from16 v16, v4

    .line 426
    .line 427
    invoke-virtual/range {v11 .. v17}, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;->OnboardingMigrationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 428
    .line 429
    .line 430
    return-object v9

    .line 431
    :pswitch_2
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 432
    .line 433
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 434
    .line 435
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 436
    .line 437
    move-object/from16 v1, p1

    .line 438
    .line 439
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 440
    .line 441
    move-object/from16 v3, p2

    .line 442
    .line 443
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 444
    .line 445
    move-object/from16 v4, p3

    .line 446
    .line 447
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 448
    .line 449
    move-object/from16 v5, p4

    .line 450
    .line 451
    check-cast v5, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 463
    .line 464
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    or-int/2addr v1, v3

    .line 473
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    or-int/2addr v1, v3

    .line 478
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    if-nez v1, :cond_14

    .line 483
    .line 484
    if-ne v3, v2, :cond_15

    .line 485
    .line 486
    :cond_14
    new-instance v3, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 487
    .line 488
    const/16 v1, 0xc

    .line 489
    .line 490
    invoke-direct {v3, v0, v11, v10, v1}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    :cond_15
    move-object v12, v3

    .line 497
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 498
    .line 499
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    if-nez v1, :cond_16

    .line 508
    .line 509
    if-ne v3, v2, :cond_17

    .line 510
    .line 511
    :cond_16
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 512
    .line 513
    const/16 v1, 0xd

    .line 514
    .line 515
    invoke-direct {v3, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    :cond_17
    move-object v13, v3

    .line 522
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 523
    .line 524
    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    if-eqz v0, :cond_1a

    .line 529
    .line 530
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 531
    .line 532
    .line 533
    move-result-object v16

    .line 534
    invoke-static {v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 535
    .line 536
    .line 537
    move-result-object v18

    .line 538
    const-class v1, Lapp/k9mail/feature/account/server/validation/ui/OutgoingServerValidationViewModel;

    .line 539
    .line 540
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 541
    .line 542
    .line 543
    move-result-object v14

    .line 544
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 545
    .line 546
    .line 547
    move-result-object v15

    .line 548
    const/16 v17, 0x0

    .line 549
    .line 550
    const/16 v19, 0x0

    .line 551
    .line 552
    invoke-static/range {v14 .. v19}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    move-object v14, v0

    .line 557
    check-cast v14, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 558
    .line 559
    invoke-static {v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    or-int/2addr v1, v3

    .line 572
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    if-nez v1, :cond_18

    .line 577
    .line 578
    if-ne v3, v2, :cond_19

    .line 579
    .line 580
    :cond_18
    const-class v1, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 581
    .line 582
    invoke-static {v1, v0, v8, v8, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    :cond_19
    move-object v15, v3

    .line 587
    check-cast v15, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 588
    .line 589
    const/16 v19, 0x200

    .line 590
    .line 591
    const/16 v20, 0x30

    .line 592
    .line 593
    const/16 v16, 0x0

    .line 594
    .line 595
    const/16 v17, 0x0

    .line 596
    .line 597
    move-object/from16 v18, v4

    .line 598
    .line 599
    invoke-static/range {v12 .. v20}, Lorg/jsoup/helper/Validate;->ServerValidationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    .line 600
    .line 601
    .line 602
    move-object v8, v9

    .line 603
    goto :goto_5

    .line 604
    :cond_1a
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 605
    .line 606
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    :goto_5
    return-object v8

    .line 610
    nop

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
