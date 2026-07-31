.class public final Lnet/thunderbird/app/common/account/AccountColorPicker;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountColors:Lkotlinx/collections/immutable/ImmutableList;

.field public final repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;Lkotlinx/collections/immutable/ImmutableList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/account/AccountColorPicker;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/account/AccountColorPicker;->accountColors:Lkotlinx/collections/immutable/ImmutableList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final pickColor(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;-><init>(Lnet/thunderbird/app/common/account/AccountColorPicker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v4, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lnet/thunderbird/app/common/account/AccountColorPicker;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 50
    .line 51
    iget-object p1, p1, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->localDataSource:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 52
    .line 53
    iget-object v1, p1, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 54
    .line 55
    iget-object v5, v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 56
    .line 57
    check-cast v5, Lcom/fsck/k9/Preferences;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccountsFlow()Lkotlinx/coroutines/flow/Flow;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v6, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 64
    .line 65
    invoke-direct {v6, v5, v1, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 69
    .line 70
    const/4 v5, 0x4

    .line 71
    invoke-direct {v1, v5, v6, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput v4, v0, Lnet/thunderbird/app/common/account/AccountColorPicker$pickColor$1;->label:I

    .line 79
    .line 80
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 85
    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 90
    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 111
    .line 112
    iget v1, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-nez v5, :cond_4

    .line 123
    .line 124
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_4

    .line 129
    .line 130
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_4
    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 136
    .line 137
    iget v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 138
    .line 139
    add-int/2addr v6, v4

    .line 140
    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 141
    .line 142
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Iterable;

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    instance-of v4, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    instance-of v4, v1, Lkotlin/jvm/internal/markers/KMutableMap$Entry;

    .line 176
    .line 177
    if-eqz v4, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    const-string p0, "kotlin.collections.MutableMap.MutableEntry"

    .line 181
    .line 182
    invoke-static {v1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v2

    .line 186
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 191
    .line 192
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 193
    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v1, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p0, p0, Lnet/thunderbird/app/common/account/AccountColorPicker;->accountColors:Lkotlinx/collections/immutable/ImmutableList;

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_11

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Ljava/lang/Number;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    new-instance v2, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Ljava/lang/Integer;

    .line 238
    .line 239
    if-eqz v1, :cond_9

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    goto :goto_5

    .line 246
    :cond_9
    move v1, v3

    .line 247
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_c

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Ljava/lang/Number;

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    new-instance v4, Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Integer;

    .line 273
    .line 274
    if-eqz v2, :cond_b

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    goto :goto_6

    .line 281
    :cond_b
    move v2, v3

    .line 282
    :goto_6
    if-le v1, v2, :cond_a

    .line 283
    .line 284
    move v1, v2

    .line 285
    goto :goto_5

    .line 286
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_f

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    move-object v5, v4

    .line 306
    check-cast v5, Ljava/lang/Number;

    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    new-instance v6, Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Ljava/lang/Integer;

    .line 322
    .line 323
    if-eqz v5, :cond_e

    .line 324
    .line 325
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    goto :goto_8

    .line 330
    :cond_e
    move v5, v3

    .line 331
    :goto_8
    if-ne v5, v1, :cond_d

    .line 332
    .line 333
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-nez p1, :cond_10

    .line 342
    .line 343
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    check-cast p0, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    goto :goto_9

    .line 361
    :cond_10
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 366
    .line 367
    .line 368
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    check-cast p0, Ljava/lang/Number;

    .line 373
    .line 374
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    :goto_9
    new-instance p1, Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 381
    .line 382
    .line 383
    return-object p1

    .line 384
    :cond_11
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 385
    .line 386
    .line 387
    return-object v2
.end method
