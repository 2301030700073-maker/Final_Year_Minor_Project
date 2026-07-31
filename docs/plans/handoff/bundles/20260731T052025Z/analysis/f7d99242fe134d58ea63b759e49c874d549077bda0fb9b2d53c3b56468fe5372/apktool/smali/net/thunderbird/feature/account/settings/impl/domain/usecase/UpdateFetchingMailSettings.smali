.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->label:I

    .line 32
    .line 33
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    iget-object v0, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x0

    .line 40
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    if-eq v3, v5, :cond_2

    .line 45
    .line 46
    if-ne v3, v6, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v7

    .line 59
    :cond_2
    iget-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 72
    .line 73
    move-object/from16 v3, p1

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object/from16 v3, p2

    .line 80
    .line 81
    iput-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;

    .line 82
    .line 83
    iput v5, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->label:I

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v1, v8, :cond_4

    .line 90
    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_4
    :goto_1
    move-object v9, v1

    .line 94
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 95
    .line 96
    if-nez v9, :cond_5

    .line 97
    .line 98
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 99
    .line 100
    const-string v1, "Account not found"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 106
    .line 107
    invoke-direct {v1, v0, v7}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_5
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateLocalFolderSize;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateLocalFolderSize;

    .line 116
    .line 117
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateLocalFolderSize;->value:I

    .line 118
    .line 119
    const/16 v47, -0x1

    .line 120
    .line 121
    const v48, 0x7fffff

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v12, 0x0

    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v14, 0x0

    .line 129
    const/4 v15, 0x0

    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const/16 v19, 0x0

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const/16 v21, 0x0

    .line 139
    .line 140
    const/16 v22, 0x0

    .line 141
    .line 142
    const/16 v23, 0x0

    .line 143
    .line 144
    const/16 v24, 0x0

    .line 145
    .line 146
    const/16 v25, 0x0

    .line 147
    .line 148
    const/16 v26, 0x0

    .line 149
    .line 150
    const/16 v27, 0x0

    .line 151
    .line 152
    const/16 v28, 0x0

    .line 153
    .line 154
    const/16 v29, 0x0

    .line 155
    .line 156
    const/16 v30, 0x0

    .line 157
    .line 158
    const/16 v31, 0x0

    .line 159
    .line 160
    const/16 v32, 0x0

    .line 161
    .line 162
    const/16 v33, 0x0

    .line 163
    .line 164
    const/16 v34, 0x0

    .line 165
    .line 166
    const/16 v35, 0x0

    .line 167
    .line 168
    const/16 v36, 0x0

    .line 169
    .line 170
    const/16 v37, 0x0

    .line 171
    .line 172
    const/16 v38, 0x0

    .line 173
    .line 174
    const/16 v39, 0x0

    .line 175
    .line 176
    const/16 v40, 0x0

    .line 177
    .line 178
    const/16 v41, 0x0

    .line 179
    .line 180
    const/16 v42, 0x0

    .line 181
    .line 182
    const/16 v43, 0x0

    .line 183
    .line 184
    const/16 v44, 0x0

    .line 185
    .line 186
    const/16 v45, 0x0

    .line 187
    .line 188
    const/16 v46, -0x801

    .line 189
    .line 190
    move/from16 v16, v1

    .line 191
    .line 192
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_6
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncMessageFrom;

    .line 199
    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncMessageFrom;

    .line 203
    .line 204
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncMessageFrom;->value:I

    .line 205
    .line 206
    const v47, -0x80001

    .line 207
    .line 208
    .line 209
    const v48, 0x7fffff

    .line 210
    .line 211
    .line 212
    const/4 v10, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    const/4 v15, 0x0

    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    const/16 v18, 0x0

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const/16 v20, 0x0

    .line 227
    .line 228
    const/16 v21, 0x0

    .line 229
    .line 230
    const/16 v22, 0x0

    .line 231
    .line 232
    const/16 v23, 0x0

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    const/16 v25, 0x0

    .line 237
    .line 238
    const/16 v26, 0x0

    .line 239
    .line 240
    const/16 v27, 0x0

    .line 241
    .line 242
    const/16 v28, 0x0

    .line 243
    .line 244
    const/16 v29, 0x0

    .line 245
    .line 246
    const/16 v30, 0x0

    .line 247
    .line 248
    const/16 v31, 0x0

    .line 249
    .line 250
    const/16 v32, 0x0

    .line 251
    .line 252
    const/16 v33, 0x0

    .line 253
    .line 254
    const/16 v34, 0x0

    .line 255
    .line 256
    const/16 v35, 0x0

    .line 257
    .line 258
    const/16 v37, 0x0

    .line 259
    .line 260
    const/16 v38, 0x0

    .line 261
    .line 262
    const/16 v39, 0x0

    .line 263
    .line 264
    const/16 v40, 0x0

    .line 265
    .line 266
    const/16 v41, 0x0

    .line 267
    .line 268
    const/16 v42, 0x0

    .line 269
    .line 270
    const/16 v43, 0x0

    .line 271
    .line 272
    const/16 v44, 0x0

    .line 273
    .line 274
    const/16 v45, 0x0

    .line 275
    .line 276
    const/16 v46, -0x1

    .line 277
    .line 278
    move/from16 v36, v1

    .line 279
    .line 280
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :cond_7
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFetchMessageUpTo;

    .line 287
    .line 288
    if-eqz v1, :cond_8

    .line 289
    .line 290
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFetchMessageUpTo;

    .line 291
    .line 292
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFetchMessageUpTo;->value:I

    .line 293
    .line 294
    const v47, -0x100001

    .line 295
    .line 296
    .line 297
    const v48, 0x7fffff

    .line 298
    .line 299
    .line 300
    const/4 v10, 0x0

    .line 301
    const/4 v11, 0x0

    .line 302
    const/4 v12, 0x0

    .line 303
    const/4 v13, 0x0

    .line 304
    const/4 v14, 0x0

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
    const/16 v19, 0x0

    .line 313
    .line 314
    const/16 v20, 0x0

    .line 315
    .line 316
    const/16 v21, 0x0

    .line 317
    .line 318
    const/16 v22, 0x0

    .line 319
    .line 320
    const/16 v23, 0x0

    .line 321
    .line 322
    const/16 v24, 0x0

    .line 323
    .line 324
    const/16 v25, 0x0

    .line 325
    .line 326
    const/16 v26, 0x0

    .line 327
    .line 328
    const/16 v27, 0x0

    .line 329
    .line 330
    const/16 v28, 0x0

    .line 331
    .line 332
    const/16 v29, 0x0

    .line 333
    .line 334
    const/16 v30, 0x0

    .line 335
    .line 336
    const/16 v31, 0x0

    .line 337
    .line 338
    const/16 v32, 0x0

    .line 339
    .line 340
    const/16 v33, 0x0

    .line 341
    .line 342
    const/16 v34, 0x0

    .line 343
    .line 344
    const/16 v35, 0x0

    .line 345
    .line 346
    const/16 v36, 0x0

    .line 347
    .line 348
    const/16 v38, 0x0

    .line 349
    .line 350
    const/16 v39, 0x0

    .line 351
    .line 352
    const/16 v40, 0x0

    .line 353
    .line 354
    const/16 v41, 0x0

    .line 355
    .line 356
    const/16 v42, 0x0

    .line 357
    .line 358
    const/16 v43, 0x0

    .line 359
    .line 360
    const/16 v44, 0x0

    .line 361
    .line 362
    const/16 v45, 0x0

    .line 363
    .line 364
    const/16 v46, -0x1

    .line 365
    .line 366
    move/from16 v37, v1

    .line 367
    .line 368
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    goto/16 :goto_6

    .line 373
    .line 374
    :cond_8
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFolderPollFrequency;

    .line 375
    .line 376
    if-eqz v1, :cond_9

    .line 377
    .line 378
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFolderPollFrequency;

    .line 379
    .line 380
    iget v15, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateFolderPollFrequency;->value:I

    .line 381
    .line 382
    const/16 v47, -0x1

    .line 383
    .line 384
    const v48, 0x7fffff

    .line 385
    .line 386
    .line 387
    const/4 v10, 0x0

    .line 388
    const/4 v11, 0x0

    .line 389
    const/4 v12, 0x0

    .line 390
    const/4 v13, 0x0

    .line 391
    const/4 v14, 0x0

    .line 392
    const/16 v16, 0x0

    .line 393
    .line 394
    const/16 v17, 0x0

    .line 395
    .line 396
    const/16 v18, 0x0

    .line 397
    .line 398
    const/16 v19, 0x0

    .line 399
    .line 400
    const/16 v20, 0x0

    .line 401
    .line 402
    const/16 v21, 0x0

    .line 403
    .line 404
    const/16 v22, 0x0

    .line 405
    .line 406
    const/16 v23, 0x0

    .line 407
    .line 408
    const/16 v24, 0x0

    .line 409
    .line 410
    const/16 v25, 0x0

    .line 411
    .line 412
    const/16 v26, 0x0

    .line 413
    .line 414
    const/16 v27, 0x0

    .line 415
    .line 416
    const/16 v28, 0x0

    .line 417
    .line 418
    const/16 v29, 0x0

    .line 419
    .line 420
    const/16 v30, 0x0

    .line 421
    .line 422
    const/16 v31, 0x0

    .line 423
    .line 424
    const/16 v32, 0x0

    .line 425
    .line 426
    const/16 v33, 0x0

    .line 427
    .line 428
    const/16 v34, 0x0

    .line 429
    .line 430
    const/16 v35, 0x0

    .line 431
    .line 432
    const/16 v36, 0x0

    .line 433
    .line 434
    const/16 v37, 0x0

    .line 435
    .line 436
    const/16 v38, 0x0

    .line 437
    .line 438
    const/16 v39, 0x0

    .line 439
    .line 440
    const/16 v40, 0x0

    .line 441
    .line 442
    const/16 v41, 0x0

    .line 443
    .line 444
    const/16 v42, 0x0

    .line 445
    .line 446
    const/16 v43, 0x0

    .line 447
    .line 448
    const/16 v44, 0x0

    .line 449
    .line 450
    const/16 v45, 0x0

    .line 451
    .line 452
    const/16 v46, -0x401

    .line 453
    .line 454
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    goto/16 :goto_6

    .line 459
    .line 460
    :cond_9
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncServerDeletions;

    .line 461
    .line 462
    if-eqz v1, :cond_a

    .line 463
    .line 464
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncServerDeletions;

    .line 465
    .line 466
    iget-boolean v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateSyncServerDeletions;->value:Z

    .line 467
    .line 468
    const v47, -0x20000001

    .line 469
    .line 470
    .line 471
    const v48, 0x7fffff

    .line 472
    .line 473
    .line 474
    const/4 v10, 0x0

    .line 475
    const/4 v11, 0x0

    .line 476
    const/4 v12, 0x0

    .line 477
    const/4 v13, 0x0

    .line 478
    const/4 v14, 0x0

    .line 479
    const/4 v15, 0x0

    .line 480
    const/16 v16, 0x0

    .line 481
    .line 482
    const/16 v17, 0x0

    .line 483
    .line 484
    const/16 v18, 0x0

    .line 485
    .line 486
    const/16 v19, 0x0

    .line 487
    .line 488
    const/16 v20, 0x0

    .line 489
    .line 490
    const/16 v21, 0x0

    .line 491
    .line 492
    const/16 v22, 0x0

    .line 493
    .line 494
    const/16 v23, 0x0

    .line 495
    .line 496
    const/16 v24, 0x0

    .line 497
    .line 498
    const/16 v25, 0x0

    .line 499
    .line 500
    const/16 v26, 0x0

    .line 501
    .line 502
    const/16 v27, 0x0

    .line 503
    .line 504
    const/16 v28, 0x0

    .line 505
    .line 506
    const/16 v29, 0x0

    .line 507
    .line 508
    const/16 v30, 0x0

    .line 509
    .line 510
    const/16 v31, 0x0

    .line 511
    .line 512
    const/16 v32, 0x0

    .line 513
    .line 514
    const/16 v33, 0x0

    .line 515
    .line 516
    const/16 v34, 0x0

    .line 517
    .line 518
    const/16 v35, 0x0

    .line 519
    .line 520
    const/16 v36, 0x0

    .line 521
    .line 522
    const/16 v37, 0x0

    .line 523
    .line 524
    const/16 v39, 0x0

    .line 525
    .line 526
    const/16 v40, 0x0

    .line 527
    .line 528
    const/16 v41, 0x0

    .line 529
    .line 530
    const/16 v42, 0x0

    .line 531
    .line 532
    const/16 v43, 0x0

    .line 533
    .line 534
    const/16 v44, 0x0

    .line 535
    .line 536
    const/16 v45, 0x0

    .line 537
    .line 538
    const/16 v46, -0x1

    .line 539
    .line 540
    move/from16 v38, v1

    .line 541
    .line 542
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    goto/16 :goto_6

    .line 547
    .line 548
    :cond_a
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMarkAsReadWhenDeleted;

    .line 549
    .line 550
    if-eqz v1, :cond_b

    .line 551
    .line 552
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMarkAsReadWhenDeleted;

    .line 553
    .line 554
    iget-boolean v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMarkAsReadWhenDeleted;->value:Z

    .line 555
    .line 556
    const/16 v47, -0x1

    .line 557
    .line 558
    const v48, 0x7fffdf

    .line 559
    .line 560
    .line 561
    const/4 v10, 0x0

    .line 562
    const/4 v11, 0x0

    .line 563
    const/4 v12, 0x0

    .line 564
    const/4 v13, 0x0

    .line 565
    const/4 v14, 0x0

    .line 566
    const/4 v15, 0x0

    .line 567
    const/16 v16, 0x0

    .line 568
    .line 569
    const/16 v17, 0x0

    .line 570
    .line 571
    const/16 v18, 0x0

    .line 572
    .line 573
    const/16 v19, 0x0

    .line 574
    .line 575
    const/16 v20, 0x0

    .line 576
    .line 577
    const/16 v21, 0x0

    .line 578
    .line 579
    const/16 v22, 0x0

    .line 580
    .line 581
    const/16 v23, 0x0

    .line 582
    .line 583
    const/16 v24, 0x0

    .line 584
    .line 585
    const/16 v25, 0x0

    .line 586
    .line 587
    const/16 v26, 0x0

    .line 588
    .line 589
    const/16 v27, 0x0

    .line 590
    .line 591
    const/16 v28, 0x0

    .line 592
    .line 593
    const/16 v29, 0x0

    .line 594
    .line 595
    const/16 v30, 0x0

    .line 596
    .line 597
    const/16 v31, 0x0

    .line 598
    .line 599
    const/16 v32, 0x0

    .line 600
    .line 601
    const/16 v33, 0x0

    .line 602
    .line 603
    const/16 v34, 0x0

    .line 604
    .line 605
    const/16 v35, 0x0

    .line 606
    .line 607
    const/16 v36, 0x0

    .line 608
    .line 609
    const/16 v37, 0x0

    .line 610
    .line 611
    const/16 v38, 0x0

    .line 612
    .line 613
    const/16 v39, 0x0

    .line 614
    .line 615
    const/16 v41, 0x0

    .line 616
    .line 617
    const/16 v42, 0x0

    .line 618
    .line 619
    const/16 v43, 0x0

    .line 620
    .line 621
    const/16 v44, 0x0

    .line 622
    .line 623
    const/16 v45, 0x0

    .line 624
    .line 625
    const/16 v46, -0x1

    .line 626
    .line 627
    move/from16 v40, v1

    .line 628
    .line 629
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    goto/16 :goto_6

    .line 634
    .line 635
    :cond_b
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateDeletePolicy;

    .line 636
    .line 637
    if-eqz v1, :cond_f

    .line 638
    .line 639
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateDeletePolicy;

    .line 640
    .line 641
    iget-object v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateDeletePolicy;->value:Ljava/lang/String;

    .line 642
    .line 643
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    const v5, -0x7edc9bf5

    .line 648
    .line 649
    .line 650
    if-eq v3, v5, :cond_d

    .line 651
    .line 652
    const v5, 0x46bd26c

    .line 653
    .line 654
    .line 655
    if-eq v3, v5, :cond_c

    .line 656
    .line 657
    const v5, 0x5c1ada11

    .line 658
    .line 659
    .line 660
    if-ne v3, v5, :cond_e

    .line 661
    .line 662
    const-string v3, "MARK_AS_READ"

    .line 663
    .line 664
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    if-eqz v3, :cond_e

    .line 669
    .line 670
    sget-object v1, Lnet/thunderbird/core/android/account/DeletePolicy;->MARK_AS_READ:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 671
    .line 672
    :goto_2
    move-object v12, v1

    .line 673
    goto :goto_3

    .line 674
    :cond_c
    const-string v3, "NEVER"

    .line 675
    .line 676
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-eqz v3, :cond_e

    .line 681
    .line 682
    sget-object v1, Lnet/thunderbird/core/android/account/DeletePolicy;->NEVER:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 683
    .line 684
    goto :goto_2

    .line 685
    :cond_d
    const-string v3, "ON_DELETE"

    .line 686
    .line 687
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    if-eqz v3, :cond_e

    .line 692
    .line 693
    sget-object v1, Lnet/thunderbird/core/android/account/DeletePolicy;->ON_DELETE:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 694
    .line 695
    goto :goto_2

    .line 696
    :goto_3
    const/16 v47, -0x1

    .line 697
    .line 698
    const v48, 0x7fffff

    .line 699
    .line 700
    .line 701
    const/4 v10, 0x0

    .line 702
    const/4 v11, 0x0

    .line 703
    const/4 v13, 0x0

    .line 704
    const/4 v14, 0x0

    .line 705
    const/4 v15, 0x0

    .line 706
    const/16 v16, 0x0

    .line 707
    .line 708
    const/16 v17, 0x0

    .line 709
    .line 710
    const/16 v18, 0x0

    .line 711
    .line 712
    const/16 v19, 0x0

    .line 713
    .line 714
    const/16 v20, 0x0

    .line 715
    .line 716
    const/16 v21, 0x0

    .line 717
    .line 718
    const/16 v22, 0x0

    .line 719
    .line 720
    const/16 v23, 0x0

    .line 721
    .line 722
    const/16 v24, 0x0

    .line 723
    .line 724
    const/16 v25, 0x0

    .line 725
    .line 726
    const/16 v26, 0x0

    .line 727
    .line 728
    const/16 v27, 0x0

    .line 729
    .line 730
    const/16 v28, 0x0

    .line 731
    .line 732
    const/16 v29, 0x0

    .line 733
    .line 734
    const/16 v30, 0x0

    .line 735
    .line 736
    const/16 v31, 0x0

    .line 737
    .line 738
    const/16 v32, 0x0

    .line 739
    .line 740
    const/16 v33, 0x0

    .line 741
    .line 742
    const/16 v34, 0x0

    .line 743
    .line 744
    const/16 v35, 0x0

    .line 745
    .line 746
    const/16 v36, 0x0

    .line 747
    .line 748
    const/16 v37, 0x0

    .line 749
    .line 750
    const/16 v38, 0x0

    .line 751
    .line 752
    const/16 v39, 0x0

    .line 753
    .line 754
    const/16 v40, 0x0

    .line 755
    .line 756
    const/16 v41, 0x0

    .line 757
    .line 758
    const/16 v42, 0x0

    .line 759
    .line 760
    const/16 v43, 0x0

    .line 761
    .line 762
    const/16 v44, 0x0

    .line 763
    .line 764
    const/16 v45, 0x0

    .line 765
    .line 766
    const/16 v46, -0x21

    .line 767
    .line 768
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    goto/16 :goto_6

    .line 773
    .line 774
    :cond_e
    const-string v0, "Invalid delete policy value: "

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-static {v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    return-object v7

    .line 784
    :cond_f
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateExpungePolicy;

    .line 785
    .line 786
    if-eqz v1, :cond_13

    .line 787
    .line 788
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateExpungePolicy;

    .line 789
    .line 790
    iget-object v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateExpungePolicy;->value:Ljava/lang/String;

    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    const v5, 0x2e622efe

    .line 797
    .line 798
    .line 799
    if-eq v3, v5, :cond_11

    .line 800
    .line 801
    const v5, 0x5a39b9d3

    .line 802
    .line 803
    .line 804
    if-eq v3, v5, :cond_10

    .line 805
    .line 806
    const v5, 0x71e3dd94    # 2.256671E30f

    .line 807
    .line 808
    .line 809
    if-ne v3, v5, :cond_12

    .line 810
    .line 811
    const-string v3, "EXPUNGE_ON_POLL"

    .line 812
    .line 813
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    if-eqz v3, :cond_12

    .line 818
    .line 819
    sget-object v1, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_ON_POLL:Lnet/thunderbird/core/android/account/Expunge;

    .line 820
    .line 821
    :goto_4
    move-object/from16 v33, v1

    .line 822
    .line 823
    goto :goto_5

    .line 824
    :cond_10
    const-string v3, "EXPUNGE_IMMEDIATELY"

    .line 825
    .line 826
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    if-eqz v3, :cond_12

    .line 831
    .line 832
    sget-object v1, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_IMMEDIATELY:Lnet/thunderbird/core/android/account/Expunge;

    .line 833
    .line 834
    goto :goto_4

    .line 835
    :cond_11
    const-string v3, "EXPUNGE_MANUALLY"

    .line 836
    .line 837
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v3

    .line 841
    if-eqz v3, :cond_12

    .line 842
    .line 843
    sget-object v1, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_MANUALLY:Lnet/thunderbird/core/android/account/Expunge;

    .line 844
    .line 845
    goto :goto_4

    .line 846
    :goto_5
    const/16 v47, -0x2001

    .line 847
    .line 848
    const v48, 0x7fffff

    .line 849
    .line 850
    .line 851
    const/4 v10, 0x0

    .line 852
    const/4 v11, 0x0

    .line 853
    const/4 v12, 0x0

    .line 854
    const/4 v13, 0x0

    .line 855
    const/4 v14, 0x0

    .line 856
    const/4 v15, 0x0

    .line 857
    const/16 v16, 0x0

    .line 858
    .line 859
    const/16 v17, 0x0

    .line 860
    .line 861
    const/16 v18, 0x0

    .line 862
    .line 863
    const/16 v19, 0x0

    .line 864
    .line 865
    const/16 v20, 0x0

    .line 866
    .line 867
    const/16 v21, 0x0

    .line 868
    .line 869
    const/16 v22, 0x0

    .line 870
    .line 871
    const/16 v23, 0x0

    .line 872
    .line 873
    const/16 v24, 0x0

    .line 874
    .line 875
    const/16 v25, 0x0

    .line 876
    .line 877
    const/16 v26, 0x0

    .line 878
    .line 879
    const/16 v27, 0x0

    .line 880
    .line 881
    const/16 v28, 0x0

    .line 882
    .line 883
    const/16 v29, 0x0

    .line 884
    .line 885
    const/16 v30, 0x0

    .line 886
    .line 887
    const/16 v31, 0x0

    .line 888
    .line 889
    const/16 v32, 0x0

    .line 890
    .line 891
    const/16 v34, 0x0

    .line 892
    .line 893
    const/16 v35, 0x0

    .line 894
    .line 895
    const/16 v36, 0x0

    .line 896
    .line 897
    const/16 v37, 0x0

    .line 898
    .line 899
    const/16 v38, 0x0

    .line 900
    .line 901
    const/16 v39, 0x0

    .line 902
    .line 903
    const/16 v40, 0x0

    .line 904
    .line 905
    const/16 v41, 0x0

    .line 906
    .line 907
    const/16 v42, 0x0

    .line 908
    .line 909
    const/16 v43, 0x0

    .line 910
    .line 911
    const/16 v44, 0x0

    .line 912
    .line 913
    const/16 v45, 0x0

    .line 914
    .line 915
    const/16 v46, -0x1

    .line 916
    .line 917
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    goto/16 :goto_6

    .line 922
    .line 923
    :cond_12
    const-string v0, "Invalid expunge policy value: "

    .line 924
    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-static {v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    return-object v7

    .line 933
    :cond_13
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMaxPushFolders;

    .line 934
    .line 935
    if-eqz v1, :cond_14

    .line 936
    .line 937
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMaxPushFolders;

    .line 938
    .line 939
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateMaxPushFolders;->value:I

    .line 940
    .line 941
    const/16 v47, -0x4001

    .line 942
    .line 943
    const v48, 0x7fffff

    .line 944
    .line 945
    .line 946
    const/4 v10, 0x0

    .line 947
    const/4 v11, 0x0

    .line 948
    const/4 v12, 0x0

    .line 949
    const/4 v13, 0x0

    .line 950
    const/4 v14, 0x0

    .line 951
    const/4 v15, 0x0

    .line 952
    const/16 v16, 0x0

    .line 953
    .line 954
    const/16 v17, 0x0

    .line 955
    .line 956
    const/16 v18, 0x0

    .line 957
    .line 958
    const/16 v19, 0x0

    .line 959
    .line 960
    const/16 v20, 0x0

    .line 961
    .line 962
    const/16 v21, 0x0

    .line 963
    .line 964
    const/16 v22, 0x0

    .line 965
    .line 966
    const/16 v23, 0x0

    .line 967
    .line 968
    const/16 v24, 0x0

    .line 969
    .line 970
    const/16 v25, 0x0

    .line 971
    .line 972
    const/16 v26, 0x0

    .line 973
    .line 974
    const/16 v27, 0x0

    .line 975
    .line 976
    const/16 v28, 0x0

    .line 977
    .line 978
    const/16 v29, 0x0

    .line 979
    .line 980
    const/16 v30, 0x0

    .line 981
    .line 982
    const/16 v31, 0x0

    .line 983
    .line 984
    const/16 v32, 0x0

    .line 985
    .line 986
    const/16 v33, 0x0

    .line 987
    .line 988
    const/16 v35, 0x0

    .line 989
    .line 990
    const/16 v36, 0x0

    .line 991
    .line 992
    const/16 v37, 0x0

    .line 993
    .line 994
    const/16 v38, 0x0

    .line 995
    .line 996
    const/16 v39, 0x0

    .line 997
    .line 998
    const/16 v40, 0x0

    .line 999
    .line 1000
    const/16 v41, 0x0

    .line 1001
    .line 1002
    const/16 v42, 0x0

    .line 1003
    .line 1004
    const/16 v43, 0x0

    .line 1005
    .line 1006
    const/16 v44, 0x0

    .line 1007
    .line 1008
    const/16 v45, 0x0

    .line 1009
    .line 1010
    const/16 v46, -0x1

    .line 1011
    .line 1012
    move/from16 v34, v1

    .line 1013
    .line 1014
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    goto :goto_6

    .line 1019
    :cond_14
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateIdleRefreshMinutes;

    .line 1020
    .line 1021
    if-eqz v1, :cond_16

    .line 1022
    .line 1023
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateIdleRefreshMinutes;

    .line 1024
    .line 1025
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand$UpdateIdleRefreshMinutes;->value:I

    .line 1026
    .line 1027
    const v47, -0x8001

    .line 1028
    .line 1029
    .line 1030
    const v48, 0x7fffff

    .line 1031
    .line 1032
    .line 1033
    const/4 v10, 0x0

    .line 1034
    const/4 v11, 0x0

    .line 1035
    const/4 v12, 0x0

    .line 1036
    const/4 v13, 0x0

    .line 1037
    const/4 v14, 0x0

    .line 1038
    const/4 v15, 0x0

    .line 1039
    const/16 v16, 0x0

    .line 1040
    .line 1041
    const/16 v17, 0x0

    .line 1042
    .line 1043
    const/16 v18, 0x0

    .line 1044
    .line 1045
    const/16 v19, 0x0

    .line 1046
    .line 1047
    const/16 v20, 0x0

    .line 1048
    .line 1049
    const/16 v21, 0x0

    .line 1050
    .line 1051
    const/16 v22, 0x0

    .line 1052
    .line 1053
    const/16 v23, 0x0

    .line 1054
    .line 1055
    const/16 v24, 0x0

    .line 1056
    .line 1057
    const/16 v25, 0x0

    .line 1058
    .line 1059
    const/16 v26, 0x0

    .line 1060
    .line 1061
    const/16 v27, 0x0

    .line 1062
    .line 1063
    const/16 v28, 0x0

    .line 1064
    .line 1065
    const/16 v29, 0x0

    .line 1066
    .line 1067
    const/16 v30, 0x0

    .line 1068
    .line 1069
    const/16 v31, 0x0

    .line 1070
    .line 1071
    const/16 v32, 0x0

    .line 1072
    .line 1073
    const/16 v33, 0x0

    .line 1074
    .line 1075
    const/16 v34, 0x0

    .line 1076
    .line 1077
    const/16 v36, 0x0

    .line 1078
    .line 1079
    const/16 v37, 0x0

    .line 1080
    .line 1081
    const/16 v38, 0x0

    .line 1082
    .line 1083
    const/16 v39, 0x0

    .line 1084
    .line 1085
    const/16 v40, 0x0

    .line 1086
    .line 1087
    const/16 v41, 0x0

    .line 1088
    .line 1089
    const/16 v42, 0x0

    .line 1090
    .line 1091
    const/16 v43, 0x0

    .line 1092
    .line 1093
    const/16 v44, 0x0

    .line 1094
    .line 1095
    const/16 v45, 0x0

    .line 1096
    .line 1097
    const/16 v46, -0x1

    .line 1098
    .line 1099
    move/from16 v35, v1

    .line 1100
    .line 1101
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    :goto_6
    iput-object v7, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;

    .line 1106
    .line 1107
    iput v6, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateFetchingMailSettings$invoke$1;->label:I

    .line 1108
    .line 1109
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 1110
    .line 1111
    .line 1112
    if-ne v4, v8, :cond_15

    .line 1113
    .line 1114
    :goto_7
    return-object v8

    .line 1115
    :cond_15
    :goto_8
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 1116
    .line 1117
    invoke-direct {v0, v4}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 1118
    .line 1119
    .line 1120
    return-object v0

    .line 1121
    :cond_16
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1122
    .line 1123
    .line 1124
    return-object v7
.end method
