.class public final Landroidx/glance/appwidget/GlanceAppWidget$update$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $glanceId:Landroidx/glance/appwidget/AppWidgetId;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$glanceId:Landroidx/glance/appwidget/AppWidgetId;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$glanceId:Landroidx/glance/appwidget/AppWidgetId;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$glanceId:Landroidx/glance/appwidget/AppWidgetId;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 13
    .line 14
    invoke-direct {v0, p0, v2, v1, p2}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p0, p2}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0

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
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 35
    .line 36
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v10, Landroidx/glance/appwidget/AppWidgetUtilsKt$runGlance$1$receiver$1;

    .line 43
    .line 44
    invoke-direct {v10, v2, p1}, Landroidx/glance/appwidget/AppWidgetUtilsKt$runGlance$1$receiver$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/channels/ProducerCoroutine;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 48
    .line 49
    iget-object v7, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$glanceId:Landroidx/glance/appwidget/AppWidgetId;

    .line 50
    .line 51
    const/16 v9, 0x13

    .line 52
    .line 53
    iget-object v5, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 54
    .line 55
    iget-object v6, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 61
    .line 62
    invoke-static {v10, v4, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v0, :cond_2

    .line 67
    .line 68
    move-object v1, v0

    .line 69
    :cond_2
    :goto_0
    return-object v1

    .line 70
    :pswitch_0
    iget-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$glanceId:Landroidx/glance/appwidget/AppWidgetId;

    .line 71
    .line 72
    iget v5, v0, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 73
    .line 74
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 75
    .line 76
    iget v7, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 77
    .line 78
    iget-object v8, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->$context:Landroid/content/Context;

    .line 79
    .line 80
    const/4 v9, 0x3

    .line 81
    const/4 v10, 0x2

    .line 82
    if-eqz v7, :cond_6

    .line 83
    .line 84
    if-eq v7, v3, :cond_5

    .line 85
    .line 86
    if-eq v7, v10, :cond_3

    .line 87
    .line 88
    if-ne v7, v9, :cond_4

    .line 89
    .line 90
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object v1, v4

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    move-object v2, p1

    .line 113
    check-cast v2, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput v3, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 122
    .line 123
    invoke-virtual {v2, v8, p1, p0}, Landroidx/glance/session/SessionManagerImpl$scope$1;->isSessionRunning(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-ne p1, v6, :cond_7

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_8

    .line 137
    .line 138
    new-instance p1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 139
    .line 140
    iget-object v3, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->this$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 141
    .line 142
    const/16 v5, 0xf8

    .line 143
    .line 144
    invoke-direct {p1, v3, v0, v4, v5}, Landroidx/glance/appwidget/AppWidgetSession;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroidx/glance/appwidget/AppWidgetId;Landroid/os/Bundle;I)V

    .line 145
    .line 146
    .line 147
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    iput v10, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 150
    .line 151
    invoke-virtual {v2, v8, p1, p0}, Landroidx/glance/session/SessionManagerImpl$scope$1;->startSession(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-ne p0, v6, :cond_a

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    invoke-static {v5}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v0, v2, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->L$0:Ljava/lang/Object;

    .line 174
    .line 175
    iput v9, p0, Landroidx/glance/appwidget/GlanceAppWidget$update$4;->label:I

    .line 176
    .line 177
    sget-object v0, Landroidx/glance/appwidget/AppWidgetSession$UpdateGlanceState;->INSTANCE:Landroidx/glance/appwidget/AppWidgetSession$UpdateGlanceState;

    .line 178
    .line 179
    invoke-virtual {p1, v0, p0}, Landroidx/glance/appwidget/AppWidgetSession;->sendEvent(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    if-ne p0, v6, :cond_9

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_9
    move-object p0, v1

    .line 187
    :goto_2
    if-ne p0, v6, :cond_a

    .line 188
    .line 189
    :goto_3
    move-object v1, v6

    .line 190
    :cond_a
    :goto_4
    return-object v1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
