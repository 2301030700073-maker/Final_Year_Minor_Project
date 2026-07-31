.class public final Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activitytab/timeline/TimelineSource;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dao:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->dao:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->dao:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final fetch(ILorg/wikipedia/activitytab/timeline/Cursor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->$r8$classId:I

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->dao:Ljava/lang/Object;

    .line 14
    .line 15
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/high16 v9, -0x80000000

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    instance-of v4, v3, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;

    .line 31
    .line 32
    iget v12, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->label:I

    .line 33
    .line 34
    and-int v13, v12, v9

    .line 35
    .line 36
    if-eqz v13, :cond_0

    .line 37
    .line 38
    sub-int/2addr v12, v9

    .line 39
    iput v12, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->label:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;

    .line 43
    .line 44
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;-><init>(Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->result:Ljava/lang/Object;

    .line 48
    .line 49
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 50
    .line 51
    iget v9, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->label:I

    .line 52
    .line 53
    const/4 v12, 0x2

    .line 54
    if-eqz v9, :cond_3

    .line 55
    .line 56
    if-eq v9, v8, :cond_2

    .line 57
    .line 58
    if-ne v9, v12, :cond_1

    .line 59
    .line 60
    iget v1, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$1:I

    .line 61
    .line 62
    iget v2, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$0:I

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_1
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_2
    iget v1, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$0:I

    .line 74
    .line 75
    iget-object v2, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->L$0:Lorg/wikipedia/activitytab/timeline/Cursor;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->L$0:Lorg/wikipedia/activitytab/timeline/Cursor;

    .line 85
    .line 86
    iput v1, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$0:I

    .line 87
    .line 88
    iput v8, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->label:I

    .line 89
    .line 90
    const-wide/16 v13, 0x1f4

    .line 91
    .line 92
    invoke-static {v13, v14, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-ne v0, v3, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    :goto_1
    instance-of v0, v2, Lorg/wikipedia/activitytab/timeline/Cursor$HistoryEntryCursor;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    check-cast v2, Lorg/wikipedia/activitytab/timeline/Cursor$HistoryEntryCursor;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v2, v11

    .line 107
    :goto_2
    if-eqz v2, :cond_6

    .line 108
    .line 109
    iget v0, v2, Lorg/wikipedia/activitytab/timeline/Cursor$HistoryEntryCursor;->offset:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    move v0, v10

    .line 113
    :goto_3
    check-cast v6, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 114
    .line 115
    iput-object v11, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->L$0:Lorg/wikipedia/activitytab/timeline/Cursor;

    .line 116
    .line 117
    iput v1, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$0:I

    .line 118
    .line 119
    iput v0, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->I$1:I

    .line 120
    .line 121
    iput v12, v4, Lorg/wikipedia/activitytab/timeline/HistoryEntryPagingSource$fetch$1;->label:I

    .line 122
    .line 123
    iget-object v2, v6, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 124
    .line 125
    new-instance v7, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;

    .line 126
    .line 127
    invoke-direct {v7, v1, v0, v6}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;-><init>(IILorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v8, v10, v7, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-ne v2, v3, :cond_7

    .line 135
    .line 136
    :goto_4
    move-object v11, v3

    .line 137
    goto/16 :goto_a

    .line 138
    .line 139
    :cond_7
    move/from16 v26, v1

    .line 140
    .line 141
    move v1, v0

    .line 142
    move-object v0, v2

    .line 143
    move/from16 v2, v26

    .line 144
    .line 145
    :goto_5
    check-cast v0, Ljava/lang/Iterable;

    .line 146
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 171
    .line 172
    iget-wide v13, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 173
    .line 174
    iget-object v5, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v6, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v7, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v9, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v10, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 183
    .line 184
    iget-object v12, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v15, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 187
    .line 188
    iget v4, v4, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 189
    .line 190
    if-ne v4, v8, :cond_8

    .line 191
    .line 192
    sget-object v16, Lorg/wikipedia/activitytab/timeline/ActivitySource;->SEARCH:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 193
    .line 194
    :goto_7
    move-object/from16 v20, v16

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_8
    sget-object v16, Lorg/wikipedia/activitytab/timeline/ActivitySource;->LINK:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :goto_8
    sget-object v16, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 201
    .line 202
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v15}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 206
    .line 207
    .line 208
    move-result-object v25

    .line 209
    move-object/from16 v24, v12

    .line 210
    .line 211
    new-instance v12, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 212
    .line 213
    move-object/from16 v21, v15

    .line 214
    .line 215
    const/4 v15, 0x0

    .line 216
    move/from16 v19, v4

    .line 217
    .line 218
    move-object/from16 v22, v5

    .line 219
    .line 220
    move-object/from16 v23, v6

    .line 221
    .line 222
    move-object/from16 v16, v7

    .line 223
    .line 224
    move-object/from16 v17, v9

    .line 225
    .line 226
    move-object/from16 v18, v10

    .line 227
    .line 228
    invoke-direct/range {v12 .. v25}, Lorg/wikipedia/activitytab/timeline/TimelineItem;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-ge v0, v2, :cond_a

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_a
    new-instance v11, Lorg/wikipedia/activitytab/timeline/Cursor$HistoryEntryCursor;

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-int/2addr v0, v1

    .line 249
    invoke-direct {v11, v0}, Lorg/wikipedia/activitytab/timeline/Cursor$HistoryEntryCursor;-><init>(I)V

    .line 250
    .line 251
    .line 252
    :goto_9
    new-instance v0, Lkotlin/Pair;

    .line 253
    .line 254
    invoke-direct {v0, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move-object v11, v0

    .line 258
    :goto_a
    return-object v11

    .line 259
    :pswitch_0
    instance-of v4, v3, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;

    .line 260
    .line 261
    if-eqz v4, :cond_b

    .line 262
    .line 263
    move-object v4, v3

    .line 264
    check-cast v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;

    .line 265
    .line 266
    iget v12, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->label:I

    .line 267
    .line 268
    and-int v13, v12, v9

    .line 269
    .line 270
    if-eqz v13, :cond_b

    .line 271
    .line 272
    sub-int/2addr v12, v9

    .line 273
    iput v12, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->label:I

    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_b
    new-instance v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;

    .line 277
    .line 278
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;-><init>(Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 279
    .line 280
    .line 281
    :goto_b
    iget-object v0, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->result:Ljava/lang/Object;

    .line 282
    .line 283
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 284
    .line 285
    iget v9, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->label:I

    .line 286
    .line 287
    if-eqz v9, :cond_d

    .line 288
    .line 289
    if-ne v9, v8, :cond_c

    .line 290
    .line 291
    iget v1, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->I$1:I

    .line 292
    .line 293
    iget v2, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->I$0:I

    .line 294
    .line 295
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    move/from16 v26, v2

    .line 299
    .line 300
    move v2, v1

    .line 301
    move/from16 v1, v26

    .line 302
    .line 303
    goto :goto_e

    .line 304
    :cond_c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_11

    .line 308
    .line 309
    :cond_d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    instance-of v0, v2, Lorg/wikipedia/activitytab/timeline/Cursor$ReadingListCursor;

    .line 313
    .line 314
    if-eqz v0, :cond_e

    .line 315
    .line 316
    move-object v0, v2

    .line 317
    check-cast v0, Lorg/wikipedia/activitytab/timeline/Cursor$ReadingListCursor;

    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_e
    move-object v0, v11

    .line 321
    :goto_c
    if-eqz v0, :cond_f

    .line 322
    .line 323
    iget v0, v0, Lorg/wikipedia/activitytab/timeline/Cursor$ReadingListCursor;->offset:I

    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_f
    move v0, v10

    .line 327
    :goto_d
    check-cast v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 328
    .line 329
    iput v1, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->I$0:I

    .line 330
    .line 331
    iput v0, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->I$1:I

    .line 332
    .line 333
    iput v8, v4, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource$fetch$1;->label:I

    .line 334
    .line 335
    iget-object v2, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 336
    .line 337
    new-instance v7, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;

    .line 338
    .line 339
    invoke-direct {v7, v1, v0, v6}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;-><init>(IILorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v2, v8, v10, v7, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    if-ne v2, v3, :cond_10

    .line 347
    .line 348
    move-object v11, v3

    .line 349
    goto/16 :goto_11

    .line 350
    .line 351
    :cond_10
    move-object/from16 v26, v2

    .line 352
    .line 353
    move v2, v0

    .line 354
    move-object/from16 v0, v26

    .line 355
    .line 356
    :goto_e
    check-cast v0, Ljava/lang/Iterable;

    .line 357
    .line 358
    new-instance v3, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_11

    .line 376
    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 382
    .line 383
    iget-wide v5, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 384
    .line 385
    iget-wide v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 386
    .line 387
    add-long/2addr v5, v7

    .line 388
    iget-wide v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 389
    .line 390
    add-long v13, v5, v7

    .line 391
    .line 392
    iget-object v5, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 393
    .line 394
    iget-object v6, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 397
    .line 398
    iget-object v8, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 399
    .line 400
    new-instance v9, Ljava/util/Date;

    .line 401
    .line 402
    iget-wide v11, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 403
    .line 404
    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 405
    .line 406
    .line 407
    sget-object v20, Lorg/wikipedia/activitytab/timeline/ActivitySource;->BOOKMARKED:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 408
    .line 409
    sget-object v11, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 410
    .line 411
    iget-object v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 417
    .line 418
    .line 419
    move-result-object v23

    .line 420
    new-instance v12, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 421
    .line 422
    const/16 v19, -0x1

    .line 423
    .line 424
    const/16 v24, 0x480

    .line 425
    .line 426
    const/4 v15, 0x0

    .line 427
    move-object/from16 v21, v5

    .line 428
    .line 429
    move-object/from16 v22, v6

    .line 430
    .line 431
    move-object/from16 v16, v7

    .line 432
    .line 433
    move-object/from16 v17, v8

    .line 434
    .line 435
    move-object/from16 v18, v9

    .line 436
    .line 437
    invoke-direct/range {v12 .. v24}, Lorg/wikipedia/activitytab/timeline/TimelineItem;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    const/4 v11, 0x0

    .line 444
    goto :goto_f

    .line 445
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-ge v0, v1, :cond_12

    .line 450
    .line 451
    const/4 v11, 0x0

    .line 452
    goto :goto_10

    .line 453
    :cond_12
    new-instance v11, Lorg/wikipedia/activitytab/timeline/Cursor$ReadingListCursor;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    add-int/2addr v0, v2

    .line 460
    invoke-direct {v11, v0}, Lorg/wikipedia/activitytab/timeline/Cursor$ReadingListCursor;-><init>(I)V

    .line 461
    .line 462
    .line 463
    :goto_10
    new-instance v0, Lkotlin/Pair;

    .line 464
    .line 465
    invoke-direct {v0, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    move-object v11, v0

    .line 469
    :goto_11
    return-object v11

    .line 470
    nop

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "history_entry"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "reading_list"

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
