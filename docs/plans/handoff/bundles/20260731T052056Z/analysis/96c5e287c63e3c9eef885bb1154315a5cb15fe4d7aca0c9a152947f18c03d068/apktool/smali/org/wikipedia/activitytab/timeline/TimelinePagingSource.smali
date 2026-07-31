.class public final Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;
.super Landroidx/paging/PagingSource;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final sources:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModel;I)V
    .locals 0

    .line 15
    iput p2, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->sources:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->sources:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->sources:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->sources:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getRefreshKey(Landroidx/paging/PagingState;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

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
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

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
    iget v3, v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->$r8$classId:I

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 12
    .line 13
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    iget-object v7, v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;->sources:Ljava/lang/Object;

    .line 16
    .line 17
    const/high16 v8, -0x80000000

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    packed-switch v3, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 25
    .line 26
    iget-object v3, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContribs:Ljava/util/ArrayList;

    .line 27
    .line 28
    instance-of v4, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    move-object v4, v2

    .line 33
    check-cast v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;

    .line 34
    .line 35
    iget v11, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;->label:I

    .line 36
    .line 37
    and-int v12, v11, v8

    .line 38
    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    sub-int/2addr v11, v8

    .line 42
    iput v11, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;->label:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;

    .line 46
    .line 47
    invoke-direct {v4, v0, v2}, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;-><init>(Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;->result:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 53
    .line 54
    iget v11, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;->label:I

    .line 55
    .line 56
    if-eqz v11, :cond_2

    .line 57
    .line 58
    if-ne v11, v9, :cond_1

    .line 59
    .line 60
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lretrofit2/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 86
    .line 87
    iget-object v0, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {v10, v3, v0}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_3
    invoke-virtual {v7}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->excludedFiltersCount()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    sget-object v6, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-ne v0, v11, :cond_4

    .line 105
    .line 106
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 107
    .line 108
    invoke-direct {v0, v5, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    move-object v10, v0

    .line 112
    goto/16 :goto_7

    .line 113
    .line 114
    :cond_4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 115
    .line 116
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    const-string v0, ""

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    move-object v6, v5

    .line 149
    check-cast v6, Ljava/lang/Number;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    sget-object v12, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 156
    .line 157
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    new-instance v13, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-direct {v13, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_6

    .line 171
    .line 172
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    const-string/jumbo v12, "|"

    .line 177
    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    const/16 v16, 0x3e

    .line 181
    .line 182
    const/4 v13, 0x0

    .line 183
    const/4 v14, 0x0

    .line 184
    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_2
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 189
    .line 190
    invoke-virtual {v7}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    iget-object v12, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-nez v5, :cond_8

    .line 205
    .line 206
    move-object v14, v10

    .line 207
    goto :goto_3

    .line 208
    :cond_8
    move-object v14, v0

    .line 209
    :goto_3
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object/from16 v16, v0

    .line 214
    .line 215
    check-cast v16, Ljava/lang/String;

    .line 216
    .line 217
    iput v9, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribPagingSource$load$1;->label:I

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const/16 v13, 0x1f4

    .line 222
    .line 223
    const/4 v15, 0x0

    .line 224
    move-object/from16 v18, v4

    .line 225
    .line 226
    invoke-interface/range {v11 .. v18}, Lorg/wikipedia/dataclient/Service;->getUserContrib(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v2, :cond_9

    .line 231
    .line 232
    move-object v10, v2

    .line 233
    goto :goto_7

    .line 234
    :cond_9
    :goto_4
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 235
    .line 236
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 237
    .line 238
    if-eqz v1, :cond_a

    .line 239
    .line 240
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    move-object v1, v10

    .line 244
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 248
    .line 249
    if-eqz v0, :cond_b

    .line 250
    .line 251
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->ucContinuation:Ljava/lang/String;

    .line 252
    .line 253
    :cond_b
    iput-object v10, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    .line 257
    .line 258
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 259
    .line 260
    iget-object v0, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 261
    .line 262
    invoke-direct {v10, v1, v0, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lretrofit2/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .line 264
    .line 265
    goto :goto_7

    .line 266
    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 268
    .line 269
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 270
    .line 271
    .line 272
    :goto_6
    move-object v10, v1

    .line 273
    goto :goto_7

    .line 274
    :catch_1
    move-exception v0

    .line 275
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 276
    .line 277
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :goto_7
    return-object v10

    .line 282
    :pswitch_0
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 283
    .line 284
    const-string v3, "/"

    .line 285
    .line 286
    instance-of v11, v2, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;

    .line 287
    .line 288
    if-eqz v11, :cond_c

    .line 289
    .line 290
    move-object v11, v2

    .line 291
    check-cast v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;

    .line 292
    .line 293
    iget v12, v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;->label:I

    .line 294
    .line 295
    and-int v13, v12, v8

    .line 296
    .line 297
    if-eqz v13, :cond_c

    .line 298
    .line 299
    sub-int/2addr v12, v8

    .line 300
    iput v12, v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;->label:I

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_c
    new-instance v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;

    .line 304
    .line 305
    invoke-direct {v11, v0, v2}, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;-><init>(Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 306
    .line 307
    .line 308
    :goto_8
    iget-object v0, v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;->result:Ljava/lang/Object;

    .line 309
    .line 310
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 311
    .line 312
    iget v12, v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;->label:I

    .line 313
    .line 314
    if-eqz v12, :cond_e

    .line 315
    .line 316
    if-ne v12, v9, :cond_d

    .line 317
    .line 318
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_d
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_e

    .line 326
    .line 327
    :cond_e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :try_start_3
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Ljava/lang/Integer;

    .line 335
    .line 336
    if-nez v0, :cond_f

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-nez v0, :cond_10

    .line 344
    .line 345
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 346
    .line 347
    invoke-direct {v0, v5, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 348
    .line 349
    .line 350
    :goto_9
    move-object v10, v0

    .line 351
    goto/16 :goto_e

    .line 352
    .line 353
    :cond_10
    :goto_a
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 354
    .line 355
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 356
    .line 357
    iget-object v6, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 358
    .line 359
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    iget v6, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 381
    .line 382
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Ljava/lang/Integer;

    .line 387
    .line 388
    iput v9, v11, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel$ArchivedTalkPagesPagingSource$load$1;->label:I

    .line 389
    .line 390
    invoke-interface {v0, v3, v6, v1, v11}, Lorg/wikipedia/dataclient/Service;->prefixSearch(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-ne v0, v2, :cond_11

    .line 395
    .line 396
    move-object v10, v2

    .line 397
    goto :goto_e

    .line 398
    :cond_11
    :goto_b
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 399
    .line 400
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 401
    .line 402
    if-eqz v1, :cond_12

    .line 403
    .line 404
    iget-object v2, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_12
    move-object v2, v10

    .line 408
    :goto_c
    if-nez v2, :cond_13

    .line 409
    .line 410
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 411
    .line 412
    invoke-direct {v0, v5, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 413
    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    new-instance v2, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_14

    .line 442
    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 448
    .line 449
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 450
    .line 451
    iget-object v5, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 452
    .line 453
    iget-object v6, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 454
    .line 455
    invoke-direct {v4, v5, v6, v10}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object v5, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 459
    .line 460
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v3, v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v4, v3}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    goto :goto_d

    .line 473
    :cond_14
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 474
    .line 475
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 476
    .line 477
    if-eqz v0, :cond_15

    .line 478
    .line 479
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->gpsoffset:Ljava/lang/Integer;

    .line 480
    .line 481
    :cond_15
    invoke-direct {v1, v2, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 482
    .line 483
    .line 484
    move-object v10, v1

    .line 485
    goto :goto_e

    .line 486
    :catch_2
    move-exception v0

    .line 487
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 488
    .line 489
    invoke-direct {v10, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 490
    .line 491
    .line 492
    :goto_e
    return-object v10

    .line 493
    :pswitch_1
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 494
    .line 495
    iget-object v3, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 496
    .line 497
    instance-of v4, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;

    .line 498
    .line 499
    if-eqz v4, :cond_16

    .line 500
    .line 501
    move-object v4, v2

    .line 502
    check-cast v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;

    .line 503
    .line 504
    iget v5, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;->label:I

    .line 505
    .line 506
    and-int v11, v5, v8

    .line 507
    .line 508
    if-eqz v11, :cond_16

    .line 509
    .line 510
    sub-int/2addr v5, v8

    .line 511
    iput v5, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;->label:I

    .line 512
    .line 513
    goto :goto_f

    .line 514
    :cond_16
    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;

    .line 515
    .line 516
    invoke-direct {v4, v0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;-><init>(Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 517
    .line 518
    .line 519
    :goto_f
    iget-object v0, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;->result:Ljava/lang/Object;

    .line 520
    .line 521
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 522
    .line 523
    iget v5, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;->label:I

    .line 524
    .line 525
    if-eqz v5, :cond_18

    .line 526
    .line 527
    if-ne v5, v9, :cond_17

    .line 528
    .line 529
    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lretrofit2/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :cond_17
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    goto :goto_12

    .line 537
    :cond_18
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    :try_start_5
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    if-nez v0, :cond_19

    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-nez v0, :cond_19

    .line 551
    .line 552
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 553
    .line 554
    iget-object v0, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 555
    .line 556
    invoke-direct {v10, v3, v0}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_19
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 561
    .line 562
    iget-object v5, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 568
    .line 569
    .line 570
    move-result-object v11

    .line 571
    iget v12, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 572
    .line 573
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    move-object v14, v0

    .line 578
    check-cast v14, Ljava/lang/String;

    .line 579
    .line 580
    iget-object v15, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedUserInfo:Ljava/util/ArrayList;

    .line 581
    .line 582
    iput v9, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsPagingSource$load$1;->label:I

    .line 583
    .line 584
    const/4 v13, 0x0

    .line 585
    const/16 v17, 0xc

    .line 586
    .line 587
    move-object/from16 v16, v4

    .line 588
    .line 589
    invoke-static/range {v11 .. v17}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->getRecentEditsCall$default(Lorg/wikipedia/dataclient/WikiSite;ILj$/time/Instant;Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/io/Serializable;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-ne v0, v2, :cond_1a

    .line 594
    .line 595
    move-object v10, v2

    .line 596
    goto :goto_12

    .line 597
    :cond_1a
    :goto_10
    check-cast v0, Lkotlin/Triple;

    .line 598
    .line 599
    iget-object v1, v0, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 600
    .line 601
    iget-object v2, v0, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v1, Ljava/lang/String;

    .line 604
    .line 605
    iput-object v1, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedContinueKey:Ljava/lang/String;

    .line 606
    .line 607
    move-object v1, v2

    .line 608
    check-cast v1, Ljava/util/Collection;

    .line 609
    .line 610
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 611
    .line 612
    .line 613
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 614
    .line 615
    check-cast v2, Ljava/util/List;

    .line 616
    .line 617
    iget-object v0, v0, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 618
    .line 619
    invoke-direct {v10, v2, v0}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lretrofit2/HttpException; {:try_start_5 .. :try_end_5} :catch_3

    .line 620
    .line 621
    .line 622
    goto :goto_12

    .line 623
    :catch_3
    move-exception v0

    .line 624
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 625
    .line 626
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 627
    .line 628
    .line 629
    :goto_11
    move-object v10, v1

    .line 630
    goto :goto_12

    .line 631
    :catch_4
    move-exception v0

    .line 632
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 633
    .line 634
    invoke-direct {v1, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 635
    .line 636
    .line 637
    goto :goto_11

    .line 638
    :goto_12
    return-object v10

    .line 639
    :pswitch_2
    const-string v3, "https://commons.wikimedia.org/"

    .line 640
    .line 641
    instance-of v11, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;

    .line 642
    .line 643
    if-eqz v11, :cond_1b

    .line 644
    .line 645
    move-object v11, v2

    .line 646
    check-cast v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;

    .line 647
    .line 648
    iget v12, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->label:I

    .line 649
    .line 650
    and-int v13, v12, v8

    .line 651
    .line 652
    if-eqz v13, :cond_1b

    .line 653
    .line 654
    sub-int/2addr v12, v8

    .line 655
    iput v12, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->label:I

    .line 656
    .line 657
    goto :goto_13

    .line 658
    :cond_1b
    new-instance v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;

    .line 659
    .line 660
    invoke-direct {v11, v0, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;-><init>(Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 661
    .line 662
    .line 663
    :goto_13
    iget-object v0, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->result:Ljava/lang/Object;

    .line 664
    .line 665
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 666
    .line 667
    iget v12, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->label:I

    .line 668
    .line 669
    if-eqz v12, :cond_1d

    .line 670
    .line 671
    if-ne v12, v9, :cond_1c

    .line 672
    .line 673
    iget-object v1, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 674
    .line 675
    :try_start_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 676
    .line 677
    .line 678
    goto :goto_14

    .line 679
    :cond_1c
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_18

    .line 683
    .line 684
    :cond_1d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    :try_start_7
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 688
    .line 689
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 693
    .line 694
    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 695
    .line 696
    invoke-direct {v6, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    check-cast v7, Ljava/lang/String;

    .line 704
    .line 705
    iget v6, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 706
    .line 707
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    check-cast v1, Ljava/lang/Integer;

    .line 712
    .line 713
    iput-object v0, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 714
    .line 715
    iput v9, v11, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InsertMediaPagingSource$load$1;->label:I

    .line 716
    .line 717
    invoke-interface {v3, v7, v6, v1, v11}, Lorg/wikipedia/dataclient/Service;->fullTextSearchCommons(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    if-ne v1, v2, :cond_1e

    .line 722
    .line 723
    move-object v10, v2

    .line 724
    goto/16 :goto_18

    .line 725
    .line 726
    :cond_1e
    move-object/from16 v19, v1

    .line 727
    .line 728
    move-object v1, v0

    .line 729
    move-object/from16 v0, v19

    .line 730
    .line 731
    :goto_14
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 732
    .line 733
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 734
    .line 735
    if-eqz v2, :cond_25

    .line 736
    .line 737
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 738
    .line 739
    if-eqz v2, :cond_25

    .line 740
    .line 741
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 742
    .line 743
    const/16 v5, 0x15

    .line 744
    .line 745
    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 746
    .line 747
    .line 748
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    new-instance v3, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    :cond_1f
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    if-eqz v5, :cond_20

    .line 766
    .line 767
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    move-object v6, v5

    .line 772
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 773
    .line 774
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    if-eqz v6, :cond_1f

    .line 779
    .line 780
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    goto :goto_15

    .line 784
    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    .line 785
    .line 786
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-eqz v4, :cond_23

    .line 802
    .line 803
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v4

    .line 807
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 808
    .line 809
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 810
    .line 811
    iget-object v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v7

    .line 817
    invoke-direct {v5, v6, v1, v7}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    if-eqz v4, :cond_22

    .line 825
    .line 826
    iget-object v6, v4, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 827
    .line 828
    iput-object v6, v5, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 829
    .line 830
    iget-object v4, v4, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 831
    .line 832
    if-eqz v4, :cond_21

    .line 833
    .line 834
    invoke-virtual {v4}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    goto :goto_17

    .line 839
    :cond_21
    move-object v4, v10

    .line 840
    :goto_17
    iput-object v4, v5, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 841
    .line 842
    :cond_22
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    goto :goto_16

    .line 846
    :cond_23
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 847
    .line 848
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 849
    .line 850
    if-eqz v0, :cond_24

    .line 851
    .line 852
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->gsroffset:Ljava/lang/Integer;

    .line 853
    .line 854
    :cond_24
    invoke-direct {v1, v2, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 855
    .line 856
    .line 857
    move-object v10, v1

    .line 858
    goto :goto_18

    .line 859
    :cond_25
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 860
    .line 861
    invoke-direct {v0, v5, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 862
    .line 863
    .line 864
    move-object v10, v0

    .line 865
    goto :goto_18

    .line 866
    :catch_5
    move-exception v0

    .line 867
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 868
    .line 869
    invoke-direct {v10, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 870
    .line 871
    .line 872
    :goto_18
    return-object v10

    .line 873
    :pswitch_3
    instance-of v3, v2, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;

    .line 874
    .line 875
    if-eqz v3, :cond_26

    .line 876
    .line 877
    move-object v3, v2

    .line 878
    check-cast v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;

    .line 879
    .line 880
    iget v4, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->label:I

    .line 881
    .line 882
    and-int v5, v4, v8

    .line 883
    .line 884
    if-eqz v5, :cond_26

    .line 885
    .line 886
    sub-int/2addr v4, v8

    .line 887
    iput v4, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->label:I

    .line 888
    .line 889
    goto :goto_19

    .line 890
    :cond_26
    new-instance v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;

    .line 891
    .line 892
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;-><init>(Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 893
    .line 894
    .line 895
    :goto_19
    iget-object v0, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->result:Ljava/lang/Object;

    .line 896
    .line 897
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 898
    .line 899
    iget v4, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->label:I

    .line 900
    .line 901
    if-eqz v4, :cond_28

    .line 902
    .line 903
    if-ne v4, v9, :cond_27

    .line 904
    .line 905
    iget v1, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->I$0:I

    .line 906
    .line 907
    iget-object v4, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$8:Ljava/lang/String;

    .line 908
    .line 909
    iget-object v5, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$5:Ljava/util/Iterator;

    .line 910
    .line 911
    iget-object v6, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$3:Ljava/util/Map;

    .line 912
    .line 913
    iget-object v7, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$2:Ljava/util/List;

    .line 914
    .line 915
    iget-object v11, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$1:Lorg/wikipedia/activitytab/timeline/TimelinePageKey;

    .line 916
    .line 917
    iget-object v12, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$0:Landroidx/paging/PagingSource$LoadParams;

    .line 918
    .line 919
    :try_start_8
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 920
    .line 921
    .line 922
    goto/16 :goto_1b

    .line 923
    .line 924
    :cond_27
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_1e

    .line 928
    .line 929
    :cond_28
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    :try_start_9
    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    check-cast v0, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;

    .line 937
    .line 938
    if-nez v0, :cond_29

    .line 939
    .line 940
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;

    .line 941
    .line 942
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 943
    .line 944
    invoke-direct {v0, v4}, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;-><init>(Ljava/util/Map;)V

    .line 945
    .line 946
    .line 947
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    .line 948
    .line 949
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .line 951
    .line 952
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 953
    .line 954
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 955
    .line 956
    .line 957
    check-cast v7, Ljava/util/List;

    .line 958
    .line 959
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 960
    .line 961
    .line 962
    move-result-object v6

    .line 963
    const/4 v7, 0x0

    .line 964
    move-object v11, v6

    .line 965
    move-object v6, v5

    .line 966
    move-object v5, v11

    .line 967
    move-object v11, v0

    .line 968
    :cond_2a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_2e

    .line 973
    .line 974
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    check-cast v0, Lorg/wikipedia/activitytab/timeline/TimelineSource;

    .line 979
    .line 980
    invoke-interface {v0}, Lorg/wikipedia/activitytab/timeline/TimelineSource;->getId()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v12

    .line 984
    iget-object v13, v11, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;->cursors:Ljava/util/Map;

    .line 985
    .line 986
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v13

    .line 990
    check-cast v13, Lorg/wikipedia/activitytab/timeline/Cursor;

    .line 991
    .line 992
    if-nez v13, :cond_2b

    .line 993
    .line 994
    iget-object v14, v11, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;->cursors:Ljava/util/Map;

    .line 995
    .line 996
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    .line 997
    .line 998
    .line 999
    move-result v14

    .line 1000
    if-eqz v14, :cond_2a

    .line 1001
    .line 1002
    :cond_2b
    iget v14, v1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 1003
    .line 1004
    iput-object v1, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$0:Landroidx/paging/PagingSource$LoadParams;

    .line 1005
    .line 1006
    iput-object v11, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$1:Lorg/wikipedia/activitytab/timeline/TimelinePageKey;

    .line 1007
    .line 1008
    iput-object v4, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$2:Ljava/util/List;

    .line 1009
    .line 1010
    iput-object v6, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$3:Ljava/util/Map;

    .line 1011
    .line 1012
    iput-object v5, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$5:Ljava/util/Iterator;

    .line 1013
    .line 1014
    iput-object v12, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->L$8:Ljava/lang/String;

    .line 1015
    .line 1016
    iput v7, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->I$0:I

    .line 1017
    .line 1018
    iput v9, v3, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource$load$1;->label:I

    .line 1019
    .line 1020
    invoke-interface {v0, v14, v13, v3}, Lorg/wikipedia/activitytab/timeline/TimelineSource;->fetch(ILorg/wikipedia/activitytab/timeline/Cursor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    if-ne v0, v2, :cond_2c

    .line 1025
    .line 1026
    move-object v10, v2

    .line 1027
    goto/16 :goto_1e

    .line 1028
    .line 1029
    :cond_2c
    move-object/from16 v19, v12

    .line 1030
    .line 1031
    move-object v12, v1

    .line 1032
    move v1, v7

    .line 1033
    move-object v7, v4

    .line 1034
    move-object/from16 v4, v19

    .line 1035
    .line 1036
    :goto_1b
    check-cast v0, Lkotlin/Pair;

    .line 1037
    .line 1038
    iget-object v13, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v13, Ljava/util/List;

    .line 1041
    .line 1042
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast v0, Lorg/wikipedia/activitytab/timeline/Cursor;

    .line 1045
    .line 1046
    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1047
    .line 1048
    .line 1049
    if-eqz v0, :cond_2d

    .line 1050
    .line 1051
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    :cond_2d
    move-object v4, v7

    .line 1055
    move v7, v1

    .line 1056
    move-object v1, v12

    .line 1057
    goto :goto_1a

    .line 1058
    :cond_2e
    new-instance v0, Ljava/util/HashSet;

    .line 1059
    .line 1060
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    .line 1064
    .line 1065
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .line 1067
    .line 1068
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    :cond_2f
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    if-eqz v3, :cond_30

    .line 1077
    .line 1078
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    move-object v4, v3

    .line 1083
    check-cast v4, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 1084
    .line 1085
    iget-wide v4, v4, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 1086
    .line 1087
    new-instance v7, Ljava/lang/Long;

    .line 1088
    .line 1089
    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v4

    .line 1096
    if-eqz v4, :cond_2f

    .line 1097
    .line 1098
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    goto :goto_1c

    .line 1102
    :cond_30
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 1103
    .line 1104
    const/16 v2, 0x12

    .line 1105
    .line 1106
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1114
    .line 1115
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    if-eqz v2, :cond_31

    .line 1120
    .line 1121
    goto :goto_1d

    .line 1122
    :cond_31
    new-instance v10, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;

    .line 1123
    .line 1124
    invoke-direct {v10, v6}, Lorg/wikipedia/activitytab/timeline/TimelinePageKey;-><init>(Ljava/util/Map;)V

    .line 1125
    .line 1126
    .line 1127
    :goto_1d
    invoke-direct {v1, v0, v10, v8, v8}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1128
    .line 1129
    .line 1130
    move-object v10, v1

    .line 1131
    goto :goto_1e

    .line 1132
    :catch_6
    move-exception v0

    .line 1133
    new-instance v10, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 1134
    .line 1135
    invoke-direct {v10, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 1136
    .line 1137
    .line 1138
    :goto_1e
    return-object v10

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
