.class public final synthetic Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 6
    .line 7
    const-class v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 8
    .line 9
    const-class v3, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 10
    .line 11
    const-class v4, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 12
    .line 13
    const-class v5, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 14
    .line 15
    const/16 v6, 0x27

    .line 16
    .line 17
    const-string v7, "No value found for type \'"

    .line 18
    .line 19
    const-class v8, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 20
    .line 21
    const-class v9, Lnet/thunderbird/core/logging/Logger;

    .line 22
    .line 23
    const-class v10, Lnet/thunderbird/feature/account/AccountId;

    .line 24
    .line 25
    const-class v11, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 34
    .line 35
    move-object/from16 v1, p2

    .line 36
    .line 37
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 46
    .line 47
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/LegacyAvatarDtoStorageHandler;

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAvatarDtoStorageHandler;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_0
    move-object/from16 v0, p1

    .line 64
    .line 65
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAvatarDtoStorageHandler;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_1
    move-object/from16 v0, p1

    .line 84
    .line 85
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 86
    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 98
    .line 99
    invoke-direct {v0}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;-><init>()V

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :pswitch_2
    move-object/from16 v0, p1

    .line 104
    .line 105
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 106
    .line 107
    move-object/from16 v1, p2

    .line 108
    .line 109
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v1, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 118
    .line 119
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 120
    .line 121
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 130
    .line 131
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;-><init>(Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_3
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 138
    .line 139
    move-object/from16 v1, p2

    .line 140
    .line 141
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :pswitch_4
    move-object/from16 v0, p1

    .line 156
    .line 157
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 158
    .line 159
    move-object/from16 v1, p2

    .line 160
    .line 161
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    new-instance v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    return-object v0

    .line 175
    :pswitch_5
    move-object/from16 v0, p1

    .line 176
    .line 177
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 178
    .line 179
    move-object/from16 v1, p2

    .line 180
    .line 181
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 190
    .line 191
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    .line 201
    move-object v14, v1

    .line 202
    check-cast v14, Lnet/thunderbird/feature/account/AccountId;

    .line 203
    .line 204
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move-object v15, v1

    .line 213
    check-cast v15, Lnet/thunderbird/core/logging/Logger;

    .line 214
    .line 215
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    move-object/from16 v16, v1

    .line 224
    .line 225
    check-cast v16, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 226
    .line 227
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v17, v1

    .line 236
    .line 237
    check-cast v17, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 238
    .line 239
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 240
    .line 241
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    move-object/from16 v18, v1

    .line 250
    .line 251
    check-cast v18, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 252
    .line 253
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object/from16 v19, v0

    .line 262
    .line 263
    check-cast v19, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 264
    .line 265
    invoke-direct/range {v13 .. v19}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;)V

    .line 266
    .line 267
    .line 268
    return-object v13

    .line 269
    :cond_0
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 270
    .line 271
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :pswitch_6
    move-object/from16 v0, p1

    .line 299
    .line 300
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 301
    .line 302
    move-object/from16 v1, p2

    .line 303
    .line 304
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-eqz v1, :cond_1

    .line 321
    .line 322
    move-object v14, v1

    .line 323
    check-cast v14, Lnet/thunderbird/feature/account/AccountId;

    .line 324
    .line 325
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    move-object v15, v1

    .line 334
    check-cast v15, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 335
    .line 336
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    move-object/from16 v16, v1

    .line 345
    .line 346
    check-cast v16, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 347
    .line 348
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 349
    .line 350
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    move-object/from16 v17, v1

    .line 359
    .line 360
    check-cast v17, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 361
    .line 362
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    move-object/from16 v19, v1

    .line 371
    .line 372
    check-cast v19, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 373
    .line 374
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    move-object/from16 v18, v0

    .line 383
    .line 384
    check-cast v18, Lnet/thunderbird/core/logging/Logger;

    .line 385
    .line 386
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 387
    .line 388
    invoke-direct/range {v13 .. v19}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 389
    .line 390
    .line 391
    return-object v13

    .line 392
    :cond_1
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 393
    .line 394
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :pswitch_7
    move-object/from16 v0, p1

    .line 422
    .line 423
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 424
    .line 425
    move-object/from16 v1, p2

    .line 426
    .line 427
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;

    .line 436
    .line 437
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    check-cast v0, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 446
    .line 447
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 448
    .line 449
    .line 450
    return-object v1

    .line 451
    :pswitch_8
    move-object/from16 v0, p1

    .line 452
    .line 453
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 454
    .line 455
    move-object/from16 v1, p2

    .line 456
    .line 457
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 466
    .line 467
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v0, v3, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    check-cast v3, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 476
    .line 477
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 486
    .line 487
    invoke-direct {v1, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;)V

    .line 488
    .line 489
    .line 490
    return-object v1

    .line 491
    :pswitch_9
    move-object/from16 v0, p1

    .line 492
    .line 493
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 494
    .line 495
    move-object/from16 v1, p2

    .line 496
    .line 497
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 506
    .line 507
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 516
    .line 517
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 518
    .line 519
    .line 520
    return-object v1

    .line 521
    :pswitch_a
    move-object/from16 v0, p1

    .line 522
    .line 523
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 524
    .line 525
    move-object/from16 v1, p2

    .line 526
    .line 527
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;

    .line 536
    .line 537
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 546
    .line 547
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 548
    .line 549
    .line 550
    return-object v1

    .line 551
    :pswitch_b
    move-object/from16 v0, p1

    .line 552
    .line 553
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 554
    .line 555
    move-object/from16 v1, p2

    .line 556
    .line 557
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 566
    .line 567
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    if-eqz v1, :cond_2

    .line 576
    .line 577
    move-object v14, v1

    .line 578
    check-cast v14, Lnet/thunderbird/feature/account/AccountId;

    .line 579
    .line 580
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    move-object v15, v1

    .line 589
    check-cast v15, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 590
    .line 591
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;

    .line 592
    .line 593
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    move-object/from16 v16, v1

    .line 602
    .line 603
    check-cast v16, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;

    .line 604
    .line 605
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 606
    .line 607
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    move-object/from16 v17, v1

    .line 616
    .line 617
    check-cast v17, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 618
    .line 619
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 620
    .line 621
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    move-object/from16 v18, v1

    .line 630
    .line 631
    check-cast v18, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 632
    .line 633
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    move-object/from16 v19, v0

    .line 642
    .line 643
    check-cast v19, Lnet/thunderbird/core/logging/Logger;

    .line 644
    .line 645
    invoke-direct/range {v13 .. v19}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;Lnet/thunderbird/core/logging/Logger;)V

    .line 646
    .line 647
    .line 648
    return-object v13

    .line 649
    :cond_2
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 650
    .line 651
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw v0

    .line 678
    :pswitch_c
    move-object/from16 v0, p1

    .line 679
    .line 680
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 681
    .line 682
    move-object/from16 v1, p2

    .line 683
    .line 684
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

    .line 693
    .line 694
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    move-object v3, v1

    .line 703
    check-cast v3, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 704
    .line 705
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 706
    .line 707
    const-string v4, "AccountColors"

    .line 708
    .line 709
    invoke-direct {v1, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    const-class v4, Lkotlinx/collections/immutable/ImmutableList;

    .line 713
    .line 714
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v0, v4, v12, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    move-object v4, v1

    .line 723
    check-cast v4, Lkotlinx/collections/immutable/ImmutableList;

    .line 724
    .line 725
    const-class v1, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 726
    .line 727
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    move-object v5, v1

    .line 736
    check-cast v5, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 737
    .line 738
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 739
    .line 740
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    move-object v6, v1

    .line 749
    check-cast v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 750
    .line 751
    const-class v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 752
    .line 753
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    move-object v7, v1

    .line 762
    check-cast v7, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 763
    .line 764
    const-class v1, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 765
    .line 766
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    move-object v8, v0

    .line 775
    check-cast v8, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 776
    .line 777
    invoke-direct/range {v2 .. v8}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;-><init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;)V

    .line 778
    .line 779
    .line 780
    return-object v2

    .line 781
    :pswitch_d
    move-object/from16 v0, p1

    .line 782
    .line 783
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 784
    .line 785
    move-object/from16 v1, p2

    .line 786
    .line 787
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 788
    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 796
    .line 797
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 798
    .line 799
    .line 800
    return-object v0

    .line 801
    :pswitch_e
    move-object/from16 v0, p1

    .line 802
    .line 803
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 804
    .line 805
    move-object/from16 v1, p2

    .line 806
    .line 807
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 816
    .line 817
    new-instance v1, Lokio/AsyncTimeout$Companion;

    .line 818
    .line 819
    const/16 v2, 0x16

    .line 820
    .line 821
    invoke-direct {v1, v2}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 822
    .line 823
    .line 824
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 825
    .line 826
    .line 827
    return-object v0

    .line 828
    :pswitch_f
    move-object/from16 v0, p1

    .line 829
    .line 830
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 831
    .line 832
    move-object/from16 v1, p2

    .line 833
    .line 834
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;

    .line 843
    .line 844
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    check-cast v0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 853
    .line 854
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;-><init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V

    .line 855
    .line 856
    .line 857
    return-object v1

    .line 858
    :pswitch_10
    move-object/from16 v0, p1

    .line 859
    .line 860
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 861
    .line 862
    move-object/from16 v2, p2

    .line 863
    .line 864
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;

    .line 873
    .line 874
    const-class v3, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 875
    .line 876
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    invoke-virtual {v0, v3, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 885
    .line 886
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    check-cast v0, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 895
    .line 896
    invoke-direct {v2, v3, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;-><init>(Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;Lnet/thunderbird/core/file/AndroidMimeTypeResolver;)V

    .line 897
    .line 898
    .line 899
    return-object v2

    .line 900
    :pswitch_11
    move-object/from16 v0, p1

    .line 901
    .line 902
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 903
    .line 904
    move-object/from16 v1, p2

    .line 905
    .line 906
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 907
    .line 908
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    .line 913
    .line 914
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 915
    .line 916
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 925
    .line 926
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V

    .line 927
    .line 928
    .line 929
    return-object v1

    .line 930
    :pswitch_12
    move-object/from16 v0, p1

    .line 931
    .line 932
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 933
    .line 934
    move-object/from16 v1, p2

    .line 935
    .line 936
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 937
    .line 938
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 942
    .line 943
    .line 944
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;

    .line 945
    .line 946
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    check-cast v0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 955
    .line 956
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountProfile;-><init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V

    .line 957
    .line 958
    .line 959
    return-object v1

    .line 960
    :pswitch_13
    move-object/from16 v0, p1

    .line 961
    .line 962
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 963
    .line 964
    move-object/from16 v1, p2

    .line 965
    .line 966
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 967
    .line 968
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 975
    .line 976
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 985
    .line 986
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V

    .line 987
    .line 988
    .line 989
    return-object v1

    .line 990
    :pswitch_14
    move-object/from16 v0, p1

    .line 991
    .line 992
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 993
    .line 994
    move-object/from16 v1, p2

    .line 995
    .line 996
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;

    .line 1005
    .line 1006
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 1015
    .line 1016
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V

    .line 1017
    .line 1018
    .line 1019
    return-object v1

    .line 1020
    :pswitch_15
    move-object/from16 v0, p1

    .line 1021
    .line 1022
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1023
    .line 1024
    move-object/from16 v1, p2

    .line 1025
    .line 1026
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1027
    .line 1028
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 1035
    .line 1036
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 1045
    .line 1046
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V

    .line 1047
    .line 1048
    .line 1049
    return-object v1

    .line 1050
    :pswitch_16
    move-object/from16 v0, p1

    .line 1051
    .line 1052
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1053
    .line 1054
    move-object/from16 v1, p2

    .line 1055
    .line 1056
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1057
    .line 1058
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 1065
    .line 1066
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    check-cast v0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 1075
    .line 1076
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;-><init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V

    .line 1077
    .line 1078
    .line 1079
    return-object v1

    .line 1080
    :pswitch_17
    move-object/from16 v0, p1

    .line 1081
    .line 1082
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1083
    .line 1084
    move-object/from16 v1, p2

    .line 1085
    .line 1086
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1087
    .line 1088
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    if-eqz v1, :cond_3

    .line 1103
    .line 1104
    move-object v14, v1

    .line 1105
    check-cast v14, Lnet/thunderbird/feature/account/AccountId;

    .line 1106
    .line 1107
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    move-object v15, v1

    .line 1116
    check-cast v15, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;

    .line 1117
    .line 1118
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    move-object/from16 v17, v1

    .line 1127
    .line 1128
    check-cast v17, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;

    .line 1129
    .line 1130
    const-class v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 1131
    .line 1132
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    move-object/from16 v16, v1

    .line 1141
    .line 1142
    check-cast v16, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;

    .line 1143
    .line 1144
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    move-object/from16 v18, v1

    .line 1153
    .line 1154
    check-cast v18, Lnet/thunderbird/core/logging/Logger;

    .line 1155
    .line 1156
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    move-object/from16 v19, v0

    .line 1165
    .line 1166
    check-cast v19, Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 1167
    .line 1168
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 1169
    .line 1170
    invoke-direct/range {v13 .. v19}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V

    .line 1171
    .line 1172
    .line 1173
    return-object v13

    .line 1174
    :cond_3
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    .line 1175
    .line 1176
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    throw v0

    .line 1203
    :pswitch_18
    move-object/from16 v0, p1

    .line 1204
    .line 1205
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1206
    .line 1207
    move-object/from16 v1, p2

    .line 1208
    .line 1209
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1210
    .line 1211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    .line 1216
    .line 1217
    new-instance v1, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 1218
    .line 1219
    const-class v2, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;

    .line 1220
    .line 1221
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v0

    .line 1229
    check-cast v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;

    .line 1230
    .line 1231
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;-><init>(Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;)V

    .line 1232
    .line 1233
    .line 1234
    return-object v1

    .line 1235
    :pswitch_19
    move-object/from16 v0, p1

    .line 1236
    .line 1237
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1238
    .line 1239
    move-object/from16 v2, p2

    .line 1240
    .line 1241
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1242
    .line 1243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    new-instance v2, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;

    .line 1250
    .line 1251
    const-class v3, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 1252
    .line 1253
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v3

    .line 1257
    invoke-virtual {v0, v3, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    check-cast v3, Lnet/thunderbird/core/file/DefaultFileManager;

    .line 1262
    .line 1263
    const-class v4, Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 1264
    .line 1265
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    invoke-virtual {v0, v4, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v4

    .line 1273
    check-cast v4, Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 1274
    .line 1275
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    invoke-virtual {v0, v1, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v1

    .line 1283
    check-cast v1, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 1284
    .line 1285
    const-class v5, Lkotlin/time/Clock;

    .line 1286
    .line 1287
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v5

    .line 1291
    invoke-virtual {v0, v5, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    check-cast v0, Lkotlin/time/Clock;

    .line 1296
    .line 1297
    invoke-direct {v2, v3, v4, v1, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;-><init>(Lnet/thunderbird/core/file/DefaultFileManager;Lnet/thunderbird/core/file/AndroidDirectoryProvider;Lnet/thunderbird/core/file/AndroidMimeTypeResolver;Lkotlin/time/Clock;)V

    .line 1298
    .line 1299
    .line 1300
    return-object v2

    .line 1301
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1302
    .line 1303
    check-cast v0, Ljava/lang/Integer;

    .line 1304
    .line 1305
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1306
    .line 1307
    .line 1308
    return-object v0

    .line 1309
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1310
    .line 1311
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1312
    .line 1313
    move-object/from16 v1, p2

    .line 1314
    .line 1315
    check-cast v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 1316
    .line 1317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v2

    .line 1335
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v2

    .line 1339
    iget-object v3, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1340
    .line 1341
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v3

    .line 1349
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1350
    .line 1351
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1352
    .line 1353
    .line 1354
    move-result v1

    .line 1355
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    const/4 v4, 0x4

    .line 1360
    new-array v4, v4, [Ljava/lang/Object;

    .line 1361
    .line 1362
    const/4 v5, 0x0

    .line 1363
    aput-object v0, v4, v5

    .line 1364
    .line 1365
    const/4 v0, 0x1

    .line 1366
    aput-object v2, v4, v0

    .line 1367
    .line 1368
    const/4 v0, 0x2

    .line 1369
    aput-object v3, v4, v0

    .line 1370
    .line 1371
    const/4 v0, 0x3

    .line 1372
    aput-object v1, v4, v0

    .line 1373
    .line 1374
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    return-object v0

    .line 1379
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1380
    .line 1381
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1382
    .line 1383
    move-object/from16 v1, p2

    .line 1384
    .line 1385
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1386
    .line 1387
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    .line 1392
    .line 1393
    new-instance v1, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 1394
    .line 1395
    const-class v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 1396
    .line 1397
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    invoke-virtual {v0, v2, v12, v12}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 1406
    .line 1407
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;-><init>(Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;)V

    .line 1408
    .line 1409
    .line 1410
    return-object v1

    .line 1411
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
