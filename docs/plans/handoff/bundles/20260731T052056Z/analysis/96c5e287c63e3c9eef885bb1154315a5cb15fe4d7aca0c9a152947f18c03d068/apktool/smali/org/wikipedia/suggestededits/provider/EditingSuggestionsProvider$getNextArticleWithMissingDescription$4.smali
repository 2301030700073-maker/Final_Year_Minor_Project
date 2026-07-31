.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $pair:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $retryLimit:J

.field public final synthetic $sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic $targetLang:Ljava/lang/String;

.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lorg/wikipedia/dataclient/WikiSite;

.field public L$2:Lkotlin/Pair;

.field public L$5:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$7:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$targetLang:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    iput-wide p3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$retryLimit:J

    .line 6
    .line 7
    iput-object p5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;

    .line 2
    .line 3
    iget-wide v3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$retryLimit:J

    .line 4
    .line 5
    iget-object v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$targetLang:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string/jumbo v1, "|"

    .line 4
    .line 5
    .line 6
    iget-object v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    iget v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->label:I

    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x2

    .line 17
    const-string v9, ""

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    iget-object v11, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$targetLang:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v12, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    const/4 v13, 0x0

    .line 25
    if-eqz v4, :cond_4

    .line 26
    .line 27
    if-eq v4, v10, :cond_3

    .line 28
    .line 29
    if-eq v4, v8, :cond_2

    .line 30
    .line 31
    if-eq v4, v7, :cond_1

    .line 32
    .line 33
    if-ne v4, v6, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$7:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    move-object v4, v1

    .line 43
    move-object v1, v0

    .line 44
    move-object/from16 v0, p1

    .line 45
    .line 46
    goto/16 :goto_d

    .line 47
    .line 48
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v13

    .line 54
    :cond_1
    iget v5, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$1:I

    .line 55
    .line 56
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 57
    .line 58
    iget-object v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 61
    .line 62
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    move v6, v1

    .line 66
    move-object v1, v2

    .line 67
    move-object v2, v4

    .line 68
    move-object/from16 v4, p1

    .line 69
    .line 70
    goto/16 :goto_b

    .line 71
    .line 72
    :cond_2
    iget v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 73
    .line 74
    iget-object v14, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 75
    .line 76
    iget-object v15, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 77
    .line 78
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    move-object v5, v15

    .line 82
    move v15, v4

    .line 83
    move-object v4, v5

    .line 84
    move-object/from16 v5, p1

    .line 85
    .line 86
    move-object/from16 v16, v11

    .line 87
    .line 88
    move v11, v8

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_3
    iget v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 92
    .line 93
    iget-object v14, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 94
    .line 95
    iget-object v15, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 96
    .line 97
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    move-object/from16 v7, p1

    .line 101
    .line 102
    move-object/from16 v16, v11

    .line 103
    .line 104
    move-object v6, v15

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 112
    .line 113
    .line 114
    :try_start_4
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v15, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_5

    .line 132
    .line 133
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-nez v14, :cond_6

    .line 140
    .line 141
    :cond_5
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 142
    .line 143
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 144
    .line 145
    .line 146
    :cond_6
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 147
    .line 148
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-nez v15, :cond_7

    .line 153
    .line 154
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    check-cast v14, Lkotlin/Pair;

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_7
    move-object v14, v13

    .line 162
    :goto_0
    const/4 v15, 0x0

    .line 163
    :goto_1
    add-int/lit8 v6, v15, 0x1

    .line 164
    .line 165
    int-to-long v7, v15

    .line 166
    move-object/from16 v16, v11

    .line 167
    .line 168
    iget-wide v10, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$retryLimit:J

    .line 169
    .line 170
    cmp-long v7, v7, v10

    .line 171
    .line 172
    if-gtz v7, :cond_18

    .line 173
    .line 174
    if-nez v14, :cond_18

    .line 175
    .line 176
    sget-object v7, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 177
    .line 178
    iput-object v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 181
    .line 182
    iput-object v14, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 183
    .line 184
    iput v6, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 185
    .line 186
    const/4 v15, 0x1

    .line 187
    iput v15, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->label:I

    .line 188
    .line 189
    invoke-virtual {v7, v4, v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->fetchArticlesWithNullDescription(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-ne v7, v3, :cond_8

    .line 194
    .line 195
    goto/16 :goto_c

    .line 196
    .line 197
    :cond_8
    move/from16 v23, v6

    .line 198
    .line 199
    move-object v6, v4

    .line 200
    move/from16 v4, v23

    .line 201
    .line 202
    :goto_2
    check-cast v7, Ljava/util/List;

    .line 203
    .line 204
    sget-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 205
    .line 206
    iget-object v8, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 207
    .line 208
    sput-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    .line 209
    .line 210
    sput-object v16, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v8, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-eqz v10, :cond_d

    .line 226
    .line 227
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 232
    .line 233
    iget-object v10, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 234
    .line 235
    if-eqz v10, :cond_a

    .line 236
    .line 237
    iget-object v10, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->wikiBaseItem:Ljava/lang/String;

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    move-object v10, v13

    .line 241
    :goto_4
    if-nez v10, :cond_b

    .line 242
    .line 243
    move-object v10, v9

    .line 244
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-nez v11, :cond_c

    .line 249
    .line 250
    move-object v10, v13

    .line 251
    :cond_c
    if-eqz v10, :cond_9

    .line 252
    .line 253
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_d
    sget-object v7, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 258
    .line 259
    sget-object v7, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 260
    .line 261
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    const-string/jumbo v18, "|"

    .line 266
    .line 267
    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    const/16 v22, 0x3e

    .line 271
    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    const/16 v20, 0x0

    .line 275
    .line 276
    move-object/from16 v17, v8

    .line 277
    .line 278
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    sget-object v10, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 283
    .line 284
    iget-object v11, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/dataclient/WikiSite$Companion;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    new-instance v15, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    iput-object v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 342
    .line 343
    iput-object v6, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 344
    .line 345
    iput-object v14, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 346
    .line 347
    iput v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 348
    .line 349
    const/4 v11, 0x2

    .line 350
    iput v11, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->label:I

    .line 351
    .line 352
    invoke-interface {v7, v8, v10, v5, v0}, Lorg/wikipedia/dataclient/Service;->getWikidataLabelsAndDescriptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    if-ne v5, v3, :cond_e

    .line 357
    .line 358
    goto/16 :goto_c

    .line 359
    .line 360
    :cond_e
    move v15, v4

    .line 361
    move-object v4, v6

    .line 362
    :goto_5
    check-cast v5, Lorg/wikipedia/dataclient/wikidata/Entities;

    .line 363
    .line 364
    iget-object v5, v5, Lorg/wikipedia/dataclient/wikidata/Entities;->entities:Ljava/util/Map;

    .line 365
    .line 366
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 367
    .line 368
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    :cond_f
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-eqz v7, :cond_14

    .line 384
    .line 385
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    check-cast v7, Ljava/util/Map$Entry;

    .line 390
    .line 391
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 396
    .line 397
    invoke-virtual {v8}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getDescriptions()Ljava/util/Map;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    iget-object v10, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 402
    .line 403
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 408
    .line 409
    if-eqz v8, :cond_10

    .line 410
    .line 411
    iget-object v8, v8, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_10
    move-object v8, v13

    .line 415
    :goto_7
    if-nez v8, :cond_11

    .line 416
    .line 417
    move-object v8, v9

    .line 418
    :cond_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-lez v8, :cond_f

    .line 423
    .line 424
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 429
    .line 430
    invoke-virtual {v8}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getSiteLinks()Ljava/util/Map;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;

    .line 443
    .line 444
    if-eqz v8, :cond_12

    .line 445
    .line 446
    iget-object v8, v8, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->title:Ljava/lang/String;

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_12
    move-object v8, v13

    .line 450
    :goto_8
    if-nez v8, :cond_13

    .line 451
    .line 452
    move-object v8, v9

    .line 453
    :cond_13
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 454
    .line 455
    .line 456
    move-result v8

    .line 457
    if-lez v8, :cond_f

    .line 458
    .line 459
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_14
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    check-cast v5, Ljava/lang/Iterable;

    .line 476
    .line 477
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_16

    .line 486
    .line 487
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    check-cast v6, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 492
    .line 493
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    .line 494
    .line 495
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getSiteLinks()Ljava/util/Map;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;

    .line 511
    .line 512
    iget-object v8, v8, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->title:Ljava/lang/String;

    .line 513
    .line 514
    invoke-direct {v7, v8, v12, v13}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getDescriptions()Ljava/util/Map;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    iget-object v10, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 522
    .line 523
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 528
    .line 529
    if-eqz v8, :cond_15

    .line 530
    .line 531
    iget-object v8, v8, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 532
    .line 533
    goto :goto_a

    .line 534
    :cond_15
    move-object v8, v13

    .line 535
    :goto_a
    iput-object v8, v7, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 536
    .line 537
    new-instance v8, Lorg/wikipedia/page/PageTitle;

    .line 538
    .line 539
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getSiteLinks()Ljava/util/Map;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    check-cast v6, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;

    .line 555
    .line 556
    iget-object v6, v6, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->title:Ljava/lang/String;

    .line 557
    .line 558
    invoke-direct {v8, v6, v4, v13}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    sget-object v6, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 562
    .line 563
    new-instance v10, Lkotlin/Pair;

    .line 564
    .line 565
    invoke-direct {v10, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6, v10}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    goto :goto_9

    .line 572
    :cond_16
    sget-object v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 573
    .line 574
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-nez v6, :cond_17

    .line 579
    .line 580
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    move-object v14, v5

    .line 585
    check-cast v14, Lkotlin/Pair;

    .line 586
    .line 587
    :cond_17
    move v8, v11

    .line 588
    move-object/from16 v11, v16

    .line 589
    .line 590
    const/4 v6, 0x4

    .line 591
    const/4 v7, 0x3

    .line 592
    const/4 v10, 0x1

    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :cond_18
    if-eqz v14, :cond_1b

    .line 596
    .line 597
    iget-object v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 598
    .line 599
    new-instance v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 600
    .line 601
    const/4 v5, 0x0

    .line 602
    invoke-direct {v4, v14, v13, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;I)V

    .line 603
    .line 604
    .line 605
    const/4 v5, 0x3

    .line 606
    invoke-static {v2, v13, v4, v5}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    new-instance v7, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 611
    .line 612
    const/4 v15, 0x1

    .line 613
    invoke-direct {v7, v14, v13, v15}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;I)V

    .line 614
    .line 615
    .line 616
    invoke-static {v2, v13, v7, v5}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 621
    .line 622
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 623
    .line 624
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 625
    .line 626
    iput-object v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 627
    .line 628
    iput-object v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 629
    .line 630
    iput v6, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 631
    .line 632
    const/4 v5, 0x0

    .line 633
    iput v5, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$1:I

    .line 634
    .line 635
    const/4 v7, 0x3

    .line 636
    iput v7, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->label:I

    .line 637
    .line 638
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    if-ne v4, v3, :cond_19

    .line 643
    .line 644
    goto :goto_c

    .line 645
    :cond_19
    :goto_b
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$0:Ljava/lang/Object;

    .line 646
    .line 647
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 648
    .line 649
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$2:Lkotlin/Pair;

    .line 650
    .line 651
    iput-object v13, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 652
    .line 653
    iput-object v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 654
    .line 655
    iput-object v4, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->L$7:Ljava/lang/Object;

    .line 656
    .line 657
    iput v6, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$0:I

    .line 658
    .line 659
    iput v5, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->I$1:I

    .line 660
    .line 661
    const/4 v5, 0x4

    .line 662
    iput v5, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->label:I

    .line 663
    .line 664
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    if-ne v0, v3, :cond_1a

    .line 669
    .line 670
    :goto_c
    return-object v3

    .line 671
    :cond_1a
    :goto_d
    new-instance v2, Lkotlin/Pair;

    .line 672
    .line 673
    invoke-direct {v2, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 677
    .line 678
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    .line 680
    :cond_1b
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 683
    .line 684
    .line 685
    return-object v13

    .line 686
    :catchall_0
    move-exception v0

    .line 687
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 690
    .line 691
    .line 692
    throw v0
.end method
