.class public final Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activitytab/timeline/TimelineSource;


# instance fields
.field public final historyEntryWithImageDao:Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

.field public final userName:Ljava/lang/String;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->userName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->historyEntryWithImageDao:Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final fetch(ILorg/wikipedia/activitytab/timeline/Cursor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v11, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;

    .line 28
    .line 29
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;-><init>(Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 38
    .line 39
    iget-object v12, v0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    const/4 v13, 0x3

    .line 42
    const/4 v14, 0x2

    .line 43
    const/4 v15, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    if-eq v4, v15, :cond_3

    .line 48
    .line 49
    if-eq v4, v14, :cond_2

    .line 50
    .line 51
    if-ne v4, v13, :cond_1

    .line 52
    .line 53
    iget v0, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$1:I

    .line 54
    .line 55
    iget v1, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 56
    .line 57
    iget-object v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$9:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 58
    .line 59
    check-cast v4, Ljava/util/List;

    .line 60
    .line 61
    iget-object v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$7:Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v5, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$5:Ljava/util/Map;

    .line 64
    .line 65
    iget-object v7, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$3:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 66
    .line 67
    iget-object v8, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v9, v6

    .line 73
    move v10, v14

    .line 74
    move-object v6, v2

    .line 75
    move v2, v13

    .line 76
    goto/16 :goto_10

    .line 77
    .line 78
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 79
    .line 80
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v6

    .line 84
    :cond_2
    iget v1, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$1:I

    .line 85
    .line 86
    iget v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 87
    .line 88
    iget-object v7, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$9:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 89
    .line 90
    iget-object v8, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$7:Ljava/util/Iterator;

    .line 91
    .line 92
    iget-object v9, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$5:Ljava/util/Map;

    .line 93
    .line 94
    iget-object v10, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$4:Ljava/util/List;

    .line 95
    .line 96
    iget-object v5, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$3:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 97
    .line 98
    iget-object v6, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 99
    .line 100
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object v13, v7

    .line 104
    move v0, v15

    .line 105
    move-object v7, v6

    .line 106
    move-object v6, v5

    .line 107
    move v5, v4

    .line 108
    move-object v4, v2

    .line 109
    const/4 v2, 0x0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_3
    iget v1, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 113
    .line 114
    iget-object v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 115
    .line 116
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    move-object v5, v2

    .line 120
    move-object v6, v4

    .line 121
    const/4 v2, 0x0

    .line 122
    move v4, v1

    .line 123
    const/4 v1, 0x0

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    instance-of v2, v1, Lorg/wikipedia/activitytab/timeline/Cursor$UserContribCursor;

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    check-cast v1, Lorg/wikipedia/activitytab/timeline/Cursor$UserContribCursor;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 v1, 0x0

    .line 136
    :goto_2
    if-eqz v1, :cond_6

    .line 137
    .line 138
    iget-object v1, v1, Lorg/wikipedia/activitytab/timeline/Cursor$UserContribCursor;->token:Ljava/lang/String;

    .line 139
    .line 140
    move-object v9, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    const/4 v9, 0x0

    .line 143
    :goto_3
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 144
    .line 145
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iput-object v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 150
    .line 151
    move/from16 v6, p1

    .line 152
    .line 153
    iput v6, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 154
    .line 155
    iput v15, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 156
    .line 157
    iget-object v5, v0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->userName:Ljava/lang/String;

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const-string v10, "older"

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-interface/range {v4 .. v11}, Lorg/wikipedia/dataclient/Service;->getUserContrib(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-ne v5, v3, :cond_7

    .line 170
    .line 171
    goto/16 :goto_f

    .line 172
    .line 173
    :cond_7
    move-object v6, v4

    .line 174
    move/from16 v4, p1

    .line 175
    .line 176
    :goto_4
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 177
    .line 178
    new-instance v7, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v9, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 189
    .line 190
    if-eqz v9, :cond_10

    .line 191
    .line 192
    iget-object v9, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 193
    .line 194
    if-eqz v9, :cond_10

    .line 195
    .line 196
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    move-object v10, v9

    .line 201
    move-object v9, v8

    .line 202
    move-object v8, v10

    .line 203
    move-object v10, v7

    .line 204
    move-object v7, v6

    .line 205
    move v6, v1

    .line 206
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v16

    .line 210
    if-eqz v16, :cond_f

    .line 211
    .line 212
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v16

    .line 216
    move-object/from16 v13, v16

    .line 217
    .line 218
    check-cast v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 219
    .line 220
    iget v2, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 221
    .line 222
    sget-object v16, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 223
    .line 224
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/page/Namespace;->code()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-ne v2, v1, :cond_9

    .line 229
    .line 230
    iget-object v1, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v7, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 233
    .line 234
    iput-object v5, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$3:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 235
    .line 236
    iput-object v10, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$4:Ljava/util/List;

    .line 237
    .line 238
    iput-object v9, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$5:Ljava/util/Map;

    .line 239
    .line 240
    iput-object v8, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$7:Ljava/util/Iterator;

    .line 241
    .line 242
    iput-object v13, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$9:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 243
    .line 244
    iput v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 245
    .line 246
    iput v6, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$1:I

    .line 247
    .line 248
    iput v14, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 249
    .line 250
    iget-object v2, v0, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;->historyEntryWithImageDao:Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    const-string v14, "\\"

    .line 263
    .line 264
    const-string v15, "\\\\"

    .line 265
    .line 266
    invoke-static {v1, v14, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const-string v14, "\\%"

    .line 271
    .line 272
    const-string v15, "%"

    .line 273
    .line 274
    invoke-static {v1, v15, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v14, "_"

    .line 279
    .line 280
    const-string v0, "\\_"

    .line 281
    .line 282
    invoke-static {v1, v14, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v15, v0, v15}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v1, v2, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 291
    .line 292
    new-instance v14, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 293
    .line 294
    const/16 v15, 0x1b

    .line 295
    .line 296
    invoke-direct {v14, v0, v2, v15}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    const/4 v0, 0x1

    .line 300
    const/4 v2, 0x0

    .line 301
    invoke-static {v1, v0, v2, v14, v11}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    if-ne v1, v3, :cond_8

    .line 306
    .line 307
    goto/16 :goto_f

    .line 308
    .line 309
    :cond_8
    move/from16 v30, v4

    .line 310
    .line 311
    move-object v4, v1

    .line 312
    move v1, v6

    .line 313
    move-object v6, v5

    .line 314
    move/from16 v5, v30

    .line 315
    .line 316
    :goto_6
    check-cast v4, Ljava/util/List;

    .line 317
    .line 318
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 323
    .line 324
    move-object/from16 v30, v6

    .line 325
    .line 326
    move-object v6, v4

    .line 327
    move v4, v5

    .line 328
    move-object/from16 v5, v30

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_9
    move v0, v15

    .line 332
    const/4 v2, 0x0

    .line 333
    move v1, v6

    .line 334
    const/4 v6, 0x0

    .line 335
    :goto_7
    if-eqz v6, :cond_a

    .line 336
    .line 337
    iget-wide v14, v6, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 338
    .line 339
    :goto_8
    move/from16 p1, v1

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_a
    iget v14, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 343
    .line 344
    sget-object v15, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 345
    .line 346
    invoke-virtual {v15}, Lorg/wikipedia/page/Namespace;->code()I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    if-ne v14, v15, :cond_b

    .line 351
    .line 352
    iget v14, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 353
    .line 354
    int-to-long v14, v14

    .line 355
    goto :goto_8

    .line 356
    :cond_b
    iget-wide v14, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :goto_9
    iget-wide v0, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 360
    .line 361
    move-wide/from16 v18, v14

    .line 362
    .line 363
    iget v15, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 364
    .line 365
    iget-object v14, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 366
    .line 367
    if-eqz v6, :cond_c

    .line 368
    .line 369
    iget-object v2, v6, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 370
    .line 371
    move-object/from16 v16, v2

    .line 372
    .line 373
    :goto_a
    const/4 v2, 0x2

    .line 374
    goto :goto_b

    .line 375
    :cond_c
    const/16 v16, 0x0

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :goto_b
    if-eqz v6, :cond_d

    .line 379
    .line 380
    iget-object v2, v6, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 381
    .line 382
    move-object/from16 v17, v2

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_d
    const/16 v17, 0x0

    .line 386
    .line 387
    :goto_c
    iget-object v2, v13, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 388
    .line 389
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    check-cast v2, Lj$/time/LocalDateTime;

    .line 394
    .line 395
    move-wide/from16 v22, v0

    .line 396
    .line 397
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v2, v0}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    const/4 v2, 0x2

    .line 417
    sget-object v20, Lorg/wikipedia/activitytab/timeline/ActivitySource;->EDIT:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 418
    .line 419
    move-object v1, v13

    .line 420
    move-object/from16 v21, v14

    .line 421
    .line 422
    move-wide/from16 v13, v22

    .line 423
    .line 424
    const/16 v22, 0x1

    .line 425
    .line 426
    move-object/from16 v23, v12

    .line 427
    .line 428
    new-instance v12, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 429
    .line 430
    move-wide/from16 v26, v18

    .line 431
    .line 432
    const/16 v19, -0x1

    .line 433
    .line 434
    const/16 v24, 0x480

    .line 435
    .line 436
    move/from16 v18, v22

    .line 437
    .line 438
    move-object/from16 v22, v21

    .line 439
    .line 440
    move/from16 p3, v4

    .line 441
    .line 442
    const/4 v2, 0x3

    .line 443
    move/from16 v30, v18

    .line 444
    .line 445
    move-object/from16 v18, v0

    .line 446
    .line 447
    move-object v0, v5

    .line 448
    move-wide/from16 v4, v26

    .line 449
    .line 450
    move/from16 v26, v30

    .line 451
    .line 452
    invoke-direct/range {v12 .. v24}, Lorg/wikipedia/activitytab/timeline/TimelineItem;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 453
    .line 454
    .line 455
    new-instance v13, Ljava/lang/Long;

    .line 456
    .line 457
    invoke-direct {v13, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v9, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    iget v4, v1, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 464
    .line 465
    sget-object v5, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 466
    .line 467
    invoke-virtual {v5}, Lorg/wikipedia/page/Namespace;->code()I

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-ne v4, v5, :cond_e

    .line 472
    .line 473
    if-nez v6, :cond_e

    .line 474
    .line 475
    iget v1, v1, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 476
    .line 477
    new-instance v4, Ljava/lang/Integer;

    .line 478
    .line 479
    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :cond_e
    move/from16 v6, p1

    .line 486
    .line 487
    move/from16 v4, p3

    .line 488
    .line 489
    move-object v5, v0

    .line 490
    move v13, v2

    .line 491
    move-object/from16 v12, v23

    .line 492
    .line 493
    move/from16 v15, v26

    .line 494
    .line 495
    const/4 v1, 0x0

    .line 496
    const/4 v2, 0x0

    .line 497
    const/4 v14, 0x2

    .line 498
    move-object/from16 v0, p0

    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :cond_f
    move v2, v13

    .line 503
    move-object v6, v7

    .line 504
    move-object v8, v9

    .line 505
    move-object v7, v10

    .line 506
    goto :goto_d

    .line 507
    :cond_10
    move v2, v13

    .line 508
    :goto_d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    const/16 v0, 0x32

    .line 512
    .line 513
    invoke-static {v7, v0, v0}, Lkotlin/collections/CollectionsKt;->windowed(Ljava/lang/Iterable;II)Ljava/util/ArrayList;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    move v1, v4

    .line 522
    move-object v7, v5

    .line 523
    move-object v5, v8

    .line 524
    move-object v4, v0

    .line 525
    move-object v8, v6

    .line 526
    const/4 v0, 0x0

    .line 527
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_16

    .line 532
    .line 533
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    move-object v12, v6

    .line 538
    check-cast v12, Ljava/util/List;

    .line 539
    .line 540
    const/16 v16, 0x0

    .line 541
    .line 542
    const/16 v17, 0x3e

    .line 543
    .line 544
    const-string/jumbo v13, "|"

    .line 545
    .line 546
    .line 547
    const/4 v14, 0x0

    .line 548
    const/4 v15, 0x0

    .line 549
    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    iput-object v8, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$2:Lorg/wikipedia/dataclient/Service;

    .line 554
    .line 555
    iput-object v7, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$3:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 556
    .line 557
    const/4 v9, 0x0

    .line 558
    iput-object v9, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$4:Ljava/util/List;

    .line 559
    .line 560
    iput-object v5, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$5:Ljava/util/Map;

    .line 561
    .line 562
    iput-object v4, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$7:Ljava/util/Iterator;

    .line 563
    .line 564
    iput-object v9, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->L$9:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 565
    .line 566
    iput v1, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$0:I

    .line 567
    .line 568
    iput v0, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->I$1:I

    .line 569
    .line 570
    iput v2, v11, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource$fetch$1;->label:I

    .line 571
    .line 572
    const/4 v10, 0x2

    .line 573
    invoke-static {v8, v6, v9, v11, v10}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    if-ne v6, v3, :cond_11

    .line 578
    .line 579
    :goto_f
    return-object v3

    .line 580
    :cond_11
    :goto_10
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 581
    .line 582
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 583
    .line 584
    if-eqz v6, :cond_12

    .line 585
    .line 586
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_12
    move-object v6, v9

    .line 590
    :goto_11
    if-nez v6, :cond_13

    .line 591
    .line 592
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 593
    .line 594
    :cond_13
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    if-eqz v12, :cond_15

    .line 603
    .line 604
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v12

    .line 608
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 609
    .line 610
    iget v13, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 611
    .line 612
    int-to-long v13, v13

    .line 613
    new-instance v15, Ljava/lang/Long;

    .line 614
    .line 615
    invoke-direct {v15, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v13

    .line 622
    check-cast v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 623
    .line 624
    if-eqz v13, :cond_14

    .line 625
    .line 626
    iget v14, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 627
    .line 628
    int-to-long v14, v14

    .line 629
    new-instance v2, Ljava/lang/Long;

    .line 630
    .line 631
    invoke-direct {v2, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 632
    .line 633
    .line 634
    iget-object v14, v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v21

    .line 640
    iget-wide v9, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 641
    .line 642
    iget v15, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 643
    .line 644
    iget-object v12, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 645
    .line 646
    move/from16 p1, v0

    .line 647
    .line 648
    iget v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 649
    .line 650
    move/from16 v23, v0

    .line 651
    .line 652
    iget-object v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 653
    .line 654
    move-object/from16 v24, v0

    .line 655
    .line 656
    iget-object v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 657
    .line 658
    move-object/from16 v25, v0

    .line 659
    .line 660
    iget-object v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 661
    .line 662
    move-object/from16 v26, v0

    .line 663
    .line 664
    iget-object v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 665
    .line 666
    move-object/from16 v27, v0

    .line 667
    .line 668
    iget-object v0, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 669
    .line 670
    iget-object v13, v13, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 671
    .line 672
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    new-instance v16, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 691
    .line 692
    move-object/from16 v28, v0

    .line 693
    .line 694
    move-wide/from16 v17, v9

    .line 695
    .line 696
    move-object/from16 v22, v12

    .line 697
    .line 698
    move-object/from16 v29, v13

    .line 699
    .line 700
    move-object/from16 v20, v14

    .line 701
    .line 702
    move/from16 v19, v15

    .line 703
    .line 704
    invoke-direct/range {v16 .. v29}, Lorg/wikipedia/activitytab/timeline/TimelineItem;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 705
    .line 706
    .line 707
    move-object/from16 v0, v16

    .line 708
    .line 709
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    goto :goto_13

    .line 713
    :cond_14
    move/from16 p1, v0

    .line 714
    .line 715
    :goto_13
    move/from16 v0, p1

    .line 716
    .line 717
    const/4 v2, 0x3

    .line 718
    const/4 v9, 0x0

    .line 719
    const/4 v10, 0x2

    .line 720
    goto :goto_12

    .line 721
    :cond_15
    move/from16 p1, v0

    .line 722
    .line 723
    goto/16 :goto_e

    .line 724
    .line 725
    :cond_16
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    check-cast v0, Ljava/lang/Iterable;

    .line 730
    .line 731
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 732
    .line 733
    const/16 v2, 0x13

    .line 734
    .line 735
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 736
    .line 737
    .line 738
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    iget-object v1, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 743
    .line 744
    if-eqz v1, :cond_17

    .line 745
    .line 746
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->ucContinuation:Ljava/lang/String;

    .line 747
    .line 748
    if-eqz v1, :cond_17

    .line 749
    .line 750
    new-instance v6, Lorg/wikipedia/activitytab/timeline/Cursor$UserContribCursor;

    .line 751
    .line 752
    invoke-direct {v6, v1}, Lorg/wikipedia/activitytab/timeline/Cursor$UserContribCursor;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    goto :goto_14

    .line 756
    :cond_17
    const/4 v6, 0x0

    .line 757
    :goto_14
    new-instance v1, Lkotlin/Pair;

    .line 758
    .line 759
    invoke-direct {v1, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    return-object v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "user_contrib"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
