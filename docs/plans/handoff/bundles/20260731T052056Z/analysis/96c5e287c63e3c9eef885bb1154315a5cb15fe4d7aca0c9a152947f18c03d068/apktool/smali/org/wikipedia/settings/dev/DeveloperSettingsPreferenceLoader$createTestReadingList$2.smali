.class public final Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $listName:Ljava/lang/String;

.field public final synthetic $numOfArticles:I

.field public final synthetic $numOfLists:I

.field public I$0:I

.field public L$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public label:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfLists:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$listName:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfArticles:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$listName:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfArticles:I

    .line 6
    .line 7
    iget p0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfLists:I

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;-><init>(ILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->label:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$listName:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v8, :cond_2

    .line 17
    .line 18
    if-eq v2, v7, :cond_1

    .line 19
    .line 20
    if-ne v2, v5, :cond_0

    .line 21
    .line 22
    iget v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->I$0:I

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_1
    iget v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->I$0:I

    .line 38
    .line 39
    iget-object v9, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v10, p1

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    iget-object v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 49
    .line 50
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v9, p1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v9, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 65
    .line 66
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    iput-object v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 75
    .line 76
    iput v8, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->label:I

    .line 77
    .line 78
    invoke-virtual {v9, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-ne v9, v1, :cond_4

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_4
    :goto_0
    check-cast v9, Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v10, Lkotlin/collections/ReversedListReadOnly;

    .line 92
    .line 93
    invoke-direct {v10, v9}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Lkotlin/collections/ReversedListReadOnly;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    :cond_5
    :goto_1
    move-object v10, v9

    .line 101
    check-cast v10, Lkotlin/collections/ReversedList$listIterator$1;

    .line 102
    .line 103
    iget-object v10, v10, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v10, Ljava/util/ListIterator;

    .line 106
    .line 107
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_8

    .line 112
    .line 113
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 118
    .line 119
    invoke-virtual {v10}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-static {v11, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_5

    .line 128
    .line 129
    invoke-virtual {v10}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    if-eqz v10, :cond_6

    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    iget v11, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 160
    .line 161
    if-ge v10, v11, :cond_7

    .line 162
    .line 163
    move v10, v11

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    iget v10, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 166
    .line 167
    :cond_7
    :goto_2
    iput v10, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    move v9, v6

    .line 171
    :goto_3
    iget v10, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfLists:I

    .line 172
    .line 173
    if-ge v9, v10, :cond_c

    .line 174
    .line 175
    iget v10, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 176
    .line 177
    add-int/2addr v10, v8

    .line 178
    iput v10, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 179
    .line 180
    sget-object v10, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 181
    .line 182
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v10}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    iget v11, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v13, " "

    .line 198
    .line 199
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    iput-object v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 210
    .line 211
    iput v9, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->I$0:I

    .line 212
    .line 213
    iput v7, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->label:I

    .line 214
    .line 215
    const-string v12, ""

    .line 216
    .line 217
    invoke-virtual {v10, v11, v12, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    if-ne v10, v1, :cond_9

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_9
    move/from16 v17, v9

    .line 225
    .line 226
    move-object v9, v2

    .line 227
    move/from16 v2, v17

    .line 228
    .line 229
    :goto_4
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 230
    .line 231
    iget v11, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->$numOfArticles:I

    .line 232
    .line 233
    invoke-static {v6, v11}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    new-instance v12, Ljava/util/ArrayList;

    .line 238
    .line 239
    const/16 v13, 0xa

    .line 240
    .line 241
    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    :goto_5
    move-object v13, v11

    .line 253
    check-cast v13, Lkotlin/ranges/IntProgressionIterator;

    .line 254
    .line 255
    iget-boolean v13, v13, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 256
    .line 257
    if-eqz v13, :cond_a

    .line 258
    .line 259
    move-object v13, v11

    .line 260
    check-cast v13, Lkotlin/collections/IntIterator;

    .line 261
    .line 262
    invoke-virtual {v13}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    new-instance v14, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 267
    .line 268
    new-instance v15, Lorg/wikipedia/page/PageTitle;

    .line 269
    .line 270
    add-int/2addr v13, v8

    .line 271
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    sget-object v16, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 276
    .line 277
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 278
    .line 279
    .line 280
    move-result-object v16

    .line 281
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-direct {v15, v13, v6, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {v14, v15}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    const/4 v6, 0x0

    .line 295
    goto :goto_5

    .line 296
    :cond_a
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 297
    .line 298
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    iput-object v9, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 307
    .line 308
    iput v2, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->I$0:I

    .line 309
    .line 310
    iput v5, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;->label:I

    .line 311
    .line 312
    invoke-virtual {v6, v10, v12, v8, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    if-ne v6, v1, :cond_b

    .line 317
    .line 318
    :goto_6
    return-object v1

    .line 319
    :cond_b
    :goto_7
    add-int/2addr v2, v8

    .line 320
    move-object v6, v9

    .line 321
    move v9, v2

    .line 322
    move-object v2, v6

    .line 323
    const/4 v6, 0x0

    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 327
    .line 328
    return-object v0
.end method
