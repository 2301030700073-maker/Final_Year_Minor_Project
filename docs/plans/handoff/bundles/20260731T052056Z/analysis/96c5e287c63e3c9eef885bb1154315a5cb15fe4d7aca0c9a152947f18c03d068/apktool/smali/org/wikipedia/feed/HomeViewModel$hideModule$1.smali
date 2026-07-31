.class public final Lorg/wikipedia/feed/HomeViewModel$hideModule$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $moduleKey:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$moduleKey:Ljava/lang/String;

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
    iget p1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$moduleKey:Ljava/lang/String;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_4
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_5
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_6
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    nop

    .line 65
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    nop

    .line 101
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "commonswiki"

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    iget-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->$moduleKey:Ljava/lang/String;

    .line 10
    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-ne v1, v7, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 38
    .line 39
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 46
    .line 47
    invoke-interface {p1, v5, v3, p0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    move-object v8, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 56
    .line 57
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    :cond_3
    :goto_1
    return-object v8

    .line 66
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 67
    .line 68
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    if-ne v1, v7, :cond_4

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 86
    .line 87
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 94
    .line 95
    invoke-interface {p1, v5, v3, p0}, Lorg/wikipedia/dataclient/Service;->getEntitiesByTitleSuspend(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_6

    .line 100
    .line 101
    move-object v8, v0

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    :goto_2
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities;

    .line 104
    .line 105
    iget-object p0, p1, Lorg/wikipedia/dataclient/wikidata/Entities;->entities:Ljava/util/Map;

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v8, p0

    .line 118
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 119
    .line 120
    :goto_3
    return-object v8

    .line 121
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 122
    .line 123
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 124
    .line 125
    if-eqz v1, :cond_8

    .line 126
    .line 127
    if-ne v1, v7, :cond_7

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    move-object p1, v8

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 142
    .line 143
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object v1, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 158
    .line 159
    iget-object p1, p1, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 160
    .line 161
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 162
    .line 163
    invoke-direct {v3, v1, v5, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v7, v2, v3, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, v0, :cond_9

    .line 171
    .line 172
    move-object p1, v0

    .line 173
    :cond_9
    :goto_4
    return-object p1

    .line 174
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 175
    .line 176
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 177
    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    if-ne v1, v7, :cond_a

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_a
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    move-object p1, v8

    .line 190
    goto :goto_5

    .line 191
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 195
    .line 196
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget-object v1, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {p1, v1, v5, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getCurrentStreak$suspendImpl(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-ne p1, v0, :cond_c

    .line 220
    .line 221
    move-object p1, v0

    .line 222
    :cond_c
    :goto_5
    return-object p1

    .line 223
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 224
    .line 225
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 226
    .line 227
    if-eqz v1, :cond_e

    .line 228
    .line 229
    if-ne v1, v7, :cond_d

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_d
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move-object p1, v8

    .line 239
    goto :goto_6

    .line 240
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 244
    .line 245
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object v1, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {p1, v1, v5, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getBestStreak$suspendImpl(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-ne p1, v0, :cond_f

    .line 269
    .line 270
    move-object p1, v0

    .line 271
    :cond_f
    :goto_6
    return-object p1

    .line 272
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 273
    .line 274
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 275
    .line 276
    if-eqz v1, :cond_11

    .line 277
    .line 278
    if-ne v1, v7, :cond_10

    .line 279
    .line 280
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_10
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    move-object p1, v8

    .line 288
    goto :goto_7

    .line 289
    :cond_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 293
    .line 294
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    sget-object v1, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 309
    .line 310
    iget-object p1, p1, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 311
    .line 312
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 313
    .line 314
    const/4 v4, 0x4

    .line 315
    invoke-direct {v3, v1, v5, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    invoke-static {p1, v7, v2, v3, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    if-ne p1, v0, :cond_12

    .line 323
    .line 324
    move-object p1, v0

    .line 325
    :cond_12
    :goto_7
    return-object p1

    .line 326
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 327
    .line 328
    iget v2, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 329
    .line 330
    if-eqz v2, :cond_14

    .line 331
    .line 332
    if-ne v2, v7, :cond_13

    .line 333
    .line 334
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_13
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    move-object v1, v8

    .line 342
    goto :goto_9

    .line 343
    :cond_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 347
    .line 348
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 349
    .line 350
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 351
    .line 352
    new-instance v2, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 353
    .line 354
    invoke-direct {v2, v5, v4, v8}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 355
    .line 356
    .line 357
    new-instance v3, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 358
    .line 359
    invoke-direct {v3, v2, v8, v4}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 360
    .line 361
    .line 362
    invoke-interface {p1, v3, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    if-ne p0, v0, :cond_15

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_15
    move-object p0, v1

    .line 370
    :goto_8
    if-ne p0, v0, :cond_16

    .line 371
    .line 372
    move-object v1, v0

    .line 373
    :cond_16
    :goto_9
    return-object v1

    .line 374
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 375
    .line 376
    iget v2, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 377
    .line 378
    if-eqz v2, :cond_18

    .line 379
    .line 380
    if-ne v2, v7, :cond_17

    .line 381
    .line 382
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_17
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    move-object v1, v8

    .line 390
    goto :goto_b

    .line 391
    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 395
    .line 396
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;->label:I

    .line 397
    .line 398
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 399
    .line 400
    new-instance v2, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 401
    .line 402
    invoke-direct {v2, v5, v7, v8}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 403
    .line 404
    .line 405
    new-instance v3, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 406
    .line 407
    invoke-direct {v3, v2, v8, v4}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 408
    .line 409
    .line 410
    invoke-interface {p1, v3, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    if-ne p0, v0, :cond_19

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_19
    move-object p0, v1

    .line 418
    :goto_a
    if-ne p0, v0, :cond_1a

    .line 419
    .line 420
    move-object v1, v0

    .line 421
    :cond_1a
    :goto_b
    return-object v1

    .line 422
    nop

    .line 423
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
