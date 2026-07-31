.class public final Lorg/wikipedia/random/RandomActivity$onSaveClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public $title:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/random/RandomActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$title:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->this$0:Ljava/lang/Object;

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

.method public static final invokeSuspend$lambda$0(Lorg/wikipedia/random/RandomActivity;Lorg/wikipedia/page/PageTitle;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v0, 0x1a

    .line 45
    .line 46
    if-lt p2, v0, :cond_1

    .line 47
    .line 48
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v5, 0x0

    .line 58
    const/16 v6, 0x3e

    .line 59
    .line 60
    const-string v2, ", "

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    aput-object p1, v0, v1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    aput-object p2, v0, p1

    .line 80
    .line 81
    const p1, 0x7f120777

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p1, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 11
    .line 12
    invoke-direct {p0, v0, p2}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p1, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$title:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    check-cast v0, Lorg/wikipedia/random/RandomActivity;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/random/RandomActivity;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-object p1

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
    iget v0, p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v5, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 19
    .line 20
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    .line 22
    iget v9, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->label:I

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    if-eqz v9, :cond_1

    .line 26
    .line 27
    if-ne v9, v7, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$title:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 32
    .line 33
    iget-object v0, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/Date;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v3, v0

    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v4, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 55
    .line 56
    invoke-virtual {v4}, Lorg/wikipedia/games/WikiGames;->getSupportLanguages()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/16 v11, 0x10

    .line 71
    .line 72
    if-ge v3, v11, :cond_2

    .line 73
    .line 74
    move v3, v11

    .line 75
    :cond_2
    invoke-direct {v9, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_8

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    move-object v11, v4

    .line 93
    check-cast v11, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v12, "de"

    .line 99
    .line 100
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const/16 v12, 0x7e9

    .line 105
    .line 106
    if-nez v11, :cond_7

    .line 107
    .line 108
    const-string v11, "beta"

    .line 109
    .line 110
    const-string v13, "org.wikipedia"

    .line 111
    .line 112
    invoke-static {v13, v11, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    move v11, v7

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const-string v11, "alpha"

    .line 121
    .line 122
    invoke-static {v13, v11, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-eqz v11, :cond_4

    .line 127
    .line 128
    move v11, v6

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const-string v11, "dev"

    .line 131
    .line 132
    invoke-static {v13, v11, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    const/4 v11, 0x3

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    move v11, v10

    .line 141
    :goto_1
    if-eqz v11, :cond_6

    .line 142
    .line 143
    if-eq v11, v7, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    const/4 v11, 0x5

    .line 147
    const/16 v13, 0x15

    .line 148
    .line 149
    invoke-static {v12, v11, v13}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    :goto_3
    const/16 v11, 0x14

    .line 158
    .line 159
    invoke-static {v12, v6, v11}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    goto :goto_2

    .line 164
    :goto_4
    invoke-interface {v9, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_8
    iget-object v3, v5, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->languageCode:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lj$/time/LocalDate;

    .line 175
    .line 176
    if-eqz v3, :cond_9

    .line 177
    .line 178
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Lj$/time/LocalDate;->atStartOfDay(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_9

    .line 187
    .line 188
    invoke-interface {v3}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    const/4 v3, 0x0

    .line 194
    :goto_5
    invoke-static {v3}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v4, v5, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->languageCode:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v3, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v5, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$title:Ljava/lang/Object;

    .line 203
    .line 204
    iput v7, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->label:I

    .line 205
    .line 206
    sget-object v9, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 207
    .line 208
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-virtual {v5, v9, v4, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->getDataForArchiveCalendar(ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-ne v0, v1, :cond_a

    .line 217
    .line 218
    move-object v2, v1

    .line 219
    goto/16 :goto_9

    .line 220
    .line 221
    :cond_a
    move-object v1, v5

    .line 222
    :goto_6
    check-cast v0, Ljava/util/Map;

    .line 223
    .line 224
    iput-object v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->scoreData:Ljava/util/Map;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v0, Ljava/util/Date;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 232
    .line 233
    .line 234
    iget-object v1, v5, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->scoreData:Ljava/util/Map;

    .line 235
    .line 236
    new-instance v4, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 237
    .line 238
    const/16 v9, 0xc

    .line 239
    .line 240
    invoke-direct {v4, v9, v5}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v11

    .line 247
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 248
    .line 249
    .line 250
    move-result-wide v13

    .line 251
    new-instance v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 252
    .line 253
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    move v15, v7

    .line 257
    sget-wide v7, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    .line 258
    .line 259
    iput-wide v7, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 260
    .line 261
    sget-wide v7, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    .line 262
    .line 263
    iput-wide v7, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 264
    .line 265
    new-instance v7, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 266
    .line 267
    move v8, v10

    .line 268
    move-wide/from16 p0, v11

    .line 269
    .line 270
    const-wide/high16 v10, -0x8000000000000000L

    .line 271
    .line 272
    invoke-direct {v7, v10, v11}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    .line 273
    .line 274
    .line 275
    iput-object v7, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 278
    .line 279
    .line 280
    move-result-wide v10

    .line 281
    iput-wide v10, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 282
    .line 283
    iput-wide v13, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 284
    .line 285
    const-wide/32 v10, 0x5265c00

    .line 286
    .line 287
    .line 288
    sub-long v10, p0, v10

    .line 289
    .line 290
    new-instance v7, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 291
    .line 292
    invoke-direct {v7, v10, v11}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    .line 293
    .line 294
    .line 295
    new-instance v10, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    .line 296
    .line 297
    invoke-direct {v10, v13, v14}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    .line 298
    .line 299
    .line 300
    new-array v6, v6, [Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 301
    .line 302
    aput-object v7, v6, v8

    .line 303
    .line 304
    aput-object v10, v6, v15

    .line 305
    .line 306
    invoke-static {v6}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    new-instance v7, Lcom/google/android/material/datepicker/CompositeDateValidator;

    .line 311
    .line 312
    sget-object v10, Lcom/google/android/material/datepicker/CompositeDateValidator;->ALL_OPERATOR:Landroidx/collection/internal/Lock;

    .line 313
    .line 314
    invoke-direct {v7, v6, v10}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V

    .line 315
    .line 316
    .line 317
    iput-object v7, v9, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 318
    .line 319
    invoke-virtual {v9}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    iget-object v7, v6, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 324
    .line 325
    iget-object v9, v6, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 326
    .line 327
    new-instance v10, Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 328
    .line 329
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 330
    .line 331
    .line 332
    iget-object v5, v5, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 333
    .line 334
    const v11, 0x7f1204b7

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    new-instance v12, Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 342
    .line 343
    invoke-direct {v12, v3, v0, v1}, Lorg/wikipedia/games/onthisday/DateDecorator;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v13, v14}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    .line 347
    .line 348
    .line 349
    move-result-wide v0

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iput-object v0, v10, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 355
    .line 356
    iget-object v0, v6, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 357
    .line 358
    if-nez v0, :cond_d

    .line 359
    .line 360
    invoke-virtual {v10}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelectedDays()Ljava/util/ArrayList;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_b

    .line 369
    .line 370
    invoke-virtual {v10}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelectedDays()Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Ljava/lang/Long;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 385
    .line 386
    .line 387
    move-result-wide v0

    .line 388
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0, v9}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-ltz v1, :cond_b

    .line 397
    .line 398
    invoke-virtual {v0, v7}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-gtz v1, :cond_b

    .line 403
    .line 404
    :goto_7
    move-object v9, v0

    .line 405
    goto :goto_8

    .line 406
    :cond_b
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    .line 407
    .line 408
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v9}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-ltz v1, :cond_c

    .line 420
    .line 421
    invoke-virtual {v0, v7}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-gtz v1, :cond_c

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_c
    :goto_8
    iput-object v9, v6, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 429
    .line 430
    :cond_d
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 431
    .line 432
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

    .line 433
    .line 434
    .line 435
    new-instance v1, Landroid/os/Bundle;

    .line 436
    .line 437
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 438
    .line 439
    .line 440
    const-string v3, "OVERRIDE_THEME_RES_ID"

    .line 441
    .line 442
    const v7, 0x7f1301bb

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 446
    .line 447
    .line 448
    const-string v3, "DATE_SELECTOR_KEY"

    .line 449
    .line 450
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 451
    .line 452
    .line 453
    const-string v3, "CALENDAR_CONSTRAINTS_KEY"

    .line 454
    .line 455
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    .line 457
    .line 458
    const-string v3, "DAY_VIEW_DECORATOR_KEY"

    .line 459
    .line 460
    invoke-virtual {v1, v3, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    .line 462
    .line 463
    const-string v3, "TITLE_TEXT_RES_ID_KEY"

    .line 464
    .line 465
    const v6, 0x7f12042b

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 469
    .line 470
    .line 471
    const-string v3, "TITLE_TEXT_KEY"

    .line 472
    .line 473
    invoke-virtual {v1, v3, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    const-string v3, "INPUT_MODE_KEY"

    .line 477
    .line 478
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 479
    .line 480
    .line 481
    const-string v3, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 482
    .line 483
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    const-string v3, "POSITIVE_BUTTON_TEXT_KEY"

    .line 487
    .line 488
    const/4 v6, 0x0

    .line 489
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    const-string v3, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 493
    .line 494
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    const-string v3, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 498
    .line 499
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    const-string v3, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 503
    .line 504
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 505
    .line 506
    .line 507
    const-string v3, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 508
    .line 509
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 510
    .line 511
    .line 512
    const-string v3, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 513
    .line 514
    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 515
    .line 516
    .line 517
    const-string v3, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 518
    .line 519
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 523
    .line 524
    .line 525
    new-instance v1, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 526
    .line 527
    const/16 v3, 0xb

    .line 528
    .line 529
    invoke-direct {v1, v3, v4}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$$ExternalSyntheticLambda1;

    .line 533
    .line 534
    invoke-direct {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;)V

    .line 535
    .line 536
    .line 537
    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 538
    .line 539
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const-string v3, "datePicker"

    .line 547
    .line 548
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_9
    return-object v2

    .line 552
    :pswitch_0
    move v15, v7

    .line 553
    iget-object v1, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->$title:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 556
    .line 557
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 558
    .line 559
    iget v8, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->label:I

    .line 560
    .line 561
    if-eqz v8, :cond_10

    .line 562
    .line 563
    if-eq v8, v15, :cond_f

    .line 564
    .line 565
    if-ne v8, v6, :cond_e

    .line 566
    .line 567
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v0, p1

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_e
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    goto :goto_d

    .line 578
    :cond_f
    iget-object v4, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->L$0:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v4, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 581
    .line 582
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    move-object/from16 v8, p1

    .line 586
    .line 587
    goto :goto_a

    .line 588
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 592
    .line 593
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-virtual {v8}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    iput-object v4, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->L$0:Ljava/lang/Object;

    .line 610
    .line 611
    const/4 v15, 0x1

    .line 612
    iput v15, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->label:I

    .line 613
    .line 614
    invoke-virtual {v8, v1, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getAllPageOccurrences(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    if-ne v8, v7, :cond_11

    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_11
    :goto_a
    check-cast v8, Ljava/util/List;

    .line 622
    .line 623
    const/4 v9, 0x0

    .line 624
    iput-object v9, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->L$0:Ljava/lang/Object;

    .line 625
    .line 626
    iput v6, v0, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->label:I

    .line 627
    .line 628
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-static {v4, v8, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getListsFromPageOccurrences$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    if-ne v0, v7, :cond_12

    .line 636
    .line 637
    :goto_b
    move-object v2, v7

    .line 638
    goto :goto_d

    .line 639
    :cond_12
    :goto_c
    check-cast v0, Ljava/util/List;

    .line 640
    .line 641
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 642
    .line 643
    .line 644
    move-result v4

    .line 645
    if-eqz v4, :cond_13

    .line 646
    .line 647
    goto :goto_d

    .line 648
    :cond_13
    new-instance v4, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 649
    .line 650
    invoke-direct {v4, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;)V

    .line 651
    .line 652
    .line 653
    check-cast v5, Lorg/wikipedia/random/RandomActivity;

    .line 654
    .line 655
    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 656
    .line 657
    invoke-direct {v0, v3, v5, v1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4, v5, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->deleteOrShowDialog(Landroid/app/Activity;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 661
    .line 662
    .line 663
    :goto_d
    return-object v2

    .line 664
    nop

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
