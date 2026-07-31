.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V
    .locals 0

    .line 12
    iput p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$1:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$1:Landroidx/navigation/NavHostController;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v2, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 6
    .line 7
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    iget-object v6, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;->f$1:Landroidx/navigation/NavHostController;

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
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    or-int/2addr v1, v8

    .line 57
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    if-ne v8, v5, :cond_1

    .line 64
    .line 65
    :cond_0
    new-instance v8, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {v8, v1, v6, v0}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    move-object v11, v8

    .line 75
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    if-ne v6, v5, :cond_3

    .line 88
    .line 89
    :cond_2
    new-instance v6, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/16 v1, 0x12

    .line 92
    .line 93
    invoke-direct {v6, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    move-object v12, v6

    .line 100
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 113
    .line 114
    .line 115
    move-result-object v17

    .line 116
    const-class v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v13, v0

    .line 135
    check-cast v13, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 136
    .line 137
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    or-int/2addr v1, v3

    .line 150
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v1, :cond_4

    .line 155
    .line 156
    if-ne v3, v5, :cond_5

    .line 157
    .line 158
    :cond_4
    invoke-static {v2, v0, v7, v7, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :cond_5
    move-object v14, v3

    .line 163
    check-cast v14, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 164
    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v17, 0x200

    .line 167
    .line 168
    move-object/from16 v16, v9

    .line 169
    .line 170
    invoke-static/range {v11 .. v17}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->SpecialFoldersScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v4, v7

    .line 178
    :goto_0
    return-object v4

    .line 179
    :pswitch_0
    move-object/from16 v1, p1

    .line 180
    .line 181
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 182
    .line 183
    move-object/from16 v8, p2

    .line 184
    .line 185
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 186
    .line 187
    move-object/from16 v9, p3

    .line 188
    .line 189
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 190
    .line 191
    move-object/from16 v10, p4

    .line 192
    .line 193
    check-cast v10, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 205
    .line 206
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    or-int/2addr v1, v8

    .line 215
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    if-nez v1, :cond_7

    .line 220
    .line 221
    if-ne v8, v5, :cond_8

    .line 222
    .line 223
    :cond_7
    new-instance v8, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 224
    .line 225
    const/16 v1, 0xa

    .line 226
    .line 227
    invoke-direct {v8, v1, v0, v6}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    move-object v11, v8

    .line 234
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 235
    .line 236
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    if-nez v1, :cond_9

    .line 245
    .line 246
    if-ne v6, v5, :cond_a

    .line 247
    .line 248
    :cond_9
    new-instance v6, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 249
    .line 250
    const/16 v1, 0x11

    .line 251
    .line 252
    invoke-direct {v6, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_a
    move-object v12, v6

    .line 259
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 260
    .line 261
    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_d

    .line 266
    .line 267
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 272
    .line 273
    .line 274
    move-result-object v17

    .line 275
    const-class v1, Lapp/k9mail/feature/account/server/validation/ui/IncomingServerValidationViewModel;

    .line 276
    .line 277
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    const/16 v18, 0x0

    .line 288
    .line 289
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move-object v13, v0

    .line 294
    check-cast v13, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 295
    .line 296
    invoke-static {v9}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    or-int/2addr v1, v3

    .line 309
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    if-nez v1, :cond_b

    .line 314
    .line 315
    if-ne v3, v5, :cond_c

    .line 316
    .line 317
    :cond_b
    invoke-static {v2, v0, v7, v7, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    :cond_c
    move-object v14, v3

    .line 322
    check-cast v14, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 323
    .line 324
    const/16 v18, 0x200

    .line 325
    .line 326
    const/16 v19, 0x30

    .line 327
    .line 328
    const/4 v15, 0x0

    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    move-object/from16 v17, v9

    .line 332
    .line 333
    invoke-static/range {v11 .. v19}, Lorg/jsoup/helper/Validate;->ServerValidationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object v4, v7

    .line 341
    :goto_1
    return-object v4

    .line 342
    :pswitch_1
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 345
    .line 346
    move-object/from16 v2, p2

    .line 347
    .line 348
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 349
    .line 350
    move-object/from16 v8, p3

    .line 351
    .line 352
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 353
    .line 354
    move-object/from16 v9, p4

    .line 355
    .line 356
    check-cast v9, Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    move-object v14, v8

    .line 368
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 369
    .line 370
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    or-int/2addr v1, v2

    .line 379
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    if-nez v1, :cond_e

    .line 384
    .line 385
    if-ne v2, v5, :cond_f

    .line 386
    .line 387
    :cond_e
    new-instance v2, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    invoke-direct {v2, v1, v6, v0}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_f
    move-object v10, v2

    .line 397
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 398
    .line 399
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    if-nez v1, :cond_10

    .line 408
    .line 409
    if-ne v2, v5, :cond_11

    .line 410
    .line 411
    :cond_10
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 412
    .line 413
    const/16 v1, 0xe

    .line 414
    .line 415
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_11
    move-object v11, v2

    .line 422
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 423
    .line 424
    invoke-static {v14}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    if-eqz v0, :cond_12

    .line 429
    .line 430
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 431
    .line 432
    .line 433
    move-result-object v17

    .line 434
    invoke-static {v14}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 435
    .line 436
    .line 437
    move-result-object v19

    .line 438
    const-class v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 439
    .line 440
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 445
    .line 446
    .line 447
    move-result-object v16

    .line 448
    const/16 v18, 0x0

    .line 449
    .line 450
    const/16 v20, 0x0

    .line 451
    .line 452
    invoke-static/range {v15 .. v20}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    move-object v12, v0

    .line 457
    check-cast v12, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 458
    .line 459
    const/4 v13, 0x0

    .line 460
    const/16 v15, 0x200

    .line 461
    .line 462
    invoke-static/range {v10 .. v15}, Landroidx/room/util/SchemaInfoUtilKt;->IncomingServerSettingsScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 463
    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_12
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    move-object v4, v7

    .line 470
    :goto_2
    return-object v4

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
