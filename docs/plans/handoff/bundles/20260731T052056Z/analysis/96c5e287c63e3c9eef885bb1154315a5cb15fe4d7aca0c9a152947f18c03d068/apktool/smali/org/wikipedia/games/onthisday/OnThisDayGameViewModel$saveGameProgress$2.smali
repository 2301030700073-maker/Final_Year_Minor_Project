.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $nextQuestionIndex:I

.field public final synthetic $status:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2
    .line 3
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$status:I

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$nextQuestionIndex:I

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
    new-instance p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;

    .line 2
    .line 3
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$status:I

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$nextQuestionIndex:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;IILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 4
    .line 5
    iget-object v3, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->label:I

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-ne v0, v5, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v6

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentGameId:Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    move v9, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v9, 0x0

    .line 44
    :goto_0
    sget-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    iget-object v11, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 53
    .line 54
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 59
    .line 60
    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonthValue()I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 65
    .line 66
    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 71
    .line 72
    const-string v8, "currentState"

    .line 73
    .line 74
    if-eqz v0, :cond_10

    .line 75
    .line 76
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    if-eqz v15, :cond_3

    .line 85
    .line 86
    const/4 v15, 0x0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v15, 0x0

    .line 93
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    if-eqz v16, :cond_6

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    check-cast v16, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    if-eqz v16, :cond_4

    .line 110
    .line 111
    add-int/lit8 v15, v15, 0x1

    .line 112
    .line 113
    if-ltz v15, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 117
    .line 118
    .line 119
    throw v6

    .line 120
    :cond_6
    :goto_2
    iget-boolean v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_ARCHIVE:Lorg/wikipedia/games/PlayTypes;

    .line 125
    .line 126
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move/from16 v16, v0

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_4
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 137
    .line 138
    iget-object v0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 139
    .line 140
    if-eqz v0, :cond_f

    .line 141
    .line 142
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 143
    .line 144
    if-nez v0, :cond_8

    .line 145
    .line 146
    move-object/from16 v17, v6

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    :try_start_0
    sget-object v8, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v6, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 155
    .line 156
    sget-object v7, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 157
    .line 158
    invoke-direct {v6, v7, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v6, v0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    move-object/from16 v17, v0

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    :goto_5
    new-instance v8, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 175
    .line 176
    iget v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$status:I

    .line 177
    .line 178
    iget v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->$nextQuestionIndex:I

    .line 179
    .line 180
    move/from16 v18, v0

    .line 181
    .line 182
    move/from16 v19, v6

    .line 183
    .line 184
    invoke-direct/range {v8 .. v19}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 188
    .line 189
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$saveGameProgress$2;->label:I

    .line 198
    .line 199
    iget-object v6, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 200
    .line 201
    new-instance v7, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 202
    .line 203
    const/16 v9, 0x13

    .line 204
    .line 205
    invoke-direct {v7, v9, v0, v8}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    invoke-static {v6, v8, v5, v7, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-ne v0, v4, :cond_9

    .line 214
    .line 215
    return-object v4

    .line 216
    :cond_9
    :goto_6
    check-cast v0, Ljava/lang/Number;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v0

    .line 222
    long-to-int v0, v0

    .line 223
    if-lez v0, :cond_a

    .line 224
    .line 225
    new-instance v1, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 228
    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_a
    iget-object v1, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentGameId:Ljava/lang/Integer;

    .line 232
    .line 233
    :goto_7
    iput-object v1, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentGameId:Ljava/lang/Integer;

    .line 234
    .line 235
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 236
    .line 237
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 238
    .line 239
    const v1, 0x7f120638

    .line 240
    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    invoke-static {v1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v4, ""

    .line 248
    .line 249
    if-nez v0, :cond_b

    .line 250
    .line 251
    move-object v0, v4

    .line 252
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_c

    .line 257
    .line 258
    :goto_8
    const/4 v0, 0x0

    .line 259
    goto :goto_9

    .line 260
    :cond_c
    :try_start_1
    sget-object v6, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    new-instance v7, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 266
    .line 267
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 268
    .line 269
    sget-object v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;

    .line 270
    .line 271
    invoke-virtual {v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-direct {v7, v8, v9, v5}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 276
    .line 277
    .line 278
    invoke-static {v7}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 283
    .line 284
    invoke-virtual {v6, v0, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    goto :goto_9

    .line 289
    :catch_1
    move-exception v0

    .line 290
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :goto_9
    check-cast v0, Ljava/util/Map;

    .line 295
    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 299
    .line 300
    invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 301
    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_d
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 305
    .line 306
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 307
    .line 308
    .line 309
    :goto_a
    iget-object v0, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 310
    .line 311
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;

    .line 312
    .line 313
    iget-object v2, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 314
    .line 315
    sget-object v7, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 316
    .line 317
    invoke-virtual {v2, v7}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-virtual {v8, v7}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-direct {v3, v2, v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 342
    .line 343
    :try_start_2
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v2, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 349
    .line 350
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 351
    .line 352
    sget-object v7, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;

    .line 353
    .line 354
    invoke-virtual {v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-direct {v2, v3, v7, v5}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2, v6}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    goto :goto_b

    .line 366
    :catch_2
    move-exception v0

    .line 367
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    const/4 v6, 0x0

    .line 371
    :goto_b
    if-nez v6, :cond_e

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_e
    move-object v4, v6

    .line 375
    :goto_c
    invoke-static {v1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 379
    .line 380
    return-object v0

    .line 381
    :cond_f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const/16 v20, 0x0

    .line 385
    .line 386
    throw v20

    .line 387
    :cond_10
    move-object/from16 v20, v6

    .line 388
    .line 389
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v20
.end method
