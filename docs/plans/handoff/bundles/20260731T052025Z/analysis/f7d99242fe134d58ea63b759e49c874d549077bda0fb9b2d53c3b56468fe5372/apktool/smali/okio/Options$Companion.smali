.class public abstract Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final FetchingMailSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x1d125de6

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int v0, p7, v0

    .line 31
    .line 32
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v3

    .line 44
    const v3, 0x12480

    .line 45
    .line 46
    .line 47
    or-int/2addr v0, v3

    .line 48
    const v3, 0x12493

    .line 49
    .line 50
    .line 51
    and-int/2addr v3, v0

    .line 52
    const v4, 0x12492

    .line 53
    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    const/4 v10, 0x0

    .line 57
    if-eq v3, v4, :cond_2

    .line 58
    .line 59
    move v3, v9

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v3, v10

    .line 62
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v7, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_14

    .line 69
    .line 70
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 71
    .line 72
    .line 73
    and-int/lit8 v3, p7, 0x1

    .line 74
    .line 75
    const v4, -0x7ff81

    .line 76
    .line 77
    .line 78
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    and-int/2addr v0, v4

    .line 93
    move-object/from16 v3, p2

    .line 94
    .line 95
    move-object/from16 v12, p3

    .line 96
    .line 97
    move-object/from16 v13, p4

    .line 98
    .line 99
    move-object/from16 v14, p5

    .line 100
    .line 101
    :goto_3
    move v15, v0

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_4
    :goto_4
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v3, :cond_5

    .line 113
    .line 114
    if-ne v5, v11, :cond_6

    .line 115
    .line 116
    :cond_5
    new-instance v5, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v3, 0x5

    .line 119
    invoke-direct {v5, v1, v3}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    move-object/from16 v17, v5

    .line 126
    .line 127
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 128
    .line 129
    invoke-static {v7}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_13

    .line 134
    .line 135
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    invoke-static {v7}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 140
    .line 141
    .line 142
    move-result-object v16

    .line 143
    const-class v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 144
    .line 145
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-interface {v3}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    const/4 v15, 0x0

    .line 154
    invoke-static/range {v12 .. v17}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 159
    .line 160
    invoke-static {v7}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    or-int/2addr v12, v13

    .line 174
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    if-nez v12, :cond_7

    .line 179
    .line 180
    if-ne v13, v11, :cond_8

    .line 181
    .line 182
    :cond_7
    const-class v12, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 183
    .line 184
    invoke-static {v12, v5, v6, v6, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    :cond_8
    move-object v5, v13

    .line 189
    check-cast v5, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 190
    .line 191
    invoke-static {v7}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    or-int/2addr v13, v14

    .line 204
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    if-nez v13, :cond_9

    .line 209
    .line 210
    if-ne v14, v11, :cond_a

    .line 211
    .line 212
    :cond_9
    const-class v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 213
    .line 214
    invoke-static {v13, v12, v6, v6, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    :cond_a
    move-object v12, v14

    .line 219
    check-cast v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 220
    .line 221
    invoke-static {v7}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    or-int/2addr v14, v15

    .line 234
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    if-nez v14, :cond_b

    .line 239
    .line 240
    if-ne v15, v11, :cond_c

    .line 241
    .line 242
    :cond_b
    const-class v14, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 243
    .line 244
    invoke-static {v14, v13, v6, v6, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    :cond_c
    move-object v6, v15

    .line 249
    check-cast v6, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 250
    .line 251
    and-int/2addr v0, v4

    .line 252
    move-object v14, v6

    .line 253
    move-object v13, v12

    .line 254
    move-object v12, v5

    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 258
    .line 259
    .line 260
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 261
    .line 262
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    move-object v4, v0

    .line 267
    check-cast v4, Landroid/content/Context;

    .line 268
    .line 269
    iget-object v0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 270
    .line 271
    invoke-static {v0, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 272
    .line 273
    .line 274
    move-result-object v16

    .line 275
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    if-nez v0, :cond_d

    .line 284
    .line 285
    if-ne v5, v11, :cond_e

    .line 286
    .line 287
    :cond_d
    new-instance v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;

    .line 288
    .line 289
    invoke-direct {v5, v3, v10}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 296
    .line 297
    iget-object v0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 298
    .line 299
    move-object v6, v0

    .line 300
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    move-object/from16 v17, v6

    .line 304
    .line 305
    const/16 v6, 0x18

    .line 306
    .line 307
    move-object/from16 p2, v5

    .line 308
    .line 309
    move-object/from16 v8, v17

    .line 310
    .line 311
    move-object v5, v1

    .line 312
    move-object v1, v3

    .line 313
    move-object/from16 v3, p1

    .line 314
    .line 315
    invoke-direct/range {v0 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v17, v1

    .line 319
    .line 320
    move-object v1, v0

    .line 321
    move-object v0, v3

    .line 322
    invoke-static {v7, v8, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    sget-object v1, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 332
    .line 333
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 341
    .line 342
    and-int/lit8 v2, v15, 0x70

    .line 343
    .line 344
    invoke-static {v10, v0, v7, v2, v9}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 345
    .line 346
    .line 347
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 352
    .line 353
    move-object/from16 v5, p2

    .line 354
    .line 355
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    if-nez v3, :cond_f

    .line 364
    .line 365
    if-ne v4, v11, :cond_10

    .line 366
    .line 367
    :cond_f
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 368
    .line 369
    const/4 v3, 0x2

    .line 370
    invoke-direct {v4, v3, v5}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 377
    .line 378
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    if-nez v3, :cond_11

    .line 387
    .line 388
    if-ne v5, v11, :cond_12

    .line 389
    .line 390
    :cond_11
    new-instance v5, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;

    .line 391
    .line 392
    invoke-direct {v5, v1, v9}, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 399
    .line 400
    const/4 v6, 0x0

    .line 401
    const/4 v8, 0x0

    .line 402
    move-object v0, v2

    .line 403
    move-object v1, v4

    .line 404
    move-object v2, v5

    .line 405
    move-object v3, v12

    .line 406
    move-object v4, v13

    .line 407
    move-object v5, v14

    .line 408
    invoke-static/range {v0 .. v8}, Lokio/Okio;->FetchingMailSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 409
    .line 410
    .line 411
    move-object v6, v5

    .line 412
    move-object v5, v4

    .line 413
    move-object v4, v3

    .line 414
    move-object/from16 v3, v17

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_13
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 418
    .line 419
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :cond_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 424
    .line 425
    .line 426
    move-object/from16 v3, p2

    .line 427
    .line 428
    move-object/from16 v4, p3

    .line 429
    .line 430
    move-object/from16 v5, p4

    .line 431
    .line 432
    move-object/from16 v6, p5

    .line 433
    .line 434
    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    if-eqz v9, :cond_15

    .line 439
    .line 440
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;

    .line 441
    .line 442
    const/4 v8, 0x3

    .line 443
    move-object/from16 v1, p0

    .line 444
    .line 445
    move-object/from16 v2, p1

    .line 446
    .line 447
    move/from16 v7, p7

    .line 448
    .line 449
    invoke-direct/range {v0 .. v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 450
    .line 451
    .line 452
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 453
    .line 454
    :cond_15
    return-void
.end method

.method public static final FolderListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move-object/from16 v8, p7

    .line 8
    .line 9
    move/from16 v11, p11

    .line 10
    .line 11
    move/from16 v12, p12

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-object/from16 v13, p10

    .line 23
    .line 24
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    const v0, -0x381a868e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    .line 32
    iget-boolean v0, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v13, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 37
    .line 38
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 39
    .line 40
    neg-int v0, v0

    .line 41
    :goto_0
    move v14, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, v13, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 44
    .line 45
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    and-int/lit8 v0, v11, 0x6

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    and-int/lit8 v0, v11, 0x8

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_2
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x4

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    const/4 v0, 0x2

    .line 70
    :goto_3
    or-int/2addr v0, v11

    .line 71
    goto :goto_4

    .line 72
    :cond_3
    move v0, v11

    .line 73
    :goto_4
    and-int/lit8 v2, v11, 0x30

    .line 74
    .line 75
    if-nez v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    const/16 v2, 0x20

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_4
    const/16 v2, 0x10

    .line 87
    .line 88
    :goto_5
    or-int/2addr v0, v2

    .line 89
    :cond_5
    and-int/lit16 v2, v11, 0x180

    .line 90
    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    move/from16 v2, p2

    .line 94
    .line 95
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    const/16 v5, 0x100

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_6
    const/16 v5, 0x80

    .line 105
    .line 106
    :goto_6
    or-int/2addr v0, v5

    .line 107
    goto :goto_7

    .line 108
    :cond_7
    move/from16 v2, p2

    .line 109
    .line 110
    :goto_7
    and-int/lit16 v5, v11, 0xc00

    .line 111
    .line 112
    if-nez v5, :cond_9

    .line 113
    .line 114
    move-object/from16 v5, p3

    .line 115
    .line 116
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_8

    .line 121
    .line 122
    const/16 v6, 0x800

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_8
    const/16 v6, 0x400

    .line 126
    .line 127
    :goto_8
    or-int/2addr v0, v6

    .line 128
    goto :goto_9

    .line 129
    :cond_9
    move-object/from16 v5, p3

    .line 130
    .line 131
    :goto_9
    and-int/lit16 v6, v11, 0x6000

    .line 132
    .line 133
    if-nez v6, :cond_b

    .line 134
    .line 135
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_a

    .line 140
    .line 141
    const/16 v6, 0x4000

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_a
    const/16 v6, 0x2000

    .line 145
    .line 146
    :goto_a
    or-int/2addr v0, v6

    .line 147
    :cond_b
    and-int/lit8 v6, v12, 0x20

    .line 148
    .line 149
    const/high16 v7, 0x30000

    .line 150
    .line 151
    if-eqz v6, :cond_d

    .line 152
    .line 153
    or-int/2addr v0, v7

    .line 154
    :cond_c
    move-object/from16 v7, p5

    .line 155
    .line 156
    goto :goto_c

    .line 157
    :cond_d
    and-int/2addr v7, v11

    .line 158
    if-nez v7, :cond_c

    .line 159
    .line 160
    move-object/from16 v7, p5

    .line 161
    .line 162
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v16

    .line 166
    if-eqz v16, :cond_e

    .line 167
    .line 168
    const/high16 v16, 0x20000

    .line 169
    .line 170
    goto :goto_b

    .line 171
    :cond_e
    const/high16 v16, 0x10000

    .line 172
    .line 173
    :goto_b
    or-int v0, v0, v16

    .line 174
    .line 175
    :goto_c
    and-int/lit8 v16, v12, 0x40

    .line 176
    .line 177
    const/high16 v17, 0x180000

    .line 178
    .line 179
    if-eqz v16, :cond_10

    .line 180
    .line 181
    or-int v0, v0, v17

    .line 182
    .line 183
    move/from16 v4, p6

    .line 184
    .line 185
    :cond_f
    const/16 v17, 0x20

    .line 186
    .line 187
    goto :goto_e

    .line 188
    :cond_10
    and-int v17, v11, v17

    .line 189
    .line 190
    move/from16 v4, p6

    .line 191
    .line 192
    if-nez v17, :cond_f

    .line 193
    .line 194
    const/16 v17, 0x20

    .line 195
    .line 196
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 197
    .line 198
    .line 199
    move-result v18

    .line 200
    if-eqz v18, :cond_11

    .line 201
    .line 202
    const/high16 v18, 0x100000

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_11
    const/high16 v18, 0x80000

    .line 206
    .line 207
    :goto_d
    or-int v0, v0, v18

    .line 208
    .line 209
    :goto_e
    const/high16 v18, 0xc00000

    .line 210
    .line 211
    and-int v18, v11, v18

    .line 212
    .line 213
    const/high16 v19, 0x1000000

    .line 214
    .line 215
    if-nez v18, :cond_14

    .line 216
    .line 217
    and-int v18, v11, v19

    .line 218
    .line 219
    if-nez v18, :cond_12

    .line 220
    .line 221
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v18

    .line 225
    goto :goto_f

    .line 226
    :cond_12
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v18

    .line 230
    :goto_f
    if-eqz v18, :cond_13

    .line 231
    .line 232
    const/high16 v18, 0x800000

    .line 233
    .line 234
    goto :goto_10

    .line 235
    :cond_13
    const/high16 v18, 0x400000

    .line 236
    .line 237
    :goto_10
    or-int v0, v0, v18

    .line 238
    .line 239
    :cond_14
    and-int/lit16 v15, v12, 0x100

    .line 240
    .line 241
    const/high16 v20, 0x6000000

    .line 242
    .line 243
    if-eqz v15, :cond_15

    .line 244
    .line 245
    or-int v0, v0, v20

    .line 246
    .line 247
    move-object/from16 v3, p8

    .line 248
    .line 249
    goto :goto_12

    .line 250
    :cond_15
    and-int v20, v11, v20

    .line 251
    .line 252
    move-object/from16 v3, p8

    .line 253
    .line 254
    if-nez v20, :cond_17

    .line 255
    .line 256
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v21

    .line 260
    if-eqz v21, :cond_16

    .line 261
    .line 262
    const/high16 v21, 0x4000000

    .line 263
    .line 264
    goto :goto_11

    .line 265
    :cond_16
    const/high16 v21, 0x2000000

    .line 266
    .line 267
    :goto_11
    or-int v0, v0, v21

    .line 268
    .line 269
    :cond_17
    :goto_12
    move/from16 v21, v0

    .line 270
    .line 271
    and-int/lit16 v0, v12, 0x200

    .line 272
    .line 273
    const/high16 v22, 0x30000000

    .line 274
    .line 275
    if-eqz v0, :cond_19

    .line 276
    .line 277
    or-int v21, v21, v22

    .line 278
    .line 279
    :cond_18
    move/from16 v22, v0

    .line 280
    .line 281
    move/from16 v0, p9

    .line 282
    .line 283
    goto :goto_14

    .line 284
    :cond_19
    and-int v22, v11, v22

    .line 285
    .line 286
    if-nez v22, :cond_18

    .line 287
    .line 288
    move/from16 v22, v0

    .line 289
    .line 290
    move/from16 v0, p9

    .line 291
    .line 292
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 293
    .line 294
    .line 295
    move-result v23

    .line 296
    if-eqz v23, :cond_1a

    .line 297
    .line 298
    const/high16 v23, 0x20000000

    .line 299
    .line 300
    goto :goto_13

    .line 301
    :cond_1a
    const/high16 v23, 0x10000000

    .line 302
    .line 303
    :goto_13
    or-int v21, v21, v23

    .line 304
    .line 305
    :goto_14
    const v23, 0x12492493

    .line 306
    .line 307
    .line 308
    and-int v0, v21, v23

    .line 309
    .line 310
    const v1, 0x12492492

    .line 311
    .line 312
    .line 313
    const/16 v23, 0x0

    .line 314
    .line 315
    const/4 v12, 0x1

    .line 316
    if-eq v0, v1, :cond_1b

    .line 317
    .line 318
    move v0, v12

    .line 319
    goto :goto_15

    .line 320
    :cond_1b
    move/from16 v0, v23

    .line 321
    .line 322
    :goto_15
    and-int/lit8 v1, v21, 0x1

    .line 323
    .line 324
    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_31

    .line 329
    .line 330
    if-eqz v6, :cond_1c

    .line 331
    .line 332
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 333
    .line 334
    goto :goto_16

    .line 335
    :cond_1c
    move-object v0, v7

    .line 336
    :goto_16
    if-eqz v16, :cond_1d

    .line 337
    .line 338
    move/from16 v1, v23

    .line 339
    .line 340
    goto :goto_17

    .line 341
    :cond_1d
    move v1, v4

    .line 342
    :goto_17
    if-eqz v15, :cond_1e

    .line 343
    .line 344
    const-string v3, ""

    .line 345
    .line 346
    :cond_1e
    if-eqz v22, :cond_1f

    .line 347
    .line 348
    move v15, v12

    .line 349
    goto :goto_18

    .line 350
    :cond_1f
    move/from16 v15, p9

    .line 351
    .line 352
    :goto_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    new-array v6, v12, [Ljava/lang/Object;

    .line 357
    .line 358
    aput-object v4, v6, v23

    .line 359
    .line 360
    const/high16 v4, 0x380000

    .line 361
    .line 362
    and-int v4, v21, v4

    .line 363
    .line 364
    const/high16 v7, 0x100000

    .line 365
    .line 366
    if-ne v4, v7, :cond_20

    .line 367
    .line 368
    move v4, v12

    .line 369
    goto :goto_19

    .line 370
    :cond_20
    move/from16 v4, v23

    .line 371
    .line 372
    :goto_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 377
    .line 378
    if-nez v4, :cond_21

    .line 379
    .line 380
    if-ne v7, v12, :cond_22

    .line 381
    .line 382
    :cond_21
    new-instance v7, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda31;

    .line 383
    .line 384
    const/16 v4, 0xb

    .line 385
    .line 386
    invoke-direct {v7, v1, v4}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda31;-><init>(ZI)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_22
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 393
    .line 394
    move/from16 v4, v23

    .line 395
    .line 396
    invoke-static {v6, v7, v13, v4}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 401
    .line 402
    move-object v5, v6

    .line 403
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 404
    .line 405
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-interface/range {p0 .. p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getUnreadMessageCount()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    iput v4, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 413
    .line 414
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 415
    .line 416
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-interface/range {p0 .. p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getStarredMessageCount()I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    iput v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 424
    .line 425
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    check-cast v4, Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-nez v4, :cond_23

    .line 436
    .line 437
    iget v4, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->totalUnreadCount:I

    .line 438
    .line 439
    iput v4, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 440
    .line 441
    iget v4, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->totalStarredCount:I

    .line 442
    .line 443
    iput v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 444
    .line 445
    :cond_23
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 446
    .line 447
    move/from16 p5, v1

    .line 448
    .line 449
    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    move-object/from16 v20, v0

    .line 454
    .line 455
    const/4 v0, 0x3

    .line 456
    move/from16 p6, v15

    .line 457
    .line 458
    const/4 v15, 0x0

    .line 459
    invoke-static {v1, v15, v0}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 464
    .line 465
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 466
    .line 467
    const/4 v2, 0x0

    .line 468
    invoke-static {v1, v15, v13, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    move-object v15, v3

    .line 473
    iget-wide v2, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 474
    .line 475
    ushr-long v24, v2, v17

    .line 476
    .line 477
    xor-long v2, v2, v24

    .line 478
    .line 479
    long-to-int v2, v2

    .line 480
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 489
    .line 490
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    move/from16 v22, v2

    .line 494
    .line 495
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 496
    .line 497
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 498
    .line 499
    .line 500
    move-object/from16 p9, v4

    .line 501
    .line 502
    iget-boolean v4, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 503
    .line 504
    if-eqz v4, :cond_24

    .line 505
    .line 506
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 507
    .line 508
    .line 509
    goto :goto_1a

    .line 510
    :cond_24
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 511
    .line 512
    .line 513
    :goto_1a
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 514
    .line 515
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 516
    .line 517
    .line 518
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 519
    .line 520
    invoke-static {v13, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 521
    .line 522
    .line 523
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 528
    .line 529
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 530
    .line 531
    .line 532
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 533
    .line 534
    invoke-static {v13, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 535
    .line 536
    .line 537
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 538
    .line 539
    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 540
    .line 541
    .line 542
    const v0, 0x712c7c07

    .line 543
    .line 544
    .line 545
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 546
    .line 547
    .line 548
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda3;

    .line 549
    .line 550
    move-object/from16 v1, p0

    .line 551
    .line 552
    move-object/from16 v2, p3

    .line 553
    .line 554
    move-object v4, v8

    .line 555
    move-object v3, v15

    .line 556
    move/from16 v11, v17

    .line 557
    .line 558
    move/from16 v8, p2

    .line 559
    .line 560
    move/from16 v15, p5

    .line 561
    .line 562
    move-object/from16 v17, p9

    .line 563
    .line 564
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Z)V

    .line 565
    .line 566
    .line 567
    move-object v2, v0

    .line 568
    move-object v0, v1

    .line 569
    move-object/from16 v22, v3

    .line 570
    .line 571
    move-object v1, v5

    .line 572
    const v3, -0xa1da109

    .line 573
    .line 574
    .line 575
    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-interface {v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    and-int/lit8 v4, v21, 0xe

    .line 588
    .line 589
    const/4 v5, 0x4

    .line 590
    if-eq v4, v5, :cond_26

    .line 591
    .line 592
    and-int/lit8 v4, v21, 0x8

    .line 593
    .line 594
    if-eqz v4, :cond_25

    .line 595
    .line 596
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    if-eqz v4, :cond_25

    .line 601
    .line 602
    goto :goto_1b

    .line 603
    :cond_25
    const/4 v4, 0x0

    .line 604
    goto :goto_1c

    .line 605
    :cond_26
    :goto_1b
    const/4 v4, 0x1

    .line 606
    :goto_1c
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    or-int/2addr v4, v5

    .line 611
    and-int/lit8 v5, v21, 0x70

    .line 612
    .line 613
    if-ne v5, v11, :cond_27

    .line 614
    .line 615
    const/4 v5, 0x1

    .line 616
    goto :goto_1d

    .line 617
    :cond_27
    const/4 v5, 0x0

    .line 618
    :goto_1d
    or-int/2addr v4, v5

    .line 619
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    if-nez v4, :cond_28

    .line 624
    .line 625
    if-ne v5, v12, :cond_29

    .line 626
    .line 627
    :cond_28
    new-instance v5, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 628
    .line 629
    const/16 v4, 0x10

    .line 630
    .line 631
    invoke-direct {v5, v0, v1, v9, v4}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :cond_29
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 638
    .line 639
    new-instance v4, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 640
    .line 641
    const/4 v6, 0x7

    .line 642
    invoke-direct {v4, v6, v0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    const v6, -0xf0d5d8d

    .line 646
    .line 647
    .line 648
    invoke-static {v6, v4, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    const/16 v7, 0x6c06

    .line 653
    .line 654
    const/16 v8, 0x20

    .line 655
    .line 656
    move-object v0, v2

    .line 657
    move-object v2, v5

    .line 658
    const/4 v5, 0x0

    .line 659
    move-object v11, v1

    .line 660
    move v1, v3

    .line 661
    move-object v6, v13

    .line 662
    move-object/from16 v3, v17

    .line 663
    .line 664
    invoke-static/range {v0 .. v8}, Landroidx/work/Operation$State;->NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 665
    .line 666
    .line 667
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    check-cast v0, Ljava/lang/Boolean;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-nez v0, :cond_2d

    .line 678
    .line 679
    if-gez v14, :cond_2a

    .line 680
    .line 681
    neg-int v0, v14

    .line 682
    iget-object v1, v6, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 683
    .line 684
    :goto_1e
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 685
    .line 686
    if-le v2, v0, :cond_2c

    .line 687
    .line 688
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 693
    .line 694
    .line 695
    goto :goto_1e

    .line 696
    :cond_2a
    iget-boolean v0, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 697
    .line 698
    if-eqz v0, :cond_2b

    .line 699
    .line 700
    iget-object v0, v6, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 701
    .line 702
    :goto_1f
    iget-boolean v1, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 703
    .line 704
    if-eqz v1, :cond_2b

    .line 705
    .line 706
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 707
    .line 708
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 713
    .line 714
    .line 715
    goto :goto_1f

    .line 716
    :cond_2b
    iget-object v0, v6, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 717
    .line 718
    :goto_20
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 719
    .line 720
    if-le v1, v14, :cond_2c

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 727
    .line 728
    .line 729
    goto :goto_20

    .line 730
    :cond_2c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 731
    .line 732
    .line 733
    move-result-object v14

    .line 734
    if-eqz v14, :cond_32

    .line 735
    .line 736
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;

    .line 737
    .line 738
    const/4 v13, 0x0

    .line 739
    move-object/from16 v1, p0

    .line 740
    .line 741
    move/from16 v3, p2

    .line 742
    .line 743
    move-object/from16 v4, p3

    .line 744
    .line 745
    move-object/from16 v8, p7

    .line 746
    .line 747
    move/from16 v11, p11

    .line 748
    .line 749
    move/from16 v12, p12

    .line 750
    .line 751
    move-object v2, v9

    .line 752
    move-object v5, v10

    .line 753
    move v7, v15

    .line 754
    move-object/from16 v6, v20

    .line 755
    .line 756
    move-object/from16 v9, v22

    .line 757
    .line 758
    move/from16 v10, p6

    .line 759
    .line 760
    invoke-direct/range {v0 .. v13}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;IIII)V

    .line 761
    .line 762
    .line 763
    :goto_21
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 764
    .line 765
    return-void

    .line 766
    :cond_2d
    move/from16 v14, p6

    .line 767
    .line 768
    move-object/from16 v13, p7

    .line 769
    .line 770
    const v0, -0x4eed7af6

    .line 771
    .line 772
    .line 773
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 774
    .line 775
    .line 776
    iget-object v0, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->children:Lkotlinx/collections/immutable/ImmutableList;

    .line 777
    .line 778
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 779
    .line 780
    .line 781
    move-result-object v17

    .line 782
    :goto_22
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-eqz v0, :cond_30

    .line 787
    .line 788
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    move-object v7, v0

    .line 793
    check-cast v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 794
    .line 795
    const v0, 0x713e9f9b

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 799
    .line 800
    .line 801
    iget-object v0, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 802
    .line 803
    iget-object v1, v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 804
    .line 805
    if-nez v1, :cond_2e

    .line 806
    .line 807
    const/4 v4, 0x0

    .line 808
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 809
    .line 810
    .line 811
    goto :goto_22

    .line 812
    :cond_2e
    const/4 v4, 0x0

    .line 813
    sget-object v23, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 814
    .line 815
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 816
    .line 817
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    const/high16 v2, 0x41800000    # 16.0f

    .line 827
    .line 828
    int-to-float v3, v14

    .line 829
    mul-float v24, v2, v3

    .line 830
    .line 831
    const/16 v27, 0x0

    .line 832
    .line 833
    const/16 v28, 0xe

    .line 834
    .line 835
    const/16 v25, 0x0

    .line 836
    .line 837
    const/16 v26, 0x0

    .line 838
    .line 839
    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    instance-of v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 844
    .line 845
    if-eqz v2, :cond_2f

    .line 846
    .line 847
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 848
    .line 849
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 850
    .line 851
    iget-object v0, v0, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 852
    .line 853
    move-object v8, v0

    .line 854
    goto :goto_23

    .line 855
    :cond_2f
    const/4 v8, 0x0

    .line 856
    :goto_23
    add-int/lit8 v9, v14, 0x1

    .line 857
    .line 858
    const v0, 0xfff0

    .line 859
    .line 860
    .line 861
    and-int v0, v21, v0

    .line 862
    .line 863
    or-int v11, v0, v19

    .line 864
    .line 865
    const/16 v12, 0x40

    .line 866
    .line 867
    move-object v10, v6

    .line 868
    const/4 v6, 0x0

    .line 869
    move/from16 v2, p2

    .line 870
    .line 871
    move-object/from16 v3, p3

    .line 872
    .line 873
    move-object v0, v1

    .line 874
    move v13, v4

    .line 875
    move/from16 p6, v14

    .line 876
    .line 877
    const/4 v14, 0x1

    .line 878
    move-object/from16 v1, p1

    .line 879
    .line 880
    move-object/from16 v4, p4

    .line 881
    .line 882
    invoke-static/range {v0 .. v12}, Lokio/Options$Companion;->FolderListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    .line 883
    .line 884
    .line 885
    move-object v6, v10

    .line 886
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 887
    .line 888
    .line 889
    move/from16 v14, p6

    .line 890
    .line 891
    move-object/from16 v13, p7

    .line 892
    .line 893
    goto :goto_22

    .line 894
    :cond_30
    move/from16 p6, v14

    .line 895
    .line 896
    const/4 v13, 0x0

    .line 897
    const/4 v14, 0x1

    .line 898
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 905
    .line 906
    .line 907
    move/from16 v10, p6

    .line 908
    .line 909
    move v7, v15

    .line 910
    move-object/from16 v9, v22

    .line 911
    .line 912
    goto :goto_24

    .line 913
    :cond_31
    move-object v6, v13

    .line 914
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 915
    .line 916
    .line 917
    move/from16 v10, p9

    .line 918
    .line 919
    move-object v9, v3

    .line 920
    move-object/from16 v20, v7

    .line 921
    .line 922
    move v7, v4

    .line 923
    :goto_24
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 924
    .line 925
    .line 926
    move-result-object v14

    .line 927
    if-eqz v14, :cond_32

    .line 928
    .line 929
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;

    .line 930
    .line 931
    const/4 v13, 0x1

    .line 932
    move-object/from16 v1, p0

    .line 933
    .line 934
    move-object/from16 v2, p1

    .line 935
    .line 936
    move/from16 v3, p2

    .line 937
    .line 938
    move-object/from16 v4, p3

    .line 939
    .line 940
    move-object/from16 v5, p4

    .line 941
    .line 942
    move-object/from16 v8, p7

    .line 943
    .line 944
    move/from16 v11, p11

    .line 945
    .line 946
    move/from16 v12, p12

    .line 947
    .line 948
    move-object/from16 v6, v20

    .line 949
    .line 950
    invoke-direct/range {v0 .. v13}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;IIII)V

    .line 951
    .line 952
    .line 953
    goto/16 :goto_21

    .line 954
    .line 955
    :cond_32
    return-void
.end method

.method public static final MessageItemSwipeBackground(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v13, p3

    .line 14
    .line 15
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x5a72ffeb

    .line 18
    .line 19
    .line 20
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v5, 0x4

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x2

    .line 37
    :goto_0
    or-int/2addr v0, v4

    .line 38
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v6

    .line 50
    or-int/lit16 v0, v0, 0xc00

    .line 51
    .line 52
    and-int/lit16 v6, v0, 0x493

    .line 53
    .line 54
    const/16 v7, 0x492

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    if-eq v6, v7, :cond_2

    .line 58
    .line 59
    move v6, v9

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v6, 0x0

    .line 62
    :goto_2
    and-int/lit8 v7, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_26

    .line 69
    .line 70
    and-int/lit8 v6, v0, 0xe

    .line 71
    .line 72
    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroid/content/Context;

    .line 79
    .line 80
    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 81
    .line 82
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Landroid/content/res/Resources;

    .line 87
    .line 88
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 95
    .line 96
    iget-wide v14, v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 97
    .line 98
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 103
    .line 104
    iget-wide v11, v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLowest:J

    .line 105
    .line 106
    xor-int/lit8 v3, v6, 0x6

    .line 107
    .line 108
    const/4 v8, 0x6

    .line 109
    if-le v3, v5, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_4

    .line 120
    .line 121
    :cond_3
    and-int/2addr v0, v8

    .line 122
    if-ne v0, v5, :cond_5

    .line 123
    .line 124
    :cond_4
    move v0, v9

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    const/4 v0, 0x0

    .line 127
    :goto_3
    invoke-virtual {v13, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    or-int/2addr v0, v3

    .line 132
    invoke-virtual {v13, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    or-int/2addr v0, v3

    .line 137
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    if-nez v0, :cond_6

    .line 146
    .line 147
    if-ne v3, v8, :cond_9

    .line 148
    .line 149
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_0
    const v0, 0x7f040408

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto :goto_4

    .line 168
    :pswitch_1
    const v0, 0x7f04040a

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    goto :goto_4

    .line 176
    :pswitch_2
    const v0, 0x7f040407

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    goto :goto_4

    .line 184
    :pswitch_3
    move-object/from16 v0, v17

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :pswitch_4
    const v0, 0x7f040406

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto :goto_4

    .line 195
    :pswitch_5
    const v0, 0x7f04040c

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    goto :goto_4

    .line 203
    :pswitch_6
    const v0, 0x7f04040b

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    goto :goto_4

    .line 211
    :pswitch_7
    const v0, 0x7f040409

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :goto_4
    if-eqz v0, :cond_8

    .line 219
    .line 220
    new-instance v3, Landroid/util/TypedValue;

    .line 221
    .line 222
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    invoke-virtual {v11, v12, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-eqz v11, :cond_7

    .line 238
    .line 239
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 240
    .line 241
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 242
    .line 243
    .line 244
    move-result-wide v11

    .line 245
    goto :goto_5

    .line 246
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v1, "Couldn\'t resolve attribute ("

    .line 255
    .line 256
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_8
    :goto_5
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v0, v3}, Landroidx/work/Data$Companion;->harmonize(II)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v10

    .line 276
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->toColorRoles-DxMtmZc(JLandroid/content/Context;)Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object v3, v0

    .line 281
    goto :goto_6

    .line 282
    :pswitch_8
    move-object/from16 v3, v17

    .line 283
    .line 284
    :goto_6
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_9
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 288
    .line 289
    if-nez v3, :cond_a

    .line 290
    .line 291
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-eqz v0, :cond_27

    .line 296
    .line 297
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;

    .line 298
    .line 299
    const/4 v7, 0x0

    .line 300
    invoke-direct {v3, v1, v2, v4, v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;II)V

    .line 301
    .line 302
    .line 303
    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 304
    .line 305
    return-void

    .line 306
    :cond_a
    const/4 v7, 0x0

    .line 307
    if-ne v6, v5, :cond_b

    .line 308
    .line 309
    move v0, v9

    .line 310
    goto :goto_7

    .line 311
    :cond_b
    move v0, v7

    .line 312
    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    const/4 v12, 0x7

    .line 317
    const/4 v14, 0x5

    .line 318
    const/4 v15, 0x3

    .line 319
    const/16 v7, 0x9

    .line 320
    .line 321
    const/16 v11, 0x8

    .line 322
    .line 323
    if-nez v0, :cond_c

    .line 324
    .line 325
    if-ne v10, v8, :cond_17

    .line 326
    .line 327
    :cond_c
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    aget v0, v0, v10

    .line 334
    .line 335
    if-ne v0, v9, :cond_d

    .line 336
    .line 337
    :goto_8
    move-object/from16 v10, v17

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_d
    const/4 v10, 0x2

    .line 341
    if-ne v0, v10, :cond_e

    .line 342
    .line 343
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->CheckCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 344
    .line 345
    :goto_9
    move-object v10, v0

    .line 346
    goto :goto_b

    .line 347
    :cond_e
    if-ne v0, v15, :cond_f

    .line 348
    .line 349
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->MarkEmailRead:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_f
    if-ne v0, v5, :cond_10

    .line 353
    .line 354
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Star:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_10
    const/4 v10, 0x6

    .line 358
    if-ne v0, v10, :cond_11

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_11
    if-eq v0, v14, :cond_16

    .line 362
    .line 363
    if-ne v0, v12, :cond_12

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_12
    if-ne v0, v11, :cond_13

    .line 367
    .line 368
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Delete:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_13
    if-ne v0, v7, :cond_14

    .line 372
    .line 373
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_14
    const/16 v10, 0xa

    .line 377
    .line 378
    if-ne v0, v10, :cond_15

    .line 379
    .line 380
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->DriveFileMove:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_15
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :cond_16
    :goto_a
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Archive:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :goto_b
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_17
    check-cast v10, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 394
    .line 395
    if-ne v6, v5, :cond_18

    .line 396
    .line 397
    move/from16 v16, v9

    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_18
    const/16 v16, 0x0

    .line 401
    .line 402
    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    if-nez v16, :cond_19

    .line 407
    .line 408
    if-ne v0, v8, :cond_23

    .line 409
    .line 410
    :cond_19
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    aget v0, v0, v6

    .line 417
    .line 418
    if-ne v0, v9, :cond_1a

    .line 419
    .line 420
    :goto_d
    move-object/from16 v0, v17

    .line 421
    .line 422
    goto :goto_e

    .line 423
    :cond_1a
    const/4 v6, 0x2

    .line 424
    if-ne v0, v6, :cond_1b

    .line 425
    .line 426
    const v0, 0x7f120630

    .line 427
    .line 428
    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v17

    .line 433
    goto :goto_d

    .line 434
    :cond_1b
    if-ne v0, v15, :cond_1c

    .line 435
    .line 436
    const v0, 0x7f12062c

    .line 437
    .line 438
    .line 439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v17

    .line 443
    goto :goto_d

    .line 444
    :cond_1c
    if-ne v0, v5, :cond_1d

    .line 445
    .line 446
    const v0, 0x7f120626

    .line 447
    .line 448
    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v17

    .line 453
    goto :goto_d

    .line 454
    :cond_1d
    if-ne v0, v14, :cond_1e

    .line 455
    .line 456
    const v0, 0x7f120627

    .line 457
    .line 458
    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v17

    .line 463
    goto :goto_d

    .line 464
    :cond_1e
    if-ne v0, v12, :cond_1f

    .line 465
    .line 466
    const v0, 0x7f120628

    .line 467
    .line 468
    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v17

    .line 473
    goto :goto_d

    .line 474
    :cond_1f
    const/4 v5, 0x6

    .line 475
    if-ne v0, v5, :cond_20

    .line 476
    .line 477
    const v0, 0x7f120629

    .line 478
    .line 479
    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v17

    .line 484
    goto :goto_d

    .line 485
    :cond_20
    if-ne v0, v11, :cond_21

    .line 486
    .line 487
    const v0, 0x7f12062a

    .line 488
    .line 489
    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v17

    .line 494
    goto :goto_d

    .line 495
    :cond_21
    if-ne v0, v7, :cond_22

    .line 496
    .line 497
    const v0, 0x7f120631

    .line 498
    .line 499
    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v17

    .line 504
    goto :goto_d

    .line 505
    :cond_22
    const/16 v5, 0xa

    .line 506
    .line 507
    if-ne v0, v5, :cond_25

    .line 508
    .line 509
    const v0, 0x7f12062e

    .line 510
    .line 511
    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v17

    .line 516
    goto :goto_d

    .line 517
    :goto_e
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_23
    check-cast v0, Ljava/lang/Integer;

    .line 521
    .line 522
    if-eqz v0, :cond_24

    .line 523
    .line 524
    iget-wide v7, v3, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

    .line 525
    .line 526
    iget-wide v5, v3, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 527
    .line 528
    new-instance v3, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 529
    .line 530
    const/16 v9, 0x17

    .line 531
    .line 532
    invoke-direct {v3, v2, v10, v0, v9}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 533
    .line 534
    .line 535
    const v0, 0x78cba358

    .line 536
    .line 537
    .line 538
    invoke-static {v0, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 539
    .line 540
    .line 541
    move-result-object v12

    .line 542
    const v14, 0x30006

    .line 543
    .line 544
    .line 545
    const/16 v15, 0x12

    .line 546
    .line 547
    move-wide v9, v5

    .line 548
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 549
    .line 550
    const/4 v6, 0x0

    .line 551
    const/4 v11, 0x0

    .line 552
    invoke-static/range {v5 .. v15}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 553
    .line 554
    .line 555
    move-object v3, v5

    .line 556
    goto :goto_f

    .line 557
    :cond_24
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    if-eqz v0, :cond_27

    .line 562
    .line 563
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;

    .line 564
    .line 565
    invoke-direct {v3, v1, v2, v4, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/MessageItemSwipeBackgroundKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/common/action/SwipeAction;Landroidx/compose/foundation/layout/Arrangement$Horizontal;II)V

    .line 566
    .line 567
    .line 568
    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 569
    .line 570
    return-void

    .line 571
    :cond_25
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 572
    .line 573
    .line 574
    return-void

    .line 575
    :cond_26
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 576
    .line 577
    .line 578
    move-object/from16 v3, p2

    .line 579
    .line 580
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    if-eqz v6, :cond_27

    .line 585
    .line 586
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 587
    .line 588
    const/16 v5, 0x18

    .line 589
    .line 590
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 591
    .line 592
    .line 593
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 594
    .line 595
    :cond_27
    return-void

    .line 596
    nop

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final ModalBottomSheet(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p3

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, 0x6406d9c5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, v4, 0x6

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    move-object/from16 v1, p0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x2

    .line 31
    :goto_0
    or-int/2addr v2, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object/from16 v1, p0

    .line 34
    .line 35
    move v2, v4

    .line 36
    :goto_1
    or-int/lit8 v2, v2, 0x30

    .line 37
    .line 38
    and-int/lit16 v3, v4, 0x180

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    move-object/from16 v3, p2

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const/16 v5, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v5, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v2, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move-object/from16 v3, p2

    .line 58
    .line 59
    :goto_3
    and-int/lit16 v5, v2, 0x93

    .line 60
    .line 61
    const/16 v6, 0x92

    .line 62
    .line 63
    if-eq v5, v6, :cond_4

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    const/4 v5, 0x0

    .line 68
    :goto_4
    and-int/lit8 v6, v2, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    invoke-static {v0}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SheetState;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    and-int/lit8 v21, v2, 0x7e

    .line 81
    .line 82
    shl-int/lit8 v2, v2, 0x3

    .line 83
    .line 84
    and-int/lit16 v2, v2, 0x1c00

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const-wide/16 v10, 0x0

    .line 90
    .line 91
    const-wide/16 v12, 0x0

    .line 92
    .line 93
    const-wide/16 v14, 0x0

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    move-object/from16 v20, v0

    .line 102
    .line 103
    move-object v5, v1

    .line 104
    move/from16 v22, v2

    .line 105
    .line 106
    move-object/from16 v19, v3

    .line 107
    .line 108
    invoke-static/range {v5 .. v22}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    move-object v2, v0

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    move-object/from16 v20, v0

    .line 116
    .line 117
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 118
    .line 119
    .line 120
    move-object/from16 v2, p1

    .line 121
    .line 122
    :goto_5
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-eqz v6, :cond_6

    .line 127
    .line 128
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/organism/ModalBottomSheetKt$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    move-object/from16 v1, p0

    .line 132
    .line 133
    move-object/from16 v3, p2

    .line 134
    .line 135
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/compose/designsystem/organism/ModalBottomSheetKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 136
    .line 137
    .line 138
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_6
    return-void
.end method

.method public static final NavigationDrawerLabel(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move-object/from16 v11, p4

    .line 4
    .line 5
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x79fdb180

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p0

    .line 14
    .line 15
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p5, v0

    .line 25
    .line 26
    or-int/lit16 v0, v0, 0x180

    .line 27
    .line 28
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x800

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move v2, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v2, 0x400

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v2

    .line 41
    and-int/lit16 v2, v0, 0x493

    .line 42
    .line 43
    const/16 v5, 0x492

    .line 44
    .line 45
    const/4 v14, 0x0

    .line 46
    const/4 v15, 0x1

    .line 47
    if-eq v2, v5, :cond_2

    .line 48
    .line 49
    move v2, v15

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v2, v14

    .line 52
    :goto_2
    and-int/lit8 v5, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {v11, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_a

    .line 59
    .line 60
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 61
    .line 62
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 63
    .line 64
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 65
    .line 66
    const/16 v7, 0x30

    .line 67
    .line 68
    invoke-static {v6, v5, v11, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 73
    .line 74
    const/16 v16, 0x20

    .line 75
    .line 76
    ushr-long v8, v6, v16

    .line 77
    .line 78
    xor-long/2addr v6, v8

    .line 79
    long-to-int v6, v6

    .line 80
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v11, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 94
    .line 95
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 96
    .line 97
    .line 98
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 99
    .line 100
    if-eqz v9, :cond_3

    .line 101
    .line 102
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 107
    .line 108
    .line 109
    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 110
    .line 111
    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 112
    .line 113
    .line 114
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 129
    .line 130
    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 131
    .line 132
    .line 133
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v11, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    move-object v2, v6

    .line 139
    new-instance v6, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 140
    .line 141
    const/high16 v12, 0x3f800000    # 1.0f

    .line 142
    .line 143
    invoke-direct {v6, v12, v15}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 144
    .line 145
    .line 146
    const v12, 0x36000

    .line 147
    .line 148
    .line 149
    and-int/lit8 v13, v0, 0xe

    .line 150
    .line 151
    or-int/2addr v12, v13

    .line 152
    const/16 v13, 0xc

    .line 153
    .line 154
    move-object/from16 v18, v7

    .line 155
    .line 156
    move-object/from16 v17, v8

    .line 157
    .line 158
    const-wide/16 v7, 0x0

    .line 159
    .line 160
    move-object/from16 v19, v9

    .line 161
    .line 162
    const/4 v9, 0x2

    .line 163
    move-object/from16 v20, v10

    .line 164
    .line 165
    const/4 v10, 0x2

    .line 166
    move-object/from16 v22, v2

    .line 167
    .line 168
    move-object v15, v5

    .line 169
    move-object/from16 v21, v18

    .line 170
    .line 171
    move-object/from16 v2, v19

    .line 172
    .line 173
    move-object/from16 v23, v20

    .line 174
    .line 175
    move-object v5, v1

    .line 176
    move-object/from16 v1, v17

    .line 177
    .line 178
    invoke-static/range {v5 .. v13}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 179
    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    if-eqz v4, :cond_4

    .line 183
    .line 184
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/Boolean;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_4
    move-object v6, v5

    .line 192
    :goto_4
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 193
    .line 194
    if-eqz v6, :cond_9

    .line 195
    .line 196
    const v6, -0x4de50ec8

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 200
    .line 201
    .line 202
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    const/high16 v6, 0x42400000    # 48.0f

    .line 214
    .line 215
    invoke-static {v12, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 216
    .line 217
    .line 218
    move-result-object v24

    .line 219
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 220
    .line 221
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    const/16 v28, 0x0

    .line 240
    .line 241
    const/16 v29, 0xa

    .line 242
    .line 243
    const/high16 v25, 0x40000000    # 2.0f

    .line 244
    .line 245
    const/16 v26, 0x0

    .line 246
    .line 247
    const/high16 v27, 0x40000000    # 2.0f

    .line 248
    .line 249
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    sget-object v7, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 254
    .line 255
    invoke-static {v6, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    and-int/lit16 v0, v0, 0x1c00

    .line 260
    .line 261
    if-ne v0, v3, :cond_5

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    goto :goto_5

    .line 265
    :cond_5
    move v0, v14

    .line 266
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    if-nez v0, :cond_6

    .line 271
    .line 272
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 273
    .line 274
    if-ne v3, v0, :cond_7

    .line 275
    .line 276
    :cond_6
    new-instance v3, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 277
    .line 278
    const/16 v0, 0x18

    .line 279
    .line 280
    invoke-direct {v3, v4, v0}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 287
    .line 288
    const/16 v0, 0xf

    .line 289
    .line 290
    invoke-static {v6, v14, v5, v3, v0}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 295
    .line 296
    invoke-static {v3, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    iget-wide v5, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 301
    .line 302
    ushr-long v7, v5, v16

    .line 303
    .line 304
    xor-long/2addr v5, v7

    .line 305
    long-to-int v5, v5

    .line 306
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 315
    .line 316
    .line 317
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 318
    .line 319
    if-eqz v7, :cond_8

    .line 320
    .line 321
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 326
    .line 327
    .line 328
    :goto_6
    invoke-static {v11, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v11, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v1, v21

    .line 335
    .line 336
    move-object/from16 v2, v22

    .line 337
    .line 338
    invoke-static {v5, v11, v1, v11, v2}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, v23

    .line 342
    .line 343
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Ljava/lang/Boolean;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    const/4 v10, 0x0

    .line 357
    move-object v9, v11

    .line 358
    const/16 v11, 0xe

    .line 359
    .line 360
    const/4 v6, 0x0

    .line 361
    const/4 v7, 0x0

    .line 362
    const/4 v8, 0x0

    .line 363
    invoke-static/range {v5 .. v11}, Lorg/jsoup/nodes/NodeUtils;->AnimatedExpandIcon-xqIIw2o(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 364
    .line 365
    .line 366
    move-object v11, v9

    .line 367
    const/4 v0, 0x1

    .line 368
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_9
    const/4 v0, 0x1

    .line 376
    const v1, -0x4ddc0de2

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 383
    .line 384
    .line 385
    :goto_7
    const/4 v1, 0x6

    .line 386
    move-object/from16 v2, p1

    .line 387
    .line 388
    invoke-static {v1, v2, v11, v0}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 389
    .line 390
    .line 391
    move-object v3, v12

    .line 392
    goto :goto_8

    .line 393
    :cond_a
    move-object/from16 v2, p1

    .line 394
    .line 395
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 396
    .line 397
    .line 398
    move-object/from16 v3, p2

    .line 399
    .line 400
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    if-eqz v6, :cond_b

    .line 405
    .line 406
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 407
    .line 408
    move-object/from16 v1, p0

    .line 409
    .line 410
    move/from16 v5, p5

    .line 411
    .line 412
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;I)V

    .line 413
    .line 414
    .line 415
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 416
    .line 417
    :cond_b
    return-void
.end method

.method public static final SettingList(Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v11, p4

    .line 17
    .line 18
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v0, 0x6d855dcf

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v4, 0x4

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int v0, p5, v0

    .line 37
    .line 38
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    move v5, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v5, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v0, v5

    .line 51
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/16 v7, 0x100

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    move v5, v7

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v5, 0x80

    .line 62
    .line 63
    :goto_2
    or-int/2addr v0, v5

    .line 64
    move-object/from16 v13, p3

    .line 65
    .line 66
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    const/16 v5, 0x800

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/16 v5, 0x400

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v5

    .line 78
    and-int/lit16 v5, v0, 0x493

    .line 79
    .line 80
    const/16 v8, 0x492

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x1

    .line 84
    if-eq v5, v8, :cond_4

    .line 85
    .line 86
    move v5, v10

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    move v5, v9

    .line 89
    :goto_4
    and-int/lit8 v8, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {v11, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_a

    .line 96
    .line 97
    and-int/lit8 v5, v0, 0xe

    .line 98
    .line 99
    if-eq v5, v4, :cond_5

    .line 100
    .line 101
    move v4, v9

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    move v4, v10

    .line 104
    :goto_5
    and-int/lit8 v5, v0, 0x70

    .line 105
    .line 106
    if-ne v5, v6, :cond_6

    .line 107
    .line 108
    move v5, v10

    .line 109
    goto :goto_6

    .line 110
    :cond_6
    move v5, v9

    .line 111
    :goto_6
    or-int/2addr v4, v5

    .line 112
    and-int/lit16 v5, v0, 0x380

    .line 113
    .line 114
    if-ne v5, v7, :cond_7

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_7
    move v10, v9

    .line 118
    :goto_7
    or-int/2addr v4, v10

    .line 119
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-nez v4, :cond_8

    .line 124
    .line 125
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 126
    .line 127
    if-ne v5, v4, :cond_9

    .line 128
    .line 129
    :cond_8
    new-instance v5, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v5, v1, v2, v3, v9}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_9
    move-object v14, v5

    .line 138
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 139
    .line 140
    shr-int/lit8 v0, v0, 0x9

    .line 141
    .line 142
    and-int/lit8 v4, v0, 0xe

    .line 143
    .line 144
    const/16 v5, 0x1fe

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v12, 0x0

    .line 152
    const/4 v15, 0x0

    .line 153
    invoke-static/range {v4 .. v15}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 158
    .line 159
    .line 160
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    if-eqz v7, :cond_b

    .line 165
    .line 166
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/16 v6, 0xf

    .line 169
    .line 170
    move-object/from16 v4, p3

    .line 171
    .line 172
    move/from16 v5, p5

    .line 173
    .line 174
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 175
    .line 176
    .line 177
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    :cond_b
    return-void
.end method

.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v10, :cond_11

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_0
    if-ge v4, v10, :cond_1

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lokio/ByteString;

    .line 25
    .line 26
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v6, v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v3}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lokio/ByteString;

    .line 44
    .line 45
    add-int/lit8 v4, v10, -0x1

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lokio/ByteString;

    .line 52
    .line 53
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v1, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lokio/ByteString;

    .line 76
    .line 77
    move-object/from16 v19, v6

    .line 78
    .line 79
    move v6, v2

    .line 80
    move v2, v3

    .line 81
    move-object/from16 v3, v19

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v6, v2

    .line 85
    const/4 v2, -0x1

    .line 86
    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const-wide/16 v14, 0x2

    .line 95
    .line 96
    if-eq v7, v9, :cond_c

    .line 97
    .line 98
    add-int/lit8 v3, v6, 0x1

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    :goto_2
    if-ge v3, v10, :cond_4

    .line 102
    .line 103
    add-int/lit8 v7, v3, -0x1

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lokio/ByteString;

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Lokio/ByteString;

    .line 120
    .line 121
    invoke-virtual {v9, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eq v7, v9, :cond_3

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const/16 v16, -0x1

    .line 133
    .line 134
    const-wide/16 v17, 0x4

    .line 135
    .line 136
    iget-wide v11, v0, Lokio/Buffer;->size:J

    .line 137
    .line 138
    div-long v11, v11, v17

    .line 139
    .line 140
    add-long v11, v11, p0

    .line 141
    .line 142
    add-long/2addr v11, v14

    .line 143
    mul-int/lit8 v3, v4, 0x2

    .line 144
    .line 145
    int-to-long v13, v3

    .line 146
    add-long/2addr v11, v13

    .line 147
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    move v2, v6

    .line 154
    :goto_3
    if-ge v2, v10, :cond_7

    .line 155
    .line 156
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lokio/ByteString;

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eq v2, v6, :cond_5

    .line 167
    .line 168
    add-int/lit8 v4, v2, -0x1

    .line 169
    .line 170
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lokio/ByteString;

    .line 175
    .line 176
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eq v3, v4, :cond_6

    .line 181
    .line 182
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    new-instance v4, Lokio/Buffer;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    move v7, v6

    .line 196
    :goto_4
    if-ge v7, v10, :cond_b

    .line 197
    .line 198
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lokio/ByteString;

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    add-int/lit8 v3, v7, 0x1

    .line 209
    .line 210
    move v6, v3

    .line 211
    :goto_5
    if-ge v6, v10, :cond_9

    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    check-cast v9, Lokio/ByteString;

    .line 218
    .line 219
    invoke-virtual {v9, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eq v2, v9, :cond_8

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    move v6, v10

    .line 230
    :goto_6
    if-ne v3, v6, :cond_a

    .line 231
    .line 232
    add-int/lit8 v2, v1, 0x1

    .line 233
    .line 234
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Lokio/ByteString;

    .line 239
    .line 240
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-ne v2, v3, :cond_a

    .line 245
    .line 246
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 257
    .line 258
    .line 259
    move-object v9, v8

    .line 260
    move-wide v2, v11

    .line 261
    move v8, v6

    .line 262
    goto :goto_7

    .line 263
    :cond_a
    iget-wide v2, v4, Lokio/Buffer;->size:J

    .line 264
    .line 265
    div-long v2, v2, v17

    .line 266
    .line 267
    add-long/2addr v2, v11

    .line 268
    long-to-int v2, v2

    .line 269
    mul-int/lit8 v2, v2, -0x1

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v5, v1, 0x1

    .line 275
    .line 276
    move-object v9, v8

    .line 277
    move-wide v2, v11

    .line 278
    move v8, v6

    .line 279
    move-object/from16 v6, p4

    .line 280
    .line 281
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 282
    .line 283
    .line 284
    move-object v5, v6

    .line 285
    :goto_7
    move-wide v11, v2

    .line 286
    move v7, v8

    .line 287
    move-object v8, v9

    .line 288
    goto :goto_4

    .line 289
    :cond_b
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_c
    move-object v9, v8

    .line 294
    const/16 v16, -0x1

    .line 295
    .line 296
    const-wide/16 v17, 0x4

    .line 297
    .line 298
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual {v4}, Lokio/ByteString;->getSize$okio()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    const/4 v8, 0x0

    .line 311
    move v11, v1

    .line 312
    :goto_8
    if-ge v11, v7, :cond_d

    .line 313
    .line 314
    invoke-virtual {v3, v11}, Lokio/ByteString;->internalGet$okio(I)B

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    invoke-virtual {v4, v11}, Lokio/ByteString;->internalGet$okio(I)B

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    if-ne v12, v13, :cond_d

    .line 323
    .line 324
    add-int/lit8 v8, v8, 0x1

    .line 325
    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_d
    iget-wide v11, v0, Lokio/Buffer;->size:J

    .line 330
    .line 331
    div-long v11, v11, v17

    .line 332
    .line 333
    add-long v11, v11, p0

    .line 334
    .line 335
    add-long/2addr v11, v14

    .line 336
    int-to-long v13, v8

    .line 337
    add-long/2addr v11, v13

    .line 338
    const-wide/16 v13, 0x1

    .line 339
    .line 340
    add-long/2addr v11, v13

    .line 341
    neg-int v4, v8

    .line 342
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 346
    .line 347
    .line 348
    add-int v4, v1, v8

    .line 349
    .line 350
    :goto_9
    if-ge v1, v4, :cond_e

    .line 351
    .line 352
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    and-int/lit16 v2, v2, 0xff

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 359
    .line 360
    .line 361
    add-int/lit8 v1, v1, 0x1

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 365
    .line 366
    if-ne v1, v10, :cond_10

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Lokio/ByteString;

    .line 373
    .line 374
    invoke-virtual {v1}, Lokio/ByteString;->getSize$okio()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-ne v4, v1, :cond_f

    .line 379
    .line 380
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Ljava/lang/Number;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_f
    const-string v0, "Check failed."

    .line 395
    .line 396
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_10
    new-instance v3, Lokio/Buffer;

    .line 401
    .line 402
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 403
    .line 404
    .line 405
    iget-wide v1, v3, Lokio/Buffer;->size:J

    .line 406
    .line 407
    div-long v1, v1, v17

    .line 408
    .line 409
    add-long/2addr v1, v11

    .line 410
    long-to-int v1, v1

    .line 411
    mul-int/lit8 v1, v1, -0x1

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 414
    .line 415
    .line 416
    move-object v8, v9

    .line 417
    move v7, v10

    .line 418
    move-wide v1, v11

    .line 419
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_11
    invoke-static {v3}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-void
.end method

.method public static final findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlin/text/CharsKt__CharKt;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->findPolymorphicSerializerOrNull(Lkotlin/text/CharsKt__CharKt;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->getBaseClass()Lkotlin/reflect/KClass;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_0
    invoke-static {p2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwSubtypeNotRegistered(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0

    .line 43
    :cond_1
    return-object p1
.end method

.method public static final findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->getBaseClass()Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwSubtypeNotRegistered(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final getProgressionLastElement(III)I
    .locals 1

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    add-int/2addr v0, p2

    .line 12
    :goto_0
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    add-int/2addr p0, p2

    .line 17
    :goto_1
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    add-int/2addr v0, p2

    .line 23
    :goto_2
    sub-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_4
    if-gez p2, :cond_9

    .line 26
    .line 27
    if-gt p0, p1, :cond_5

    .line 28
    .line 29
    :goto_3
    return p1

    .line 30
    :cond_5
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_6

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_6
    add-int/2addr p0, p2

    .line 36
    :goto_4
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_7

    .line 39
    .line 40
    goto :goto_5

    .line 41
    :cond_7
    add-int/2addr v0, p2

    .line 42
    :goto_5
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_8

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_8
    add-int/2addr p0, p2

    .line 48
    :goto_6
    add-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :cond_9
    const-string p0, "Step is zero."

    .line 51
    .line 52
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
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

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lokio/Options;

    .line 7
    .line 8
    new-array v0, v2, [Lokio/ByteString;

    .line 9
    .line 10
    filled-new-array {v2, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Lkotlin/collections/ArrayAsCollection;

    .line 21
    .line 22
    invoke-direct {v0, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sort(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-instance v10, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v3, v0, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    array-length v0, p0

    .line 54
    move v1, v2

    .line 55
    move v3, v1

    .line 56
    :goto_1
    if-ge v1, v0, :cond_2

    .line 57
    .line 58
    aget-object v4, p0, v1

    .line 59
    .line 60
    add-int/lit8 v5, v3, 0x1

    .line 61
    .line 62
    invoke-static {v7, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v10, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    move v3, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lokio/ByteString;

    .line 82
    .line 83
    invoke-virtual {v0}, Lokio/ByteString;->getSize$okio()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x0

    .line 88
    if-lez v0, :cond_8

    .line 89
    .line 90
    move v0, v2

    .line 91
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-ge v0, v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lokio/ByteString;

    .line 102
    .line 103
    add-int/lit8 v4, v0, 0x1

    .line 104
    .line 105
    move v5, v4

    .line 106
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ge v5, v6, :cond_5

    .line 111
    .line 112
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lokio/ByteString;

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-virtual {v6, v2, v3, v8}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_5

    .line 133
    .line 134
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eq v8, v9, :cond_4

    .line 143
    .line 144
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-le v6, v8, :cond_3

    .line 165
    .line 166
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Ljava/lang/Number;

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    const-string p0, "duplicate option: "

    .line 183
    .line 184
    invoke-static {v6, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :cond_5
    move v0, v4

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    new-instance v5, Lokio/Buffer;

    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    const-wide/16 v3, 0x0

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    invoke-static/range {v3 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 204
    .line 205
    .line 206
    iget-wide v0, v5, Lokio/Buffer;->size:J

    .line 207
    .line 208
    const-wide/16 v3, 0x4

    .line 209
    .line 210
    div-long/2addr v0, v3

    .line 211
    long-to-int v0, v0

    .line 212
    new-array v1, v0, [I

    .line 213
    .line 214
    :goto_4
    if-ge v2, v0, :cond_7

    .line 215
    .line 216
    invoke-virtual {v5}, Lokio/Buffer;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    aput v3, v1, v2

    .line 221
    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_7
    new-instance v0, Lokio/Options;

    .line 226
    .line 227
    array-length v2, p0

    .line 228
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    check-cast p0, [Lokio/ByteString;

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 235
    .line 236
    .line 237
    return-object v0

    .line 238
    :cond_8
    const-string p0, "the empty byte string is not a supported option"

    .line 239
    .line 240
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v1
.end method

.method public static final varargs parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 4

    .line 1
    new-instance v0, Lorg/koin/core/parameter/ParametersHolder;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v2, Lkotlin/collections/ArrayAsCollection;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, p0, v3}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    invoke-direct {v0, p0, v1}, Lorg/koin/core/parameter/ParametersHolder;-><init>(ILjava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v1, Ljava/io/InputStreamReader;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x400

    .line 14
    .line 15
    new-array p0, p0, [C

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/Reader;->read([C)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "Input stream must not be null"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public static toContentPadding$api(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/high16 v0, 0x41000000    # 8.0f

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq p0, v3, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    const p0, 0x64ebfb42

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/high16 p0, 0x41800000    # 16.0f

    .line 58
    .line 59
    invoke-static {p0, p0, p0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_0
    const p0, 0x64ebe9b9

    .line 68
    .line 69
    .line 70
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 71
    .line 72
    invoke-static {p1, p0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    throw p0

    .line 77
    :cond_1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    const p0, 0x64ebf4e2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/high16 p0, 0x41400000    # 12.0f

    .line 115
    .line 116
    invoke-static {v0, p0, p0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_2
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    const p0, 0x64ebee82

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 130
    .line 131
    .line 132
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const/high16 p0, 0x40800000    # 4.0f

    .line 162
    .line 163
    invoke-static {p0, v0, v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 168
    .line 169
    .line 170
    return-object p0
.end method

.method public static validateTree(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 5
    .line 6
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 7
    .line 8
    if-ne v0, v1, :cond_4

    .line 9
    .line 10
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 11
    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 15
    .line 16
    check-cast v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 17
    .line 18
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 19
    .line 20
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->CUSTOM:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 25
    .line 26
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->CONTAINS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 27
    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string p0, "Custom fields can only be used with the CONTAINS attribute"

    .line 32
    .line 33
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void

    .line 37
    :cond_3
    const-string p0, "CONDITION nodes must have a condition"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 44
    .line 45
    invoke-static {v0}, Lokio/Options$Companion;->validateTree(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 49
    .line 50
    invoke-static {p0}, Lokio/Options$Companion;->validateTree(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
