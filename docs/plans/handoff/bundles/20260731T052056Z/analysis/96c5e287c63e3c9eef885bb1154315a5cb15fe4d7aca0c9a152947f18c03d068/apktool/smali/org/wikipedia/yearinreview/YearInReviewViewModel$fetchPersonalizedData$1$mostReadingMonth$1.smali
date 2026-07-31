.class public final Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $dataEndMillis:J

.field public final synthetic $dataStartMillis:J

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(JJLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 4
    .line 5
    iput-wide p3, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 7
    .line 8
    iget-wide v3, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 9
    .line 10
    const/4 v6, 0x7

    .line 11
    iget-wide v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 12
    .line 13
    move-object v5, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    move-object v6, p2

    .line 19
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 20
    .line 21
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 22
    .line 23
    const/4 v7, 0x6

    .line 24
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 25
    .line 26
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_1
    move-object v6, p2

    .line 31
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 32
    .line 33
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 34
    .line 35
    const/4 v7, 0x5

    .line 36
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 37
    .line 38
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    move-object v6, p2

    .line 43
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 44
    .line 45
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 46
    .line 47
    const/4 v7, 0x4

    .line 48
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 49
    .line 50
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :pswitch_3
    move-object v6, p2

    .line 55
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 56
    .line 57
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 58
    .line 59
    const/4 v7, 0x3

    .line 60
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 61
    .line 62
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :pswitch_4
    move-object v6, p2

    .line 67
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 68
    .line 69
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 70
    .line 71
    const/4 v7, 0x2

    .line 72
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 73
    .line 74
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :pswitch_5
    move-object v6, p2

    .line 79
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 80
    .line 81
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 85
    .line 86
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :pswitch_6
    move-object v6, p2

    .line 91
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 92
    .line 93
    iget-wide v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    iget-wide v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 97
    .line 98
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;-><init>(JJLkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    nop

    .line 103
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
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 33
    .line 34
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 43
    .line 44
    iget-object p1, p1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    .line 46
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    const/4 v7, 0x7

    .line 49
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 50
    .line 51
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 52
    .line 53
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-object v2

    .line 78
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 79
    .line 80
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    if-ne v1, v4, :cond_4

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 98
    .line 99
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 108
    .line 109
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 110
    .line 111
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    const/4 v7, 0x5

    .line 114
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 115
    .line 116
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 117
    .line 118
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-ne p1, v0, :cond_6

    .line 126
    .line 127
    move-object v2, v0

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide p0

    .line 135
    const-wide/16 v0, 0x3c

    .line 136
    .line 137
    div-long/2addr p0, v0

    .line 138
    new-instance v2, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 141
    .line 142
    .line 143
    :goto_3
    return-object v2

    .line 144
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 145
    .line 146
    iget v6, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 147
    .line 148
    if-eqz v6, :cond_8

    .line 149
    .line 150
    if-ne v6, v4, :cond_7

    .line 151
    .line 152
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 164
    .line 165
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 174
    .line 175
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 176
    .line 177
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 181
    .line 182
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 183
    .line 184
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 185
    .line 186
    .line 187
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-ne p1, v0, :cond_9

    .line 192
    .line 193
    move-object v2, v0

    .line 194
    goto :goto_7

    .line 195
    :cond_9
    :goto_4
    check-cast p1, Ljava/lang/Iterable;

    .line 196
    .line 197
    new-instance p0, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/String;

    .line 221
    .line 222
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 223
    .line 224
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :cond_b
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_c

    .line 250
    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    move-object v0, p1

    .line 256
    check-cast v0, Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_b

    .line 263
    .line 264
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_c
    :goto_7
    return-object v2

    .line 269
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 270
    .line 271
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 272
    .line 273
    if-eqz v1, :cond_e

    .line 274
    .line 275
    if-ne v1, v4, :cond_d

    .line 276
    .line 277
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    move-object p1, v2

    .line 285
    goto :goto_8

    .line 286
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 290
    .line 291
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 300
    .line 301
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 302
    .line 303
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 304
    .line 305
    const/4 v7, 0x4

    .line 306
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 307
    .line 308
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 309
    .line 310
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 311
    .line 312
    .line 313
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-ne p1, v0, :cond_f

    .line 318
    .line 319
    move-object p1, v0

    .line 320
    :cond_f
    :goto_8
    return-object p1

    .line 321
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 322
    .line 323
    iget v6, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 324
    .line 325
    if-eqz v6, :cond_11

    .line 326
    .line 327
    if-ne v6, v4, :cond_10

    .line 328
    .line 329
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_10
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_c

    .line 337
    :cond_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 341
    .line 342
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 351
    .line 352
    iget-object p1, p1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 353
    .line 354
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 355
    .line 356
    const/16 v7, 0x8

    .line 357
    .line 358
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 359
    .line 360
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 361
    .line 362
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 363
    .line 364
    .line 365
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    if-ne p1, v0, :cond_12

    .line 370
    .line 371
    move-object v2, v0

    .line 372
    goto :goto_c

    .line 373
    :cond_12
    :goto_9
    check-cast p1, Ljava/lang/Iterable;

    .line 374
    .line 375
    new-instance p0, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .line 383
    .line 384
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_13

    .line 393
    .line 394
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Ljava/lang/String;

    .line 399
    .line 400
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 401
    .line 402
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    :cond_14
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    if-eqz p1, :cond_15

    .line 428
    .line 429
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    move-object v0, p1

    .line 434
    check-cast v0, Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_14

    .line 441
    .line 442
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    goto :goto_b

    .line 446
    :cond_15
    :goto_c
    return-object v2

    .line 447
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 448
    .line 449
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 450
    .line 451
    if-eqz v1, :cond_17

    .line 452
    .line 453
    if-ne v1, v4, :cond_16

    .line 454
    .line 455
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_16
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    move-object p1, v2

    .line 463
    goto :goto_d

    .line 464
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 468
    .line 469
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 478
    .line 479
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 480
    .line 481
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 482
    .line 483
    const/4 v7, 0x2

    .line 484
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 485
    .line 486
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 487
    .line 488
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 489
    .line 490
    .line 491
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    if-ne p1, v0, :cond_18

    .line 496
    .line 497
    move-object p1, v0

    .line 498
    :cond_18
    :goto_d
    return-object p1

    .line 499
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 500
    .line 501
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 502
    .line 503
    if-eqz v1, :cond_1a

    .line 504
    .line 505
    if-ne v1, v4, :cond_19

    .line 506
    .line 507
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto :goto_e

    .line 511
    :cond_19
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    move-object p1, v2

    .line 515
    goto :goto_e

    .line 516
    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 520
    .line 521
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 530
    .line 531
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 532
    .line 533
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 534
    .line 535
    const/4 v7, 0x1

    .line 536
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 537
    .line 538
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 539
    .line 540
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 541
    .line 542
    .line 543
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    if-ne p1, v0, :cond_1b

    .line 548
    .line 549
    move-object p1, v0

    .line 550
    :cond_1b
    :goto_e
    return-object p1

    .line 551
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 552
    .line 553
    iget v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 554
    .line 555
    if-eqz v1, :cond_1d

    .line 556
    .line 557
    if-ne v1, v4, :cond_1c

    .line 558
    .line 559
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    goto :goto_f

    .line 563
    :cond_1c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    move-object p1, v2

    .line 567
    goto :goto_f

    .line 568
    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 572
    .line 573
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iput v4, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->label:I

    .line 582
    .line 583
    iget-object p1, p1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 584
    .line 585
    new-instance v6, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 586
    .line 587
    const/4 v7, 0x3

    .line 588
    iget-wide v8, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataStartMillis:J

    .line 589
    .line 590
    iget-wide v10, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1;->$dataEndMillis:J

    .line 591
    .line 592
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 593
    .line 594
    .line 595
    invoke-static {p1, v4, v5, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    if-ne p1, v0, :cond_1e

    .line 600
    .line 601
    move-object p1, v0

    .line 602
    :cond_1e
    :goto_f
    return-object p1

    .line 603
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
