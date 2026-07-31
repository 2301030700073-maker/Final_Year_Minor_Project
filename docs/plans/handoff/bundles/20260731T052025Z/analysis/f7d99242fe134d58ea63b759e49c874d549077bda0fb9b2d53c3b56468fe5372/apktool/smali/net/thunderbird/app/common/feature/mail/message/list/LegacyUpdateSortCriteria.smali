.class public final Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 14
    .line 15
    iput-object v0, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final updateAccountSortCriteria(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 55

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;

    .line 15
    .line 16
    iget v5, v4, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v6, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v4, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;

    .line 30
    .line 31
    invoke-direct {v4, v1, v3}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;-><init>(Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v3, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    iget v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->label:I

    .line 38
    .line 39
    const-string v5, "LegacyUpdateSortCriteria"

    .line 40
    .line 41
    iget-object v7, v1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 42
    .line 43
    iget-object v8, v1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x2

    .line 47
    const/4 v11, 0x0

    .line 48
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    if-eq v4, v9, :cond_2

    .line 53
    .line 54
    if-ne v4, v10, :cond_1

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    return-object v0

    .line 68
    :cond_2
    iget-boolean v0, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->Z$0:Z

    .line 69
    .line 70
    iget-object v2, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$5:Lkotlin/Pair;

    .line 71
    .line 72
    iget-object v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$4:Lnet/thunderbird/core/android/account/SortType;

    .line 73
    .line 74
    iget-object v13, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object/from16 v54, v13

    .line 80
    .line 81
    move v13, v0

    .line 82
    move-object v0, v3

    .line 83
    move-object/from16 v3, v54

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/4 v4, 0x5

    .line 92
    invoke-direct {v3, v4, v0, v2}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v5, v11, v3, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 99
    .line 100
    iget-object v2, v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 101
    .line 102
    invoke-static {v3}, Lkotlinx/atomicfu/AtomicFU;->toDomainSortType(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v4, Lnet/thunderbird/core/android/account/SortType;

    .line 109
    .line 110
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->toDomainSortType(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object v2, v11

    .line 126
    :goto_2
    new-instance v13, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 127
    .line 128
    const/16 v14, 0xd

    .line 129
    .line 130
    invoke-direct {v13, v1, v0, v11, v14}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 134
    .line 135
    iput-object v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$4:Lnet/thunderbird/core/android/account/SortType;

    .line 136
    .line 137
    iput-object v2, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$5:Lkotlin/Pair;

    .line 138
    .line 139
    iput-boolean v3, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->Z$0:Z

    .line 140
    .line 141
    iput v9, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->label:I

    .line 142
    .line 143
    invoke-static {v8, v13, v6}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    if-ne v13, v12, :cond_5

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_5
    move/from16 v54, v3

    .line 152
    .line 153
    move-object v3, v0

    .line 154
    move-object v0, v13

    .line 155
    move/from16 v13, v54

    .line 156
    .line 157
    :goto_3
    move-object v14, v0

    .line 158
    check-cast v14, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 159
    .line 160
    if-nez v14, :cond_6

    .line 161
    .line 162
    new-instance v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    const/4 v1, 0x3

    .line 165
    invoke-direct {v0, v3, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 166
    .line 167
    .line 168
    invoke-static {v7, v5, v11, v0, v10}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Error$AccountNotFound;

    .line 172
    .line 173
    invoke-direct {v0, v3}, Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Error$AccountNotFound;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 177
    .line 178
    invoke-direct {v1, v0, v11}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_6
    iget-object v0, v14, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 183
    .line 184
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    invoke-interface {v0, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    new-instance v15, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$$ExternalSyntheticLambda2;

    .line 196
    .line 197
    const/4 v9, 0x0

    .line 198
    invoke-direct {v15, v4, v9}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/android/account/SortType;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v7, v5, v11, v15, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 202
    .line 203
    .line 204
    if-eqz v2, :cond_7

    .line 205
    .line 206
    iget-object v9, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v9, Lnet/thunderbird/core/android/account/SortType;

    .line 209
    .line 210
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance v15, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$$ExternalSyntheticLambda2;

    .line 218
    .line 219
    const/4 v1, 0x1

    .line 220
    invoke-direct {v15, v9, v1}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/android/account/SortType;I)V

    .line 221
    .line 222
    .line 223
    invoke-static {v7, v5, v11, v15, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    :cond_7
    const/16 v52, -0x601

    .line 230
    .line 231
    const v53, 0x7fffff

    .line 232
    .line 233
    .line 234
    const/4 v15, 0x0

    .line 235
    const/16 v16, 0x0

    .line 236
    .line 237
    const/16 v17, 0x0

    .line 238
    .line 239
    const/16 v18, 0x0

    .line 240
    .line 241
    const/16 v19, 0x0

    .line 242
    .line 243
    const/16 v20, 0x0

    .line 244
    .line 245
    const/16 v21, 0x0

    .line 246
    .line 247
    const/16 v22, 0x0

    .line 248
    .line 249
    const/16 v23, 0x0

    .line 250
    .line 251
    const/16 v24, 0x0

    .line 252
    .line 253
    const/16 v25, 0x0

    .line 254
    .line 255
    const/16 v26, 0x0

    .line 256
    .line 257
    const/16 v27, 0x0

    .line 258
    .line 259
    const/16 v28, 0x0

    .line 260
    .line 261
    const/16 v29, 0x0

    .line 262
    .line 263
    const/16 v30, 0x0

    .line 264
    .line 265
    const/16 v31, 0x0

    .line 266
    .line 267
    const/16 v32, 0x0

    .line 268
    .line 269
    const/16 v33, 0x0

    .line 270
    .line 271
    const/16 v36, 0x0

    .line 272
    .line 273
    const/16 v37, 0x0

    .line 274
    .line 275
    const/16 v38, 0x0

    .line 276
    .line 277
    const/16 v39, 0x0

    .line 278
    .line 279
    const/16 v40, 0x0

    .line 280
    .line 281
    const/16 v41, 0x0

    .line 282
    .line 283
    const/16 v42, 0x0

    .line 284
    .line 285
    const/16 v43, 0x0

    .line 286
    .line 287
    const/16 v44, 0x0

    .line 288
    .line 289
    const/16 v45, 0x0

    .line 290
    .line 291
    const/16 v46, 0x0

    .line 292
    .line 293
    const/16 v47, 0x0

    .line 294
    .line 295
    const/16 v48, 0x0

    .line 296
    .line 297
    const/16 v49, 0x0

    .line 298
    .line 299
    const/16 v50, 0x0

    .line 300
    .line 301
    const/16 v51, -0x1

    .line 302
    .line 303
    move-object/from16 v35, v0

    .line 304
    .line 305
    move-object/from16 v34, v4

    .line 306
    .line 307
    invoke-static/range {v14 .. v53}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    new-instance v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 312
    .line 313
    const/16 v5, 0x8

    .line 314
    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move-object v4, v11

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 319
    .line 320
    .line 321
    iput-object v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 322
    .line 323
    iput-object v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$4:Lnet/thunderbird/core/android/account/SortType;

    .line 324
    .line 325
    iput-object v4, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->L$5:Lkotlin/Pair;

    .line 326
    .line 327
    iput-boolean v13, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->Z$0:Z

    .line 328
    .line 329
    iput v10, v6, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateAccountSortCriteria$1;->label:I

    .line 330
    .line 331
    invoke-static {v8, v0, v6}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-ne v0, v12, :cond_8

    .line 336
    .line 337
    :goto_4
    return-object v12

    .line 338
    :cond_8
    :goto_5
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 339
    .line 340
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Success;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Success;

    .line 341
    .line 342
    invoke-direct {v0, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    return-object v0
.end method

.method public final updateUnifiedAccountSortCriteria(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;-><init>(Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 49
    .line 50
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->toDomainSortType(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object v1, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lnet/thunderbird/core/android/account/SortType;

    .line 59
    .line 60
    iget-object p2, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {v1}, Lcom/fsck/k9/K9;->setSortType(Lnet/thunderbird/core/android/account/SortType;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p2}, Lcom/fsck/k9/K9;->setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->toDomainSortType(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p2, Lnet/thunderbird/core/android/account/SortType;

    .line 83
    .line 84
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p2, p1}, Lcom/fsck/k9/K9;->setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    new-instance p1, Lcom/fsck/k9/Core$restoreNotifications$1;

    .line 96
    .line 97
    const/4 p2, 0x2

    .line 98
    const/4 v1, 0x5

    .line 99
    invoke-direct {p1, p2, v3, v1}, Lcom/fsck/k9/Core$restoreNotifications$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 100
    .line 101
    .line 102
    iput v2, v0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1;->label:I

    .line 103
    .line 104
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 105
    .line 106
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 111
    .line 112
    if-ne p0, p1, :cond_4

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_4
    :goto_1
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 116
    .line 117
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Success;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/UpdateSortCriteriaOutcome$Success;

    .line 118
    .line 119
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method
