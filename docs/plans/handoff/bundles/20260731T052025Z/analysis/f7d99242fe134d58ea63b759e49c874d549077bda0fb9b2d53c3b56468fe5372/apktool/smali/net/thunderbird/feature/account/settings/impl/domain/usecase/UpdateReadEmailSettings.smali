.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;
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
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

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
    iput v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x3

    .line 36
    const/4 v7, 0x1

    .line 37
    const/4 v8, 0x2

    .line 38
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    iget-object v0, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    if-eq v3, v7, :cond_3

    .line 48
    .line 49
    if-eq v3, v8, :cond_2

    .line 50
    .line 51
    if-eq v3, v6, :cond_2

    .line 52
    .line 53
    if-eq v3, v5, :cond_2

    .line 54
    .line 55
    if-ne v3, v4, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v10

    .line 64
    :cond_2
    :goto_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_3
    iget-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 70
    .line 71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 82
    .line 83
    move-object/from16 v3, p1

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    iput-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 92
    .line 93
    iput v7, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 94
    .line 95
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-ne v1, v11, :cond_5

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    :goto_2
    move-object v12, v1

    .line 104
    check-cast v12, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 105
    .line 106
    if-eqz v12, :cond_f

    .line 107
    .line 108
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateIsMarkMessageAsReadOnView;

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateIsMarkMessageAsReadOnView;

    .line 113
    .line 114
    iget-boolean v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateIsMarkMessageAsReadOnView;->value:Z

    .line 115
    .line 116
    const/16 v50, -0x1

    .line 117
    .line 118
    const v51, 0x7fffef

    .line 119
    .line 120
    .line 121
    const/4 v13, 0x0

    .line 122
    const/4 v14, 0x0

    .line 123
    const/4 v15, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    const/16 v17, 0x0

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    const/16 v19, 0x0

    .line 131
    .line 132
    const/16 v20, 0x0

    .line 133
    .line 134
    const/16 v21, 0x0

    .line 135
    .line 136
    const/16 v22, 0x0

    .line 137
    .line 138
    const/16 v23, 0x0

    .line 139
    .line 140
    const/16 v24, 0x0

    .line 141
    .line 142
    const/16 v25, 0x0

    .line 143
    .line 144
    const/16 v26, 0x0

    .line 145
    .line 146
    const/16 v27, 0x0

    .line 147
    .line 148
    const/16 v28, 0x0

    .line 149
    .line 150
    const/16 v29, 0x0

    .line 151
    .line 152
    const/16 v30, 0x0

    .line 153
    .line 154
    const/16 v31, 0x0

    .line 155
    .line 156
    const/16 v32, 0x0

    .line 157
    .line 158
    const/16 v33, 0x0

    .line 159
    .line 160
    const/16 v34, 0x0

    .line 161
    .line 162
    const/16 v35, 0x0

    .line 163
    .line 164
    const/16 v36, 0x0

    .line 165
    .line 166
    const/16 v37, 0x0

    .line 167
    .line 168
    const/16 v38, 0x0

    .line 169
    .line 170
    const/16 v39, 0x0

    .line 171
    .line 172
    const/16 v40, 0x0

    .line 173
    .line 174
    const/16 v41, 0x0

    .line 175
    .line 176
    const/16 v43, 0x0

    .line 177
    .line 178
    const/16 v44, 0x0

    .line 179
    .line 180
    const/16 v45, 0x0

    .line 181
    .line 182
    const/16 v46, 0x0

    .line 183
    .line 184
    const/16 v47, 0x0

    .line 185
    .line 186
    const/16 v48, 0x0

    .line 187
    .line 188
    const/16 v49, -0x1

    .line 189
    .line 190
    move/from16 v42, v1

    .line 191
    .line 192
    invoke-static/range {v12 .. v51}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iput-object v10, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 197
    .line 198
    iput v8, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 201
    .line 202
    .line 203
    if-ne v9, v11, :cond_d

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_6
    instance-of v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateShowPictures;

    .line 208
    .line 209
    if-eqz v1, :cond_e

    .line 210
    .line 211
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateShowPictures;

    .line 212
    .line 213
    iget-object v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateShowPictures;->value:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const v7, 0x46bd26c

    .line 220
    .line 221
    .line 222
    if-eq v3, v7, :cond_b

    .line 223
    .line 224
    const v6, 0x70477df5

    .line 225
    .line 226
    .line 227
    if-eq v3, v6, :cond_9

    .line 228
    .line 229
    const v4, 0x7342860f

    .line 230
    .line 231
    .line 232
    if-eq v3, v4, :cond_7

    .line 233
    .line 234
    goto/16 :goto_4

    .line 235
    .line 236
    :cond_7
    const-string v3, "ALWAYS"

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_8

    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_8
    const/16 v50, -0x801

    .line 247
    .line 248
    const v51, 0x7fffff

    .line 249
    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v14, 0x0

    .line 253
    const/4 v15, 0x0

    .line 254
    const/16 v16, 0x0

    .line 255
    .line 256
    const/16 v17, 0x0

    .line 257
    .line 258
    const/16 v18, 0x0

    .line 259
    .line 260
    const/16 v19, 0x0

    .line 261
    .line 262
    const/16 v20, 0x0

    .line 263
    .line 264
    const/16 v21, 0x0

    .line 265
    .line 266
    const/16 v22, 0x0

    .line 267
    .line 268
    const/16 v23, 0x0

    .line 269
    .line 270
    const/16 v24, 0x0

    .line 271
    .line 272
    const/16 v25, 0x0

    .line 273
    .line 274
    const/16 v26, 0x0

    .line 275
    .line 276
    const/16 v27, 0x0

    .line 277
    .line 278
    const/16 v28, 0x0

    .line 279
    .line 280
    const/16 v29, 0x0

    .line 281
    .line 282
    const/16 v30, 0x0

    .line 283
    .line 284
    const/16 v31, 0x0

    .line 285
    .line 286
    const/16 v32, 0x0

    .line 287
    .line 288
    const/16 v33, 0x0

    .line 289
    .line 290
    sget-object v34, Lnet/thunderbird/core/android/account/ShowPictures;->ALWAYS:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 291
    .line 292
    const/16 v35, 0x0

    .line 293
    .line 294
    const/16 v36, 0x0

    .line 295
    .line 296
    const/16 v37, 0x0

    .line 297
    .line 298
    const/16 v38, 0x0

    .line 299
    .line 300
    const/16 v39, 0x0

    .line 301
    .line 302
    const/16 v40, 0x0

    .line 303
    .line 304
    const/16 v41, 0x0

    .line 305
    .line 306
    const/16 v42, 0x0

    .line 307
    .line 308
    const/16 v43, 0x0

    .line 309
    .line 310
    const/16 v44, 0x0

    .line 311
    .line 312
    const/16 v45, 0x0

    .line 313
    .line 314
    const/16 v46, 0x0

    .line 315
    .line 316
    const/16 v47, 0x0

    .line 317
    .line 318
    const/16 v48, 0x0

    .line 319
    .line 320
    const/16 v49, -0x1

    .line 321
    .line 322
    invoke-static/range {v12 .. v51}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iput-object v10, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 327
    .line 328
    iput v5, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 331
    .line 332
    .line 333
    if-ne v9, v11, :cond_d

    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :cond_9
    const-string v3, "ONLY_FROM_CONTACTS"

    .line 338
    .line 339
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-nez v1, :cond_a

    .line 344
    .line 345
    goto/16 :goto_4

    .line 346
    .line 347
    :cond_a
    const/16 v50, -0x801

    .line 348
    .line 349
    const v51, 0x7fffff

    .line 350
    .line 351
    .line 352
    const/4 v13, 0x0

    .line 353
    const/4 v14, 0x0

    .line 354
    const/4 v15, 0x0

    .line 355
    const/16 v16, 0x0

    .line 356
    .line 357
    const/16 v17, 0x0

    .line 358
    .line 359
    const/16 v18, 0x0

    .line 360
    .line 361
    const/16 v19, 0x0

    .line 362
    .line 363
    const/16 v20, 0x0

    .line 364
    .line 365
    const/16 v21, 0x0

    .line 366
    .line 367
    const/16 v22, 0x0

    .line 368
    .line 369
    const/16 v23, 0x0

    .line 370
    .line 371
    const/16 v24, 0x0

    .line 372
    .line 373
    const/16 v25, 0x0

    .line 374
    .line 375
    const/16 v26, 0x0

    .line 376
    .line 377
    const/16 v27, 0x0

    .line 378
    .line 379
    const/16 v28, 0x0

    .line 380
    .line 381
    const/16 v29, 0x0

    .line 382
    .line 383
    const/16 v30, 0x0

    .line 384
    .line 385
    const/16 v31, 0x0

    .line 386
    .line 387
    const/16 v32, 0x0

    .line 388
    .line 389
    const/16 v33, 0x0

    .line 390
    .line 391
    sget-object v34, Lnet/thunderbird/core/android/account/ShowPictures;->ONLY_FROM_CONTACTS:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 392
    .line 393
    const/16 v35, 0x0

    .line 394
    .line 395
    const/16 v36, 0x0

    .line 396
    .line 397
    const/16 v37, 0x0

    .line 398
    .line 399
    const/16 v38, 0x0

    .line 400
    .line 401
    const/16 v39, 0x0

    .line 402
    .line 403
    const/16 v40, 0x0

    .line 404
    .line 405
    const/16 v41, 0x0

    .line 406
    .line 407
    const/16 v42, 0x0

    .line 408
    .line 409
    const/16 v43, 0x0

    .line 410
    .line 411
    const/16 v44, 0x0

    .line 412
    .line 413
    const/16 v45, 0x0

    .line 414
    .line 415
    const/16 v46, 0x0

    .line 416
    .line 417
    const/16 v47, 0x0

    .line 418
    .line 419
    const/16 v48, 0x0

    .line 420
    .line 421
    const/16 v49, -0x1

    .line 422
    .line 423
    invoke-static/range {v12 .. v51}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    iput-object v10, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 428
    .line 429
    iput v4, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 432
    .line 433
    .line 434
    if-ne v9, v11, :cond_d

    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_b
    const-string v3, "NEVER"

    .line 438
    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-nez v1, :cond_c

    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_c
    const/16 v50, -0x801

    .line 447
    .line 448
    const v51, 0x7fffff

    .line 449
    .line 450
    .line 451
    const/4 v13, 0x0

    .line 452
    const/4 v14, 0x0

    .line 453
    const/4 v15, 0x0

    .line 454
    const/16 v16, 0x0

    .line 455
    .line 456
    const/16 v17, 0x0

    .line 457
    .line 458
    const/16 v18, 0x0

    .line 459
    .line 460
    const/16 v19, 0x0

    .line 461
    .line 462
    const/16 v20, 0x0

    .line 463
    .line 464
    const/16 v21, 0x0

    .line 465
    .line 466
    const/16 v22, 0x0

    .line 467
    .line 468
    const/16 v23, 0x0

    .line 469
    .line 470
    const/16 v24, 0x0

    .line 471
    .line 472
    const/16 v25, 0x0

    .line 473
    .line 474
    const/16 v26, 0x0

    .line 475
    .line 476
    const/16 v27, 0x0

    .line 477
    .line 478
    const/16 v28, 0x0

    .line 479
    .line 480
    const/16 v29, 0x0

    .line 481
    .line 482
    const/16 v30, 0x0

    .line 483
    .line 484
    const/16 v31, 0x0

    .line 485
    .line 486
    const/16 v32, 0x0

    .line 487
    .line 488
    const/16 v33, 0x0

    .line 489
    .line 490
    sget-object v34, Lnet/thunderbird/core/android/account/ShowPictures;->NEVER:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 491
    .line 492
    const/16 v35, 0x0

    .line 493
    .line 494
    const/16 v36, 0x0

    .line 495
    .line 496
    const/16 v37, 0x0

    .line 497
    .line 498
    const/16 v38, 0x0

    .line 499
    .line 500
    const/16 v39, 0x0

    .line 501
    .line 502
    const/16 v40, 0x0

    .line 503
    .line 504
    const/16 v41, 0x0

    .line 505
    .line 506
    const/16 v42, 0x0

    .line 507
    .line 508
    const/16 v43, 0x0

    .line 509
    .line 510
    const/16 v44, 0x0

    .line 511
    .line 512
    const/16 v45, 0x0

    .line 513
    .line 514
    const/16 v46, 0x0

    .line 515
    .line 516
    const/16 v47, 0x0

    .line 517
    .line 518
    const/16 v48, 0x0

    .line 519
    .line 520
    const/16 v49, -0x1

    .line 521
    .line 522
    invoke-static/range {v12 .. v51}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    iput-object v10, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;

    .line 527
    .line 528
    iput v6, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings$invoke$1;->label:I

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 531
    .line 532
    .line 533
    if-ne v9, v11, :cond_d

    .line 534
    .line 535
    :goto_3
    return-object v11

    .line 536
    :cond_d
    :goto_4
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 537
    .line 538
    invoke-direct {v0, v9}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    return-object v0

    .line 542
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 543
    .line 544
    .line 545
    return-object v10

    .line 546
    :cond_f
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 547
    .line 548
    const-string v1, "Account not found"

    .line 549
    .line 550
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 554
    .line 555
    invoke-direct {v1, v0, v10}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    return-object v1
.end method
