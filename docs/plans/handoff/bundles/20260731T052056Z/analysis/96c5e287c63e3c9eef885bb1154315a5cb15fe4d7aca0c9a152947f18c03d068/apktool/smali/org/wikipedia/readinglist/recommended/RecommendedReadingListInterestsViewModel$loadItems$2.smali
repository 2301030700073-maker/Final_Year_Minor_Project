.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/util/List;

.field public L$1:Ljava/util/List;

.field public L$2:Ljava/lang/Object;

.field public L$4:Ljava/util/Iterator;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->label:I

    .line 10
    .line 11
    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 12
    .line 13
    const/16 v5, 0xa

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x3

    .line 17
    const/4 v8, 0x2

    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    if-eq v4, v9, :cond_3

    .line 24
    .line 25
    if-eq v4, v8, :cond_2

    .line 26
    .line 27
    if-eq v4, v7, :cond_1

    .line 28
    .line 29
    if-ne v4, v6, :cond_0

    .line 30
    .line 31
    iget v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$2:I

    .line 32
    .line 33
    iget v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$1:I

    .line 34
    .line 35
    iget v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 36
    .line 37
    iget-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$4:Ljava/util/Iterator;

    .line 38
    .line 39
    iget-object v11, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v11, Ljava/util/Map;

    .line 42
    .line 43
    iget-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 44
    .line 45
    iget-object v14, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v6, p1

    .line 51
    .line 52
    move v15, v9

    .line 53
    goto/16 :goto_f

    .line 54
    .line 55
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v12

    .line 61
    :cond_1
    iget v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$1:I

    .line 62
    .line 63
    iget v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 64
    .line 65
    iget-object v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 66
    .line 67
    iget-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move v6, v4

    .line 73
    move-object/from16 v4, p1

    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_2
    iget v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 78
    .line 79
    iget-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$2:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v8, Ljava/util/List;

    .line 82
    .line 83
    iget-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 84
    .line 85
    iget-object v14, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object/from16 v7, p1

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_3
    iget v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 95
    .line 96
    iget-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 97
    .line 98
    iget-object v14, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object v15, v14

    .line 104
    move-object/from16 v14, p1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v4, Lorg/wikipedia/util/Resource$Loading;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v12, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v4, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-object v13, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 127
    .line 128
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListInterests()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    const/16 v15, 0x14

    .line 140
    .line 141
    if-ge v14, v15, :cond_c

    .line 142
    .line 143
    sget-object v14, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 144
    .line 145
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    invoke-virtual {v14}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    iput-object v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 154
    .line 155
    iput-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 156
    .line 157
    iput v15, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 158
    .line 159
    iput v9, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->label:I

    .line 160
    .line 161
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v14, v15, v11, v12, v0}, Lorg/wikipedia/dataclient/Service$-CC;->findEntryForReadMore$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;IILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    if-ne v14, v3, :cond_5

    .line 169
    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_5
    move/from16 v23, v15

    .line 173
    .line 174
    move-object v15, v4

    .line 175
    move/from16 v4, v23

    .line 176
    .line 177
    :goto_0
    check-cast v14, Ljava/lang/Iterable;

    .line 178
    .line 179
    new-instance v6, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-static {v14, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eqz v14, :cond_6

    .line 197
    .line 198
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    check-cast v14, Lorg/wikipedia/history/HistoryEntry;

    .line 203
    .line 204
    invoke-virtual {v14}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 213
    .line 214
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    iput-object v15, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 223
    .line 224
    iput-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 225
    .line 226
    iput-object v6, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$2:Ljava/lang/Object;

    .line 227
    .line 228
    iput v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 229
    .line 230
    iput v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->label:I

    .line 231
    .line 232
    iget-object v8, v7, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 233
    .line 234
    new-instance v14, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    const/4 v12, 0x7

    .line 237
    invoke-direct {v14, v4, v12, v7}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v8, v9, v11, v14, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-ne v7, v3, :cond_7

    .line 245
    .line 246
    goto/16 :goto_e

    .line 247
    .line 248
    :cond_7
    move-object v8, v6

    .line 249
    move-object v14, v15

    .line 250
    :goto_2
    check-cast v7, Ljava/lang/Iterable;

    .line 251
    .line 252
    new-instance v6, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_8

    .line 270
    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v12, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 281
    .line 282
    iget-object v15, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iput-object v15, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v17, Lorg/wikipedia/page/PageTitle;

    .line 293
    .line 294
    iget-object v15, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v11, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v9, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v7, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 301
    .line 302
    move-object/from16 v22, v7

    .line 303
    .line 304
    move-object/from16 v21, v9

    .line 305
    .line 306
    move-object/from16 v20, v11

    .line 307
    .line 308
    move-object/from16 v19, v12

    .line 309
    .line 310
    move-object/from16 v18, v15

    .line 311
    .line 312
    invoke-direct/range {v17 .. v22}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v7, v17

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const/4 v9, 0x1

    .line 321
    const/4 v11, 0x0

    .line 322
    goto :goto_3

    .line 323
    :cond_8
    const/4 v5, 0x0

    .line 324
    :goto_4
    if-ge v5, v4, :cond_b

    .line 325
    .line 326
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-ge v5, v7, :cond_9

    .line 331
    .line 332
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-nez v7, :cond_9

    .line 341
    .line 342
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-ge v5, v7, :cond_a

    .line 354
    .line 355
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    if-nez v7, :cond_a

    .line 364
    .line 365
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_b
    new-instance v5, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 376
    .line 377
    const/16 v6, 0xf

    .line 378
    .line 379
    invoke-direct {v5, v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 380
    .line 381
    .line 382
    invoke-static {v14, v5}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 383
    .line 384
    .line 385
    move v5, v4

    .line 386
    move-object v8, v14

    .line 387
    :goto_5
    move-object v7, v13

    .line 388
    goto :goto_6

    .line 389
    :cond_c
    move-object v8, v4

    .line 390
    move v5, v15

    .line 391
    goto :goto_5

    .line 392
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    const/4 v6, 0x6

    .line 397
    if-ge v4, v6, :cond_f

    .line 398
    .line 399
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 400
    .line 401
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    rsub-int/lit8 v9, v9, 0x6

    .line 414
    .line 415
    iput-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 416
    .line 417
    iput-object v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    iput-object v11, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$2:Ljava/lang/Object;

    .line 421
    .line 422
    iput v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 423
    .line 424
    iput v6, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$1:I

    .line 425
    .line 426
    const/4 v11, 0x3

    .line 427
    iput v11, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->label:I

    .line 428
    .line 429
    sget-object v11, Lorg/wikipedia/feed/random/RandomClient;->INSTANCE:Lorg/wikipedia/feed/random/RandomClient;

    .line 430
    .line 431
    invoke-virtual {v11, v4, v9, v0}, Lorg/wikipedia/feed/random/RandomClient;->getRandomPages(Lorg/wikipedia/dataclient/WikiSite;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    if-ne v4, v3, :cond_d

    .line 436
    .line 437
    goto/16 :goto_e

    .line 438
    .line 439
    :cond_d
    :goto_7
    check-cast v4, Ljava/lang/Iterable;

    .line 440
    .line 441
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    if-eqz v9, :cond_f

    .line 450
    .line 451
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 456
    .line 457
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    if-nez v11, :cond_e

    .line 462
    .line 463
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v11

    .line 480
    if-eqz v11, :cond_13

    .line 481
    .line 482
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    move-object v12, v11

    .line 487
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 488
    .line 489
    iget-object v13, v12, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 490
    .line 491
    if-eqz v13, :cond_12

    .line 492
    .line 493
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 494
    .line 495
    .line 496
    move-result v13

    .line 497
    if-nez v13, :cond_11

    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_11
    iget-object v12, v12, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 501
    .line 502
    if-eqz v12, :cond_12

    .line 503
    .line 504
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 505
    .line 506
    .line 507
    move-result v12

    .line 508
    if-nez v12, :cond_10

    .line 509
    .line 510
    :cond_12
    :goto_a
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_13
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 515
    .line 516
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v11

    .line 527
    if-eqz v11, :cond_15

    .line 528
    .line 529
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    move-object v12, v11

    .line 534
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 535
    .line 536
    iget-object v12, v12, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 537
    .line 538
    invoke-virtual {v9, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    if-nez v13, :cond_14

    .line 543
    .line 544
    new-instance v13, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    :cond_14
    check-cast v13, Ljava/util/List;

    .line 553
    .line 554
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    goto :goto_b

    .line 558
    :cond_15
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Ljava/lang/Iterable;

    .line 563
    .line 564
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    move-object v13, v7

    .line 569
    move-object v14, v8

    .line 570
    move-object v11, v9

    .line 571
    move-object v8, v4

    .line 572
    move v7, v5

    .line 573
    move v5, v6

    .line 574
    const/4 v4, 0x0

    .line 575
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    if-eqz v6, :cond_1e

    .line 580
    .line 581
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    check-cast v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 586
    .line 587
    sget-object v9, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 588
    .line 589
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 590
    .line 591
    .line 592
    move-result-object v9

    .line 593
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    move-object/from16 v17, v6

    .line 598
    .line 599
    check-cast v17, Ljava/util/List;

    .line 600
    .line 601
    if-eqz v17, :cond_16

    .line 602
    .line 603
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 604
    .line 605
    const/16 v12, 0x10

    .line 606
    .line 607
    invoke-direct {v6, v12}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 608
    .line 609
    .line 610
    const/16 v22, 0x1e

    .line 611
    .line 612
    const-string/jumbo v18, "|"

    .line 613
    .line 614
    .line 615
    const/16 v19, 0x0

    .line 616
    .line 617
    const/16 v20, 0x0

    .line 618
    .line 619
    move-object/from16 v21, v6

    .line 620
    .line 621
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    goto :goto_d

    .line 626
    :cond_16
    const/4 v6, 0x0

    .line 627
    :goto_d
    iput-object v14, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$0:Ljava/util/List;

    .line 628
    .line 629
    iput-object v13, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$1:Ljava/util/List;

    .line 630
    .line 631
    iput-object v11, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$2:Ljava/lang/Object;

    .line 632
    .line 633
    iput-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->L$4:Ljava/util/Iterator;

    .line 634
    .line 635
    iput v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$0:I

    .line 636
    .line 637
    iput v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$1:I

    .line 638
    .line 639
    iput v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->I$2:I

    .line 640
    .line 641
    const/4 v12, 0x4

    .line 642
    iput v12, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;->label:I

    .line 643
    .line 644
    const/4 v12, 0x0

    .line 645
    const/4 v15, 0x1

    .line 646
    invoke-static {v9, v12, v6, v0, v15}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    if-ne v6, v3, :cond_17

    .line 651
    .line 652
    :goto_e
    return-object v3

    .line 653
    :cond_17
    :goto_f
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 654
    .line 655
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 656
    .line 657
    if-eqz v6, :cond_18

    .line 658
    .line 659
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 660
    .line 661
    goto :goto_10

    .line 662
    :cond_18
    const/4 v6, 0x0

    .line 663
    :goto_10
    if-nez v6, :cond_19

    .line 664
    .line 665
    move-object v6, v10

    .line 666
    :cond_19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 667
    .line 668
    .line 669
    move-result-object v6

    .line 670
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 671
    .line 672
    .line 673
    move-result v9

    .line 674
    if-eqz v9, :cond_1d

    .line 675
    .line 676
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v9

    .line 680
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 681
    .line 682
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v12

    .line 686
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v16

    .line 690
    if-eqz v16, :cond_1b

    .line 691
    .line 692
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v16

    .line 696
    move-object/from16 v17, v16

    .line 697
    .line 698
    check-cast v17, Lorg/wikipedia/page/PageTitle;

    .line 699
    .line 700
    invoke-virtual/range {v17 .. v17}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v15

    .line 704
    sget-object v17, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 705
    .line 706
    iget-object v0, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 707
    .line 708
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_1a

    .line 717
    .line 718
    goto :goto_13

    .line 719
    :cond_1a
    const/4 v15, 0x1

    .line 720
    move-object/from16 v0, p0

    .line 721
    .line 722
    goto :goto_12

    .line 723
    :cond_1b
    const/16 v16, 0x0

    .line 724
    .line 725
    :goto_13
    move-object/from16 v0, v16

    .line 726
    .line 727
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 728
    .line 729
    if-eqz v0, :cond_1c

    .line 730
    .line 731
    iget-object v12, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 732
    .line 733
    iput-object v12, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    iput-object v9, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 740
    .line 741
    :cond_1c
    const/4 v15, 0x1

    .line 742
    move-object/from16 v0, p0

    .line 743
    .line 744
    goto :goto_11

    .line 745
    :cond_1d
    move-object/from16 v0, p0

    .line 746
    .line 747
    goto/16 :goto_c

    .line 748
    .line 749
    :cond_1e
    iget-boolean v6, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->fromSettings:Z

    .line 750
    .line 751
    new-instance v0, Ljava/util/HashSet;

    .line 752
    .line 753
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 754
    .line 755
    .line 756
    new-instance v7, Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    :cond_1f
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-eqz v3, :cond_20

    .line 770
    .line 771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v3

    .line 775
    move-object v4, v3

    .line 776
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 777
    .line 778
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    if-eqz v4, :cond_1f

    .line 787
    .line 788
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    goto :goto_14

    .line 792
    :cond_20
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 793
    .line 794
    .line 795
    move-result-object v8

    .line 796
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 797
    .line 798
    sget-object v11, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 799
    .line 800
    const/4 v9, 0x0

    .line 801
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;-><init>(ZLjava/util/List;Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V

    .line 802
    .line 803
    .line 804
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 805
    .line 806
    invoke-direct {v0, v5}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    const/4 v11, 0x0

    .line 813
    invoke-virtual {v2, v11, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 817
    .line 818
    return-object v0
.end method
