.class public final Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;
.super Landroidx/paging/PagingSource;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final resultType:Ljava/lang/Object;

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->resultType:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/categories/CategoryActivityViewModel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 16
    iput-object p2, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->resultType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 18
    iput-object p2, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->resultType:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getRefreshKey(Landroidx/paging/PagingState;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->$r8$classId:I

    .line 8
    .line 9
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    const/high16 v7, -0x80000000

    .line 16
    .line 17
    iget-object v8, v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->resultType:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v11, 0x0

    .line 23
    packed-switch v3, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 27
    .line 28
    check-cast v9, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 29
    .line 30
    iget-object v3, v9, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedRevisions:Ljava/util/ArrayList;

    .line 31
    .line 32
    instance-of v4, v2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    move-object v4, v2

    .line 37
    check-cast v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;

    .line 38
    .line 39
    iget v5, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;->label:I

    .line 40
    .line 41
    and-int v12, v5, v7

    .line 42
    .line 43
    if-eqz v12, :cond_0

    .line 44
    .line 45
    sub-int/2addr v5, v7

    .line 46
    iput v5, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;->label:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;

    .line 50
    .line 51
    invoke-direct {v4, v0, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;->result:Ljava/lang/Object;

    .line 55
    .line 56
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v5, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;->label:I

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    if-ne v5, v10, :cond_1

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lretrofit2/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    new-instance v11, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 89
    .line 90
    iget-object v0, v9, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {v11, v3, v0}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_3
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 98
    .line 99
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 100
    .line 101
    iget-object v5, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 102
    .line 103
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object/from16 v16, v0

    .line 125
    .line 126
    check-cast v16, Ljava/lang/String;

    .line 127
    .line 128
    iput v10, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryPagingSource$load$1;->label:I

    .line 129
    .line 130
    const/16 v14, 0x1f4

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    move-object/from16 v17, v4

    .line 134
    .line 135
    invoke-interface/range {v12 .. v17}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsDescending(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-ne v0, v2, :cond_4

    .line 140
    .line 141
    move-object v11, v2

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    :goto_1
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 144
    .line 145
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    move-object v1, v11

    .line 166
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->rvContinuation:Ljava/lang/String;

    .line 174
    .line 175
    :cond_6
    iput-object v11, v9, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    .line 179
    .line 180
    new-instance v11, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 181
    .line 182
    iget-object v0, v9, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 183
    .line 184
    invoke-direct {v11, v1, v0, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lretrofit2/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 190
    .line 191
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 192
    .line 193
    .line 194
    :goto_3
    move-object v11, v1

    .line 195
    goto :goto_4

    .line 196
    :catch_1
    move-exception v0

    .line 197
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 198
    .line 199
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :goto_4
    return-object v11

    .line 204
    :pswitch_0
    const-string v3, "TEMPLATE:"

    .line 205
    .line 206
    check-cast v8, Ljava/lang/String;

    .line 207
    .line 208
    move-object v12, v9

    .line 209
    check-cast v12, Lorg/wikipedia/dataclient/WikiSite;

    .line 210
    .line 211
    const-string v13, "*"

    .line 212
    .line 213
    instance-of v14, v2, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;

    .line 214
    .line 215
    if-eqz v14, :cond_7

    .line 216
    .line 217
    move-object v14, v2

    .line 218
    check-cast v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;

    .line 219
    .line 220
    iget v15, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->label:I

    .line 221
    .line 222
    and-int v16, v15, v7

    .line 223
    .line 224
    if-eqz v16, :cond_7

    .line 225
    .line 226
    sub-int/2addr v15, v7

    .line 227
    iput v15, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->label:I

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_7
    new-instance v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;

    .line 231
    .line 232
    invoke-direct {v14, v0, v2}, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 233
    .line 234
    .line 235
    :goto_5
    iget-object v0, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->result:Ljava/lang/Object;

    .line 236
    .line 237
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 238
    .line 239
    iget v15, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->label:I

    .line 240
    .line 241
    if-eqz v15, :cond_9

    .line 242
    .line 243
    if-ne v15, v10, :cond_8

    .line 244
    .line 245
    iget-object v1, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->L$1:Ljava/lang/String;

    .line 246
    .line 247
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_c

    .line 255
    .line 256
    :cond_9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    if-eqz v8, :cond_11

    .line 260
    .line 261
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :cond_a
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 274
    .line 275
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    iget v8, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 284
    .line 285
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Ljava/lang/Integer;

    .line 290
    .line 291
    iput-object v0, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->L$1:Ljava/lang/String;

    .line 292
    .line 293
    iput v10, v14, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$SearchTemplatesFlowSource$load$1;->label:I

    .line 294
    .line 295
    invoke-interface {v3, v6, v8, v1, v14}, Lorg/wikipedia/dataclient/Service;->fullTextSearchTemplates(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    if-ne v1, v2, :cond_b

    .line 300
    .line 301
    move-object v11, v2

    .line 302
    goto/16 :goto_c

    .line 303
    .line 304
    :cond_b
    move-object/from16 v22, v1

    .line 305
    .line 306
    move-object v1, v0

    .line 307
    move-object/from16 v0, v22

    .line 308
    .line 309
    :goto_6
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 310
    .line 311
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 312
    .line 313
    if-eqz v2, :cond_10

    .line 314
    .line 315
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 316
    .line 317
    if-eqz v2, :cond_10

    .line 318
    .line 319
    new-instance v3, Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .line 323
    .line 324
    new-instance v4, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_d

    .line 338
    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    move-object v8, v6

    .line 344
    check-cast v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 345
    .line 346
    iget-object v8, v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 347
    .line 348
    invoke-static {v8, v1, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    if-eqz v8, :cond_c

    .line 353
    .line 354
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_c
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_d
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 363
    .line 364
    const/16 v2, 0x17

    .line 365
    .line 366
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 367
    .line 368
    .line 369
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 370
    .line 371
    .line 372
    const/4 v1, 0x2

    .line 373
    new-array v1, v1, [Ljava/lang/Object;

    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    aput-object v3, v1, v2

    .line 377
    .line 378
    aput-object v4, v1, v10

    .line 379
    .line 380
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->flatten(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_e

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 412
    .line 413
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 414
    .line 415
    move-object v15, v9

    .line 416
    check-cast v15, Lorg/wikipedia/dataclient/WikiSite;

    .line 417
    .line 418
    iget-object v4, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 419
    .line 420
    iget-object v5, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 421
    .line 422
    const/16 v21, 0x0

    .line 423
    .line 424
    const/16 v20, 0x0

    .line 425
    .line 426
    const/16 v18, 0x0

    .line 427
    .line 428
    const/16 v17, 0x0

    .line 429
    .line 430
    const/4 v14, 0x0

    .line 431
    move-object/from16 v16, v4

    .line 432
    .line 433
    move-object/from16 v19, v5

    .line 434
    .line 435
    invoke-direct/range {v13 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v4, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v13, v3}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_e
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 452
    .line 453
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 454
    .line 455
    if-eqz v0, :cond_f

    .line 456
    .line 457
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->gsroffset:Ljava/lang/Integer;

    .line 458
    .line 459
    :cond_f
    invoke-direct {v1, v2, v11, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 460
    .line 461
    .line 462
    move-object v11, v1

    .line 463
    goto :goto_c

    .line 464
    :cond_10
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 465
    .line 466
    invoke-direct {v0, v4, v11, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 467
    .line 468
    .line 469
    :goto_9
    move-object v11, v0

    .line 470
    goto :goto_c

    .line 471
    :cond_11
    :goto_a
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 472
    .line 473
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentUsedTemplates()Ljava/util/Set;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/Iterable;

    .line 478
    .line 479
    new-instance v1, Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    :cond_12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-eqz v2, :cond_13

    .line 493
    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    move-object v3, v2

    .line 499
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 500
    .line 501
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 502
    .line 503
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_12

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    goto :goto_b

    .line 513
    :cond_13
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 514
    .line 515
    invoke-direct {v0, v1, v11, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 516
    .line 517
    .line 518
    goto :goto_9

    .line 519
    :catch_2
    move-exception v0

    .line 520
    new-instance v11, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 521
    .line 522
    invoke-direct {v11, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 523
    .line 524
    .line 525
    :goto_c
    return-object v11

    .line 526
    :pswitch_1
    check-cast v9, Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 527
    .line 528
    iget-object v3, v9, Lorg/wikipedia/categories/CategoryActivityViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 529
    .line 530
    instance-of v9, v2, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;

    .line 531
    .line 532
    if-eqz v9, :cond_14

    .line 533
    .line 534
    move-object v9, v2

    .line 535
    check-cast v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;

    .line 536
    .line 537
    iget v12, v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;->label:I

    .line 538
    .line 539
    and-int v13, v12, v7

    .line 540
    .line 541
    if-eqz v13, :cond_14

    .line 542
    .line 543
    sub-int/2addr v12, v7

    .line 544
    iput v12, v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;->label:I

    .line 545
    .line 546
    goto :goto_d

    .line 547
    :cond_14
    new-instance v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;

    .line 548
    .line 549
    invoke-direct {v9, v0, v2}, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 550
    .line 551
    .line 552
    :goto_d
    iget-object v0, v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;->result:Ljava/lang/Object;

    .line 553
    .line 554
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 555
    .line 556
    iget v12, v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;->label:I

    .line 557
    .line 558
    if-eqz v12, :cond_16

    .line 559
    .line 560
    if-ne v12, v10, :cond_15

    .line 561
    .line 562
    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 563
    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_15
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_10

    .line 570
    .line 571
    :cond_16
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    :try_start_5
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 575
    .line 576
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 577
    .line 578
    iget-object v6, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 579
    .line 580
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 590
    .line 591
    .line 592
    move-result-object v12

    .line 593
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v13

    .line 597
    move-object v14, v8

    .line 598
    check-cast v14, Ljava/lang/String;

    .line 599
    .line 600
    iget v15, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 601
    .line 602
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    move-object/from16 v16, v0

    .line 607
    .line 608
    check-cast v16, Ljava/lang/String;

    .line 609
    .line 610
    iput v10, v9, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource$load$1;->label:I

    .line 611
    .line 612
    move-object/from16 v17, v9

    .line 613
    .line 614
    invoke-interface/range {v12 .. v17}, Lorg/wikipedia/dataclient/Service;->getCategoryMembers(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    if-ne v0, v2, :cond_17

    .line 619
    .line 620
    move-object v11, v2

    .line 621
    goto :goto_10

    .line 622
    :cond_17
    :goto_e
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 623
    .line 624
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 625
    .line 626
    if-nez v1, :cond_18

    .line 627
    .line 628
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 629
    .line 630
    invoke-direct {v0, v4, v11, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 631
    .line 632
    .line 633
    move-object v11, v0

    .line 634
    goto :goto_10

    .line 635
    :cond_18
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    new-instance v2, Ljava/util/ArrayList;

    .line 641
    .line 642
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 647
    .line 648
    .line 649
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    if-eqz v4, :cond_1a

    .line 658
    .line 659
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 664
    .line 665
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 666
    .line 667
    iget-object v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 668
    .line 669
    iget-object v8, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 670
    .line 671
    invoke-direct {v5, v6, v8, v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 675
    .line 676
    if-nez v6, :cond_19

    .line 677
    .line 678
    const-string v6, ""

    .line 679
    .line 680
    :cond_19
    iput-object v6, v5, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v6

    .line 686
    iput-object v6, v5, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 687
    .line 688
    iget-object v6, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 689
    .line 690
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v4, v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    invoke-virtual {v5, v4}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    goto :goto_f

    .line 703
    :cond_1a
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 704
    .line 705
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 706
    .line 707
    if-eqz v0, :cond_1b

    .line 708
    .line 709
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->gcmContinuation:Ljava/lang/String;

    .line 710
    .line 711
    :cond_1b
    invoke-direct {v1, v2, v11, v7, v7}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 712
    .line 713
    .line 714
    move-object v11, v1

    .line 715
    goto :goto_10

    .line 716
    :catch_3
    move-exception v0

    .line 717
    new-instance v11, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 718
    .line 719
    invoke-direct {v11, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 720
    .line 721
    .line 722
    :goto_10
    return-object v11

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
