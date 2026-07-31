.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const-class v2, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 6
    .line 7
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 13
    .line 14
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavHostController;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    move-object/from16 v3, p3

    .line 28
    .line 29
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    move-object/from16 v4, p4

    .line 32
    .line 33
    check-cast v4, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-object v11, v3

    .line 45
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    if-ne v2, v6, :cond_1

    .line 58
    .line 59
    :cond_0
    new-instance v2, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-direct {v2, v0, v1}, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    check-cast v2, Lkotlin/reflect/KFunction;

    .line 69
    .line 70
    move-object v8, v2

    .line 71
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    if-ne v2, v6, :cond_3

    .line 84
    .line 85
    :cond_2
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/16 v1, 0x19

    .line 88
    .line 89
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    move-object v9, v2

    .line 96
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v12, 0x6

    .line 100
    sget-object v7, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->ScanQrCode:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 101
    .line 102
    invoke-static/range {v7 .. v12}, Landroidx/work/Data$Companion;->SettingsImportScreen(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :pswitch_0
    move-object/from16 v1, p1

    .line 107
    .line 108
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 109
    .line 110
    move-object/from16 v2, p2

    .line 111
    .line 112
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 113
    .line 114
    move-object/from16 v3, p3

    .line 115
    .line 116
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 117
    .line 118
    move-object/from16 v4, p4

    .line 119
    .line 120
    check-cast v4, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-object v11, v3

    .line 132
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 133
    .line 134
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-nez v1, :cond_4

    .line 143
    .line 144
    if-ne v2, v6, :cond_5

    .line 145
    .line 146
    :cond_4
    new-instance v2, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-direct {v2, v0, v1}, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    check-cast v2, Lkotlin/reflect/KFunction;

    .line 156
    .line 157
    move-object v8, v2

    .line 158
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 159
    .line 160
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-nez v1, :cond_6

    .line 169
    .line 170
    if-ne v2, v6, :cond_7

    .line 171
    .line 172
    :cond_6
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    const/16 v1, 0x1a

    .line 175
    .line 176
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    move-object v9, v2

    .line 183
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v12, 0x6

    .line 187
    sget-object v7, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->Overview:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 188
    .line 189
    invoke-static/range {v7 .. v12}, Landroidx/work/Data$Companion;->SettingsImportScreen(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 190
    .line 191
    .line 192
    return-object v5

    .line 193
    :pswitch_1
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 196
    .line 197
    move-object/from16 v7, p2

    .line 198
    .line 199
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 200
    .line 201
    move-object/from16 v8, p3

    .line 202
    .line 203
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 204
    .line 205
    move-object/from16 v9, p4

    .line 206
    .line 207
    check-cast v9, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    move-object v15, v8

    .line 219
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 220
    .line 221
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    if-nez v1, :cond_8

    .line 230
    .line 231
    if-ne v7, v6, :cond_9

    .line 232
    .line 233
    :cond_8
    new-instance v7, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    const/16 v1, 0x9

    .line 236
    .line 237
    invoke-direct {v7, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    move-object v10, v7

    .line 244
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 245
    .line 246
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    if-nez v1, :cond_a

    .line 255
    .line 256
    if-ne v7, v6, :cond_b

    .line 257
    .line 258
    :cond_a
    new-instance v7, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    const/16 v1, 0xa

    .line 261
    .line 262
    invoke-direct {v7, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_b
    move-object v11, v7

    .line 269
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 270
    .line 271
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_e

    .line 276
    .line 277
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 278
    .line 279
    .line 280
    move-result-object v18

    .line 281
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 282
    .line 283
    .line 284
    move-result-object v20

    .line 285
    const-class v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 286
    .line 287
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 288
    .line 289
    .line 290
    move-result-object v16

    .line 291
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 292
    .line 293
    .line 294
    move-result-object v17

    .line 295
    const/16 v19, 0x0

    .line 296
    .line 297
    const/16 v21, 0x0

    .line 298
    .line 299
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    move-object v12, v0

    .line 304
    check-cast v12, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 305
    .line 306
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    or-int/2addr v1, v3

    .line 319
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    if-nez v1, :cond_c

    .line 324
    .line 325
    if-ne v3, v6, :cond_d

    .line 326
    .line 327
    :cond_c
    invoke-static {v2, v0, v4, v4, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    :cond_d
    move-object v13, v3

    .line 332
    check-cast v13, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 333
    .line 334
    const/4 v14, 0x0

    .line 335
    const/16 v16, 0x200

    .line 336
    .line 337
    invoke-static/range {v10 .. v16}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt;->SyncOptionsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 338
    .line 339
    .line 340
    move-object v4, v5

    .line 341
    goto :goto_0

    .line 342
    :cond_e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :goto_0
    return-object v4

    .line 346
    :pswitch_2
    move-object/from16 v1, p1

    .line 347
    .line 348
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 349
    .line 350
    move-object/from16 v7, p2

    .line 351
    .line 352
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 353
    .line 354
    move-object/from16 v8, p3

    .line 355
    .line 356
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 357
    .line 358
    move-object/from16 v9, p4

    .line 359
    .line 360
    check-cast v9, Ljava/lang/Integer;

    .line 361
    .line 362
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    move-object v15, v8

    .line 372
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 373
    .line 374
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    if-nez v1, :cond_f

    .line 383
    .line 384
    if-ne v7, v6, :cond_10

    .line 385
    .line 386
    :cond_f
    new-instance v7, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 387
    .line 388
    const/16 v1, 0xb

    .line 389
    .line 390
    invoke-direct {v7, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_10
    move-object v10, v7

    .line 397
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 398
    .line 399
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    if-nez v1, :cond_11

    .line 408
    .line 409
    if-ne v7, v6, :cond_12

    .line 410
    .line 411
    :cond_11
    new-instance v7, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 412
    .line 413
    const/16 v1, 0xc

    .line 414
    .line 415
    invoke-direct {v7, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_12
    move-object v11, v7

    .line 422
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 423
    .line 424
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    if-eqz v0, :cond_15

    .line 429
    .line 430
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 431
    .line 432
    .line 433
    move-result-object v18

    .line 434
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 435
    .line 436
    .line 437
    move-result-object v20

    .line 438
    const-class v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 439
    .line 440
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 441
    .line 442
    .line 443
    move-result-object v16

    .line 444
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 445
    .line 446
    .line 447
    move-result-object v17

    .line 448
    const/16 v19, 0x0

    .line 449
    .line 450
    const/16 v21, 0x0

    .line 451
    .line 452
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    move-object v12, v0

    .line 457
    check-cast v12, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 458
    .line 459
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    or-int/2addr v1, v3

    .line 472
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-nez v1, :cond_13

    .line 477
    .line 478
    if-ne v3, v6, :cond_14

    .line 479
    .line 480
    :cond_13
    invoke-static {v2, v0, v4, v4, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    :cond_14
    move-object v13, v3

    .line 485
    check-cast v13, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 486
    .line 487
    const/4 v14, 0x0

    .line 488
    const/16 v16, 0x200

    .line 489
    .line 490
    invoke-static/range {v10 .. v16}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->DisplayOptionsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 491
    .line 492
    .line 493
    move-object v4, v5

    .line 494
    goto :goto_1

    .line 495
    :cond_15
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :goto_1
    return-object v4

    .line 499
    :pswitch_3
    move-object/from16 v1, p1

    .line 500
    .line 501
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 502
    .line 503
    move-object/from16 v2, p2

    .line 504
    .line 505
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 506
    .line 507
    move-object/from16 v7, p3

    .line 508
    .line 509
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 510
    .line 511
    move-object/from16 v8, p4

    .line 512
    .line 513
    check-cast v8, Ljava/lang/Integer;

    .line 514
    .line 515
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    move-object v13, v7

    .line 525
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 526
    .line 527
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    if-nez v1, :cond_16

    .line 536
    .line 537
    if-ne v2, v6, :cond_17

    .line 538
    .line 539
    :cond_16
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 540
    .line 541
    const/16 v1, 0xf

    .line 542
    .line 543
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    :cond_17
    move-object v9, v2

    .line 550
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 551
    .line 552
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    if-nez v1, :cond_18

    .line 561
    .line 562
    if-ne v2, v6, :cond_19

    .line 563
    .line 564
    :cond_18
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 565
    .line 566
    const/16 v1, 0x10

    .line 567
    .line 568
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    :cond_19
    move-object v10, v2

    .line 575
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 576
    .line 577
    invoke-static {v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    if-eqz v0, :cond_1a

    .line 582
    .line 583
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 584
    .line 585
    .line 586
    move-result-object v16

    .line 587
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 588
    .line 589
    .line 590
    move-result-object v18

    .line 591
    const-class v1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 592
    .line 593
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 594
    .line 595
    .line 596
    move-result-object v14

    .line 597
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 598
    .line 599
    .line 600
    move-result-object v15

    .line 601
    const/16 v17, 0x0

    .line 602
    .line 603
    const/16 v19, 0x0

    .line 604
    .line 605
    invoke-static/range {v14 .. v19}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    move-object v11, v0

    .line 610
    check-cast v11, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 611
    .line 612
    const/4 v12, 0x0

    .line 613
    const/16 v14, 0x200

    .line 614
    .line 615
    invoke-static/range {v9 .. v14}, Landroidx/work/Operation$State;->OutgoingServerSettingsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 616
    .line 617
    .line 618
    move-object v4, v5

    .line 619
    goto :goto_2

    .line 620
    :cond_1a
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    :goto_2
    return-object v4

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
