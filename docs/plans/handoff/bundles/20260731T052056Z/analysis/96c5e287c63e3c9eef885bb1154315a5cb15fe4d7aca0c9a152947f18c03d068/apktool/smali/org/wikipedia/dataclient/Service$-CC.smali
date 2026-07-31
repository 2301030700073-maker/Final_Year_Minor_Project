.class public abstract synthetic Lorg/wikipedia/dataclient/Service$-CC;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static $default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static $private$addPageToList(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 53
    .line 54
    invoke-direct {p3, p2}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 58
    .line 59
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToList$1;->label:I

    .line 60
    .line 61
    invoke-static {p0, p1, p3, v0}, Lorg/wikipedia/dataclient/Service$-CC;->$private$insertPageIntoDb(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-ne p0, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    return-object p3
.end method

.method public static $private$createNewList(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance p3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 55
    .line 56
    invoke-direct {p3, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 60
    .line 61
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 62
    .line 63
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$createNewList$1;->label:I

    .line 64
    .line 65
    iget-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 66
    .line 67
    new-instance p2, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {p2, p0, p3, v2}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v2, v3, p2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-ne p0, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    move-object p1, p3

    .line 81
    move-object p3, p0

    .line 82
    move-object p0, p1

    .line 83
    :goto_1
    check-cast p3, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide p2

    .line 89
    iput-wide p2, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 90
    .line 91
    return-object p1
.end method

.method public static $private$insertPageIntoDb(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-wide v4, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 53
    .line 54
    iput-wide v4, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 55
    .line 56
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 57
    .line 58
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$insertPageIntoDb$1;->label:I

    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    new-instance p3, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-direct {p3, p0, p2, v2}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingListPage;I)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    invoke-static {p1, p0, v3, p3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-ne p3, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide p0

    .line 82
    iput-wide p0, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 83
    .line 84
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method public static $private$toHistoryEntry(Lorg/wikipedia/history/db/HistoryEntryWithImage;)Lorg/wikipedia/history/HistoryEntry;
    .locals 11

    .line 1
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v5, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 12
    .line 13
    iget-object v7, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 16
    .line 17
    iget v9, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 18
    .line 19
    const/16 v10, 0x100

    .line 20
    .line 21
    invoke-direct/range {v0 .. v10}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, v1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object p0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p0, v1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method public static addObject$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;

    .line 15
    .line 16
    iget v5, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v6, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x4

    .line 41
    const/4 v9, 0x3

    .line 42
    const/4 v10, 0x2

    .line 43
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    .line 45
    const/4 v12, 0x1

    .line 46
    const/4 v13, 0x0

    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    if-eq v6, v12, :cond_4

    .line 50
    .line 51
    if-eq v6, v10, :cond_3

    .line 52
    .line 53
    if-eq v6, v9, :cond_1

    .line 54
    .line 55
    if-ne v6, v8, :cond_2

    .line 56
    .line 57
    :cond_1
    iget-object v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 58
    .line 59
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v11

    .line 65
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v13

    .line 71
    :cond_3
    iget v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->I$0:I

    .line 72
    .line 73
    iget-object v1, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 74
    .line 75
    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 76
    .line 77
    iget-object v2, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 78
    .line 79
    iget-object v6, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v14, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 82
    .line 83
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_4
    iget-object v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 89
    .line 90
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    iget-object v1, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 93
    .line 94
    iget-object v2, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$4:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v6, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v14, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$2:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v15, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$1:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v8, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move-object v9, v3

    .line 108
    move-object/from16 v20, v14

    .line 109
    .line 110
    move-object/from16 v19, v15

    .line 111
    .line 112
    move-object v3, v0

    .line 113
    move-object v0, v8

    .line 114
    :goto_1
    move-object/from16 v21, v6

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-static {v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iput-object v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 122
    .line 123
    iput-object v1, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$1:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v2, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$2:Ljava/lang/String;

    .line 126
    .line 127
    move-object/from16 v6, p3

    .line 128
    .line 129
    iput-object v6, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 130
    .line 131
    move-object/from16 v8, p4

    .line 132
    .line 133
    iput-object v8, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$4:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v3, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 136
    .line 137
    iput-object v3, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 138
    .line 139
    iput v12, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 140
    .line 141
    iget-object v14, v0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 142
    .line 143
    new-instance v15, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 144
    .line 145
    const/16 v9, 0x17

    .line 146
    .line 147
    invoke-direct {v15, v9, v1, v2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v14, v12, v7, v15, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    if-ne v9, v5, :cond_6

    .line 155
    .line 156
    goto/16 :goto_8

    .line 157
    .line 158
    :cond_6
    move-object/from16 v19, v1

    .line 159
    .line 160
    move-object/from16 v20, v2

    .line 161
    .line 162
    move-object v1, v3

    .line 163
    move-object v2, v8

    .line 164
    goto :goto_1

    .line 165
    :goto_2
    iput-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    .line 167
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 173
    .line 174
    if-nez v6, :cond_7

    .line 175
    .line 176
    new-instance v16, Lorg/wikipedia/offline/db/OfflineObject;

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    const-string v22, ""

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    invoke-direct/range {v16 .. v22}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v8, v16

    .line 188
    .line 189
    move-object/from16 v6, v21

    .line 190
    .line 191
    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 192
    .line 193
    move v8, v12

    .line 194
    goto :goto_3

    .line 195
    :cond_7
    move-object/from16 v6, v21

    .line 196
    .line 197
    move v8, v7

    .line 198
    :goto_3
    sget-object v9, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 199
    .line 200
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v9}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    new-instance v14, Lorg/wikipedia/page/PageTitle;

    .line 209
    .line 210
    sget-object v15, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 211
    .line 212
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static/range {v20 .. v20}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    invoke-direct {v14, v2, v15, v13}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iput-object v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 223
    .line 224
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$1:Ljava/lang/String;

    .line 225
    .line 226
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$2:Ljava/lang/String;

    .line 227
    .line 228
    iput-object v6, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 229
    .line 230
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$4:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v1, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 233
    .line 234
    iput-object v3, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 235
    .line 236
    iput v8, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->I$0:I

    .line 237
    .line 238
    iput v10, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 239
    .line 240
    invoke-virtual {v9, v14, v4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getAllPageOccurrences(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-ne v2, v5, :cond_8

    .line 245
    .line 246
    goto/16 :goto_8

    .line 247
    .line 248
    :cond_8
    move-object v14, v2

    .line 249
    move-object v2, v1

    .line 250
    move-object v1, v3

    .line 251
    move-object v3, v14

    .line 252
    move-object v14, v0

    .line 253
    move v0, v8

    .line 254
    :goto_4
    check-cast v3, Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_a

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 271
    .line 272
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v9, Lorg/wikipedia/offline/db/OfflineObject;

    .line 275
    .line 276
    invoke-virtual {v9}, Lorg/wikipedia/offline/db/OfflineObject;->getUsedBy()Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    move-object v15, v11

    .line 281
    iget-wide v10, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 282
    .line 283
    new-instance v7, Ljava/lang/Long;

    .line 284
    .line 285
    invoke-direct {v7, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-nez v7, :cond_9

    .line 293
    .line 294
    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v7, Lorg/wikipedia/offline/db/OfflineObject;

    .line 297
    .line 298
    iget-wide v8, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 299
    .line 300
    invoke-virtual {v7}, Lorg/wikipedia/offline/db/OfflineObject;->getUsedBy()Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v10}, Lorg/wikipedia/offline/db/OfflineObject;->updateUsedBy(Ljava/util/Set;)V

    .line 316
    .line 317
    .line 318
    iput-boolean v12, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 319
    .line 320
    :cond_9
    move-object v11, v15

    .line 321
    const/4 v7, 0x0

    .line 322
    const/4 v10, 0x2

    .line 323
    goto :goto_5

    .line 324
    :cond_a
    move-object v15, v11

    .line 325
    if-eqz v0, :cond_c

    .line 326
    .line 327
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 330
    .line 331
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 332
    .line 333
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$1:Ljava/lang/String;

    .line 334
    .line 335
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$2:Ljava/lang/String;

    .line 336
    .line 337
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 338
    .line 339
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$4:Ljava/lang/String;

    .line 340
    .line 341
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 342
    .line 343
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 344
    .line 345
    iput v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->I$0:I

    .line 346
    .line 347
    const/4 v0, 0x3

    .line 348
    iput v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 349
    .line 350
    iget-object v0, v14, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 351
    .line 352
    new-instance v2, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;

    .line 353
    .line 354
    const/4 v3, 0x2

    .line 355
    invoke-direct {v2, v14, v1, v3}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lorg/wikipedia/offline/db/OfflineObject;I)V

    .line 356
    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    invoke-static {v0, v1, v12, v2, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 364
    .line 365
    if-ne v0, v1, :cond_b

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_b
    move-object v0, v15

    .line 369
    :goto_6
    if-ne v0, v5, :cond_f

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_c
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 373
    .line 374
    if-eqz v1, :cond_f

    .line 375
    .line 376
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 379
    .line 380
    iget-object v1, v1, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-nez v1, :cond_d

    .line 387
    .line 388
    const-string v1, "Existing offline object path is inconsistent."

    .line 389
    .line 390
    sget-object v3, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 391
    .line 392
    invoke-virtual {v3, v1, v13}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    .line 394
    .line 395
    :cond_d
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 398
    .line 399
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 400
    .line 401
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$1:Ljava/lang/String;

    .line 402
    .line 403
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$2:Ljava/lang/String;

    .line 404
    .line 405
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$3:Ljava/lang/String;

    .line 406
    .line 407
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$4:Ljava/lang/String;

    .line 408
    .line 409
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 410
    .line 411
    iput-object v13, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->L$6:Ljava/io/Serializable;

    .line 412
    .line 413
    iput v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->I$0:I

    .line 414
    .line 415
    const/4 v0, 0x4

    .line 416
    iput v0, v4, Lorg/wikipedia/offline/db/OfflineObjectDao$addObject$1;->label:I

    .line 417
    .line 418
    iget-object v0, v14, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 419
    .line 420
    new-instance v2, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;

    .line 421
    .line 422
    invoke-direct {v2, v14, v1, v12}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lorg/wikipedia/offline/db/OfflineObject;I)V

    .line 423
    .line 424
    .line 425
    const/4 v1, 0x0

    .line 426
    invoke-static {v0, v1, v12, v2, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 431
    .line 432
    if-ne v0, v1, :cond_e

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_e
    move-object v0, v15

    .line 436
    :goto_7
    if-ne v0, v5, :cond_f

    .line 437
    .line 438
    :goto_8
    return-object v5

    .line 439
    :cond_f
    return-object v15
.end method

.method public static addPageToLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->label:I

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
    iput v2, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v6, :cond_2

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->Z$0:Z

    .line 47
    .line 48
    iget-object v4, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$3:Ljava/util/Iterator;

    .line 49
    .line 50
    iget-object v8, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 51
    .line 52
    iget-object v9, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v0, v8

    .line 58
    move-object v8, v1

    .line 59
    move v1, v2

    .line 60
    move-object v2, v9

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v7

    .line 68
    :cond_2
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->Z$0:Z

    .line 69
    .line 70
    iget-object v4, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 71
    .line 72
    iget-object v8, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$3:Ljava/util/Iterator;

    .line 73
    .line 74
    iget-object v9, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 75
    .line 76
    iget-object v10, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v16, v10

    .line 82
    .line 83
    move-object v10, v1

    .line 84
    move v1, v2

    .line 85
    move-object/from16 v2, v16

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v4, v0

    .line 96
    move-object v8, v1

    .line 97
    move-object/from16 v0, p2

    .line 98
    .line 99
    move/from16 v1, p3

    .line 100
    .line 101
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_7

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v12, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 117
    .line 118
    iget-object v10, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iput-object v10, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v10, Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    iget-object v11, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v14, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v15, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 137
    .line 138
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput-object v2, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 142
    .line 143
    iput-object v0, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 144
    .line 145
    iput-object v4, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$3:Ljava/util/Iterator;

    .line 146
    .line 147
    iput-object v9, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 148
    .line 149
    iput-boolean v1, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->Z$0:Z

    .line 150
    .line 151
    iput v6, v8, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->label:I

    .line 152
    .line 153
    invoke-virtual {v2, v9, v10, v8}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    if-ne v10, v3, :cond_4

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    move-object/from16 v16, v9

    .line 161
    .line 162
    move-object v9, v0

    .line 163
    move-object v0, v10

    .line 164
    move-object v10, v8

    .line 165
    move-object v8, v4

    .line 166
    move-object/from16 v4, v16

    .line 167
    .line 168
    :goto_2
    if-eqz v0, :cond_6

    .line 169
    .line 170
    :cond_5
    move-object v4, v8

    .line 171
    move-object v0, v9

    .line 172
    move-object v8, v10

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    const-wide/16 v11, 0x0

    .line 175
    .line 176
    iput-wide v11, v9, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 177
    .line 178
    iput-object v2, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 179
    .line 180
    iput-object v9, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 181
    .line 182
    iput-object v8, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$3:Ljava/util/Iterator;

    .line 183
    .line 184
    iput-object v7, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 185
    .line 186
    iput-boolean v1, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->Z$0:Z

    .line 187
    .line 188
    iput v5, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPageToLists$1;->label:I

    .line 189
    .line 190
    invoke-static {v2, v4, v9, v10}, Lorg/wikipedia/dataclient/Service$-CC;->$private$insertPageIntoDb(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-ne v0, v3, :cond_5

    .line 195
    .line 196
    :goto_3
    return-object v3

    .line 197
    :cond_7
    sget-object v2, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 198
    .line 199
    new-instance v2, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 200
    .line 201
    new-array v3, v6, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 202
    .line 203
    const/4 v4, 0x0

    .line 204
    aput-object v0, v3, v4

    .line 205
    .line 206
    invoke-direct {v2, v6, v3}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;-><init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 213
    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 218
    .line 219
    .line 220
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 221
    .line 222
    return-object v0
.end method

.method public static addPagesToList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-boolean p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->Z$0:Z

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$3:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$2:Ljava/util/List;

    .line 41
    .line 42
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object p4, p3

    .line 50
    move-object p3, p2

    .line 51
    move-object p2, p4

    .line 52
    move p4, p0

    .line 53
    move-object p0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    move-object v4, p2

    .line 70
    move-object p2, p1

    .line 71
    move-object p1, p4

    .line 72
    move p4, p3

    .line 73
    move-object p3, v4

    .line 74
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 85
    .line 86
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 87
    .line 88
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 89
    .line 90
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$2:Ljava/util/List;

    .line 91
    .line 92
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->L$3:Ljava/util/Iterator;

    .line 93
    .line 94
    iput-boolean p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->Z$0:Z

    .line 95
    .line 96
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToList$1;->label:I

    .line 97
    .line 98
    invoke-static {p0, p2, v2, v0}, Lorg/wikipedia/dataclient/Service$-CC;->$private$insertPageIntoDb(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-ne v2, v1, :cond_3

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_4
    sget-object p0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 106
    .line 107
    new-instance p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    new-array p1, p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 111
    .line 112
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 117
    .line 118
    array-length p2, p1

    .line 119
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 124
    .line 125
    invoke-direct {p0, v3, p1}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;-><init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 132
    .line 133
    .line 134
    if-eqz p4, :cond_5

    .line 135
    .line 136
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 137
    .line 138
    .line 139
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0
.end method

.method public static addPagesToListIfNotExist$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 8

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$4:Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$3:Ljava/util/List;

    .line 43
    .line 44
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 45
    .line 46
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 47
    .line 48
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v6, v0

    .line 52
    move-object v0, p1

    .line 53
    move-object p1, p2

    .line 54
    move-object p2, p0

    .line 55
    move-object p0, v2

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v5

    .line 64
    :cond_2
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 65
    .line 66
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$4:Ljava/util/Iterator;

    .line 67
    .line 68
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$3:Ljava/util/List;

    .line 69
    .line 70
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 71
    .line 72
    iget-object v6, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 73
    .line 74
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move-object v7, v2

    .line 78
    move-object v2, p0

    .line 79
    move-object p0, v6

    .line 80
    move-object v6, v0

    .line 81
    move-object v0, p2

    .line 82
    move-object p2, p1

    .line 83
    move-object p1, v7

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance p3, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 108
    .line 109
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 110
    .line 111
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 112
    .line 113
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$3:Ljava/util/List;

    .line 114
    .line 115
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$4:Ljava/util/Iterator;

    .line 116
    .line 117
    iput-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 118
    .line 119
    iput v4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->label:I

    .line 120
    .line 121
    invoke-virtual {p0, p1, v2, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-ne v6, v1, :cond_4

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    move-object v7, v0

    .line 129
    move-object v0, p3

    .line 130
    move-object p3, v6

    .line 131
    move-object v6, v7

    .line 132
    :goto_2
    if-eqz p3, :cond_5

    .line 133
    .line 134
    :goto_3
    move-object p3, v0

    .line 135
    move-object v0, v6

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    iput-object p0, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 138
    .line 139
    iput-object p1, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 140
    .line 141
    iput-object v0, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$3:Ljava/util/List;

    .line 142
    .line 143
    iput-object p2, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$4:Ljava/util/Iterator;

    .line 144
    .line 145
    iput-object v5, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 146
    .line 147
    iput v3, v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao$addPagesToListIfNotExist$1;->label:I

    .line 148
    .line 149
    invoke-static {p0, p1, v2, v6}, Lorg/wikipedia/dataclient/Service$-CC;->$private$addPageToList(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    if-ne p3, v1, :cond_6

    .line 154
    .line 155
    :goto_4
    return-object v1

    .line 156
    :cond_6
    :goto_5
    check-cast p3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 157
    .line 158
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_8

    .line 167
    .line 168
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 172
    .line 173
    .line 174
    sget-object p0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 175
    .line 176
    new-instance p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 177
    .line 178
    const/4 p1, 0x0

    .line 179
    new-array p1, p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 180
    .line 181
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 186
    .line 187
    array-length p2, p1

    .line 188
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 193
    .line 194
    invoke-direct {p0, v4, p1}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;-><init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    .line 201
    .line 202
    const/16 p1, 0xa

    .line 203
    .line 204
    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_9

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 226
    .line 227
    iget-object p2, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_9
    return-object p0
.end method

.method public static deleteList$default(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, p1, v0, p2}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static deleteList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    iget-boolean p2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->Z$0:Z

    .line 40
    .line 41
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    const-string p0, "Attempted to delete the default list."

    .line 63
    .line 64
    sget-object p1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 65
    .line 66
    invoke-virtual {p1, p0, v3}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-object v4

    .line 70
    :cond_3
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 71
    .line 72
    iput-boolean p2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->Z$0:Z

    .line 73
    .line 74
    iput v5, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$deleteList$1;->label:I

    .line 75
    .line 76
    iget-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 77
    .line 78
    new-instance v2, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v3, 0x2

    .line 81
    invoke-direct {v2, p0, p1, v3}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    invoke-static {p3, p0, v5, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v1, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    move-object p0, v4

    .line 93
    :goto_1
    if-ne p0, v1, :cond_5

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_5
    :goto_2
    if-eqz p2, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-wide p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 102
    .line 103
    const-wide/16 p2, 0x0

    .line 104
    .line 105
    cmp-long p2, p0, p2

    .line 106
    .line 107
    if-gtz p2, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 111
    .line 112
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListsDeletedIds()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    move-object p2, p0

    .line 131
    check-cast p2, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    const/16 p3, 0x100

    .line 141
    .line 142
    if-ge p2, p3, :cond_7

    .line 143
    .line 144
    move-object p0, p1

    .line 145
    :cond_7
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_3
    return-object v4
.end method

.method public static deleteObjectsForPageId$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

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
    iput v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

    .line 36
    .line 37
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    if-eq v4, v8, :cond_3

    .line 47
    .line 48
    if-eq v4, v7, :cond_2

    .line 49
    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$2:I

    .line 53
    .line 54
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 55
    .line 56
    iget-wide v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 57
    .line 58
    iget v13, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 59
    .line 60
    iget-object v14, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$6:Ljava/util/Iterator;

    .line 61
    .line 62
    iget-object v15, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 63
    .line 64
    iget-object v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v10

    .line 77
    :cond_2
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$2:I

    .line 78
    .line 79
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 80
    .line 81
    iget-wide v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 82
    .line 83
    iget v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 84
    .line 85
    iget-object v13, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$8:Lorg/wikipedia/offline/db/OfflineObject;

    .line 86
    .line 87
    iget-object v14, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$6:Ljava/util/Iterator;

    .line 88
    .line 89
    iget-object v15, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 90
    .line 91
    iget-object v7, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_3
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 99
    .line 100
    iget-wide v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 101
    .line 102
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 103
    .line 104
    iget-object v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 105
    .line 106
    iget-object v12, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v11, v0

    .line 120
    move v4, v9

    .line 121
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_d

    .line 126
    .line 127
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Ljava/lang/Number;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    iput-object v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 138
    .line 139
    iput-object v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 140
    .line 141
    iput-object v10, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$6:Ljava/util/Iterator;

    .line 142
    .line 143
    iput-object v10, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$8:Lorg/wikipedia/offline/db/OfflineObject;

    .line 144
    .line 145
    iput v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 146
    .line 147
    iput-wide v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 148
    .line 149
    iput v9, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 150
    .line 151
    iput v8, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

    .line 152
    .line 153
    iget-object v0, v2, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 154
    .line 155
    new-instance v12, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 156
    .line 157
    const/4 v13, 0x5

    .line 158
    invoke-direct {v12, v6, v7, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v8, v9, v12, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-ne v0, v3, :cond_6

    .line 166
    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :cond_6
    move-object v12, v2

    .line 170
    move v2, v9

    .line 171
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move-wide/from16 v16, v6

    .line 178
    .line 179
    move v6, v2

    .line 180
    move-object v2, v12

    .line 181
    move-wide/from16 v12, v16

    .line 182
    .line 183
    move-object v14, v0

    .line 184
    move v0, v9

    .line 185
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_5

    .line 190
    .line 191
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    check-cast v7, Lorg/wikipedia/offline/db/OfflineObject;

    .line 196
    .line 197
    invoke-virtual {v7}, Lorg/wikipedia/offline/db/OfflineObject;->getUsedBy()Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    new-instance v10, Ljava/lang/Long;

    .line 202
    .line 203
    invoke-direct {v10, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-eqz v10, :cond_c

    .line 211
    .line 212
    invoke-virtual {v7}, Lorg/wikipedia/offline/db/OfflineObject;->getUsedBy()Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    invoke-interface {v10, v15}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v10}, Lorg/wikipedia/offline/db/OfflineObject;->updateUsedBy(Ljava/util/Set;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7}, Lorg/wikipedia/offline/db/OfflineObject;->getUsedBy()Ljava/util/ArrayList;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_9

    .line 239
    .line 240
    iput-object v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 241
    .line 242
    iput-object v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 243
    .line 244
    iput-object v14, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$6:Ljava/util/Iterator;

    .line 245
    .line 246
    iput-object v7, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$8:Lorg/wikipedia/offline/db/OfflineObject;

    .line 247
    .line 248
    iput v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 249
    .line 250
    iput-wide v12, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 251
    .line 252
    iput v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 253
    .line 254
    iput v0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$2:I

    .line 255
    .line 256
    const/4 v10, 0x2

    .line 257
    iput v10, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

    .line 258
    .line 259
    iget-object v15, v2, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 260
    .line 261
    new-instance v10, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    invoke-direct {v10, v2, v7, v9}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lorg/wikipedia/offline/db/OfflineObject;I)V

    .line 264
    .line 265
    .line 266
    invoke-static {v15, v9, v8, v10, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 271
    .line 272
    if-ne v10, v15, :cond_7

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_7
    move-object v10, v5

    .line 276
    :goto_3
    if-ne v10, v3, :cond_8

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_8
    move v15, v6

    .line 280
    move v6, v4

    .line 281
    move v4, v15

    .line 282
    move-object v15, v11

    .line 283
    move-wide v11, v12

    .line 284
    move-object v13, v7

    .line 285
    move-object v7, v2

    .line 286
    move v2, v0

    .line 287
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-static {v13}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->deleteFilesForObject(Lorg/wikipedia/offline/db/OfflineObject;)V

    .line 291
    .line 292
    .line 293
    move v0, v6

    .line 294
    move v6, v4

    .line 295
    move v4, v0

    .line 296
    move v0, v2

    .line 297
    move-object v2, v7

    .line 298
    :goto_5
    move-wide v12, v11

    .line 299
    move-object v11, v15

    .line 300
    goto :goto_9

    .line 301
    :cond_9
    iput-object v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 302
    .line 303
    iput-object v11, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$3:Ljava/util/Iterator;

    .line 304
    .line 305
    iput-object v14, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$6:Ljava/util/Iterator;

    .line 306
    .line 307
    const/4 v10, 0x0

    .line 308
    iput-object v10, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->L$8:Lorg/wikipedia/offline/db/OfflineObject;

    .line 309
    .line 310
    iput v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$0:I

    .line 311
    .line 312
    iput-wide v12, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->J$0:J

    .line 313
    .line 314
    iput v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$1:I

    .line 315
    .line 316
    iput v0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->I$2:I

    .line 317
    .line 318
    const/4 v15, 0x3

    .line 319
    iput v15, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$deleteObjectsForPageId$1;->label:I

    .line 320
    .line 321
    iget-object v10, v2, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 322
    .line 323
    new-instance v15, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;

    .line 324
    .line 325
    invoke-direct {v15, v2, v7, v8}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lorg/wikipedia/offline/db/OfflineObject;I)V

    .line 326
    .line 327
    .line 328
    invoke-static {v10, v9, v8, v15, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 333
    .line 334
    if-ne v7, v10, :cond_a

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_a
    move-object v7, v5

    .line 338
    :goto_6
    if-ne v7, v3, :cond_b

    .line 339
    .line 340
    :goto_7
    return-object v3

    .line 341
    :cond_b
    move-object v15, v11

    .line 342
    move-wide v11, v12

    .line 343
    move v13, v4

    .line 344
    move v4, v6

    .line 345
    move-object v6, v2

    .line 346
    move v2, v0

    .line 347
    :goto_8
    move v0, v2

    .line 348
    move-object v2, v6

    .line 349
    move v6, v4

    .line 350
    move v4, v13

    .line 351
    goto :goto_5

    .line 352
    :cond_c
    :goto_9
    const/4 v10, 0x0

    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :cond_d
    return-object v5
.end method

.method public static filterHistoryItems$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->L$2:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v2, "\\"

    .line 80
    .line 81
    const-string v5, "\\\\"

    .line 82
    .line 83
    invoke-static {p1, v2, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v2, "\\%"

    .line 88
    .line 89
    const-string v5, "%"

    .line 90
    .line 91
    invoke-static {p1, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v2, "_"

    .line 96
    .line 97
    const-string v6, "\\_"

    .line 98
    .line 99
    invoke-static {p1, v2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v5, p1, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->L$2:Ljava/util/ArrayList;

    .line 108
    .line 109
    iput v4, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$filterHistoryItems$1;->label:I

    .line 110
    .line 111
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 112
    .line 113
    new-instance v5, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/16 v6, 0x1b

    .line 116
    .line 117
    invoke-direct {v5, p1, p0, v6}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v4, v3, v5, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-ne p0, v1, :cond_3

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_3
    move-object v7, p2

    .line 128
    move-object p2, p0

    .line 129
    move-object p0, v7

    .line 130
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 131
    .line 132
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 155
    .line 156
    iget-object v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v2, 0x6

    .line 166
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    add-int/2addr v1, v2

    .line 171
    if-eqz v3, :cond_4

    .line 172
    .line 173
    if-eq v1, v3, :cond_5

    .line 174
    .line 175
    :cond_4
    iget-object v2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 176
    .line 177
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-static {v0}, Lorg/wikipedia/dataclient/Service$-CC;->$private$toHistoryEntry(Lorg/wikipedia/history/db/HistoryEntryWithImage;)Lorg/wikipedia/history/HistoryEntry;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move v3, v1

    .line 199
    goto :goto_2

    .line 200
    :cond_6
    return-object p0
.end method

.method public static findEntryForReadMore$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;IILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p4, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findEntryForReadMore$1;->label:I

    .line 51
    .line 52
    iget-object p4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 53
    .line 54
    new-instance v2, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;

    .line 55
    .line 56
    invoke-direct {v2, p2, p3, p1, p0}, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;ILorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-static {p4, v3, p0, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    if-ne p4, v1, :cond_3

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    :goto_1
    check-cast p4, Ljava/lang/Iterable;

    .line 68
    .line 69
    new-instance p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    const/16 p1, 0xa

    .line 72
    .line 73
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 95
    .line 96
    invoke-static {p2}, Lorg/wikipedia/dataclient/Service$-CC;->$private$toHistoryEntry(Lorg/wikipedia/history/db/HistoryEntryWithImage;)Lorg/wikipedia/history/HistoryEntry;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    return-object p0
.end method

.method public static findHistoryItem$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object p1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :cond_2
    invoke-static {p3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    new-instance p0, Lorg/wikipedia/search/SearchResults;

    .line 73
    .line 74
    invoke-direct {p0, v4, v6}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "\\"

    .line 86
    .line 87
    const-string v7, "\\\\"

    .line 88
    .line 89
    invoke-static {p2, v2, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v2, "\\%"

    .line 94
    .line 95
    const-string v7, "%"

    .line 96
    .line 97
    invoke-static {p2, v7, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v2, "_"

    .line 102
    .line 103
    const-string v8, "\\_"

    .line 104
    .line 105
    invoke-static {p2, v2, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iput-object p1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 127
    .line 128
    iput-object p3, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    iput v5, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$findHistoryItem$1;->label:I

    .line 131
    .line 132
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 133
    .line 134
    new-instance v7, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/16 v8, 0x1b

    .line 137
    .line 138
    invoke-direct {v7, p2, p0, v8}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v5, v3, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-ne p0, v1, :cond_4

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_4
    move-object v9, p3

    .line 149
    move-object p3, p0

    .line 150
    move-object p0, v9

    .line 151
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 152
    .line 153
    new-instance p2, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v1, v0

    .line 173
    check-cast v1, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 174
    .line 175
    iget-object v2, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v7, v1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_5

    .line 184
    .line 185
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 186
    .line 187
    iget-object v1, v1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_5

    .line 202
    .line 203
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-eqz p0, :cond_7

    .line 212
    .line 213
    new-instance p0, Lorg/wikipedia/search/SearchResults;

    .line 214
    .line 215
    invoke-direct {p0, v4, v6}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 216
    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_7
    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    .line 224
    .line 225
    const/16 p2, 0xa

    .line 226
    .line 227
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_8

    .line 243
    .line 244
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    check-cast p2, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 249
    .line 250
    new-instance p3, Lorg/wikipedia/search/SearchResult;

    .line 251
    .line 252
    invoke-static {p2}, Lorg/wikipedia/dataclient/Service$-CC;->$private$toHistoryEntry(Lorg/wikipedia/history/db/HistoryEntryWithImage;)Lorg/wikipedia/history/HistoryEntry;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    sget-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 261
    .line 262
    invoke-direct {p3, p2, v0, v3}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/search/SearchResult$SearchResultType;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .line 273
    .line 274
    new-instance p1, Lorg/wikipedia/search/SearchResults;

    .line 275
    .line 276
    const/4 p2, 0x2

    .line 277
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 278
    .line 279
    .line 280
    return-object p1
.end method

.method public static findObject$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    instance-of v1, p3, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p3

    .line 8
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

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
    iput v2, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p3}, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p3, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x2

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    if-eq v3, v6, :cond_3

    .line 41
    .line 42
    if-eq v3, v7, :cond_2

    .line 43
    .line 44
    if-ne v3, v4, :cond_1

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v8

    .line 57
    :cond_2
    iget-object p1, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$1:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 60
    .line 61
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object p1, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$1:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 68
    .line 69
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_7

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-nez p3, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iput-object p0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 86
    .line 87
    iput-object p1, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$1:Ljava/lang/String;

    .line 88
    .line 89
    iput v7, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

    .line 90
    .line 91
    new-instance p3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 92
    .line 93
    const/16 v3, 0x17

    .line 94
    .line 95
    invoke-direct {p3, v3, p1, p2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v6, v5, p3, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    if-ne p3, v2, :cond_6

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    :goto_1
    check-cast p3, Lorg/wikipedia/offline/db/OfflineObject;

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    :goto_2
    iput-object p0, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 109
    .line 110
    iput-object p1, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$1:Ljava/lang/String;

    .line 111
    .line 112
    iput v6, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

    .line 113
    .line 114
    new-instance p2, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/16 p3, 0x1c

    .line 117
    .line 118
    invoke-direct {p2, p3, p1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v6, v5, p2, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    if-ne p3, v2, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_8
    :goto_3
    check-cast p3, Lorg/wikipedia/offline/db/OfflineObject;

    .line 129
    .line 130
    :goto_4
    if-nez p3, :cond_a

    .line 131
    .line 132
    const-string p2, "/commons/thumb/"

    .line 133
    .line 134
    invoke-static {p1, p2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_a

    .line 139
    .line 140
    const-string p2, "/"

    .line 141
    .line 142
    filled-new-array {p2}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-array p2, v5, [Ljava/lang/String;

    .line 151
    .line 152
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, [Ljava/lang/String;

    .line 157
    .line 158
    array-length p2, p1

    .line 159
    if-le p2, v7, :cond_a

    .line 160
    .line 161
    array-length p2, p1

    .line 162
    sub-int/2addr p2, v7

    .line 163
    aget-object p1, p1, p2

    .line 164
    .line 165
    const-string p2, "\'"

    .line 166
    .line 167
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string p2, "%27"

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iput-object v8, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 191
    .line 192
    iput-object v8, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->L$1:Ljava/lang/String;

    .line 193
    .line 194
    iput v4, v1, Lorg/wikipedia/offline/db/OfflineObjectDao$findObject$1;->label:I

    .line 195
    .line 196
    iget-object p0, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 197
    .line 198
    new-instance p2, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/16 p3, 0x1d

    .line 201
    .line 202
    invoke-direct {p2, p3, p1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p0, v6, v5, p2, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    if-ne p3, v2, :cond_9

    .line 210
    .line 211
    :goto_5
    return-object v2

    .line 212
    :cond_9
    :goto_6
    check-cast p3, Lorg/wikipedia/offline/db/OfflineObject;

    .line 213
    .line 214
    :cond_a
    return-object p3
.end method

.method public static findPageForSearchQueryInAnyList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :cond_2
    invoke-static {p3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    new-instance p0, Lorg/wikipedia/search/SearchResults;

    .line 73
    .line 74
    invoke-direct {p0, v4, v6}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "\\"

    .line 86
    .line 87
    const-string v7, "\\\\"

    .line 88
    .line 89
    invoke-static {p2, v2, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v2, "\\%"

    .line 94
    .line 95
    const-string v7, "%"

    .line 96
    .line 97
    invoke-static {p2, v7, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v2, "_"

    .line 102
    .line 103
    const-string v8, "\\_"

    .line 104
    .line 105
    invoke-static {p2, v2, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 127
    .line 128
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    iput v5, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$findPageForSearchQueryInAnyList$1;->label:I

    .line 131
    .line 132
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 133
    .line 134
    new-instance v7, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;

    .line 135
    .line 136
    invoke-direct {v7, p2, p0}, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v5, v3, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-ne p0, v1, :cond_4

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_4
    move-object v10, p3

    .line 147
    move-object p3, p0

    .line 148
    move-object p0, v10

    .line 149
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 150
    .line 151
    new-instance p2, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    move-object v1, v0

    .line 171
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 172
    .line 173
    iget-object v2, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v7, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_5

    .line 182
    .line 183
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 184
    .line 185
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_5

    .line 202
    .line 203
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-eqz p0, :cond_7

    .line 212
    .line 213
    new-instance p0, Lorg/wikipedia/search/SearchResults;

    .line 214
    .line 215
    invoke-direct {p0, v4, v6}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 216
    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_7
    const/4 p0, 0x2

    .line 220
    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance p2, Ljava/util/ArrayList;

    .line 225
    .line 226
    const/16 p3, 0xa

    .line 227
    .line 228
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 229
    .line 230
    .line 231
    move-result p3

    .line 232
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    if-eqz p3, :cond_8

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    check-cast p3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 250
    .line 251
    new-instance v0, Lorg/wikipedia/search/SearchResult;

    .line 252
    .line 253
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 254
    .line 255
    iget-object v5, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v6, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 258
    .line 259
    iget-object v7, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v8, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v9, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 264
    .line 265
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sget-object p3, Lorg/wikipedia/search/SearchResult$SearchResultType;->READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 269
    .line 270
    invoke-direct {v0, v4, p3, v3}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/search/SearchResult$SearchResultType;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .line 281
    .line 282
    new-instance p2, Lorg/wikipedia/search/SearchResults;

    .line 283
    .line 284
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 285
    .line 286
    .line 287
    return-object p2
.end method

.method public static getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->I$0:I

    .line 40
    .line 41
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->L$3:Ljava/util/Iterator;

    .line 42
    .line 43
    iget-object v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->L$1:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->label:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 v2, 0x0

    .line 79
    move v4, v2

    .line 80
    move-object v2, p0

    .line 81
    move p0, v4

    .line 82
    move-object v4, p1

    .line 83
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 94
    .line 95
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 96
    .line 97
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iput-object v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->L$1:Ljava/util/List;

    .line 106
    .line 107
    iput-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->L$3:Ljava/util/Iterator;

    .line 108
    .line 109
    iput p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->I$0:I

    .line 110
    .line 111
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllLists$1;->label:I

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v5, p1, v0}, Lorg/wikipedia/dataclient/Service$-CC;->populateListPages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v1, :cond_5

    .line 121
    .line 122
    :goto_3
    return-object v1

    .line 123
    :cond_6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static getAllListsWithUnsyncedPages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->L$1:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput v5, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->label:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    :goto_1
    move-object p0, p1

    .line 69
    check-cast p0, Ljava/util/List;

    .line 70
    .line 71
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 72
    .line 73
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->L$1:Ljava/util/List;

    .line 82
    .line 83
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getAllListsWithUnsyncedPages$1;->label:I

    .line 84
    .line 85
    iget-object v2, p1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 86
    .line 87
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/4 v6, 0x7

    .line 90
    invoke-direct {v3, v6, p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    invoke-static {v2, v5, p1, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v1, :cond_5

    .line 99
    .line 100
    :goto_2
    return-object v1

    .line 101
    :cond_5
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v3, v2

    .line 134
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 135
    .line 136
    iget-wide v5, v3, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 137
    .line 138
    iget-wide v7, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 139
    .line 140
    cmp-long v3, v5, v7

    .line 141
    .line 142
    if-nez v3, :cond_7

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_8
    move-object v2, v4

    .line 146
    :goto_5
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    iget-object v1, v2, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_9
    return-object p0
.end method

.method public static getBestStreak$suspendImpl(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;-><init>(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;->label:I

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
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput v3, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getBestStreak$1;->label:I

    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 54
    .line 55
    new-instance p3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {p3, p1, p2, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v3, v4, p3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-ne p3, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 69
    .line 70
    new-instance p0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    move-object p3, p2

    .line 90
    check-cast p3, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 91
    .line 92
    iget p3, p3, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 93
    .line 94
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne p3, v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    new-instance p0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-direct {p0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_6
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    move p2, v4

    .line 127
    move p3, p2

    .line 128
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 139
    .line 140
    iget v1, v0, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 141
    .line 142
    iget v2, v0, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 143
    .line 144
    invoke-static {v2}, Lj$/time/Month;->of(I)Lj$/time/Month;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget v0, v0, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 149
    .line 150
    invoke-static {v1, v2, v0}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const-wide/16 v2, 0x1

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    add-int/lit8 p3, p3, 0x1

    .line 163
    .line 164
    invoke-virtual {p1, v2, v3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_3

    .line 169
    :cond_8
    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {v0, v2, v3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    move p3, v4

    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    new-instance p1, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 192
    .line 193
    .line 194
    return-object p1
.end method

.method public static getCurrentStreak$suspendImpl(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;-><init>(Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput v4, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao$getCurrentStreak$1;->label:I

    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 54
    .line 55
    new-instance p3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {p3, p1, p2, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v4, v3, p3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-ne p3, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 69
    .line 70
    new-instance p0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    move-object p3, p2

    .line 90
    check-cast p3, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 91
    .line 92
    iget p3, p3, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 93
    .line 94
    sget-object v0, Lorg/wikipedia/games/PlayTypes;->PLAYED_ON_SAME_DAY:Lorg/wikipedia/games/PlayTypes;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne p3, v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    new-instance p0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_6
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_9

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 137
    .line 138
    iget p3, p2, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 139
    .line 140
    iget v0, p2, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 141
    .line 142
    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget p2, p2, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 147
    .line 148
    invoke-static {p3, v0, p2}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-eqz p3, :cond_8

    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    const-wide/16 p2, 0x1

    .line 161
    .line 162
    invoke-virtual {p1, p2, p3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_3

    .line 167
    :cond_8
    invoke-virtual {p2, p1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_7

    .line 172
    .line 173
    :cond_9
    new-instance p0, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 176
    .line 177
    .line 178
    return-object p0
.end method

.method public static getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_2
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 60
    .line 61
    iput v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->label:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v1, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 88
    .line 89
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move-object v2, v5

    .line 97
    :goto_2
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 98
    .line 99
    if-nez v2, :cond_9

    .line 100
    .line 101
    const-string p1, "(Re)creating default list."

    .line 102
    .line 103
    sget-object v2, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 104
    .line 105
    invoke-virtual {v2, p1, v5}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 109
    .line 110
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 115
    .line 116
    iget-object p1, p1, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 117
    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :cond_7
    const v2, 0x7f1200fb

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iput-object v5, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 135
    .line 136
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getDefaultList$1;->label:I

    .line 137
    .line 138
    const-string v2, ""

    .line 139
    .line 140
    invoke-static {p0, v2, p1, v0}, Lorg/wikipedia/dataclient/Service$-CC;->$private$createNewList(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-ne p1, v1, :cond_8

    .line 145
    .line 146
    :goto_3
    return-object v1

    .line 147
    :cond_8
    :goto_4
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_9
    return-object v2
.end method

.method public static synthetic getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lorg/wikipedia/dataclient/Service;->getInfoByPageIdsOrTitles(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getListById$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;JZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 6

    .line 1
    instance-of v0, p4, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v5

    .line 52
    :cond_2
    iget-boolean p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->Z$0:Z

    .line 53
    .line 54
    iget-wide p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->J$0:J

    .line 55
    .line 56
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-wide p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->J$0:J

    .line 64
    .line 65
    iput-boolean p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->Z$0:Z

    .line 66
    .line 67
    iput v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 70
    .line 71
    new-instance p4, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-direct {p4, p1, p2, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {p0, v4, v2, p4, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    if-ne p4, v1, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    check-cast p4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 86
    .line 87
    if-eqz p4, :cond_6

    .line 88
    .line 89
    if-eqz p3, :cond_5

    .line 90
    .line 91
    sget-object p0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 92
    .line 93
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iput-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 102
    .line 103
    iput-wide p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->J$0:J

    .line 104
    .line 105
    iput-boolean p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->Z$0:Z

    .line 106
    .line 107
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->populateListPages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v1, :cond_5

    .line 117
    .line 118
    :goto_2
    return-object v1

    .line 119
    :cond_5
    return-object p4

    .line 120
    :cond_6
    return-object v5
.end method

.method public static getListsFromPageOccurrences$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->label:I

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->L$1:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 78
    .line 79
    iget-wide v5, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 80
    .line 81
    new-instance v7, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->L$1:Ljava/util/List;

    .line 95
    .line 96
    iput v4, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListsFromPageOccurrences$1;->label:I

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v5, "SELECT * FROM ReadingList WHERE id IN ("

    .line 104
    .line 105
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-static {v5, v2}, Landroidx/room/Room;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    .line 113
    .line 114
    .line 115
    const-string v5, ")"

    .line 116
    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 125
    .line 126
    new-instance v5, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 127
    .line 128
    const/16 v6, 0x1a

    .line 129
    .line 130
    invoke-direct {v5, v6, v2, p2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 p2, 0x0

    .line 134
    invoke-static {p0, v4, p2, v5, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-ne p2, v1, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 158
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object v4, v2

    .line 179
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 180
    .line 181
    iget-wide v4, v4, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 182
    .line 183
    iget-wide v6, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 184
    .line 185
    cmp-long v4, v4, v6

    .line 186
    .line 187
    if-nez v4, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_5

    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 217
    .line 218
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    return-object p2
.end method

.method public static synthetic getMediaList$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v6, p2

    .line 8
    invoke-interface/range {v0 .. v6}, Lorg/wikipedia/dataclient/RestService;->getMediaList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getMostRecentEntriesWithImage$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    .line 1
    instance-of v0, p2, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1;->label:I

    .line 51
    .line 52
    iget-object p2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 53
    .line 54
    new-instance v2, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-direct {v2, p1, v4, p0}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;-><init>(IILorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v3, v4, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-ne p2, v1, :cond_3

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 68
    .line 69
    new-instance p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    const/16 p1, 0xa

    .line 72
    .line 73
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 95
    .line 96
    invoke-static {p2}, Lorg/wikipedia/dataclient/Service$-CC;->$private$toHistoryEntry(Lorg/wikipedia/history/db/HistoryEntryWithImage;)Lorg/wikipedia/history/HistoryEntry;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    return-object p0
.end method

.method public static synthetic getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p6, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const-string p2, "save"

    .line 16
    .line 17
    move-object v6, p2

    .line 18
    :goto_1
    and-int/lit8 p2, p6, 0x10

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    move-object v7, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v7, p3

    .line 25
    :goto_2
    and-int/lit8 p2, p6, 0x20

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    move-object v8, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move-object v8, p4

    .line 32
    :goto_3
    const/4 v4, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p1

    .line 35
    move-object v9, p5

    .line 36
    invoke-interface/range {v2 .. v9}, Lorg/wikipedia/dataclient/RestService;->getPageSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static synthetic getSummaryResponse$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;
    .locals 2

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p7, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p7, 0x10

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p4, v1

    .line 17
    :cond_2
    and-int/lit8 p7, p7, 0x20

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move-object p5, v1

    .line 22
    :cond_3
    move-object v1, p4

    .line 23
    move-object p4, p3

    .line 24
    move-object p3, p2

    .line 25
    const/4 p2, 0x0

    .line 26
    move-object p7, p6

    .line 27
    move-object p6, p5

    .line 28
    move-object p5, v1

    .line 29
    invoke-interface/range {p0 .. p7}, Lorg/wikipedia/dataclient/RestService;->getSummaryResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static getTotalBytesForPageId$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;->label:I

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    iput v5, v0, Lorg/wikipedia/offline/db/OfflineObjectDao$getTotalBytesForPageId$1;->label:I

    .line 55
    .line 56
    iget-object p0, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 57
    .line 58
    new-instance p3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 59
    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-direct {p3, p1, p2, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-static {p0, v5, p1, p3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-ne p3, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    move-wide p1, v3

    .line 79
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Lorg/wikipedia/offline/db/OfflineObject;

    .line 90
    .line 91
    new-instance v0, Ljava/io/File;

    .line 92
    .line 93
    iget-object p3, p3, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p3, ".1"

    .line 104
    .line 105
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    add-long/2addr p1, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    move-wide v3, p1

    .line 122
    goto :goto_4

    .line 123
    :goto_3
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_4
    new-instance p0, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-direct {p0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 129
    .line 130
    .line 131
    return-object p0
.end method

.method public static insert$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget p0, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->I$0:I

    .line 38
    .line 39
    iget-object p1, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->L$3:Ljava/util/Iterator;

    .line 40
    .line 41
    iget-object v2, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object p2, p1

    .line 47
    move p1, p0

    .line 48
    move-object p0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move-object p2, p1

    .line 65
    move p1, v3

    .line 66
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lorg/wikipedia/history/HistoryEntry;

    .line 77
    .line 78
    iput-object p0, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 79
    .line 80
    iput-object p2, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->L$3:Ljava/util/Iterator;

    .line 81
    .line 82
    iput p1, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->I$0:I

    .line 83
    .line 84
    iput v4, v0, Lorg/wikipedia/history/db/HistoryEntryDao$insert$1;->label:I

    .line 85
    .line 86
    iget-object v5, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 87
    .line 88
    new-instance v6, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 89
    .line 90
    const/16 v7, 0x14

    .line 91
    .line 92
    invoke-direct {v6, v7, p0, v2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v5, v3, v4, v6, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-ne v2, v1, :cond_3

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0
.end method

.method public static m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/util/Resource$Error;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic m(Landroidx/compose/runtime/Applier;)Z
    .locals 0

    .line 13
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static markPagesForDeletion$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-boolean p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->Z$0:Z

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$3:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$2:Ljava/util/List;

    .line 41
    .line 42
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object p4, p3

    .line 50
    move-object p3, p2

    .line 51
    move-object p2, p4

    .line 52
    move p4, p0

    .line 53
    move-object p0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    move-object v6, p2

    .line 70
    move-object p2, p1

    .line 71
    move-object p1, p4

    .line 72
    move p4, p3

    .line 73
    move-object p3, v6

    .line 74
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 85
    .line 86
    const-wide/16 v4, 0x2

    .line 87
    .line 88
    iput-wide v4, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 89
    .line 90
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 91
    .line 92
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 93
    .line 94
    iput-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$2:Ljava/util/List;

    .line 95
    .line 96
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->L$3:Ljava/util/Iterator;

    .line 97
    .line 98
    iput-boolean p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->Z$0:Z

    .line 99
    .line 100
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForDeletion$1;->label:I

    .line 101
    .line 102
    invoke-virtual {p0, v2, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v1, :cond_3

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_4
    if-eqz p4, :cond_6

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p2, p0}, Lokio/Path$Companion;->createIdsForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/Set;)Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    move-object p1, p0

    .line 126
    check-cast p1, Ljava/util/Collection;

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_6

    .line 133
    .line 134
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 135
    .line 136
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListPagesDeletedIds()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/Iterable;

    .line 141
    .line 142
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    const/16 p4, 0x100

    .line 154
    .line 155
    if-ge p1, p4, :cond_5

    .line 156
    .line 157
    move-object p0, p2

    .line 158
    :cond_5
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 162
    .line 163
    .line 164
    :cond_6
    sget-object p0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 165
    .line 166
    new-instance p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    new-array p2, p1, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 170
    .line 171
    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 176
    .line 177
    array-length p3, p2

    .line 178
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 183
    .line 184
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;-><init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 191
    .line 192
    .line 193
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 194
    .line 195
    return-object p0
.end method

.method public static markPagesForOffline$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Ljava/util/List;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p4, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

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
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p4, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-direct {p4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 76
    .line 77
    iget-boolean v4, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 78
    .line 79
    if-ne v4, p2, :cond_3

    .line 80
    .line 81
    if-nez p3, :cond_4

    .line 82
    .line 83
    :cond_3
    iput-boolean p2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 84
    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    const-wide/16 v4, 0x3

    .line 88
    .line 89
    iput-wide v4, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$markPagesForOffline$1;->label:I

    .line 96
    .line 97
    invoke-virtual {p0, p4, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPages(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-ne p0, v1, :cond_6

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_6
    :goto_2
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 105
    .line 106
    .line 107
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public static movePageToList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    instance-of v5, v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v4

    .line 16
    check-cast v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;

    .line 17
    .line 18
    iget v6, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;

    .line 31
    .line 32
    invoke-direct {v5, v0, v4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v4, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v7, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 40
    .line 41
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    const/4 v11, 0x3

    .line 45
    const/4 v12, 0x2

    .line 46
    const/4 v13, 0x1

    .line 47
    const/4 v14, 0x0

    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    if-eq v7, v13, :cond_4

    .line 51
    .line 52
    if-eq v7, v12, :cond_3

    .line 53
    .line 54
    if-eq v7, v11, :cond_2

    .line 55
    .line 56
    if-ne v7, v10, :cond_1

    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v4, v9

    .line 62
    const/16 p4, 0x0

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v14

    .line 72
    :cond_2
    iget-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 73
    .line 74
    iget-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 75
    .line 76
    iget-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 77
    .line 78
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v3, v4

    .line 82
    move-object v4, v9

    .line 83
    const/16 p4, 0x0

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_3
    iget-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 88
    .line 89
    iget-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 90
    .line 91
    iget-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 92
    .line 93
    iget-object v3, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 94
    .line 95
    iget-object v7, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 96
    .line 97
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object/from16 p4, v3

    .line 101
    .line 102
    move-object v3, v1

    .line 103
    move-object/from16 v1, p4

    .line 104
    .line 105
    move-object/from16 p4, v9

    .line 106
    .line 107
    move-object v9, v4

    .line 108
    move-object/from16 v4, p4

    .line 109
    .line 110
    move-object v8, v2

    .line 111
    move-object v2, v7

    .line 112
    const/16 p4, 0x0

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 116
    .line 117
    iget-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 118
    .line 119
    iget-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 120
    .line 121
    iget-object v3, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 122
    .line 123
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 p4, v3

    .line 127
    .line 128
    move-object v3, v0

    .line 129
    move-object/from16 v0, p4

    .line 130
    .line 131
    move-object/from16 p4, v2

    .line 132
    .line 133
    move-object v2, v1

    .line 134
    move-object/from16 v1, p4

    .line 135
    .line 136
    move-object v8, v4

    .line 137
    move-object v4, v9

    .line 138
    const/16 p4, 0x0

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    move-object v4, v9

    .line 145
    const/16 p4, 0x0

    .line 146
    .line 147
    iget-wide v8, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 148
    .line 149
    iget-wide v10, v2, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 150
    .line 151
    cmp-long v8, v8, v10

    .line 152
    .line 153
    if-nez v8, :cond_6

    .line 154
    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_6
    iput-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 158
    .line 159
    iput-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 160
    .line 161
    iput-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 162
    .line 163
    iput-object v3, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 164
    .line 165
    iput v13, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 166
    .line 167
    invoke-virtual {v0, v1, v3, v5}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    if-ne v8, v6, :cond_7

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    :goto_1
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 175
    .line 176
    if-eqz v8, :cond_c

    .line 177
    .line 178
    iput-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 179
    .line 180
    iput-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 181
    .line 182
    iput-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 183
    .line 184
    iput-object v3, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 185
    .line 186
    iput-object v8, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 187
    .line 188
    iput v12, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 189
    .line 190
    invoke-virtual {v0, v2, v3, v5}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    if-ne v9, v6, :cond_8

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move-object/from16 v16, v2

    .line 198
    .line 199
    move-object v2, v0

    .line 200
    move-object v0, v8

    .line 201
    move-object/from16 v8, v16

    .line 202
    .line 203
    :goto_2
    if-nez v9, :cond_a

    .line 204
    .line 205
    iput-object v2, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 206
    .line 207
    iput-object v1, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 208
    .line 209
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 210
    .line 211
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 212
    .line 213
    iput-object v0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 214
    .line 215
    const/4 v15, 0x3

    .line 216
    iput v15, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 217
    .line 218
    invoke-static {v2, v8, v3, v5}, Lorg/wikipedia/dataclient/Service$-CC;->$private$addPageToList(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    if-ne v3, v6, :cond_9

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    :goto_3
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 226
    .line 227
    sget-object v8, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 228
    .line 229
    new-instance v8, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 230
    .line 231
    new-array v9, v13, [Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 232
    .line 233
    aput-object v3, v9, p4

    .line 234
    .line 235
    invoke-direct {v8, v13, v9}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;-><init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v8}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_a
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 246
    .line 247
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 248
    .line 249
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 250
    .line 251
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$3:Lorg/wikipedia/page/PageTitle;

    .line 252
    .line 253
    iput-object v14, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->L$4:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 254
    .line 255
    const/4 v7, 0x4

    .line 256
    iput v7, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePageToList$1;->label:I

    .line 257
    .line 258
    invoke-virtual {v2, v1, v0, v13, v5}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v6, :cond_b

    .line 263
    .line 264
    :goto_4
    return-object v6

    .line 265
    :cond_b
    :goto_5
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 269
    .line 270
    move/from16 v1, p4

    .line 271
    .line 272
    invoke-direct {v0, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_c
    :goto_6
    return-object v4
.end method

.method public static movePagesToListAndDeleteSourcePages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p4, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$6:Lorg/wikipedia/page/PageTitle;

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$5:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$4:Ljava/util/List;

    .line 41
    .line 42
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    iget-object v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 45
    .line 46
    iget-object v4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 47
    .line 48
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v7, p3

    .line 52
    move-object v6, v2

    .line 53
    move-object v5, v4

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    move-object v5, p0

    .line 75
    move-object v6, p1

    .line 76
    move-object v7, p2

    .line 77
    move-object p1, p3

    .line 78
    move-object p2, p4

    .line 79
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    move-object v8, p0

    .line 90
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 91
    .line 92
    iput-object v5, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 93
    .line 94
    iput-object v6, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 95
    .line 96
    iput-object v7, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$2:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 97
    .line 98
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$4:Ljava/util/List;

    .line 99
    .line 100
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$5:Ljava/util/Iterator;

    .line 101
    .line 102
    iput-object v8, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->L$6:Lorg/wikipedia/page/PageTitle;

    .line 103
    .line 104
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$movePagesToListAndDeleteSourcePages$1;->label:I

    .line 105
    .line 106
    iget-object p0, v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 107
    .line 108
    new-instance v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0, v4}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 120
    .line 121
    if-ne p0, p3, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    .line 126
    :goto_2
    if-ne p0, v1, :cond_4

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_4
    move-object p0, v8

    .line 130
    :goto_3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_6

    .line 143
    .line 144
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 148
    .line 149
    .line 150
    :cond_6
    return-object p2
.end method

.method public static populateListPages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->L$2:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 53
    .line 54
    iget-wide v4, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 55
    .line 56
    iput-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->L$2:Ljava/util/ArrayList;

    .line 57
    .line 58
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao$populateListPages$1;->label:I

    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 63
    .line 64
    const/4 v6, 0x7

    .line 65
    invoke-direct {v2, v4, v5, p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;I)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    invoke-static {p1, v3, p0, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    move-object v7, p2

    .line 77
    move-object p2, p0

    .line 78
    move-object p0, v7

    .line 79
    :goto_1
    check-cast p2, Ljava/util/Collection;

    .line 80
    .line 81
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method public static synthetic postEditSubmit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 18

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move-object/from16 v16, v0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v16, p12

    .line 12
    .line 13
    :goto_0
    const/4 v4, 0x0

    .line 14
    const/4 v14, 0x0

    .line 15
    const/4 v15, 0x0

    .line 16
    move-object/from16 v1, p0

    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v3, p2

    .line 21
    .line 22
    move-object/from16 v5, p3

    .line 23
    .line 24
    move-object/from16 v6, p4

    .line 25
    .line 26
    move-object/from16 v7, p5

    .line 27
    .line 28
    move-object/from16 v8, p6

    .line 29
    .line 30
    move-wide/from16 v9, p7

    .line 31
    .line 32
    move-object/from16 v11, p9

    .line 33
    .line 34
    move-object/from16 v12, p10

    .line 35
    .line 36
    move-object/from16 v13, p11

    .line 37
    .line 38
    move-object/from16 v17, p13

    .line 39
    .line 40
    invoke-interface/range {v1 .. v17}, Lorg/wikipedia/dataclient/Service;->postEditSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public static synthetic postLogIn$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 2

    .line 1
    and-int/lit8 v0, p12, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p12, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p12, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p3, v1

    .line 17
    :cond_2
    and-int/lit8 v0, p12, 0x8

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object p4, v1

    .line 22
    :cond_3
    and-int/lit8 v0, p12, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    move-object p5, v1

    .line 27
    :cond_4
    and-int/lit8 v0, p12, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    move-object p6, v1

    .line 32
    :cond_5
    and-int/lit8 v0, p12, 0x40

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    move-object p7, v1

    .line 37
    :cond_6
    and-int/lit16 v0, p12, 0x80

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    move-object p8, v1

    .line 42
    :cond_7
    and-int/lit16 p12, p12, 0x400

    .line 43
    .line 44
    if-eqz p12, :cond_8

    .line 45
    .line 46
    :goto_0
    move-object p12, p11

    .line 47
    move-object p11, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_8
    const-string/jumbo v1, "totp"

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    invoke-interface/range {p0 .. p12}, Lorg/wikipedia/dataclient/Service;->postLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static synthetic postUndoEdit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v4, p2

    .line 8
    move-wide v5, p3

    .line 9
    move-object v9, p5

    .line 10
    invoke-interface/range {v0 .. v9}, Lorg/wikipedia/dataclient/Service;->postUndoEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static synthetic searchMoreLike$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 8

    .line 1
    and-int/lit8 v0, p8, 0x8

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p8, 0x10

    .line 8
    .line 9
    const v0, 0x15180

    .line 10
    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    move v5, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v5, p5

    .line 17
    :goto_0
    and-int/lit8 p4, p8, 0x20

    .line 18
    .line 19
    if-eqz p4, :cond_2

    .line 20
    .line 21
    move v6, v0

    .line 22
    move-object v1, p1

    .line 23
    move v2, p2

    .line 24
    move v3, p3

    .line 25
    move-object v7, p7

    .line 26
    move-object v0, p0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v6, p6

    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    move v2, p2

    .line 32
    move v3, p3

    .line 33
    move-object v7, p7

    .line 34
    :goto_1
    invoke-interface/range {v0 .. v7}, Lorg/wikipedia/dataclient/Service;->searchMoreLike(Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static updateLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-boolean p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->Z$0:Z

    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->L$2:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object p2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object v6, p2

    .line 46
    move p2, p0

    .line 47
    move-object p0, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    if-eqz p3, :cond_6

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 76
    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    iput-boolean v3, p3, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 80
    .line 81
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    iput-wide v4, p3, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 89
    .line 90
    iput-object p0, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->L$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 91
    .line 92
    iput-object p1, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->L$2:Ljava/util/Iterator;

    .line 93
    .line 94
    iput-boolean p2, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->Z$0:Z

    .line 95
    .line 96
    iput v3, v0, Lorg/wikipedia/readinglist/db/ReadingListDao$updateLists$1;->label:I

    .line 97
    .line 98
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 99
    .line 100
    new-instance v5, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    invoke-direct {v5, p0, p3, v3}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 103
    .line 104
    .line 105
    const/4 p3, 0x0

    .line 106
    invoke-static {v4, p3, v3, v5, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 111
    .line 112
    if-ne p3, v4, :cond_5

    .line 113
    .line 114
    move-object v2, p3

    .line 115
    :cond_5
    if-ne v2, v1, :cond_3

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_6
    if-eqz p2, :cond_7

    .line 119
    .line 120
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-object v2
.end method

.method public static upsert$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Lorg/wikipedia/history/HistoryEntry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    instance-of v1, v0, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;

    .line 13
    .line 14
    iget v2, v1, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 15
    .line 16
    const/high16 v3, -0x80000000

    .line 17
    .line 18
    and-int v4, v2, v3

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iput v2, v1, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v8, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;

    .line 28
    .line 29
    invoke-direct {v1, v6, v0}, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;-><init>(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v1, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x3

    .line 41
    const/4 v12, 0x2

    .line 42
    const/4 v13, 0x1

    .line 43
    const/4 v14, 0x0

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    if-eq v1, v13, :cond_3

    .line 47
    .line 48
    if-eq v1, v12, :cond_2

    .line 49
    .line 50
    if-ne v1, v11, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v14

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    iget-object v1, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 67
    .line 68
    iget-object v2, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v7, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, v7, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, v7, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, v7, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iput-object v6, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 90
    .line 91
    iput-object v7, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 92
    .line 93
    iput v13, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 94
    .line 95
    iget-object v15, v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wikipedia/history/db/HistoryEntryDao_Impl;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v15, v13, v10, v0, v8}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v9, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move-object/from16 v2, p0

    .line 110
    .line 111
    move-object v1, v7

    .line 112
    :goto_2
    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 113
    .line 114
    const/16 v3, 0x14

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    iget-object v1, v1, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v14, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 126
    .line 127
    iput-object v14, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 128
    .line 129
    iput v12, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 130
    .line 131
    iget-object v1, v2, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 132
    .line 133
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 134
    .line 135
    invoke-direct {v4, v3, v2, v0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v10, v13, v4, v8}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-ne v0, v9, :cond_6

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    return-object v0

    .line 146
    :cond_7
    iput-object v14, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$0:Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 147
    .line 148
    iput-object v14, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 149
    .line 150
    iput v11, v8, Lorg/wikipedia/history/db/HistoryEntryDao$upsert$1;->label:I

    .line 151
    .line 152
    iget-object v0, v2, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 153
    .line 154
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 155
    .line 156
    invoke-direct {v4, v3, v2, v1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v10, v13, v4, v8}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-ne v0, v9, :cond_8

    .line 164
    .line 165
    :goto_3
    return-object v9

    .line 166
    :cond_8
    return-object v0
.end method

.method public static upsertForMetadata$suspendImpl(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

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
    iput v4, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;-><init>(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

    .line 36
    .line 37
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x1

    .line 43
    const/4 v13, 0x0

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    if-eq v5, v10, :cond_3

    .line 47
    .line 48
    if-eq v5, v9, :cond_2

    .line 49
    .line 50
    if-ne v5, v8, :cond_1

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v13

    .line 62
    :cond_2
    iget v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->I$0:I

    .line 63
    .line 64
    iget-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$8:Ljava/util/Iterator;

    .line 65
    .line 66
    iget-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$5:Ljava/lang/Double;

    .line 67
    .line 68
    iget-object v7, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$4:Ljava/lang/Double;

    .line 69
    .line 70
    iget-object v8, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$3:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v10, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$2:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v14, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 75
    .line 76
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_3
    iget-object v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$5:Ljava/lang/Double;

    .line 82
    .line 83
    iget-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$4:Ljava/lang/Double;

    .line 84
    .line 85
    iget-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$3:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v10, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$2:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v14, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 90
    .line 91
    iget-object v15, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 92
    .line 93
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v12, v1

    .line 97
    move-object/from16 v21, v5

    .line 98
    .line 99
    move-object/from16 v20, v10

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v5, v1, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v14, v1, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 112
    .line 113
    iput-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 114
    .line 115
    move-object/from16 v15, p2

    .line 116
    .line 117
    iput-object v15, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$2:Ljava/lang/String;

    .line 118
    .line 119
    move-object/from16 v11, p3

    .line 120
    .line 121
    iput-object v11, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$3:Ljava/lang/String;

    .line 122
    .line 123
    move-object/from16 v12, p4

    .line 124
    .line 125
    iput-object v12, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$4:Ljava/lang/Double;

    .line 126
    .line 127
    move-object/from16 v8, p5

    .line 128
    .line 129
    iput-object v8, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$5:Ljava/lang/Double;

    .line 130
    .line 131
    iput v10, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

    .line 132
    .line 133
    iget-object v9, v0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 134
    .line 135
    new-instance v13, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;

    .line 136
    .line 137
    invoke-direct {v13, v2, v5, v14}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v9, v10, v7, v13, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-ne v2, v4, :cond_5

    .line 145
    .line 146
    goto/16 :goto_7

    .line 147
    .line 148
    :cond_5
    move-object v14, v1

    .line 149
    move-object/from16 v21, v11

    .line 150
    .line 151
    move-object/from16 v20, v15

    .line 152
    .line 153
    move-object v15, v0

    .line 154
    move-object v0, v8

    .line 155
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_9

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    move-object v5, v0

    .line 168
    move v0, v7

    .line 169
    move-object v7, v12

    .line 170
    move-object v14, v15

    .line 171
    move-object/from16 v10, v20

    .line 172
    .line 173
    move-object/from16 v8, v21

    .line 174
    .line 175
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_c

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lorg/wikipedia/pageimages/db/PageImage;

    .line 186
    .line 187
    iput-object v10, v2, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v8, v2, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v7, :cond_7

    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    goto :goto_3

    .line 198
    :cond_7
    const-wide/16 v11, 0x0

    .line 199
    .line 200
    :goto_3
    iput-wide v11, v2, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 201
    .line 202
    if-eqz v5, :cond_8

    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 205
    .line 206
    .line 207
    move-result-wide v11

    .line 208
    goto :goto_4

    .line 209
    :cond_8
    const-wide/16 v11, 0x0

    .line 210
    .line 211
    :goto_4
    iput-wide v11, v2, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 212
    .line 213
    iput-object v14, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 217
    .line 218
    iput-object v10, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$2:Ljava/lang/String;

    .line 219
    .line 220
    iput-object v8, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$3:Ljava/lang/String;

    .line 221
    .line 222
    iput-object v7, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$4:Ljava/lang/Double;

    .line 223
    .line 224
    iput-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$5:Ljava/lang/Double;

    .line 225
    .line 226
    iput-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$8:Ljava/util/Iterator;

    .line 227
    .line 228
    iput v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->I$0:I

    .line 229
    .line 230
    const/4 v9, 0x2

    .line 231
    iput v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

    .line 232
    .line 233
    invoke-virtual {v14, v2, v3}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->insertPageImage(Lorg/wikipedia/pageimages/db/PageImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-ne v2, v4, :cond_6

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_9
    new-instance v16, Lorg/wikipedia/pageimages/db/PageImage;

    .line 241
    .line 242
    iget-object v1, v14, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 243
    .line 244
    iget-object v2, v14, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v5, v14, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 247
    .line 248
    if-eqz v12, :cond_a

    .line 249
    .line 250
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 251
    .line 252
    .line 253
    move-result-wide v7

    .line 254
    move-wide/from16 v23, v7

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_a
    const-wide/16 v23, 0x0

    .line 258
    .line 259
    :goto_5
    if-eqz v0, :cond_b

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 262
    .line 263
    .line 264
    move-result-wide v11

    .line 265
    move-wide/from16 v25, v11

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_b
    const-wide/16 v25, 0x0

    .line 269
    .line 270
    :goto_6
    const/16 v22, 0x0

    .line 271
    .line 272
    move-object/from16 v17, v1

    .line 273
    .line 274
    move-object/from16 v18, v2

    .line 275
    .line 276
    move-object/from16 v19, v5

    .line 277
    .line 278
    invoke-direct/range {v16 .. v26}, Lorg/wikipedia/pageimages/db/PageImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDD)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v0, v16

    .line 282
    .line 283
    const/4 v9, 0x0

    .line 284
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 285
    .line 286
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 287
    .line 288
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$2:Ljava/lang/String;

    .line 289
    .line 290
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$3:Ljava/lang/String;

    .line 291
    .line 292
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$4:Ljava/lang/Double;

    .line 293
    .line 294
    iput-object v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->L$5:Ljava/lang/Double;

    .line 295
    .line 296
    const/4 v1, 0x3

    .line 297
    iput v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForMetadata$1;->label:I

    .line 298
    .line 299
    invoke-virtual {v15, v0, v3}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->insertPageImage(Lorg/wikipedia/pageimages/db/PageImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-ne v0, v4, :cond_c

    .line 304
    .line 305
    :goto_7
    return-object v4

    .line 306
    :cond_c
    return-object v6
.end method

.method public static upsertForTimeSpent$suspendImpl(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

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
    iput v4, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;-><init>(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

    .line 36
    .line 37
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x1

    .line 43
    const/4 v11, 0x0

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    if-eq v5, v10, :cond_3

    .line 47
    .line 48
    if-eq v5, v9, :cond_2

    .line 49
    .line 50
    if-ne v5, v8, :cond_1

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v11

    .line 62
    :cond_2
    iget v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$1:I

    .line 63
    .line 64
    iget v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$0:I

    .line 65
    .line 66
    iget-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$4:Ljava/util/Iterator;

    .line 67
    .line 68
    iget-object v7, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$0:I

    .line 75
    .line 76
    iget-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 77
    .line 78
    iget-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 79
    .line 80
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move/from16 v18, v0

    .line 84
    .line 85
    move-object v0, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v5, v1, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v12, v1, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 97
    .line 98
    iput-object v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 99
    .line 100
    move/from16 v13, p2

    .line 101
    .line 102
    iput v13, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$0:I

    .line 103
    .line 104
    iput v10, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

    .line 105
    .line 106
    iget-object v14, v0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 107
    .line 108
    new-instance v15, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;

    .line 109
    .line 110
    invoke-direct {v15, v2, v5, v12}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v10, v7, v15, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-ne v2, v4, :cond_5

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move/from16 v18, v13

    .line 121
    .line 122
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_7

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    move v5, v7

    .line 135
    move-object v7, v0

    .line 136
    move v0, v5

    .line 137
    move-object v5, v1

    .line 138
    move/from16 v1, v18

    .line 139
    .line 140
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lorg/wikipedia/pageimages/db/PageImage;

    .line 151
    .line 152
    iget v8, v2, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 153
    .line 154
    add-int/2addr v8, v1

    .line 155
    iput v8, v2, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 156
    .line 157
    iput-object v7, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 158
    .line 159
    iput-object v11, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 160
    .line 161
    iput-object v5, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$4:Ljava/util/Iterator;

    .line 162
    .line 163
    iput v1, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$0:I

    .line 164
    .line 165
    iput v0, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$1:I

    .line 166
    .line 167
    iput v9, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

    .line 168
    .line 169
    invoke-virtual {v7, v2, v3}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->insertPageImage(Lorg/wikipedia/pageimages/db/PageImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-ne v2, v4, :cond_6

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_7
    new-instance v12, Lorg/wikipedia/pageimages/db/PageImage;

    .line 177
    .line 178
    iget-object v13, v1, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v14, v1, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v15, v1, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 195
    .line 196
    const-wide/16 v19, 0x0

    .line 197
    .line 198
    const-wide/16 v21, 0x0

    .line 199
    .line 200
    move-object/from16 v17, v1

    .line 201
    .line 202
    move-object/from16 v16, v2

    .line 203
    .line 204
    invoke-direct/range {v12 .. v22}, Lorg/wikipedia/pageimages/db/PageImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDD)V

    .line 205
    .line 206
    .line 207
    move/from16 v13, v18

    .line 208
    .line 209
    iput-object v11, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 210
    .line 211
    iput-object v11, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->L$1:Lorg/wikipedia/history/HistoryEntry;

    .line 212
    .line 213
    iput v13, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->I$0:I

    .line 214
    .line 215
    iput v8, v3, Lorg/wikipedia/pageimages/db/PageImageDao$upsertForTimeSpent$1;->label:I

    .line 216
    .line 217
    invoke-virtual {v0, v12, v3}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->insertPageImage(Lorg/wikipedia/pageimages/db/PageImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-ne v0, v4, :cond_8

    .line 222
    .line 223
    :goto_3
    return-object v4

    .line 224
    :cond_8
    return-object v6
.end method
