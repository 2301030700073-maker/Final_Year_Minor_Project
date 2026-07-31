.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $useDateFromState:Z

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/util/ArrayList;

.field public L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

.field public L$3:Ljava/util/Iterator;

.field public L$5:Lorg/wikipedia/dataclient/page/PageSummary;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->$useDateFromState:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->$useDateFromState:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 4
    .line 5
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    iget v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v5, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v8

    .line 25
    :pswitch_0
    iget-object v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_b

    .line 33
    .line 34
    :pswitch_1
    iget v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->I$0:I

    .line 35
    .line 36
    iget-object v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$5:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 37
    .line 38
    iget-object v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$3:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 41
    .line 42
    iget-object v7, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v7, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v9, p1

    .line 50
    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :pswitch_2
    iget-object v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$1:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v3, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 58
    .line 59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v5, v3

    .line 63
    move-object/from16 v3, p1

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v5, p1

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_4
    iget-object v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 77
    .line 78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v9, v5

    .line 82
    move-object/from16 v5, p1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v5, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    new-instance v9, Lorg/wikipedia/util/Resource$Loading;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->migrateInProgressGameFromPrefsToDatabase(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-ne v5, v4, :cond_0

    .line 109
    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :cond_0
    :goto_0
    iget-boolean v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->$useDateFromState:Z

    .line 113
    .line 114
    if-eqz v5, :cond_2

    .line 115
    .line 116
    iget-boolean v5, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->overrideDate:Z

    .line 117
    .line 118
    if-nez v5, :cond_2

    .line 119
    .line 120
    iput-object v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    iput v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->determineLastPlayedGameDate(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-ne v5, v4, :cond_1

    .line 130
    .line 131
    goto/16 :goto_a

    .line 132
    .line 133
    :cond_1
    move-object v9, v2

    .line 134
    :goto_1
    check-cast v5, Lj$/time/LocalDate;

    .line 135
    .line 136
    iput-object v5, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 137
    .line 138
    :cond_2
    iget-object v5, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 139
    .line 140
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v5, v9}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    iput-boolean v5, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 149
    .line 150
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 151
    .line 152
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    sget-object v9, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 161
    .line 162
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    iget-object v9, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v10, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 169
    .line 170
    invoke-virtual {v10}, Lj$/time/LocalDate;->getYear()I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    iget-object v10, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 175
    .line 176
    invoke-virtual {v10}, Lj$/time/LocalDate;->getMonthValue()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    iget-object v10, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 181
    .line 182
    invoke-virtual {v10}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    const/4 v10, 0x3

    .line 189
    iput v10, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 190
    .line 191
    iget-object v5, v5, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 192
    .line 193
    new-instance v10, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;

    .line 194
    .line 195
    const/4 v15, 0x0

    .line 196
    move-object/from16 v16, v9

    .line 197
    .line 198
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;-><init>(IIIIILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v6, v7, v10, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-ne v5, v4, :cond_3

    .line 206
    .line 207
    goto/16 :goto_a

    .line 208
    .line 209
    :cond_3
    :goto_2
    check-cast v5, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    iget v9, v5, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 214
    .line 215
    new-instance v10, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    move-object v10, v8

    .line 222
    :goto_3
    iput-object v10, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentGameId:Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    .line 226
    .line 227
    iget-object v9, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iput-object v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$1:Ljava/util/ArrayList;

    .line 235
    .line 236
    const/4 v10, 0x4

    .line 237
    iput v10, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 238
    .line 239
    sget-object v10, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;

    .line 240
    .line 241
    invoke-virtual {v10, v3, v9, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->getGameEvents(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-ne v3, v4, :cond_5

    .line 246
    .line 247
    goto/16 :goto_a

    .line 248
    .line 249
    :cond_5
    :goto_4
    check-cast v3, Ljava/util/Collection;

    .line 250
    .line 251
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    .line 253
    .line 254
    if-eqz v5, :cond_9

    .line 255
    .line 256
    iget v0, v5, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 257
    .line 258
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 259
    .line 260
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    sub-int/2addr v3, v6

    .line 265
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    iget v10, v5, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 270
    .line 271
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 272
    .line 273
    iget-object v0, v5, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 274
    .line 275
    if-eqz v0, :cond_7

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-nez v9, :cond_6

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_6
    :try_start_0
    sget-object v9, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    new-instance v11, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 290
    .line 291
    sget-object v12, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 292
    .line 293
    invoke-direct {v11, v12, v6}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 294
    .line 295
    .line 296
    invoke-static {v11}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 301
    .line 302
    invoke-virtual {v9, v0, v6}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_6

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    :cond_7
    :goto_5
    move-object v0, v8

    .line 312
    :goto_6
    check-cast v0, Ljava/util/List;

    .line 313
    .line 314
    if-nez v0, :cond_8

    .line 315
    .line 316
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 317
    .line 318
    :cond_8
    move-object v11, v0

    .line 319
    invoke-virtual {v2, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->composeQuestionState(I)Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    iget v13, v5, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 324
    .line 325
    new-instance v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 326
    .line 327
    const/16 v14, 0x61

    .line 328
    .line 329
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;-><init>(ILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;II)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_9
    new-instance v10, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 334
    .line 335
    invoke-virtual {v2, v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->composeQuestionState(I)Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 336
    .line 337
    .line 338
    move-result-object v13

    .line 339
    const/4 v14, 0x0

    .line 340
    const/16 v15, 0x77

    .line 341
    .line 342
    const/4 v11, 0x0

    .line 343
    const/4 v12, 0x0

    .line 344
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;-><init>(ILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;II)V

    .line 345
    .line 346
    .line 347
    move-object v9, v10

    .line 348
    :goto_7
    iput-object v9, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 349
    .line 350
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getArticlesMentioned()Ljava/util/ArrayList;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    move-object v6, v5

    .line 364
    move-object v5, v0

    .line 365
    move v0, v7

    .line 366
    move-object v7, v6

    .line 367
    move-object v6, v2

    .line 368
    :cond_a
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_c

    .line 373
    .line 374
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 379
    .line 380
    sget-object v9, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 381
    .line 382
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    invoke-virtual {v9}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    iget-object v10, v6, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 391
    .line 392
    invoke-virtual {v3, v10}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    iput-object v7, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 397
    .line 398
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$1:Ljava/util/ArrayList;

    .line 399
    .line 400
    iput-object v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 401
    .line 402
    iput-object v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$3:Ljava/util/Iterator;

    .line 403
    .line 404
    iput-object v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$5:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 405
    .line 406
    iput v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->I$0:I

    .line 407
    .line 408
    const/4 v11, 0x5

    .line 409
    iput v11, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 410
    .line 411
    invoke-virtual {v9, v10, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    if-ne v9, v4, :cond_b

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_b
    :goto_9
    if-eqz v9, :cond_a

    .line 419
    .line 420
    iget-object v9, v6, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_c
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$0:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$1:Ljava/util/ArrayList;

    .line 429
    .line 430
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 431
    .line 432
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$3:Ljava/util/Iterator;

    .line 433
    .line 434
    iput-object v8, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->L$5:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 435
    .line 436
    const/4 v0, 0x6

    .line 437
    iput v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;->label:I

    .line 438
    .line 439
    invoke-virtual {v2, v7, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->publishGameState(Lorg/wikipedia/games/db/DailyGameHistory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-ne v0, v4, :cond_d

    .line 444
    .line 445
    :goto_a
    return-object v4

    .line 446
    :cond_d
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 447
    .line 448
    return-object v0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
