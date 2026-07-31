.class public final synthetic Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v3, 0x13

    .line 6
    .line 7
    const/16 v4, 0x10

    .line 8
    .line 9
    const/16 v5, 0xe

    .line 10
    .line 11
    const/16 v6, 0xd

    .line 12
    .line 13
    const/16 v7, 0xc

    .line 14
    .line 15
    const/16 v8, 0xb

    .line 16
    .line 17
    const/16 v9, 0xa

    .line 18
    .line 19
    const/16 v10, 0x9

    .line 20
    .line 21
    const/16 v11, 0x8

    .line 22
    .line 23
    const/16 v12, 0xf

    .line 24
    .line 25
    const-string v14, ""

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    const/4 v2, 0x7

    .line 30
    const/4 v15, 0x6

    .line 31
    const/16 v20, 0x0

    .line 32
    .line 33
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, Lorg/koin/core/module/Module;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v14, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {v14, v12}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 51
    .line 52
    const-class v12, Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 53
    .line 54
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 55
    .line 56
    .line 57
    move-result-object v22

    .line 58
    sget-object v24, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 59
    .line 60
    const/16 v23, 0x0

    .line 61
    .line 62
    sget-object v25, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 63
    .line 64
    move-object/from16 v21, v24

    .line 65
    .line 66
    move-object/from16 v24, v14

    .line 67
    .line 68
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 69
    .line 70
    .line 71
    move-object/from16 v12, v20

    .line 72
    .line 73
    move-object/from16 v24, v21

    .line 74
    .line 75
    new-instance v14, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 76
    .line 77
    invoke-direct {v14, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v14}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 81
    .line 82
    .line 83
    new-instance v12, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    invoke-direct {v12, v15}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 89
    .line 90
    const-class v14, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 91
    .line 92
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 93
    .line 94
    .line 95
    move-result-object v25

    .line 96
    const/16 v26, 0x0

    .line 97
    .line 98
    sget-object v28, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 99
    .line 100
    move-object/from16 v27, v12

    .line 101
    .line 102
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v12, v23

    .line 106
    .line 107
    new-instance v14, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 108
    .line 109
    invoke-direct {v14, v12}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v14}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 113
    .line 114
    .line 115
    new-instance v12, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    invoke-direct {v12, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 121
    .line 122
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 123
    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 125
    .line 126
    .line 127
    move-result-object v25

    .line 128
    move-object/from16 v27, v12

    .line 129
    .line 130
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 131
    .line 132
    .line 133
    move-object/from16 v2, v23

    .line 134
    .line 135
    new-instance v12, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 136
    .line 137
    invoke-direct {v12, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v12}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    invoke-direct {v2, v11}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 146
    .line 147
    .line 148
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 149
    .line 150
    const-class v11, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 151
    .line 152
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 153
    .line 154
    .line 155
    move-result-object v25

    .line 156
    move-object/from16 v27, v2

    .line 157
    .line 158
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 159
    .line 160
    .line 161
    move-object/from16 v2, v23

    .line 162
    .line 163
    new-instance v11, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 164
    .line 165
    invoke-direct {v11, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v11}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 169
    .line 170
    .line 171
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    invoke-direct {v2, v10}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 174
    .line 175
    .line 176
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 177
    .line 178
    const-class v10, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 179
    .line 180
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 181
    .line 182
    .line 183
    move-result-object v25

    .line 184
    move-object/from16 v27, v2

    .line 185
    .line 186
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v2, v23

    .line 190
    .line 191
    new-instance v10, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 192
    .line 193
    invoke-direct {v10, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v10}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-direct {v2, v9}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 202
    .line 203
    .line 204
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 205
    .line 206
    const-class v9, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;

    .line 207
    .line 208
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 209
    .line 210
    .line 211
    move-result-object v25

    .line 212
    move-object/from16 v27, v2

    .line 213
    .line 214
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v2, v23

    .line 218
    .line 219
    new-instance v9, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 220
    .line 221
    invoke-direct {v9, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v9}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    invoke-direct {v2, v8}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 230
    .line 231
    .line 232
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 233
    .line 234
    const-class v8, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 235
    .line 236
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 237
    .line 238
    .line 239
    move-result-object v25

    .line 240
    move-object/from16 v27, v2

    .line 241
    .line 242
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v2, v23

    .line 246
    .line 247
    new-instance v8, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 248
    .line 249
    invoke-direct {v8, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v8}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 253
    .line 254
    .line 255
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 256
    .line 257
    invoke-direct {v2, v7}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 258
    .line 259
    .line 260
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 261
    .line 262
    const-class v7, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 263
    .line 264
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 265
    .line 266
    .line 267
    move-result-object v25

    .line 268
    move-object/from16 v27, v2

    .line 269
    .line 270
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v2, v23

    .line 274
    .line 275
    new-instance v7, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 276
    .line 277
    invoke-direct {v7, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v7}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 284
    .line 285
    invoke-direct {v2, v6}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 289
    .line 290
    const-class v6, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 291
    .line 292
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 293
    .line 294
    .line 295
    move-result-object v25

    .line 296
    move-object/from16 v27, v2

    .line 297
    .line 298
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v2, v23

    .line 302
    .line 303
    new-instance v6, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 304
    .line 305
    invoke-direct {v6, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 309
    .line 310
    .line 311
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    invoke-direct {v2, v5}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 314
    .line 315
    .line 316
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 317
    .line 318
    const-class v5, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 319
    .line 320
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 321
    .line 322
    .line 323
    move-result-object v25

    .line 324
    move-object/from16 v27, v2

    .line 325
    .line 326
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v2, v23

    .line 330
    .line 331
    new-instance v5, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 332
    .line 333
    invoke-direct {v5, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 337
    .line 338
    .line 339
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 340
    .line 341
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 342
    .line 343
    .line 344
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 345
    .line 346
    const-class v4, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

    .line 347
    .line 348
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 349
    .line 350
    .line 351
    move-result-object v25

    .line 352
    move-object/from16 v27, v2

    .line 353
    .line 354
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v2, v23

    .line 358
    .line 359
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 360
    .line 361
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 365
    .line 366
    .line 367
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 368
    .line 369
    const/16 v4, 0x11

    .line 370
    .line 371
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 372
    .line 373
    .line 374
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 375
    .line 376
    const-class v4, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 377
    .line 378
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 379
    .line 380
    .line 381
    move-result-object v25

    .line 382
    move-object/from16 v27, v2

    .line 383
    .line 384
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v2, v23

    .line 388
    .line 389
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 390
    .line 391
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 395
    .line 396
    .line 397
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 398
    .line 399
    const/16 v4, 0x12

    .line 400
    .line 401
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 402
    .line 403
    .line 404
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 405
    .line 406
    const-class v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;

    .line 407
    .line 408
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 409
    .line 410
    .line 411
    move-result-object v25

    .line 412
    move-object/from16 v27, v2

    .line 413
    .line 414
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v2, v23

    .line 418
    .line 419
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 420
    .line 421
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 425
    .line 426
    .line 427
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 428
    .line 429
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 430
    .line 431
    .line 432
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 433
    .line 434
    const-class v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 435
    .line 436
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 437
    .line 438
    .line 439
    move-result-object v25

    .line 440
    move-object/from16 v27, v2

    .line 441
    .line 442
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 443
    .line 444
    .line 445
    move-object/from16 v2, v23

    .line 446
    .line 447
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 448
    .line 449
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 453
    .line 454
    .line 455
    new-instance v2, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 456
    .line 457
    invoke-direct {v2, v1}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 458
    .line 459
    .line 460
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 461
    .line 462
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 463
    .line 464
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 465
    .line 466
    .line 467
    move-result-object v25

    .line 468
    move-object/from16 v27, v2

    .line 469
    .line 470
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v1, v23

    .line 474
    .line 475
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 476
    .line 477
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 481
    .line 482
    .line 483
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 484
    .line 485
    const/16 v2, 0x15

    .line 486
    .line 487
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 488
    .line 489
    .line 490
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 491
    .line 492
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;

    .line 493
    .line 494
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 495
    .line 496
    .line 497
    move-result-object v25

    .line 498
    move-object/from16 v27, v1

    .line 499
    .line 500
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v1, v23

    .line 504
    .line 505
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 506
    .line 507
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 511
    .line 512
    .line 513
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 514
    .line 515
    const/16 v2, 0x16

    .line 516
    .line 517
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 518
    .line 519
    .line 520
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 521
    .line 522
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 523
    .line 524
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 525
    .line 526
    .line 527
    move-result-object v25

    .line 528
    move-object/from16 v27, v1

    .line 529
    .line 530
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v1, v23

    .line 534
    .line 535
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 536
    .line 537
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 541
    .line 542
    .line 543
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 544
    .line 545
    const/16 v2, 0x17

    .line 546
    .line 547
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 548
    .line 549
    .line 550
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 551
    .line 552
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 553
    .line 554
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 555
    .line 556
    .line 557
    move-result-object v25

    .line 558
    move-object/from16 v27, v1

    .line 559
    .line 560
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 561
    .line 562
    .line 563
    move-object/from16 v1, v23

    .line 564
    .line 565
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 566
    .line 567
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 571
    .line 572
    .line 573
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 574
    .line 575
    const/4 v2, 0x5

    .line 576
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 577
    .line 578
    .line 579
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 580
    .line 581
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 582
    .line 583
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 584
    .line 585
    .line 586
    move-result-object v25

    .line 587
    move-object/from16 v27, v1

    .line 588
    .line 589
    invoke-direct/range {v23 .. v28}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 590
    .line 591
    .line 592
    move-object/from16 v1, v23

    .line 593
    .line 594
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 595
    .line 596
    .line 597
    return-object v13

    .line 598
    :pswitch_0
    move-object/from16 v0, p1

    .line 599
    .line 600
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->title:Lkotlin/jvm/functions/Function0;

    .line 606
    .line 607
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    check-cast v0, Ljava/lang/String;

    .line 612
    .line 613
    return-object v0

    .line 614
    :pswitch_1
    move-object/from16 v0, p1

    .line 615
    .line 616
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->title:Lkotlin/jvm/functions/Function0;

    .line 622
    .line 623
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    check-cast v0, Ljava/lang/String;

    .line 628
    .line 629
    return-object v0

    .line 630
    :pswitch_2
    move-object/from16 v0, p1

    .line 631
    .line 632
    check-cast v0, Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    return-object v0

    .line 638
    :pswitch_3
    move-object/from16 v0, p1

    .line 639
    .line 640
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    return-object v13

    .line 646
    :pswitch_4
    move-object/from16 v0, p1

    .line 647
    .line 648
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 649
    .line 650
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 654
    .line 655
    const/16 v2, 0x19

    .line 656
    .line 657
    if-gt v1, v2, :cond_0

    .line 658
    .line 659
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 660
    .line 661
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 662
    .line 663
    invoke-interface {v0, v1, v13}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    :cond_0
    return-object v13

    .line 667
    :pswitch_5
    move-object/from16 v0, p1

    .line 668
    .line 669
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    sget-object v1, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 675
    .line 676
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    sget-object v1, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 680
    .line 681
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 682
    .line 683
    .line 684
    return-object v13

    .line 685
    :pswitch_6
    move-object/from16 v0, p1

    .line 686
    .line 687
    check-cast v0, Ljava/util/Map$Entry;

    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    check-cast v0, Lkotlin/reflect/KClass;

    .line 697
    .line 698
    check-cast v0, Lkotlin/jvm/internal/ClassReference;

    .line 699
    .line 700
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    if-eqz v1, :cond_1

    .line 705
    .line 706
    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    :goto_0
    return-object v1

    .line 712
    :pswitch_7
    move-object/from16 v0, p1

    .line 713
    .line 714
    check-cast v0, Lorg/koin/core/module/Module;

    .line 715
    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    new-instance v8, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 720
    .line 721
    invoke-direct {v8, v3}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 722
    .line 723
    .line 724
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 725
    .line 726
    const-class v2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 727
    .line 728
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    sget-object v21, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 733
    .line 734
    const/4 v7, 0x0

    .line 735
    sget-object v25, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 736
    .line 737
    move-object/from16 v5, v21

    .line 738
    .line 739
    move-object/from16 v9, v25

    .line 740
    .line 741
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 742
    .line 743
    .line 744
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 745
    .line 746
    invoke-direct {v2, v4}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 750
    .line 751
    .line 752
    new-instance v2, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 753
    .line 754
    invoke-direct {v2, v1}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 755
    .line 756
    .line 757
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 758
    .line 759
    const-class v1, Lnet/thunderbird/core/common/resources/ResourceManager;

    .line 760
    .line 761
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 762
    .line 763
    .line 764
    move-result-object v22

    .line 765
    const/16 v23, 0x0

    .line 766
    .line 767
    move-object/from16 v24, v2

    .line 768
    .line 769
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 770
    .line 771
    .line 772
    move-object/from16 v1, v20

    .line 773
    .line 774
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 775
    .line 776
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 780
    .line 781
    .line 782
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 783
    .line 784
    const/16 v2, 0x15

    .line 785
    .line 786
    invoke-direct {v1, v2}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 787
    .line 788
    .line 789
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 790
    .line 791
    const-class v2, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 792
    .line 793
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 794
    .line 795
    .line 796
    move-result-object v22

    .line 797
    move-object/from16 v24, v1

    .line 798
    .line 799
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 800
    .line 801
    .line 802
    move-object/from16 v1, v20

    .line 803
    .line 804
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 805
    .line 806
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 810
    .line 811
    .line 812
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 813
    .line 814
    const/16 v2, 0x16

    .line 815
    .line 816
    invoke-direct {v1, v2}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 817
    .line 818
    .line 819
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 820
    .line 821
    const-class v2, Lnet/thunderbird/core/common/resources/PluralsResourceManager;

    .line 822
    .line 823
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 824
    .line 825
    .line 826
    move-result-object v22

    .line 827
    move-object/from16 v24, v1

    .line 828
    .line 829
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 830
    .line 831
    .line 832
    move-object/from16 v1, v20

    .line 833
    .line 834
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 835
    .line 836
    .line 837
    return-object v13

    .line 838
    :pswitch_8
    move-object/from16 v0, p1

    .line 839
    .line 840
    check-cast v0, Lorg/koin/core/module/Module;

    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 846
    .line 847
    invoke-direct {v1, v7}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 848
    .line 849
    .line 850
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 851
    .line 852
    const-class v2, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;

    .line 853
    .line 854
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 855
    .line 856
    .line 857
    move-result-object v16

    .line 858
    sget-object v18, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 859
    .line 860
    const/16 v17, 0x0

    .line 861
    .line 862
    sget-object v22, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 863
    .line 864
    move-object/from16 v15, v18

    .line 865
    .line 866
    move-object/from16 v19, v22

    .line 867
    .line 868
    move-object/from16 v18, v1

    .line 869
    .line 870
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 871
    .line 872
    .line 873
    move-object/from16 v18, v15

    .line 874
    .line 875
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 876
    .line 877
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 881
    .line 882
    .line 883
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 884
    .line 885
    invoke-direct {v1, v6}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 886
    .line 887
    .line 888
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 889
    .line 890
    const-class v2, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;

    .line 891
    .line 892
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 893
    .line 894
    .line 895
    move-result-object v19

    .line 896
    const/16 v20, 0x0

    .line 897
    .line 898
    move-object/from16 v21, v1

    .line 899
    .line 900
    invoke-direct/range {v17 .. v22}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 901
    .line 902
    .line 903
    move-object/from16 v1, v17

    .line 904
    .line 905
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 906
    .line 907
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 911
    .line 912
    .line 913
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 914
    .line 915
    invoke-direct {v1, v5}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 916
    .line 917
    .line 918
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 919
    .line 920
    const-class v2, Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 921
    .line 922
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 923
    .line 924
    .line 925
    move-result-object v19

    .line 926
    move-object/from16 v21, v1

    .line 927
    .line 928
    invoke-direct/range {v17 .. v22}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 929
    .line 930
    .line 931
    move-object/from16 v1, v17

    .line 932
    .line 933
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 934
    .line 935
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 939
    .line 940
    .line 941
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 942
    .line 943
    invoke-direct {v1, v12}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 944
    .line 945
    .line 946
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 947
    .line 948
    const-class v2, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 949
    .line 950
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 951
    .line 952
    .line 953
    move-result-object v19

    .line 954
    move-object/from16 v21, v1

    .line 955
    .line 956
    invoke-direct/range {v17 .. v22}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 957
    .line 958
    .line 959
    move-object/from16 v1, v17

    .line 960
    .line 961
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 962
    .line 963
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 967
    .line 968
    .line 969
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 970
    .line 971
    invoke-direct {v1, v4}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 972
    .line 973
    .line 974
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 975
    .line 976
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 977
    .line 978
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 979
    .line 980
    .line 981
    move-result-object v19

    .line 982
    move-object/from16 v21, v1

    .line 983
    .line 984
    invoke-direct/range {v17 .. v22}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 985
    .line 986
    .line 987
    move-object/from16 v1, v17

    .line 988
    .line 989
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 990
    .line 991
    .line 992
    return-object v13

    .line 993
    :pswitch_9
    move-object/from16 v0, p1

    .line 994
    .line 995
    check-cast v0, Lorg/koin/core/module/Module;

    .line 996
    .line 997
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    const/4 v1, 0x1

    .line 1001
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 1002
    .line 1003
    sget-object v2, Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt;->mailMessageModule:Lorg/koin/core/module/Module;

    .line 1004
    .line 1005
    aput-object v2, v1, v20

    .line 1006
    .line 1007
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1008
    .line 1009
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1013
    .line 1014
    invoke-direct {v1, v10}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1015
    .line 1016
    .line 1017
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 1018
    .line 1019
    const-class v2, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 1020
    .line 1021
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v16

    .line 1025
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1026
    .line 1027
    const/16 v17, 0x0

    .line 1028
    .line 1029
    sget-object v19, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1030
    .line 1031
    move-object/from16 v18, v1

    .line 1032
    .line 1033
    move-object v15, v3

    .line 1034
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1035
    .line 1036
    .line 1037
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1038
    .line 1039
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1043
    .line 1044
    .line 1045
    new-instance v6, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1046
    .line 1047
    invoke-direct {v6, v9}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1048
    .line 1049
    .line 1050
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 1051
    .line 1052
    const-class v1, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 1053
    .line 1054
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v4

    .line 1058
    const/4 v5, 0x0

    .line 1059
    sget-object v7, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1060
    .line 1061
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1065
    .line 1066
    invoke-direct {v1, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v6, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1073
    .line 1074
    invoke-direct {v6, v8}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 1078
    .line 1079
    const-class v1, Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

    .line 1080
    .line 1081
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v2, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1089
    .line 1090
    .line 1091
    return-object v13

    .line 1092
    :pswitch_a
    move-object/from16 v0, p1

    .line 1093
    .line 1094
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1095
    .line 1096
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    const/4 v1, 0x1

    .line 1100
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1101
    .line 1102
    sget-object v4, Lnet/thunderbird/app/common/feature/mail/FeatureMailModuleKt;->appCommonFeatureMailModule:Lorg/koin/core/module/Module;

    .line 1103
    .line 1104
    aput-object v4, v3, v20

    .line 1105
    .line 1106
    iget-object v4, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1112
    .line 1113
    sget-object v5, Lnet/thunderbird/feature/account/avatar/di/FeatureAccountAvatarModuleKt;->featureAccountAvatarModule:Lorg/koin/core/module/Module;

    .line 1114
    .line 1115
    aput-object v5, v3, v20

    .line 1116
    .line 1117
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1118
    .line 1119
    .line 1120
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1121
    .line 1122
    sget-object v5, Lapp/k9mail/feature/launcher/di/FeatureLauncherModuleKt;->featureLauncherModule:Lorg/koin/core/module/Module;

    .line 1123
    .line 1124
    aput-object v5, v3, v20

    .line 1125
    .line 1126
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1127
    .line 1128
    .line 1129
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1130
    .line 1131
    sget-object v5, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt;->featureNotificationModule:Lorg/koin/core/module/Module;

    .line 1132
    .line 1133
    aput-object v5, v3, v20

    .line 1134
    .line 1135
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1136
    .line 1137
    .line 1138
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1139
    .line 1140
    sget-object v5, Lnet/thunderbird/feature/mail/message/composer/inject/FeatureMessageComposerModuleKt;->featureMessageComposerModule:Lorg/koin/core/module/Module;

    .line 1141
    .line 1142
    aput-object v5, v3, v20

    .line 1143
    .line 1144
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    new-array v3, v1, [Lorg/koin/core/module/Module;

    .line 1148
    .line 1149
    sget-object v5, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt;->featureMessageReaderModule:Lorg/koin/core/module/Module;

    .line 1150
    .line 1151
    aput-object v5, v3, v20

    .line 1152
    .line 1153
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 1157
    .line 1158
    sget-object v3, Lnet/thunderbird/feature/thundermail/internal/common/inject/FeatureThundermailCommonModuleKt;->featureThundermailCommonModule:Lorg/koin/core/module/Module;

    .line 1159
    .line 1160
    aput-object v3, v1, v20

    .line 1161
    .line 1162
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    new-instance v9, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1166
    .line 1167
    invoke-direct {v9, v15}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1168
    .line 1169
    .line 1170
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 1171
    .line 1172
    const-class v1, Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 1173
    .line 1174
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v7

    .line 1178
    sget-object v15, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1179
    .line 1180
    const/4 v8, 0x0

    .line 1181
    sget-object v10, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1182
    .line 1183
    move-object v6, v15

    .line 1184
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1185
    .line 1186
    .line 1187
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1188
    .line 1189
    invoke-direct {v1, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1193
    .line 1194
    .line 1195
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1196
    .line 1197
    invoke-direct {v1, v2}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1198
    .line 1199
    .line 1200
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 1201
    .line 1202
    const-class v2, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigLoader;

    .line 1203
    .line 1204
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v16

    .line 1208
    const/16 v17, 0x0

    .line 1209
    .line 1210
    sget-object v19, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1211
    .line 1212
    move-object/from16 v18, v1

    .line 1213
    .line 1214
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1215
    .line 1216
    .line 1217
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1218
    .line 1219
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1223
    .line 1224
    .line 1225
    new-instance v1, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1226
    .line 1227
    invoke-direct {v1, v11}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1228
    .line 1229
    .line 1230
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 1231
    .line 1232
    const-class v2, Lnet/thunderbird/app/common/feature/NavigationDrawerConfigWriter;

    .line 1233
    .line 1234
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v16

    .line 1238
    move-object/from16 v18, v1

    .line 1239
    .line 1240
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-static {v14, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1244
    .line 1245
    .line 1246
    return-object v13

    .line 1247
    :pswitch_b
    move-object/from16 v0, p1

    .line 1248
    .line 1249
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1250
    .line 1251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    .line 1253
    .line 1254
    iget-object v1, v0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/LinkedHashSet;

    .line 1255
    .line 1256
    new-instance v6, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1257
    .line 1258
    const/16 v2, 0x19

    .line 1259
    .line 1260
    invoke-direct {v6, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1261
    .line 1262
    .line 1263
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 1264
    .line 1265
    const-class v3, Lnet/thunderbird/core/logging/LogLevel;

    .line 1266
    .line 1267
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v4

    .line 1271
    sget-object v8, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1272
    .line 1273
    const/4 v5, 0x0

    .line 1274
    sget-object v12, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1275
    .line 1276
    move-object v3, v8

    .line 1277
    move-object v7, v12

    .line 1278
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1279
    .line 1280
    .line 1281
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1282
    .line 1283
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v11, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1290
    .line 1291
    const/16 v2, 0x1a

    .line 1292
    .line 1293
    invoke-direct {v11, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1294
    .line 1295
    .line 1296
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1297
    .line 1298
    const-class v2, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 1299
    .line 1300
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v9

    .line 1304
    const/4 v10, 0x0

    .line 1305
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1309
    .line 1310
    invoke-direct {v2, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1314
    .line 1315
    .line 1316
    const-class v3, Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 1317
    .line 1318
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v3

    .line 1322
    iget-object v4, v7, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 1323
    .line 1324
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v4

    .line 1328
    iput-object v4, v7, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 1329
    .line 1330
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    invoke-static {v3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    const/16 v3, 0x3a

    .line 1343
    .line 1344
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v3

    .line 1360
    iget-object v4, v0, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 1361
    .line 1362
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1366
    .line 1367
    const/16 v3, 0x1b

    .line 1368
    .line 1369
    invoke-direct {v2, v3}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1370
    .line 1371
    .line 1372
    const/4 v3, 0x1

    .line 1373
    new-array v4, v3, [Lkotlin/jvm/functions/Function2;

    .line 1374
    .line 1375
    aput-object v2, v4, v20

    .line 1376
    .line 1377
    const-class v2, Ljava/util/List;

    .line 1378
    .line 1379
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v3

    .line 1383
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    const-class v5, Lnet/thunderbird/core/logging/LogSink;

    .line 1388
    .line 1389
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v5

    .line 1393
    invoke-virtual {v5}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v5

    .line 1397
    const-string v6, "<"

    .line 1398
    .line 1399
    const-string v7, ">"

    .line 1400
    .line 1401
    invoke-static {v3, v6, v5, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    new-instance v10, Lorg/koin/core/qualifier/StringQualifier;

    .line 1406
    .line 1407
    invoke-direct {v10, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    new-instance v11, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;

    .line 1411
    .line 1412
    move/from16 v3, v20

    .line 1413
    .line 1414
    invoke-direct {v11, v4, v3}, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;-><init>([Lkotlin/jvm/functions/Function2;I)V

    .line 1415
    .line 1416
    .line 1417
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1418
    .line 1419
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v9

    .line 1423
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1424
    .line 1425
    .line 1426
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1427
    .line 1428
    invoke-direct {v3, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    new-instance v11, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1438
    .line 1439
    const/16 v1, 0x1c

    .line 1440
    .line 1441
    invoke-direct {v11, v1}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1442
    .line 1443
    .line 1444
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1445
    .line 1446
    const-class v1, Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 1447
    .line 1448
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v9

    .line 1452
    const/4 v10, 0x0

    .line 1453
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1454
    .line 1455
    .line 1456
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1457
    .line 1458
    invoke-direct {v3, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1462
    .line 1463
    .line 1464
    new-instance v11, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1465
    .line 1466
    const/16 v3, 0x1d

    .line 1467
    .line 1468
    invoke-direct {v11, v3}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1469
    .line 1470
    .line 1471
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1472
    .line 1473
    const-class v3, Lnet/thunderbird/core/logging/Logger;

    .line 1474
    .line 1475
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v9

    .line 1479
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1480
    .line 1481
    .line 1482
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1483
    .line 1484
    invoke-direct {v4, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1488
    .line 1489
    .line 1490
    new-instance v10, Lorg/koin/core/qualifier/StringQualifier;

    .line 1491
    .line 1492
    const-string v4, "syncDebug"

    .line 1493
    .line 1494
    invoke-direct {v10, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    new-instance v11, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1498
    .line 1499
    const/4 v5, 0x1

    .line 1500
    invoke-direct {v11, v5}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1501
    .line 1502
    .line 1503
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1504
    .line 1505
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v9

    .line 1509
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1510
    .line 1511
    .line 1512
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1513
    .line 1514
    invoke-direct {v2, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1518
    .line 1519
    .line 1520
    new-instance v10, Lorg/koin/core/qualifier/StringQualifier;

    .line 1521
    .line 1522
    invoke-direct {v10, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    new-instance v11, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1526
    .line 1527
    const/4 v2, 0x2

    .line 1528
    invoke-direct {v11, v2}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1529
    .line 1530
    .line 1531
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1532
    .line 1533
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v9

    .line 1537
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1538
    .line 1539
    .line 1540
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1541
    .line 1542
    invoke-direct {v1, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1546
    .line 1547
    .line 1548
    new-instance v10, Lorg/koin/core/qualifier/StringQualifier;

    .line 1549
    .line 1550
    invoke-direct {v10, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    new-instance v11, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1554
    .line 1555
    const/4 v1, 0x3

    .line 1556
    invoke-direct {v11, v1}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1557
    .line 1558
    .line 1559
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1560
    .line 1561
    const-class v1, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 1562
    .line 1563
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v9

    .line 1567
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1568
    .line 1569
    .line 1570
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1571
    .line 1572
    invoke-direct {v1, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1576
    .line 1577
    .line 1578
    new-instance v10, Lorg/koin/core/qualifier/StringQualifier;

    .line 1579
    .line 1580
    invoke-direct {v10, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1581
    .line 1582
    .line 1583
    new-instance v11, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 1584
    .line 1585
    const/4 v1, 0x4

    .line 1586
    invoke-direct {v11, v1}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1587
    .line 1588
    .line 1589
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1590
    .line 1591
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v9

    .line 1595
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-static {v7, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1599
    .line 1600
    .line 1601
    return-object v13

    .line 1602
    :pswitch_c
    move-object/from16 v0, p1

    .line 1603
    .line 1604
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1605
    .line 1606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    .line 1608
    .line 1609
    new-instance v5, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1610
    .line 1611
    const/16 v2, 0x16

    .line 1612
    .line 1613
    invoke-direct {v5, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1614
    .line 1615
    .line 1616
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 1617
    .line 1618
    const-class v2, Lnet/thunderbird/core/configstore/backend/AndroidConfigBackendFileManager;

    .line 1619
    .line 1620
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v3

    .line 1624
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1625
    .line 1626
    const/4 v4, 0x0

    .line 1627
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1628
    .line 1629
    move-object v2, v7

    .line 1630
    move-object v6, v11

    .line 1631
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1632
    .line 1633
    .line 1634
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1635
    .line 1636
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1640
    .line 1641
    .line 1642
    new-instance v10, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1643
    .line 1644
    const/16 v2, 0x17

    .line 1645
    .line 1646
    invoke-direct {v10, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1647
    .line 1648
    .line 1649
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 1650
    .line 1651
    const-class v1, Lnet/thunderbird/core/configstore/backend/DataStoreConfigBackendFactory;

    .line 1652
    .line 1653
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v8

    .line 1657
    const/4 v9, 0x0

    .line 1658
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1659
    .line 1660
    .line 1661
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1662
    .line 1663
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1667
    .line 1668
    .line 1669
    new-instance v10, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1670
    .line 1671
    const/16 v1, 0x18

    .line 1672
    .line 1673
    invoke-direct {v10, v1}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1674
    .line 1675
    .line 1676
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 1677
    .line 1678
    const-class v1, Landroidx/collection/internal/Lock;

    .line 1679
    .line 1680
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v8

    .line 1684
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1685
    .line 1686
    .line 1687
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1688
    .line 1689
    .line 1690
    return-object v13

    .line 1691
    :pswitch_d
    move-object/from16 v0, p1

    .line 1692
    .line 1693
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1694
    .line 1695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    const/4 v2, 0x3

    .line 1699
    new-array v2, v2, [Lorg/koin/core/module/Module;

    .line 1700
    .line 1701
    sget-object v5, Lnet/thunderbird/app/common/core/configstore/ConfigStoreModuleKt;->appCommonCoreConfigStoreModule:Lorg/koin/core/module/Module;

    .line 1702
    .line 1703
    const/16 v20, 0x0

    .line 1704
    .line 1705
    aput-object v5, v2, v20

    .line 1706
    .line 1707
    sget-object v5, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt;->appCommonCoreLogger:Lorg/koin/core/module/Module;

    .line 1708
    .line 1709
    const/16 v21, 0x1

    .line 1710
    .line 1711
    aput-object v5, v2, v21

    .line 1712
    .line 1713
    sget-object v5, Lnet/thunderbird/app/common/core/ui/AppCommonCoreUiModuleKt;->appCommonCoreUiModule:Lorg/koin/core/module/Module;

    .line 1714
    .line 1715
    const/4 v6, 0x2

    .line 1716
    aput-object v5, v2, v6

    .line 1717
    .line 1718
    iget-object v5, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1719
    .line 1720
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1721
    .line 1722
    .line 1723
    new-instance v10, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1724
    .line 1725
    invoke-direct {v10, v4}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1726
    .line 1727
    .line 1728
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 1729
    .line 1730
    const-class v2, Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 1731
    .line 1732
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v8

    .line 1736
    sget-object v21, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1737
    .line 1738
    const/4 v9, 0x0

    .line 1739
    sget-object v25, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1740
    .line 1741
    move-object/from16 v7, v21

    .line 1742
    .line 1743
    move-object/from16 v11, v25

    .line 1744
    .line 1745
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1746
    .line 1747
    .line 1748
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1749
    .line 1750
    invoke-direct {v2, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1754
    .line 1755
    .line 1756
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1757
    .line 1758
    const/16 v4, 0x11

    .line 1759
    .line 1760
    invoke-direct {v2, v4}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1761
    .line 1762
    .line 1763
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 1764
    .line 1765
    const-class v4, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 1766
    .line 1767
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v22

    .line 1771
    const/16 v23, 0x0

    .line 1772
    .line 1773
    move-object/from16 v24, v2

    .line 1774
    .line 1775
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1776
    .line 1777
    .line 1778
    move-object/from16 v2, v20

    .line 1779
    .line 1780
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1781
    .line 1782
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1786
    .line 1787
    .line 1788
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1789
    .line 1790
    const/16 v4, 0x12

    .line 1791
    .line 1792
    invoke-direct {v2, v4}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1793
    .line 1794
    .line 1795
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 1796
    .line 1797
    const-class v4, Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 1798
    .line 1799
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v22

    .line 1803
    move-object/from16 v24, v2

    .line 1804
    .line 1805
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1806
    .line 1807
    .line 1808
    move-object/from16 v2, v20

    .line 1809
    .line 1810
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1811
    .line 1812
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1816
    .line 1817
    .line 1818
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1819
    .line 1820
    invoke-direct {v2, v3}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1821
    .line 1822
    .line 1823
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 1824
    .line 1825
    const-class v3, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 1826
    .line 1827
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v22

    .line 1831
    move-object/from16 v24, v2

    .line 1832
    .line 1833
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1834
    .line 1835
    .line 1836
    move-object/from16 v2, v20

    .line 1837
    .line 1838
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1839
    .line 1840
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1844
    .line 1845
    .line 1846
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1847
    .line 1848
    invoke-direct {v2, v1}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1849
    .line 1850
    .line 1851
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 1852
    .line 1853
    const-class v1, Lnet/thunderbird/app/common/appVersion/DefaultAppVersionProvider;

    .line 1854
    .line 1855
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v22

    .line 1859
    move-object/from16 v24, v2

    .line 1860
    .line 1861
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1862
    .line 1863
    .line 1864
    move-object/from16 v1, v20

    .line 1865
    .line 1866
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1867
    .line 1868
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1872
    .line 1873
    .line 1874
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1875
    .line 1876
    const/16 v2, 0x15

    .line 1877
    .line 1878
    invoke-direct {v1, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1879
    .line 1880
    .line 1881
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 1882
    .line 1883
    const-class v2, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 1884
    .line 1885
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v22

    .line 1889
    move-object/from16 v24, v1

    .line 1890
    .line 1891
    invoke-direct/range {v20 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1892
    .line 1893
    .line 1894
    move-object/from16 v1, v20

    .line 1895
    .line 1896
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1897
    .line 1898
    .line 1899
    return-object v13

    .line 1900
    :pswitch_e
    move-object/from16 v0, p1

    .line 1901
    .line 1902
    check-cast v0, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1903
    .line 1904
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1905
    .line 1906
    .line 1907
    new-instance v0, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1908
    .line 1909
    sget-object v1, Lnet/thunderbird/feature/notification/NotificationLight;->Disabled:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 1910
    .line 1911
    sget-object v2, Lnet/thunderbird/feature/notification/NotificationVibration;->DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 1912
    .line 1913
    const-string v3, "content://settings/system/notification_sound"

    .line 1914
    .line 1915
    const/4 v4, 0x1

    .line 1916
    invoke-direct {v0, v4, v3, v1, v2}, Lnet/thunderbird/feature/notification/NotificationSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;)V

    .line 1917
    .line 1918
    .line 1919
    return-object v0

    .line 1920
    :pswitch_f
    const/4 v4, 0x1

    .line 1921
    move-object/from16 v0, p1

    .line 1922
    .line 1923
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1924
    .line 1925
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1926
    .line 1927
    .line 1928
    const/4 v1, 0x2

    .line 1929
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 1930
    .line 1931
    sget-object v3, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt;->featureAccountCoreModule:Lorg/koin/core/module/Module;

    .line 1932
    .line 1933
    const/16 v20, 0x0

    .line 1934
    .line 1935
    aput-object v3, v1, v20

    .line 1936
    .line 1937
    sget-object v3, Lnet/thunderbird/feature/account/storage/legacy/AccountStorageLegacyModuleKt;->featureAccountStorageLegacyModule:Lorg/koin/core/module/Module;

    .line 1938
    .line 1939
    aput-object v3, v1, v4

    .line 1940
    .line 1941
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1942
    .line 1943
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1944
    .line 1945
    .line 1946
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 1947
    .line 1948
    invoke-direct {v1, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1949
    .line 1950
    .line 1951
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 1952
    .line 1953
    const-class v2, Lnet/thunderbird/feature/mail/account/api/AccountManager;

    .line 1954
    .line 1955
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v16

    .line 1959
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1960
    .line 1961
    const/16 v17, 0x0

    .line 1962
    .line 1963
    sget-object v27, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1964
    .line 1965
    move-object/from16 v18, v1

    .line 1966
    .line 1967
    move-object/from16 v15, v23

    .line 1968
    .line 1969
    move-object/from16 v19, v27

    .line 1970
    .line 1971
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1972
    .line 1973
    .line 1974
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1975
    .line 1976
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1980
    .line 1981
    .line 1982
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    .line 1983
    .line 1984
    invoke-direct {v2, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 1985
    .line 1986
    .line 1987
    const-class v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 1988
    .line 1989
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v1

    .line 1993
    const/4 v3, 0x1

    .line 1994
    new-array v3, v3, [Lkotlin/reflect/KClass;

    .line 1995
    .line 1996
    const/16 v20, 0x0

    .line 1997
    .line 1998
    aput-object v1, v3, v20

    .line 1999
    .line 2000
    invoke-static {v2, v3}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 2001
    .line 2002
    .line 2003
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2004
    .line 2005
    invoke-direct {v1, v11}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2006
    .line 2007
    .line 2008
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2009
    .line 2010
    const-class v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 2011
    .line 2012
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v24

    .line 2016
    const/16 v25, 0x0

    .line 2017
    .line 2018
    move-object/from16 v26, v1

    .line 2019
    .line 2020
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2021
    .line 2022
    .line 2023
    move-object/from16 v1, v22

    .line 2024
    .line 2025
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2026
    .line 2027
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2031
    .line 2032
    .line 2033
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2034
    .line 2035
    invoke-direct {v1, v10}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2036
    .line 2037
    .line 2038
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2039
    .line 2040
    const-class v2, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 2041
    .line 2042
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v24

    .line 2046
    move-object/from16 v26, v1

    .line 2047
    .line 2048
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2049
    .line 2050
    .line 2051
    move-object/from16 v1, v22

    .line 2052
    .line 2053
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2054
    .line 2055
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2059
    .line 2060
    .line 2061
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 2062
    .line 2063
    const-string v2, "AccountColors"

    .line 2064
    .line 2065
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 2066
    .line 2067
    .line 2068
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2069
    .line 2070
    invoke-direct {v2, v9}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2071
    .line 2072
    .line 2073
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2074
    .line 2075
    const-class v3, Lkotlinx/collections/immutable/ImmutableList;

    .line 2076
    .line 2077
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v24

    .line 2081
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2082
    .line 2083
    move-object/from16 v25, v1

    .line 2084
    .line 2085
    move-object/from16 v26, v2

    .line 2086
    .line 2087
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2088
    .line 2089
    .line 2090
    move-object/from16 v1, v22

    .line 2091
    .line 2092
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2093
    .line 2094
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2098
    .line 2099
    .line 2100
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2101
    .line 2102
    invoke-direct {v1, v8}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2103
    .line 2104
    .line 2105
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2106
    .line 2107
    const-class v2, Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 2108
    .line 2109
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v24

    .line 2113
    const/16 v25, 0x0

    .line 2114
    .line 2115
    move-object/from16 v26, v1

    .line 2116
    .line 2117
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2118
    .line 2119
    .line 2120
    move-object/from16 v1, v22

    .line 2121
    .line 2122
    move-object/from16 v2, v27

    .line 2123
    .line 2124
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2125
    .line 2126
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2127
    .line 2128
    .line 2129
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2130
    .line 2131
    .line 2132
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2133
    .line 2134
    invoke-direct {v1, v7}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2135
    .line 2136
    .line 2137
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2138
    .line 2139
    const-class v3, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 2140
    .line 2141
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v24

    .line 2145
    move-object/from16 v26, v1

    .line 2146
    .line 2147
    move-object/from16 v27, v19

    .line 2148
    .line 2149
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2150
    .line 2151
    .line 2152
    move-object/from16 v1, v22

    .line 2153
    .line 2154
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2155
    .line 2156
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2160
    .line 2161
    .line 2162
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2163
    .line 2164
    invoke-direct {v1, v6}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2165
    .line 2166
    .line 2167
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2168
    .line 2169
    const-class v3, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 2170
    .line 2171
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v24

    .line 2175
    move-object/from16 v26, v1

    .line 2176
    .line 2177
    move-object/from16 v27, v2

    .line 2178
    .line 2179
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2180
    .line 2181
    .line 2182
    move-object/from16 v1, v22

    .line 2183
    .line 2184
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2185
    .line 2186
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2187
    .line 2188
    .line 2189
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2190
    .line 2191
    .line 2192
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2193
    .line 2194
    invoke-direct {v1, v5}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2195
    .line 2196
    .line 2197
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2198
    .line 2199
    const-class v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 2200
    .line 2201
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v24

    .line 2205
    move-object/from16 v26, v1

    .line 2206
    .line 2207
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2208
    .line 2209
    .line 2210
    move-object/from16 v1, v22

    .line 2211
    .line 2212
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2213
    .line 2214
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2218
    .line 2219
    .line 2220
    new-instance v1, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2221
    .line 2222
    invoke-direct {v1, v12}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2223
    .line 2224
    .line 2225
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2226
    .line 2227
    const-class v2, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 2228
    .line 2229
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v24

    .line 2233
    move-object/from16 v26, v1

    .line 2234
    .line 2235
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2236
    .line 2237
    .line 2238
    move-object/from16 v1, v22

    .line 2239
    .line 2240
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2241
    .line 2242
    .line 2243
    return-object v13

    .line 2244
    :pswitch_10
    move-object/from16 v0, p1

    .line 2245
    .line 2246
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2247
    .line 2248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2249
    .line 2250
    .line 2251
    iget-object v1, v0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/LinkedHashSet;

    .line 2252
    .line 2253
    sget-object v2, Lcom/fsck/k9/LegacyCommonAppModuleKt;->legacyCommonAppModules:Ljava/util/List;

    .line 2254
    .line 2255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    .line 2257
    .line 2258
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 2259
    .line 2260
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2261
    .line 2262
    .line 2263
    sget-object v2, Lcom/fsck/k9/CoreKoinModulesKt;->legacyCoreModules:Ljava/util/List;

    .line 2264
    .line 2265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2269
    .line 2270
    .line 2271
    sget-object v2, Lcom/fsck/k9/UiKoinModulesKt;->legacyUiModules:Ljava/util/List;

    .line 2272
    .line 2273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2277
    .line 2278
    .line 2279
    const/4 v2, 0x4

    .line 2280
    new-array v2, v2, [Lorg/koin/core/module/Module;

    .line 2281
    .line 2282
    sget-object v4, Lnet/thunderbird/app/common/account/AppCommonAccountModuleKt;->appCommonAccountModule:Lorg/koin/core/module/Module;

    .line 2283
    .line 2284
    const/16 v20, 0x0

    .line 2285
    .line 2286
    aput-object v4, v2, v20

    .line 2287
    .line 2288
    sget-object v4, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt;->appCommonCoreModule:Lorg/koin/core/module/Module;

    .line 2289
    .line 2290
    const/16 v21, 0x1

    .line 2291
    .line 2292
    aput-object v4, v2, v21

    .line 2293
    .line 2294
    sget-object v4, Lnet/thunderbird/app/common/feature/AppCommonFeatureModuleKt;->appCommonFeatureModule:Lorg/koin/core/module/Module;

    .line 2295
    .line 2296
    const/4 v6, 0x2

    .line 2297
    aput-object v4, v2, v6

    .line 2298
    .line 2299
    sget-object v4, Lnet/thunderbird/app/common/startup/AppCommonStartupModuleKt;->appCommonStartupModule:Lorg/koin/core/module/Module;

    .line 2300
    .line 2301
    const/4 v5, 0x3

    .line 2302
    aput-object v4, v2, v5

    .line 2303
    .line 2304
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 2305
    .line 2306
    .line 2307
    new-instance v10, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2308
    .line 2309
    const/4 v2, 0x5

    .line 2310
    invoke-direct {v10, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2311
    .line 2312
    .line 2313
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2314
    .line 2315
    const-class v2, Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 2316
    .line 2317
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v8

    .line 2321
    sget-object v17, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2322
    .line 2323
    const/4 v9, 0x0

    .line 2324
    sget-object v21, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2325
    .line 2326
    move-object/from16 v7, v17

    .line 2327
    .line 2328
    move-object/from16 v11, v21

    .line 2329
    .line 2330
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2331
    .line 2332
    .line 2333
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2334
    .line 2335
    invoke-direct {v2, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2336
    .line 2337
    .line 2338
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2339
    .line 2340
    .line 2341
    new-instance v2, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 2342
    .line 2343
    invoke-direct {v2, v15}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2344
    .line 2345
    .line 2346
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 2347
    .line 2348
    const-class v3, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;

    .line 2349
    .line 2350
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v18

    .line 2354
    const/16 v19, 0x0

    .line 2355
    .line 2356
    move-object/from16 v20, v2

    .line 2357
    .line 2358
    invoke-direct/range {v16 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2359
    .line 2360
    .line 2361
    move-object/from16 v2, v16

    .line 2362
    .line 2363
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2364
    .line 2365
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2369
    .line 2370
    .line 2371
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2372
    .line 2373
    .line 2374
    return-object v13

    .line 2375
    :pswitch_11
    move-object/from16 v0, p1

    .line 2376
    .line 2377
    check-cast v0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 2378
    .line 2379
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2380
    .line 2381
    .line 2382
    new-instance v2, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2383
    .line 2384
    invoke-direct {v2, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2385
    .line 2386
    .line 2387
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 2388
    .line 2389
    invoke-direct {v1, v2}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2390
    .line 2391
    .line 2392
    const-string v2, "JsonPrimitive"

    .line 2393
    .line 2394
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2395
    .line 2396
    .line 2397
    new-instance v1, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2398
    .line 2399
    const/16 v2, 0x15

    .line 2400
    .line 2401
    invoke-direct {v1, v2}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2402
    .line 2403
    .line 2404
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 2405
    .line 2406
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2407
    .line 2408
    .line 2409
    const-string v1, "JsonNull"

    .line 2410
    .line 2411
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2412
    .line 2413
    .line 2414
    new-instance v1, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2415
    .line 2416
    const/16 v2, 0x16

    .line 2417
    .line 2418
    invoke-direct {v1, v2}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2419
    .line 2420
    .line 2421
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 2422
    .line 2423
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2424
    .line 2425
    .line 2426
    const-string v1, "JsonLiteral"

    .line 2427
    .line 2428
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2429
    .line 2430
    .line 2431
    new-instance v1, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2432
    .line 2433
    const/16 v2, 0x17

    .line 2434
    .line 2435
    invoke-direct {v1, v2}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2436
    .line 2437
    .line 2438
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 2439
    .line 2440
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2441
    .line 2442
    .line 2443
    const-string v1, "JsonObject"

    .line 2444
    .line 2445
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2446
    .line 2447
    .line 2448
    new-instance v1, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2449
    .line 2450
    const/16 v2, 0x18

    .line 2451
    .line 2452
    invoke-direct {v1, v2}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2453
    .line 2454
    .line 2455
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 2456
    .line 2457
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 2458
    .line 2459
    .line 2460
    const-string v1, "JsonArray"

    .line 2461
    .line 2462
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2463
    .line 2464
    .line 2465
    return-object v13

    .line 2466
    :pswitch_12
    move-object/from16 v0, p1

    .line 2467
    .line 2468
    check-cast v0, Lkotlin/reflect/KClass;

    .line 2469
    .line 2470
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2471
    .line 2472
    .line 2473
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v1

    .line 2477
    const/4 v2, 0x0

    .line 2478
    if-nez v1, :cond_3

    .line 2479
    .line 2480
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v1

    .line 2484
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 2485
    .line 2486
    .line 2487
    move-result v1

    .line 2488
    if-eqz v1, :cond_2

    .line 2489
    .line 2490
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 2491
    .line 2492
    invoke-direct {v1, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 2493
    .line 2494
    .line 2495
    goto :goto_1

    .line 2496
    :cond_2
    move-object v1, v2

    .line 2497
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2498
    .line 2499
    invoke-static {v1}, Lokhttp3/CacheControl$Companion;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v2

    .line 2503
    :cond_4
    return-object v2

    .line 2504
    :pswitch_13
    move-object/from16 v0, p1

    .line 2505
    .line 2506
    check-cast v0, Lkotlin/reflect/KClass;

    .line 2507
    .line 2508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2509
    .line 2510
    .line 2511
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 2512
    .line 2513
    .line 2514
    move-result-object v1

    .line 2515
    if-nez v1, :cond_6

    .line 2516
    .line 2517
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 2518
    .line 2519
    .line 2520
    move-result-object v1

    .line 2521
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 2522
    .line 2523
    .line 2524
    move-result v1

    .line 2525
    if-eqz v1, :cond_5

    .line 2526
    .line 2527
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 2528
    .line 2529
    invoke-direct {v1, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 2530
    .line 2531
    .line 2532
    goto :goto_2

    .line 2533
    :cond_5
    const/4 v1, 0x0

    .line 2534
    :cond_6
    :goto_2
    return-object v1

    .line 2535
    :pswitch_14
    move-object/from16 v0, p1

    .line 2536
    .line 2537
    check-cast v0, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 2538
    .line 2539
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2540
    .line 2541
    .line 2542
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2543
    .line 2544
    const-string v2, "position "

    .line 2545
    .line 2546
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2547
    .line 2548
    .line 2549
    iget v2, v0, Lkotlinx/datetime/internal/format/parser/ParseError;->position:I

    .line 2550
    .line 2551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2552
    .line 2553
    .line 2554
    const-string v2, ": \'"

    .line 2555
    .line 2556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    .line 2558
    .line 2559
    iget-object v0, v0, Lkotlinx/datetime/internal/format/parser/ParseError;->message:Lkotlin/jvm/functions/Function0;

    .line 2560
    .line 2561
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2562
    .line 2563
    .line 2564
    move-result-object v0

    .line 2565
    check-cast v0, Ljava/lang/String;

    .line 2566
    .line 2567
    const/16 v2, 0x27

    .line 2568
    .line 2569
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v0

    .line 2573
    return-object v0

    .line 2574
    :pswitch_15
    move-object/from16 v0, p1

    .line 2575
    .line 2576
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2577
    .line 2578
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2579
    .line 2580
    .line 2581
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetMinutesOfHour$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 2582
    .line 2583
    .line 2584
    new-instance v1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 2585
    .line 2586
    const/16 v2, 0x1d

    .line 2587
    .line 2588
    invoke-direct {v1, v2}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2589
    .line 2590
    .line 2591
    invoke-static {v0, v14, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2592
    .line 2593
    .line 2594
    return-object v13

    .line 2595
    :pswitch_16
    move-object/from16 v0, p1

    .line 2596
    .line 2597
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2598
    .line 2599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2600
    .line 2601
    .line 2602
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetHours$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 2603
    .line 2604
    .line 2605
    new-instance v1, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 2606
    .line 2607
    invoke-direct {v1, v2}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2608
    .line 2609
    .line 2610
    invoke-static {v0, v14, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2611
    .line 2612
    .line 2613
    return-object v13

    .line 2614
    :pswitch_17
    move-object/from16 v0, p1

    .line 2615
    .line 2616
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2617
    .line 2618
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2619
    .line 2620
    .line 2621
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetHours$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 2622
    .line 2623
    .line 2624
    const/16 v1, 0x3a

    .line 2625
    .line 2626
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 2627
    .line 2628
    .line 2629
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetMinutesOfHour$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 2630
    .line 2631
    .line 2632
    new-instance v1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 2633
    .line 2634
    const/16 v2, 0x1c

    .line 2635
    .line 2636
    invoke-direct {v1, v2}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2637
    .line 2638
    .line 2639
    invoke-static {v0, v14, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2640
    .line 2641
    .line 2642
    return-object v13

    .line 2643
    :pswitch_18
    move-object/from16 v0, p1

    .line 2644
    .line 2645
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2646
    .line 2647
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2648
    .line 2649
    .line 2650
    new-instance v1, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 2651
    .line 2652
    invoke-direct {v1, v15}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2653
    .line 2654
    .line 2655
    const-string v2, "Z"

    .line 2656
    .line 2657
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2658
    .line 2659
    .line 2660
    return-object v13

    .line 2661
    :pswitch_19
    move-object/from16 v0, p1

    .line 2662
    .line 2663
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2664
    .line 2665
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2666
    .line 2667
    .line 2668
    const-string/jumbo v1, "z"

    .line 2669
    .line 2670
    .line 2671
    invoke-static {v0, v1}, Lkotlinx/io/Sink$-CC;->$default$chars(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V

    .line 2672
    .line 2673
    .line 2674
    return-object v13

    .line 2675
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2676
    .line 2677
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2678
    .line 2679
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2680
    .line 2681
    .line 2682
    new-instance v1, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 2683
    .line 2684
    const/4 v2, 0x5

    .line 2685
    invoke-direct {v1, v2}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2686
    .line 2687
    .line 2688
    const-string v2, "Z"

    .line 2689
    .line 2690
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2691
    .line 2692
    .line 2693
    return-object v13

    .line 2694
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2695
    .line 2696
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 2697
    .line 2698
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2699
    .line 2700
    .line 2701
    const-string/jumbo v1, "z"

    .line 2702
    .line 2703
    .line 2704
    invoke-static {v0, v1}, Lkotlinx/io/Sink$-CC;->$default$chars(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V

    .line 2705
    .line 2706
    .line 2707
    return-object v13

    .line 2708
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2709
    .line 2710
    check-cast v0, Ljava/util/Map$Entry;

    .line 2711
    .line 2712
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2713
    .line 2714
    .line 2715
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v1

    .line 2719
    check-cast v1, Ljava/lang/String;

    .line 2720
    .line 2721
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v0

    .line 2725
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 2726
    .line 2727
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2728
    .line 2729
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2730
    .line 2731
    .line 2732
    invoke-static {v2, v1}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2733
    .line 2734
    .line 2735
    const/16 v1, 0x3a

    .line 2736
    .line 2737
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2738
    .line 2739
    .line 2740
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2741
    .line 2742
    .line 2743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2744
    .line 2745
    .line 2746
    move-result-object v0

    .line 2747
    return-object v0

    .line 2748
    nop

    .line 2749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
