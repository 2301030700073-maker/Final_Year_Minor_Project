.class public final Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $lang:Ljava/lang/String;

.field public final synthetic $term:Ljava/lang/String;

.field public final synthetic $wikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lorg/wikipedia/search/SearchResultsViewModel;

.field public L$2:Lorg/wikipedia/dataclient/WikiSite;

.field public L$4:Lorg/wikipedia/search/SemanticSearchResults;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/search/SearchResultsViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/wikipedia/search/SearchResultsViewModel;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$lang:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->this$0:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$term:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;

    .line 2
    .line 3
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$term:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$lang:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->this$0:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;-><init>(Ljava/lang/String;Lorg/wikipedia/search/SearchResultsViewModel;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget-object v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->label:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eq v0, v8, :cond_2

    .line 18
    .line 19
    if-eq v0, v7, :cond_1

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 24
    .line 25
    iget-object v1, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 26
    .line 27
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    move-object v12, v0

    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v9

    .line 41
    :cond_1
    iget-object v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$4:Lorg/wikipedia/search/SemanticSearchResults;

    .line 42
    .line 43
    iget-object v1, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    iget-object v2, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 46
    .line 47
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    move-object/from16 v3, p1

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_2
    iget v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->I$0:I

    .line 55
    .line 56
    iget-object v1, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 57
    .line 58
    iget-object v2, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 59
    .line 60
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    move v10, v0

    .line 64
    move-object/from16 v0, p1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$lang:Ljava/lang/String;

    .line 71
    .line 72
    :try_start_3
    const-string v2, "el"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    const/4 v10, 0x0

    .line 79
    iget-object v11, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->this$0:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 80
    .line 81
    move v2, v1

    .line 82
    iget-object v1, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$term:Ljava/lang/String;

    .line 83
    .line 84
    move v3, v2

    .line 85
    const/4 v2, 0x3

    .line 86
    iget-object v12, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 87
    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    :try_start_4
    iget-object v0, v11, Lorg/wikipedia/search/SearchResultsViewModel;->semanticSearchService:Lorg/wikipedia/search/SemanticSearchService;

    .line 91
    .line 92
    const-string v3, "elwiki_sections"

    .line 93
    .line 94
    iput-object v9, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v11, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 97
    .line 98
    iput-object v12, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 99
    .line 100
    iput v10, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->I$0:I

    .line 101
    .line 102
    iput v8, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->label:I

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/search/SemanticSearchService;->search(Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-ne v0, v6, :cond_4

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_4
    move-object v2, v11

    .line 114
    move-object v1, v12

    .line 115
    :goto_0
    check-cast v0, Lorg/wikipedia/search/SemanticSearchResults;

    .line 116
    .line 117
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 118
    .line 119
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v11, v0, Lorg/wikipedia/search/SemanticSearchResults;->results:Ljava/util/List;

    .line 124
    .line 125
    const-string/jumbo v12, "|"

    .line 126
    .line 127
    .line 128
    new-instance v15, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/16 v4, 0x13

    .line 131
    .line 132
    invoke-direct {v15, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 133
    .line 134
    .line 135
    const/16 v16, 0x1e

    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iput-object v9, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v2, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 146
    .line 147
    iput-object v1, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 148
    .line 149
    iput-object v0, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$4:Lorg/wikipedia/search/SemanticSearchResults;

    .line 150
    .line 151
    iput v10, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->I$0:I

    .line 152
    .line 153
    iput v7, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->label:I

    .line 154
    .line 155
    invoke-static {v3, v9, v4, v5, v8}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-ne v3, v6, :cond_5

    .line 160
    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_5
    :goto_1
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 164
    .line 165
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iput-object v4, v2, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 177
    .line 178
    sget-object v2, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEMANTIC:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 179
    .line 180
    invoke-static {v0, v1, v2}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/search/SemanticSearchResults;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_e

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lorg/wikipedia/search/SearchResult;

    .line 199
    .line 200
    iget-object v4, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 201
    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 205
    .line 206
    if-eqz v4, :cond_8

    .line 207
    .line 208
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    move-object v6, v5

    .line 223
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 224
    .line 225
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 226
    .line 227
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    iget-object v7, v2, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 234
    .line 235
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_6

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_7
    move-object v5, v9

    .line 247
    :goto_3
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_8
    move-object v5, v9

    .line 251
    :goto_4
    iget-object v4, v2, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 252
    .line 253
    if-eqz v5, :cond_9

    .line 254
    .line 255
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    goto :goto_5

    .line 260
    :cond_9
    move-object v6, v9

    .line 261
    :goto_5
    iput-object v6, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v2, v2, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 264
    .line 265
    if-eqz v5, :cond_a

    .line 266
    .line 267
    iget-object v4, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_a
    move-object v4, v9

    .line 271
    :goto_6
    iput-object v4, v2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_b
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 275
    .line 276
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v4, Ljava/lang/Integer;

    .line 281
    .line 282
    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 283
    .line 284
    .line 285
    move-object v7, v4

    .line 286
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 287
    .line 288
    iput-object v9, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v11, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$1:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 291
    .line 292
    iput-object v12, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 293
    .line 294
    iput v10, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->I$0:I

    .line 295
    .line 296
    iput v3, v5, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;->label:I

    .line 297
    .line 298
    move-object v3, v7

    .line 299
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->fullTextSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-ne v0, v6, :cond_c

    .line 304
    .line 305
    :goto_7
    return-object v6

    .line 306
    :cond_c
    move-object v1, v11

    .line 307
    :goto_8
    check-cast v0, Lretrofit2/Response;

    .line 308
    .line 309
    iget-object v2, v0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 310
    .line 311
    iget-object v2, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 312
    .line 313
    const-string/jumbo v3, "x-search-id"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-nez v2, :cond_d

    .line 321
    .line 322
    const-string v2, ""

    .line 323
    .line 324
    :cond_d
    iput-object v2, v1, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v0, v0, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 329
    .line 330
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResultsViewModel;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    sget-object v2, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEMANTIC:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 335
    .line 336
    invoke-static {v0, v1, v12, v2}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    goto :goto_9

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    new-instance v1, Lkotlin/Result$Failure;

    .line 343
    .line 344
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    move-object v0, v1

    .line 348
    :cond_e
    :goto_9
    new-instance v1, Lkotlin/Result;

    .line 349
    .line 350
    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    return-object v1
.end method
