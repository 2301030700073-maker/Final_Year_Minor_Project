.class public final Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->$r8$classId:I

    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->$r8$classId:I

    .line 13
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->this$0:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 9
    .line 10
    iget p0, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p1, v1, p0, p2}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 21
    .line 22
    invoke-direct {p0, p2, v1}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;-><init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    iget v8, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v8, :cond_2

    .line 23
    .line 24
    if-eq v8, v7, :cond_1

    .line 25
    .line 26
    if-ne v8, v6, :cond_0

    .line 27
    .line 28
    iget v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$0:I

    .line 29
    .line 30
    iget-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Ljava/util/Iterator;

    .line 33
    .line 34
    iget-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$6:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v7, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v2, v4

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    iget-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object/from16 v5, p1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 72
    .line 73
    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 74
    .line 75
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 76
    .line 77
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 86
    .line 87
    iput v7, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-ne v5, v1, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_0
    check-cast v5, Ljava/lang/Iterable;

    .line 100
    .line 101
    check-cast v3, Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    move-object v7, v4

    .line 108
    move-object v4, v5

    .line 109
    move-object v5, v3

    .line 110
    move v3, v9

    .line 111
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_6

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 122
    .line 123
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-static {v10, v5, v9}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_4

    .line 132
    .line 133
    iget v10, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 134
    .line 135
    if-lez v10, :cond_4

    .line 136
    .line 137
    sget-object v10, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 138
    .line 139
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iput-object v7, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$6:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$0:I

    .line 154
    .line 155
    iput v6, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 156
    .line 157
    invoke-static {v10, v8, v0}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$default(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    if-ne v8, v1, :cond_5

    .line 162
    .line 163
    :goto_2
    move-object v2, v1

    .line 164
    goto :goto_4

    .line 165
    :cond_5
    :goto_3
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 166
    .line 167
    add-int/lit8 v8, v8, -0x1

    .line 168
    .line 169
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    :goto_4
    return-object v2

    .line 173
    :pswitch_0
    move-object v10, v3

    .line 174
    check-cast v10, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 175
    .line 176
    iget-object v1, v10, Lorg/wikipedia/search/SearchResultsViewModel;->_hybridSearchResultState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 177
    .line 178
    iget-object v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 181
    .line 182
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 183
    .line 184
    iget v8, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 185
    .line 186
    sget-object v15, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    if-eqz v8, :cond_9

    .line 190
    .line 191
    if-eq v8, v7, :cond_8

    .line 192
    .line 193
    if-ne v8, v6, :cond_7

    .line 194
    .line 195
    iget-object v0, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$6:Ljava/lang/Object;

    .line 196
    .line 197
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    move-object v4, v0

    .line 201
    move-object v5, v12

    .line 202
    move-object/from16 v0, p1

    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_7
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    move-object v2, v4

    .line 210
    goto/16 :goto_c

    .line 211
    .line 212
    :cond_8
    iget v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 213
    .line 214
    iget v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$0:I

    .line 215
    .line 216
    iget-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v5, Lkotlinx/coroutines/DeferredCoroutine;

    .line 219
    .line 220
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    move v6, v4

    .line 224
    move-object v7, v5

    .line 225
    move-object v5, v12

    .line 226
    move-object/from16 v4, p1

    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    sget-object v4, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 237
    .line 238
    invoke-virtual {v1, v12, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const-string v4, ""

    .line 242
    .line 243
    iput-object v4, v10, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v4, v10, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 246
    .line 247
    iput-object v4, v10, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v4, v10, Lorg/wikipedia/search/SearchResultsViewModel;->_searchTerm:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 250
    .line 251
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    move-object v11, v4

    .line 256
    check-cast v11, Ljava/lang/String;

    .line 257
    .line 258
    iget-object v4, v10, Lorg/wikipedia/search/SearchResultsViewModel;->_languageCode:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 259
    .line 260
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v11, :cond_b

    .line 267
    .line 268
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-nez v5, :cond_a

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-nez v5, :cond_c

    .line 280
    .line 281
    :cond_b
    :goto_5
    move-object v5, v12

    .line 282
    goto/16 :goto_b

    .line 283
    .line 284
    :cond_c
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    new-instance v8, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 294
    .line 295
    const/4 v13, 0x1

    .line 296
    move-object/from16 v22, v11

    .line 297
    .line 298
    move-object v11, v10

    .line 299
    move-object/from16 v10, v22

    .line 300
    .line 301
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 302
    .line 303
    .line 304
    move-object v5, v11

    .line 305
    move-object v11, v10

    .line 306
    move-object v10, v5

    .line 307
    move-object v5, v12

    .line 308
    const/4 v12, 0x3

    .line 309
    invoke-static {v3, v5, v8, v12}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    move-object v13, v8

    .line 314
    new-instance v8, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;

    .line 315
    .line 316
    move-object/from16 v16, v13

    .line 317
    .line 318
    const/4 v13, 0x0

    .line 319
    move v6, v12

    .line 320
    move-object v12, v9

    .line 321
    move-object v9, v4

    .line 322
    move-object/from16 v4, v16

    .line 323
    .line 324
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;-><init>(Ljava/lang/String;Lorg/wikipedia/search/SearchResultsViewModel;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v3, v5, v8, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    iput-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 334
    .line 335
    iput v6, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$0:I

    .line 336
    .line 337
    iput v6, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 338
    .line 339
    iput v7, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 340
    .line 341
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    if-ne v4, v14, :cond_d

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_d
    move-object v7, v3

    .line 349
    move v3, v6

    .line 350
    :goto_6
    check-cast v4, Lkotlin/Result;

    .line 351
    .line 352
    iget-object v4, v4, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 353
    .line 354
    iput-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$0:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v5, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$5:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->L$6:Ljava/lang/Object;

    .line 359
    .line 360
    iput v6, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$0:I

    .line 361
    .line 362
    iput v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->I$1:I

    .line 363
    .line 364
    const/4 v3, 0x2

    .line 365
    iput v3, v0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;->label:I

    .line 366
    .line 367
    invoke-interface {v7, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    if-ne v0, v14, :cond_e

    .line 372
    .line 373
    :goto_7
    move-object v2, v14

    .line 374
    goto/16 :goto_c

    .line 375
    .line 376
    :cond_e
    :goto_8
    check-cast v0, Lkotlin/Result;

    .line 377
    .line 378
    iget-object v0, v0, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 379
    .line 380
    instance-of v3, v4, Lkotlin/Result$Failure;

    .line 381
    .line 382
    if-eqz v3, :cond_f

    .line 383
    .line 384
    instance-of v3, v0, Lkotlin/Result$Failure;

    .line 385
    .line 386
    if-eqz v3, :cond_f

    .line 387
    .line 388
    new-instance v0, Lorg/wikipedia/util/UiState$Error;

    .line 389
    .line 390
    new-instance v3, Ljava/lang/Throwable;

    .line 391
    .line 392
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-direct {v0, v3}, Lorg/wikipedia/util/UiState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    goto/16 :goto_c

    .line 405
    .line 406
    :cond_f
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    if-nez v3, :cond_10

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_10
    move-object v4, v15

    .line 414
    :goto_9
    check-cast v4, Ljava/lang/Iterable;

    .line 415
    .line 416
    new-instance v3, Ljava/util/HashSet;

    .line 417
    .line 418
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 419
    .line 420
    .line 421
    new-instance v6, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-eqz v7, :cond_12

    .line 435
    .line 436
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    move-object v8, v7

    .line 441
    check-cast v8, Lorg/wikipedia/search/SearchResult;

    .line 442
    .line 443
    iget-object v8, v8, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 444
    .line 445
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_11

    .line 454
    .line 455
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_12
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    if-nez v3, :cond_13

    .line 464
    .line 465
    move-object v15, v0

    .line 466
    :cond_13
    move-object/from16 v16, v15

    .line 467
    .line 468
    check-cast v16, Ljava/util/List;

    .line 469
    .line 470
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 471
    .line 472
    const/16 v3, 0x11

    .line 473
    .line 474
    invoke-direct {v0, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 475
    .line 476
    .line 477
    const/16 v21, 0x1e

    .line 478
    .line 479
    const-string/jumbo v17, "|"

    .line 480
    .line 481
    .line 482
    const/16 v18, 0x0

    .line 483
    .line 484
    const/16 v19, 0x0

    .line 485
    .line 486
    move-object/from16 v20, v0

    .line 487
    .line 488
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    move-object/from16 v15, v16

    .line 493
    .line 494
    iput-object v0, v10, Lorg/wikipedia/search/SearchResultsViewModel;->semanticResultsTitlesForEvent:Ljava/lang/String;

    .line 495
    .line 496
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 497
    .line 498
    const/16 v3, 0x12

    .line 499
    .line 500
    invoke-direct {v0, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 501
    .line 502
    .line 503
    const-string/jumbo v17, "|"

    .line 504
    .line 505
    .line 506
    move-object/from16 v20, v0

    .line 507
    .line 508
    move-object/from16 v16, v6

    .line 509
    .line 510
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    move-object/from16 v3, v16

    .line 515
    .line 516
    iput-object v0, v10, Lorg/wikipedia/search/SearchResultsViewModel;->lexicalResultsTitlesForEvent:Ljava/lang/String;

    .line 517
    .line 518
    new-instance v0, Lorg/wikipedia/util/UiState$Success;

    .line 519
    .line 520
    invoke-static {v3, v15}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-direct {v0, v3}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    goto :goto_c

    .line 534
    :goto_b
    new-instance v0, Lorg/wikipedia/util/UiState$Success;

    .line 535
    .line 536
    invoke-direct {v0, v15}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    :goto_c
    return-object v2

    .line 546
    nop

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
