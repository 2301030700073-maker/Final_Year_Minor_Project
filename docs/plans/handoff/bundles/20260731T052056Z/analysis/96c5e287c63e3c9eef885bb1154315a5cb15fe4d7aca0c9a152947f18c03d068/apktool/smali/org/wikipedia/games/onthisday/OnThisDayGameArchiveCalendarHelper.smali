.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final fragment:Landroidx/fragment/app/Fragment;

.field public final fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

.field public languageCode:Ljava/lang/String;

.field public final onDateSelected:Lkotlin/jvm/functions/Function1;

.field public scoreData:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->languageCode:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->onDateSelected:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->scoreData:Ljava/util/Map;

    .line 16
    .line 17
    new-instance p1, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-direct {p1, p2, p0}, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getDataForArchiveCalendar(ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p3, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 51
    .line 52
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iput v2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1;->label:I

    .line 61
    .line 62
    iget-object p0, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 63
    .line 64
    new-instance v1, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-direct {v1, p1, p2, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-static {p0, v2, p1, v1, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-ne p0, p3, :cond_3

    .line 76
    .line 77
    return-object p3

    .line 78
    :cond_3
    :goto_1
    check-cast p0, Ljava/util/List;

    .line 79
    .line 80
    const/16 p1, 0xa

    .line 81
    .line 82
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/16 p2, 0x10

    .line 91
    .line 92
    if-ge p1, p2, :cond_4

    .line 93
    .line 94
    move p1, p2

    .line 95
    :cond_4
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 115
    .line 116
    sget-object p3, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 117
    .line 118
    iget v0, p1, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 119
    .line 120
    iget v1, p1, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 121
    .line 122
    iget v2, p1, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1, v2}, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;->getDateKey(III)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    new-instance p3, Ljava/lang/Long;

    .line 132
    .line 133
    invoke-direct {p3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 134
    .line 135
    .line 136
    iget p1, p1, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 137
    .line 138
    new-instance v0, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    return-object p2
.end method

.method public final handleDateSelection(J)V
    .locals 10

    .line 1
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, p1

    .line 25
    const/4 p1, 0x5

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sget-object v0, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1, p1}, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;->getDateKey(III)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->scoreData:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const/4 v4, 0x0

    .line 53
    const/16 v2, 0x3f8

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const-string v5, "date_select"

    .line 57
    .line 58
    const-string v6, "game_play"

    .line 59
    .line 60
    const-string v7, "archive_calendar"

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->onDateSelected:Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final maybeShowToastForDate(JLjava/util/Map;)V
    .locals 6

    .line 1
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x5

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v4, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 30
    .line 31
    add-int/2addr v2, p1

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v2, v0}, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;->getDateKey(III)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    aput-object p3, v1, v2

    .line 71
    .line 72
    aput-object v0, v1, p1

    .line 73
    .line 74
    const p1, 0x7f1204e3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p2, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method
