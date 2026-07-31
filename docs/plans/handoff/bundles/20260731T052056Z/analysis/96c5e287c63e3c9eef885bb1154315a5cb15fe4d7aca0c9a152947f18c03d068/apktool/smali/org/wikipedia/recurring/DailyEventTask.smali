.class public final Lorg/wikipedia/recurring/DailyEventTask;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final app:Lorg/wikipedia/WikipediaApp;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/recurring/DailyEventTask;->app:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    const v0, 0x7f1205de

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/recurring/DailyEventTask;->name:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/recurring/DailyEventTask;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final run(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lorg/wikipedia/recurring/DailyEventTask$run$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/recurring/DailyEventTask$run$1;-><init>(Lorg/wikipedia/recurring/DailyEventTask;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 58
    .line 59
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    iget-object p0, p0, Lorg/wikipedia/recurring/DailyEventTask;->app:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    invoke-static {p0}, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;->getInstallTime(Landroid/content/Context;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    sub-long/2addr v4, v6

    .line 72
    const-wide/32 v6, 0x5265c00

    .line 73
    .line 74
    .line 75
    div-long/2addr v4, v6

    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {v2, v4, v5, p0}, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;-><init>(JLjava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 88
    .line 89
    .line 90
    iput v3, v0, Lorg/wikipedia/recurring/DailyEventTask$run$1;->label:I

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->refreshStreamConfigs(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-ne p0, v1, :cond_3

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_3
    :goto_1
    const/4 v9, 0x0

    .line 100
    const/16 v10, 0x1fc

    .line 101
    .line 102
    const-string v2, "launch"

    .line 103
    .line 104
    const-string v3, "rrl_launch"

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    invoke-static/range {v2 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0
.end method

.method public final shouldRun(Ljava/util/Date;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/wikipedia/recurring/RecurringTask;->millisSinceLastRun(Ljava/util/Date;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/32 v0, 0x5265c00

    .line 6
    .line 7
    .line 8
    cmp-long p0, p0, v0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
