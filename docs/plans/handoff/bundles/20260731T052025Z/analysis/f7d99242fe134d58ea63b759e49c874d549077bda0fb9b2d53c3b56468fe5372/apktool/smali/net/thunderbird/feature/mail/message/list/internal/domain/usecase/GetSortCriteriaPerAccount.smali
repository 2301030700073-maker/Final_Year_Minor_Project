.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final getDefaultSortCriteria:Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;)V
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
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->getDefaultSortCriteria:Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 14
    .line 15
    iput-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 12

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    sget-object v3, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v5, :cond_2

    .line 40
    .line 41
    if-ne v1, v4, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$4:Lkotlin/collections/builders/MapBuilder;

    .line 44
    .line 45
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$3:Lkotlin/collections/builders/MapBuilder;

    .line 46
    .line 47
    iget-object v4, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$2:Lkotlin/collections/builders/MapBuilder;

    .line 48
    .line 49
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$1:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v6

    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 70
    .line 71
    const/16 v1, 0x11

    .line 72
    .line 73
    invoke-direct {p1, p0, v6, v1}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    iput v5, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->label:I

    .line 77
    .line 78
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 79
    .line 80
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v7, :cond_4

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 88
    .line 89
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$1:Ljava/util/List;

    .line 95
    .line 96
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$2:Lkotlin/collections/builders/MapBuilder;

    .line 97
    .line 98
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$3:Lkotlin/collections/builders/MapBuilder;

    .line 99
    .line 100
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->L$4:Lkotlin/collections/builders/MapBuilder;

    .line 101
    .line 102
    iput v4, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount$invoke$1;->label:I

    .line 103
    .line 104
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->getDefaultSortCriteria:Lnet/thunderbird/app/common/feature/mail/message/MailMessageModuleKt$mailMessageModule$1$3$1;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->toSortType(Lnet/thunderbird/core/android/account/SortType;Z)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v4, v4, [Lnet/thunderbird/core/android/account/SortType;

    .line 130
    .line 131
    aput-object v3, v4, v2

    .line 132
    .line 133
    sget-object v8, Lnet/thunderbird/core/android/account/SortType;->SORT_ARRIVAL:Lnet/thunderbird/core/android/account/SortType;

    .line 134
    .line 135
    aput-object v8, v4, v5

    .line 136
    .line 137
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_5

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    move-object v0, v6

    .line 149
    :goto_2
    if-eqz v0, :cond_6

    .line 150
    .line 151
    invoke-static {v0}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v3, v0}, Lkotlinx/atomicfu/AtomicFU;->toSortType(Lnet/thunderbird/core/android/account/SortType;Z)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move-object v0, v6

    .line 161
    :goto_3
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 162
    .line 163
    invoke-direct {v4, p0, v0}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)V

    .line 164
    .line 165
    .line 166
    if-ne v4, v7, :cond_7

    .line 167
    .line 168
    :goto_4
    return-object v7

    .line 169
    :cond_7
    move-object v0, p1

    .line 170
    move-object p0, v1

    .line 171
    move-object p1, v4

    .line 172
    move-object v4, p0

    .line 173
    :goto_5
    invoke-interface {p0, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const/16 p0, 0xa

    .line 177
    .line 178
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    const/16 p1, 0x10

    .line 187
    .line 188
    if-ge p0, p1, :cond_8

    .line 189
    .line 190
    move p0, p1

    .line 191
    :cond_8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 192
    .line 193
    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 211
    .line 212
    iget-object v5, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 213
    .line 214
    iget-object v7, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 215
    .line 216
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 217
    .line 218
    new-instance v8, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 219
    .line 220
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Ljava/lang/Boolean;

    .line 225
    .line 226
    if-eqz v9, :cond_9

    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    goto :goto_7

    .line 233
    :cond_9
    move v9, v2

    .line 234
    :goto_7
    invoke-static {v7, v9}, Lkotlinx/atomicfu/AtomicFU;->toSortType(Lnet/thunderbird/core/android/account/SortType;Z)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    check-cast v10, Ljava/lang/Boolean;

    .line 243
    .line 244
    if-eqz v10, :cond_c

    .line 245
    .line 246
    sget-object v11, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->SecondaryNotRequiredForSortTypes:Ljava/util/LinkedHashSet;

    .line 247
    .line 248
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/Boolean;

    .line 253
    .line 254
    if-eqz v0, :cond_a

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    goto :goto_8

    .line 261
    :cond_a
    move v0, v2

    .line 262
    :goto_8
    invoke-static {v7, v0}, Lkotlinx/atomicfu/AtomicFU;->toSortType(Lnet/thunderbird/core/android/account/SortType;Z)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_b

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_b
    move-object v10, v6

    .line 274
    :goto_9
    if-eqz v10, :cond_c

    .line 275
    .line 276
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-static {v3, v0}, Lkotlinx/atomicfu/AtomicFU;->toSortType(Lnet/thunderbird/core/android/account/SortType;Z)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    goto :goto_a

    .line 285
    :cond_c
    move-object v0, v6

    .line 286
    :goto_a
    invoke-direct {v8, v9, v0}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)V

    .line 287
    .line 288
    .line 289
    invoke-interface {p1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_d
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    return-object p0
.end method
