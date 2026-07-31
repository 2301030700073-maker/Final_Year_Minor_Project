.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _gameState:Landroidx/lifecycle/MutableLiveData;

.field public currentDate:Lj$/time/LocalDate;

.field public currentGameId:Ljava/lang/Integer;

.field public currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

.field public final events:Ljava/util/ArrayList;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public isArchiveGame:Z

.field public final overrideDate:Z

.field public final savedPages:Ljava/util/ArrayList;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    const-string v0, "invokeSource"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 26
    .line 27
    const-string/jumbo v0, "wikiSite"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    iget-object v0, p1, Landroidx/lifecycle/SavedStateHandle;->impl:Lokhttp3/Request$Builder;

    .line 42
    .line 43
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    const-string v1, "date"

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->overrideDate:Z

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    check-cast p1, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 75
    .line 76
    invoke-static {p1, v0}, Lj$/time/LocalDate;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_0
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 86
    .line 87
    new-instance p1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 93
    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x2

    .line 119
    invoke-static {p1, v0, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static getThumbnailUrlForEvent(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v0, v1

    .line 38
    :cond_2
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final composeQuestionState(I)Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 22
    .line 23
    invoke-virtual {v1}, Lj$/time/LocalDate;->getMonthValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 28
    .line 29
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v1, v2

    .line 36
    move-object v2, p1

    .line 37
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;IILjava/lang/Integer;Z)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final determineLastPlayedGameDate(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object p1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->L$3:Lj$/time/LocalDate;

    .line 40
    .line 41
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v4

    .line 52
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 56
    .line 57
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    const v0, 0x7f120638

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const-string v0, ""

    .line 69
    .line 70
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :try_start_1
    sget-object v2, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v5, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 83
    .line 84
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 85
    .line 86
    sget-object v7, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;

    .line 87
    .line 88
    invoke-virtual {v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-direct {v5, v6, v7, v3}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 100
    .line 101
    invoke-virtual {v2, v0, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    check-cast v4, Ljava/util/Map;

    .line 111
    .line 112
    if-nez v4, :cond_5

    .line 113
    .line 114
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    iget-object v0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;

    .line 131
    .line 132
    if-nez v0, :cond_6

    .line 133
    .line 134
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_6
    :try_start_2
    iget-object v2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->sessionDate:Ljava/lang/String;

    .line 143
    .line 144
    sget-object v4, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 145
    .line 146
    invoke-static {v2, v4}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->gamePlayDate:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v0, v4}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 167
    .line 168
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v4, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iget-object v11, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonthValue()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    iput-object v0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->L$3:Lj$/time/LocalDate;

    .line 197
    .line 198
    iput v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$determineLastPlayedGameDate$1;->label:I

    .line 199
    .line 200
    iget-object p0, v2, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 201
    .line 202
    new-instance v5, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    const/4 v10, 0x0

    .line 205
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;-><init>(IIIIILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    invoke-static {p0, v3, v2, v5, p1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    if-ne p0, v1, :cond_7

    .line 214
    .line 215
    return-object v1

    .line 216
    :cond_7
    move-object v12, v0

    .line 217
    move-object v0, p0

    .line 218
    move-object p0, v12

    .line 219
    :goto_3
    check-cast v0, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 220
    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    iget p1, v0, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 224
    .line 225
    if-nez p1, :cond_8

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    goto :goto_4

    .line 233
    :cond_9
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :catch_1
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    :goto_5
    return-object p0
.end method

.method public final getArticlesMentioned()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 23
    .line 24
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v3, v2

    .line 55
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-object v1
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "game_end"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v0, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    const-string v0, "game_play_"

    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, "currentState"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0

    .line 55
    :cond_3
    :goto_0
    const-string p0, "game_loading"

    .line 56
    .line 57
    return-object p0
.end method

.method public final migrateInProgressGameFromPrefsToDatabase(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->label:I

    .line 34
    .line 35
    const v4, 0x7f120636

    .line 36
    .line 37
    .line 38
    const-string v5, ""

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-ne v3, v6, :cond_1

    .line 46
    .line 47
    iget v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->I$0:I

    .line 48
    .line 49
    iget-object v9, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$7:Lj$/time/LocalDate;

    .line 50
    .line 51
    iget-object v10, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$6:Lj$/time/LocalDate;

    .line 52
    .line 53
    iget-object v11, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$4:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v12, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$2:Ljava/util/Iterator;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v8

    .line 68
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 72
    .line 73
    invoke-static {v4, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    move-object v0, v5

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    goto/16 :goto_10

    .line 87
    .line 88
    :cond_4
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 89
    .line 90
    invoke-static {v4, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    move-object v0, v5

    .line 97
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_6

    .line 102
    .line 103
    :goto_1
    move-object v0, v8

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$TotalGameState;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$TotalGameState$Companion;

    .line 111
    .line 112
    invoke-virtual {v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$TotalGameState$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v9}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Lkotlinx/serialization/KSerializer;

    .line 121
    .line 122
    invoke-virtual {v3, v0, v9}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :goto_2
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$TotalGameState;

    .line 133
    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    goto/16 :goto_10

    .line 137
    .line 138
    :cond_7
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$TotalGameState;->langToState:Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v12, v0

    .line 149
    move v3, v7

    .line 150
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_16

    .line 155
    .line 156
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    move-object/from16 v16, v9

    .line 167
    .line 168
    check-cast v16, Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    move-object v9, v0

    .line 175
    check-cast v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 176
    .line 177
    iget-object v0, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v10, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 180
    .line 181
    iget-object v11, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_8

    .line 188
    .line 189
    goto/16 :goto_f

    .line 190
    .line 191
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_9

    .line 196
    .line 197
    goto/16 :goto_f

    .line 198
    .line 199
    :cond_9
    iget v0, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 200
    .line 201
    sget-object v13, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 202
    .line 203
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-ge v0, v13, :cond_15

    .line 208
    .line 209
    iget-object v0, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 210
    .line 211
    sget-object v13, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 212
    .line 213
    invoke-static {v0, v13}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    invoke-static {v11, v13}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    sget-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    invoke-virtual {v14}, Lj$/time/LocalDate;->getYear()I

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    invoke-virtual {v14}, Lj$/time/LocalDate;->getMonthValue()I

    .line 232
    .line 233
    .line 234
    move-result v18

    .line 235
    invoke-virtual {v14}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 236
    .line 237
    .line 238
    move-result v19

    .line 239
    if-eqz v10, :cond_a

    .line 240
    .line 241
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_a

    .line 246
    .line 247
    move/from16 v20, v7

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move v13, v7

    .line 255
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v20

    .line 259
    if-eqz v20, :cond_d

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v20

    .line 265
    check-cast v20, Ljava/lang/Boolean;

    .line 266
    .line 267
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    .line 268
    .line 269
    .line 270
    move-result v20

    .line 271
    if-eqz v20, :cond_b

    .line 272
    .line 273
    add-int/lit8 v13, v13, 0x1

    .line 274
    .line 275
    if-ltz v13, :cond_c

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_c
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 279
    .line 280
    .line 281
    throw v8

    .line 282
    :cond_d
    move/from16 v20, v13

    .line 283
    .line 284
    :goto_5
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v14, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_e

    .line 293
    .line 294
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_ARCHIVE:Lorg/wikipedia/games/PlayTypes;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    :goto_6
    move/from16 v21, v0

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_e
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    goto :goto_6

    .line 310
    :goto_7
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 311
    .line 312
    if-nez v10, :cond_f

    .line 313
    .line 314
    :goto_8
    move-object/from16 v22, v8

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_f
    :try_start_1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    new-instance v13, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 323
    .line 324
    sget-object v4, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 325
    .line 326
    invoke-direct {v13, v4, v6}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v13, v10}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    move-object/from16 v22, v0

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :catch_1
    move-exception v0

    .line 337
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :goto_9
    iget v0, v9, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 342
    .line 343
    new-instance v13, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 344
    .line 345
    move-object v4, v14

    .line 346
    const/4 v14, 0x0

    .line 347
    const/16 v23, 0x0

    .line 348
    .line 349
    move/from16 v24, v0

    .line 350
    .line 351
    invoke-direct/range {v13 .. v24}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v9, v16

    .line 355
    .line 356
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 357
    .line 358
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iput-object v12, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$2:Ljava/util/Iterator;

    .line 367
    .line 368
    iput-object v9, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$4:Ljava/lang/String;

    .line 369
    .line 370
    iput-object v4, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$6:Lj$/time/LocalDate;

    .line 371
    .line 372
    iput-object v11, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->L$7:Lj$/time/LocalDate;

    .line 373
    .line 374
    iput v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->I$0:I

    .line 375
    .line 376
    iput v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$migrateInProgressGameFromPrefsToDatabase$1;->label:I

    .line 377
    .line 378
    iget-object v10, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 379
    .line 380
    new-instance v14, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 381
    .line 382
    const/16 v15, 0x13

    .line 383
    .line 384
    invoke-direct {v14, v15, v0, v13}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v10, v7, v6, v14, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-ne v0, v2, :cond_10

    .line 392
    .line 393
    return-object v2

    .line 394
    :cond_10
    move-object v10, v11

    .line 395
    move-object v11, v9

    .line 396
    move-object v9, v10

    .line 397
    move-object v10, v4

    .line 398
    :goto_a
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 399
    .line 400
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 401
    .line 402
    const v4, 0x7f120638

    .line 403
    .line 404
    .line 405
    invoke-static {v4, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-nez v0, :cond_11

    .line 410
    .line 411
    move-object v0, v5

    .line 412
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 413
    .line 414
    .line 415
    move-result v13

    .line 416
    if-nez v13, :cond_12

    .line 417
    .line 418
    :goto_b
    move-object v0, v8

    .line 419
    goto :goto_c

    .line 420
    :cond_12
    :try_start_2
    sget-object v13, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 421
    .line 422
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    new-instance v14, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 426
    .line 427
    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 428
    .line 429
    sget-object v16, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;

    .line 430
    .line 431
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    invoke-direct {v14, v15, v7, v6}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 436
    .line 437
    .line 438
    invoke-static {v14}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 443
    .line 444
    invoke-virtual {v13, v0, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 448
    goto :goto_c

    .line 449
    :catch_2
    move-exception v0

    .line 450
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :goto_c
    check-cast v0, Ljava/util/Map;

    .line 455
    .line 456
    if-eqz v0, :cond_13

    .line 457
    .line 458
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 459
    .line 460
    invoke-direct {v7, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 461
    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_13
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 465
    .line 466
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 467
    .line 468
    .line 469
    :goto_d
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;

    .line 470
    .line 471
    sget-object v13, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 472
    .line 473
    invoke-virtual {v10, v13}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v13}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-direct {v0, v10, v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 494
    .line 495
    :try_start_3
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    new-instance v9, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 501
    .line 502
    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 503
    .line 504
    sget-object v11, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;

    .line 505
    .line 506
    invoke-virtual {v11}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$LastPlayedInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    invoke-direct {v9, v10, v11, v6}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v9, v7}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 517
    goto :goto_e

    .line 518
    :catch_3
    move-exception v0

    .line 519
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 520
    .line 521
    .line 522
    move-object v0, v8

    .line 523
    :goto_e
    if-nez v0, :cond_14

    .line 524
    .line 525
    move-object v0, v5

    .line 526
    :cond_14
    invoke-static {v4, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 527
    .line 528
    .line 529
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 530
    .line 531
    const v4, 0x7f120636

    .line 532
    .line 533
    .line 534
    invoke-static {v4, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    :cond_15
    :goto_f
    const/4 v7, 0x0

    .line 538
    goto/16 :goto_3

    .line 539
    .line 540
    :cond_16
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 541
    .line 542
    return-object v0
.end method

.method public final publishGameState(Lorg/wikipedia/games/db/DailyGameHistory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 38
    .line 39
    iget-object p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->L$1:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v4

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 56
    .line 57
    const-string v2, "currentState"

    .line 58
    .line 59
    if-eqz p2, :cond_c

    .line 60
    .line 61
    iget v5, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 62
    .line 63
    iget-object v6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    if-nez v5, :cond_4

    .line 66
    .line 67
    iget p0, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 68
    .line 69
    if-nez p0, :cond_3

    .line 70
    .line 71
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;

    .line 72
    .line 73
    invoke-direct {p0, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_3
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 82
    .line 83
    invoke-direct {p0, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_4
    if-ne v5, v3, :cond_b

    .line 92
    .line 93
    sget-object v5, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    iget-object p1, p1, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    move-object p1, v4

    .line 101
    :goto_1
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    :try_start_0
    sget-object v5, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance v7, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 116
    .line 117
    sget-object v8, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 118
    .line 119
    invoke-direct {v7, v8, v3}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 120
    .line 121
    .line 122
    invoke-static {v7}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 127
    .line 128
    invoke-virtual {v5, p1, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_3

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_2
    move-object p1, v4

    .line 138
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 139
    .line 140
    if-nez p1, :cond_8

    .line 141
    .line 142
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 143
    .line 144
    :cond_8
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 145
    .line 146
    if-eqz v5, :cond_a

    .line 147
    .line 148
    iget v2, v5, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 149
    .line 150
    const/16 v5, 0x79

    .line 151
    .line 152
    invoke-static {p2, v2, p1, v4, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->copy$default(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;ILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;I)Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 157
    .line 158
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 159
    .line 160
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 161
    .line 162
    iput-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->L$1:Landroidx/lifecycle/MutableLiveData;

    .line 163
    .line 164
    iput-object p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->L$2:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 165
    .line 166
    iput v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$publishGameState$1;->label:I

    .line 167
    .line 168
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 169
    .line 170
    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 171
    .line 172
    new-instance v2, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;

    .line 173
    .line 174
    invoke-direct {v2, p0, v4}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    if-ne p2, v1, :cond_9

    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_9
    move-object p0, p1

    .line 185
    move-object p1, v6

    .line 186
    :goto_4
    check-cast p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 187
    .line 188
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 189
    .line 190
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v4

    .line 201
    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v4
.end method
