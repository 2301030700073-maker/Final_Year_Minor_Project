.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $pageSummary:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $retryLimit:J

.field public final synthetic $wiki:Lorg/wikipedia/dataclient/WikiSite;

.field public I$0:I

.field public L$0:Ljava/lang/String;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$retryLimit:J

    .line 4
    .line 5
    iput-object p4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$pageSummary:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$retryLimit:J

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$pageSummary:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->label:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ""

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    iget-object v6, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eq v0, v8, :cond_2

    .line 19
    .line 20
    if-eq v0, v4, :cond_1

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    iget-object v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    move-object v8, v0

    .line 32
    move-object/from16 v0, p1

    .line 33
    .line 34
    goto/16 :goto_e

    .line 35
    .line 36
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    :cond_1
    iget v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->I$0:I

    .line 43
    .line 44
    iget-object v10, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v10, Ljava/util/List;

    .line 47
    .line 48
    iget-object v11, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$0:Ljava/lang/String;

    .line 49
    .line 50
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    move-object/from16 v12, p1

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    iget v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->I$0:I

    .line 58
    .line 59
    iget-object v10, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$0:Ljava/lang/String;

    .line 60
    .line 61
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    move-object v11, v10

    .line 65
    move-object/from16 v10, p1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 74
    .line 75
    .line 76
    :try_start_3
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v10, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 87
    .line 88
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 89
    .line 90
    .line 91
    :cond_4
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 92
    .line 93
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-nez v10, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    move-object v0, v2

    .line 107
    :goto_0
    move v10, v1

    .line 108
    :cond_6
    :goto_1
    add-int/lit8 v11, v10, 0x1

    .line 109
    .line 110
    int-to-long v12, v10

    .line 111
    iget-wide v14, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$retryLimit:J

    .line 112
    .line 113
    cmp-long v10, v12, v14

    .line 114
    .line 115
    if-gtz v10, :cond_17

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-nez v10, :cond_17

    .line 122
    .line 123
    sget-object v10, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 124
    .line 125
    iput-object v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$0:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v9, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput v11, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->I$0:I

    .line 130
    .line 131
    iput v8, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->label:I

    .line 132
    .line 133
    invoke-virtual {v10, v6, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->fetchArticlesWithNullDescription(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    if-ne v10, v7, :cond_7

    .line 138
    .line 139
    goto/16 :goto_d

    .line 140
    .line 141
    :cond_7
    move/from16 v19, v11

    .line 142
    .line 143
    move-object v11, v0

    .line 144
    move/from16 v0, v19

    .line 145
    .line 146
    :goto_2
    check-cast v10, Ljava/util/List;

    .line 147
    .line 148
    sget-object v12, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 149
    .line 150
    iget-object v12, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 151
    .line 152
    sput-object v12, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_16

    .line 159
    .line 160
    iget-object v12, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    const-string v13, "en"

    .line 166
    .line 167
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    if-nez v13, :cond_16

    .line 172
    .line 173
    const-string v13, "test"

    .line 174
    .line 175
    invoke-static {v12, v13, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-eqz v12, :cond_8

    .line 180
    .line 181
    goto/16 :goto_a

    .line 182
    .line 183
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eqz v14, :cond_d

    .line 197
    .line 198
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    check-cast v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 203
    .line 204
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 205
    .line 206
    if-eqz v14, :cond_a

    .line 207
    .line 208
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->wikiBaseItem:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_a
    move-object v14, v9

    .line 212
    :goto_4
    if-nez v14, :cond_b

    .line 213
    .line 214
    move-object v14, v2

    .line 215
    :cond_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    if-nez v15, :cond_c

    .line 220
    .line 221
    move-object v14, v9

    .line 222
    :cond_c
    if-eqz v14, :cond_9

    .line 223
    .line 224
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_d
    sget-object v12, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 229
    .line 230
    sget-object v12, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 231
    .line 232
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    const-string/jumbo v14, "|"

    .line 237
    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x3e

    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    invoke-static/range {v13 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    iput-object v11, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$0:Ljava/lang/String;

    .line 251
    .line 252
    iput-object v10, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$1:Ljava/lang/Object;

    .line 253
    .line 254
    iput v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->I$0:I

    .line 255
    .line 256
    iput v4, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->label:I

    .line 257
    .line 258
    invoke-interface {v12, v13, v5}, Lorg/wikipedia/dataclient/Service;->getProtection(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    if-ne v12, v7, :cond_e

    .line 263
    .line 264
    goto/16 :goto_d

    .line 265
    .line 266
    :cond_e
    :goto_5
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 267
    .line 268
    iget-object v12, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 269
    .line 270
    if-eqz v12, :cond_11

    .line 271
    .line 272
    iget-object v12, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 273
    .line 274
    if-eqz v12, :cond_11

    .line 275
    .line 276
    new-instance v13, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    :cond_f
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-eqz v14, :cond_10

    .line 290
    .line 291
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    move-object v15, v14

    .line 296
    check-cast v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 297
    .line 298
    iget-object v15, v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    if-eqz v15, :cond_f

    .line 305
    .line 306
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_10
    new-instance v12, Ljava/util/ArrayList;

    .line 311
    .line 312
    const/16 v14, 0xa

    .line 313
    .line 314
    invoke-static {v13, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_12

    .line 330
    .line 331
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v14

    .line 335
    check-cast v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 336
    .line 337
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_11
    move-object v12, v9

    .line 344
    :cond_12
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    :cond_13
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    if-eqz v13, :cond_15

    .line 353
    .line 354
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    check-cast v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 359
    .line 360
    if-eqz v12, :cond_13

    .line 361
    .line 362
    iget-object v14, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 363
    .line 364
    if-eqz v14, :cond_14

    .line 365
    .line 366
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->wikiBaseItem:Ljava/lang/String;

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_14
    move-object v14, v9

    .line 370
    :goto_9
    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-ne v14, v8, :cond_13

    .line 375
    .line 376
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 377
    .line 378
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v14, v13}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_15
    move v10, v0

    .line 385
    move-object v0, v11

    .line 386
    goto :goto_c

    .line 387
    :cond_16
    :goto_a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    if-eqz v12, :cond_15

    .line 396
    .line 397
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 402
    .line 403
    sget-object v13, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 404
    .line 405
    iget-object v12, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v13, v12}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_b

    .line 411
    :goto_c
    sget-object v11, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 412
    .line 413
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 414
    .line 415
    .line 416
    move-result v12

    .line 417
    if-nez v12, :cond_6

    .line 418
    .line 419
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Ljava/lang/String;

    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :cond_17
    iget-object v8, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$pageSummary:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 428
    .line 429
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 430
    .line 431
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iput-object v9, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$0:Ljava/lang/String;

    .line 436
    .line 437
    iput-object v8, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->L$1:Ljava/lang/Object;

    .line 438
    .line 439
    iput v11, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->I$0:I

    .line 440
    .line 441
    iput v3, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->label:I

    .line 442
    .line 443
    const/4 v2, 0x0

    .line 444
    const/4 v3, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    const/16 v6, 0x3e

    .line 447
    .line 448
    move-object/from16 v19, v1

    .line 449
    .line 450
    move-object v1, v0

    .line 451
    move-object/from16 v0, v19

    .line 452
    .line 453
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    if-ne v0, v7, :cond_18

    .line 458
    .line 459
    :goto_d
    return-object v7

    .line 460
    :cond_18
    :goto_e
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    .line 462
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 465
    .line 466
    .line 467
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    .line 469
    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 474
    .line 475
    .line 476
    throw v0
.end method
