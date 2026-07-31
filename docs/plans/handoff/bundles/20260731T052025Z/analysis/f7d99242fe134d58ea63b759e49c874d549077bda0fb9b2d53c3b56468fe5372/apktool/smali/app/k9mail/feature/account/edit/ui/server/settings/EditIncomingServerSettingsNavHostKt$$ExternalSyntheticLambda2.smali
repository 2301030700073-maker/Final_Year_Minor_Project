.class public final synthetic Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->f$1:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const-class v4, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    iget-object v6, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->f$1:Landroidx/navigation/NavHostController;

    .line 14
    .line 15
    iget-object v0, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 24
    .line 25
    move-object/from16 v8, p2

    .line 26
    .line 27
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 28
    .line 29
    move-object/from16 v9, p3

    .line 30
    .line 31
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v10, p4

    .line 34
    .line 35
    check-cast v10, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const v1, 0x7f120067

    .line 47
    .line 48
    .line 49
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v15

    .line 53
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    if-ne v8, v5, :cond_1

    .line 66
    .line 67
    :cond_0
    new-instance v8, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/16 v1, 0x9

    .line 70
    .line 71
    invoke-direct {v8, v0, v1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    move-object/from16 v21, v8

    .line 78
    .line 79
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 88
    .line 89
    .line 90
    move-result-object v18

    .line 91
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 92
    .line 93
    .line 94
    move-result-object v20

    .line 95
    const-class v1, Lapp/k9mail/feature/account/server/validation/ui/OutgoingServerValidationViewModel;

    .line 96
    .line 97
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    const/16 v19, 0x0

    .line 106
    .line 107
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v12, v0

    .line 112
    check-cast v12, Lapp/k9mail/feature/account/server/validation/ui/OutgoingServerValidationViewModel;

    .line 113
    .line 114
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    or-int/2addr v1, v2

    .line 127
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-nez v1, :cond_2

    .line 132
    .line 133
    if-ne v2, v5, :cond_3

    .line 134
    .line 135
    :cond_2
    invoke-static {v4, v0, v7, v7, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_3
    move-object v13, v2

    .line 140
    check-cast v13, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 141
    .line 142
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    if-ne v1, v5, :cond_5

    .line 153
    .line 154
    :cond_4
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/16 v0, 0x8

    .line 157
    .line 158
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    move-object v10, v1

    .line 165
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 166
    .line 167
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v0, :cond_6

    .line 176
    .line 177
    if-ne v1, v5, :cond_7

    .line 178
    .line 179
    :cond_6
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/4 v0, 0x5

    .line 182
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_7
    move-object v11, v1

    .line 189
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 190
    .line 191
    const/16 v17, 0x200

    .line 192
    .line 193
    const/16 v18, 0x10

    .line 194
    .line 195
    const/4 v14, 0x0

    .line 196
    move-object/from16 v16, v9

    .line 197
    .line 198
    invoke-static/range {v10 .. v18}, Lorg/jsoup/helper/Validate;->ServerValidationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_8
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    move-object v3, v7

    .line 206
    :goto_0
    return-object v3

    .line 207
    :pswitch_0
    move-object/from16 v1, p1

    .line 208
    .line 209
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 210
    .line 211
    move-object/from16 v8, p2

    .line 212
    .line 213
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 214
    .line 215
    move-object/from16 v9, p3

    .line 216
    .line 217
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 218
    .line 219
    move-object/from16 v10, p4

    .line 220
    .line 221
    check-cast v10, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    const v1, 0x7f120066

    .line 233
    .line 234
    .line 235
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    if-nez v1, :cond_9

    .line 250
    .line 251
    if-ne v8, v5, :cond_a

    .line 252
    .line 253
    :cond_9
    new-instance v8, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/4 v1, 0x6

    .line 256
    invoke-direct {v8, v0, v1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_a
    move-object/from16 v21, v8

    .line 263
    .line 264
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 265
    .line 266
    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_11

    .line 271
    .line 272
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 273
    .line 274
    .line 275
    move-result-object v18

    .line 276
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 277
    .line 278
    .line 279
    move-result-object v20

    .line 280
    const-class v1, Lapp/k9mail/feature/account/server/validation/ui/IncomingServerValidationViewModel;

    .line 281
    .line 282
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 283
    .line 284
    .line 285
    move-result-object v16

    .line 286
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 287
    .line 288
    .line 289
    move-result-object v17

    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    move-object v12, v0

    .line 297
    check-cast v12, Lapp/k9mail/feature/account/server/validation/ui/IncomingServerValidationViewModel;

    .line 298
    .line 299
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    or-int/2addr v1, v2

    .line 312
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    if-nez v1, :cond_b

    .line 317
    .line 318
    if-ne v2, v5, :cond_c

    .line 319
    .line 320
    :cond_b
    invoke-static {v4, v0, v7, v7, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    :cond_c
    move-object v13, v2

    .line 325
    check-cast v13, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 326
    .line 327
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-nez v0, :cond_d

    .line 336
    .line 337
    if-ne v1, v5, :cond_e

    .line 338
    .line 339
    :cond_d
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 340
    .line 341
    const/4 v0, 0x3

    .line 342
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_e
    move-object v10, v1

    .line 349
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 350
    .line 351
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    if-nez v0, :cond_f

    .line 360
    .line 361
    if-ne v1, v5, :cond_10

    .line 362
    .line 363
    :cond_f
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 364
    .line 365
    const/4 v0, 0x4

    .line 366
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_10
    move-object v11, v1

    .line 373
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 374
    .line 375
    const/16 v17, 0x200

    .line 376
    .line 377
    const/16 v18, 0x10

    .line 378
    .line 379
    const/4 v14, 0x0

    .line 380
    move-object/from16 v16, v9

    .line 381
    .line 382
    invoke-static/range {v10 .. v18}, Lorg/jsoup/helper/Validate;->ServerValidationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_11
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    move-object v3, v7

    .line 390
    :goto_1
    return-object v3

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
