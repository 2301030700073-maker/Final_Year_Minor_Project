.class public final Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final sessionManager:Landroidx/glance/session/SessionManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/glance/session/SessionManagerKt;->GlanceSessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->sessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 7
    .line 8
    return-void
.end method

.method public static update$glance_appwidget_release$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Landroidx/glance/appwidget/Tracing;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1d

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/glance/appwidget/Tracing;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "GlanceAppWidget::update"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    sget-object v2, Landroidx/glance/appwidget/TracingApi29Impl;->INSTANCE:Landroidx/glance/appwidget/TracingApi29Impl;

    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Landroidx/glance/appwidget/TracingApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/AppWidgetId;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Landroidx/glance/appwidget/AppWidgetId;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->sessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 31
    .line 32
    new-instance v1, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p1, v0, p0, v2}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1, p3}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final deleted$glance_appwidget_release(Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

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
    iput v1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 30
    .line 31
    sget-object v3, Landroidx/glance/state/PreferencesGlanceStateDefinition;->INSTANCE:Landroidx/glance/state/PreferencesGlanceStateDefinition;

    .line 32
    .line 33
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    packed-switch v2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v5

    .line 45
    :pswitch_0
    iget-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/lang/Throwable;

    .line 48
    .line 49
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :pswitch_3
    iget p0, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->I$0:I

    .line 64
    .line 65
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 66
    .line 67
    iget-object p2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 70
    .line 71
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception p3

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :pswitch_4
    iget p2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->I$0:I

    .line 79
    .line 80
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 81
    .line 82
    iget-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 85
    .line 86
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance p3, Landroidx/glance/appwidget/AppWidgetId;

    .line 94
    .line 95
    invoke-direct {p3, p2}, Landroidx/glance/appwidget/AppWidgetId;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroidx/paging/PageFetcher$flow$1;

    .line 99
    .line 100
    const/4 v6, 0x1

    .line 101
    invoke-direct {v2, v6, p3, v5}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    iput-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 107
    .line 108
    iput p2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->I$0:I

    .line 109
    .line 110
    iput v6, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 111
    .line 112
    iget-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->sessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 113
    .line 114
    invoke-virtual {p3, v2, v0}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-ne p3, v1, :cond_1

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_1
    :goto_1
    :try_start_1
    iput-object p0, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 125
    .line 126
    iput p2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->I$0:I

    .line 127
    .line 128
    const/4 p3, 0x2

    .line 129
    iput p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .line 133
    .line 134
    if-ne v4, v1, :cond_2

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_2
    move v7, p2

    .line 139
    move-object p2, p0

    .line 140
    move p0, v7

    .line 141
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object p2, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 145
    .line 146
    invoke-static {p0}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 153
    .line 154
    const/4 p3, 0x3

    .line 155
    iput p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 156
    .line 157
    invoke-virtual {p2, p1, v3, p0, v0}, Landroidx/glance/state/GlanceState;->deleteStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-ne p0, v1, :cond_4

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :catchall_1
    move-exception p3

    .line 165
    move v7, p2

    .line 166
    move-object p2, p0

    .line 167
    move p0, v7

    .line 168
    goto :goto_3

    .line 169
    :catch_0
    move v7, p2

    .line 170
    move-object p2, p0

    .line 171
    move p0, v7

    .line 172
    goto :goto_5

    .line 173
    :goto_3
    :try_start_2
    const-string v2, "GlanceAppWidget"

    .line 174
    .line 175
    const-string v6, "Error in user-provided deletion callback"

    .line 176
    .line 177
    invoke-static {v2, v6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    sget-object p2, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 192
    .line 193
    const/4 p3, 0x5

    .line 194
    iput p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 195
    .line 196
    invoke-virtual {p2, p1, v3, p0, v0}, Landroidx/glance/state/GlanceState;->deleteStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    if-ne p0, v1, :cond_4

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :catchall_2
    move-exception p3

    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    sget-object p2, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 208
    .line 209
    invoke-static {p0}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    iput-object p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 216
    .line 217
    const/4 v2, 0x6

    .line 218
    iput v2, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 219
    .line 220
    invoke-virtual {p2, p1, v3, p0, v0}, Landroidx/glance/state/GlanceState;->deleteStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    if-ne p0, v1, :cond_3

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_3
    move-object p0, p3

    .line 228
    :goto_4
    throw p0

    .line 229
    :catch_1
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    sget-object p2, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 233
    .line 234
    invoke-static {p0}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$0:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v5, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->L$1:Landroid/content/Context;

    .line 241
    .line 242
    const/4 p3, 0x4

    .line 243
    iput p3, v0, Landroidx/glance/appwidget/GlanceAppWidget$deleted$1;->label:I

    .line 244
    .line 245
    invoke-virtual {p2, p1, v3, p0, v0}, Landroidx/glance/state/GlanceState;->deleteStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    if-ne p0, v1, :cond_4

    .line 250
    .line 251
    :goto_6
    return-object v1

    .line 252
    :cond_4
    :goto_7
    return-object v4

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final provideGlance(Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 4

    .line 1
    instance-of v0, p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eq v1, v3, :cond_1

    .line 36
    .line 37
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_1
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-direct {p1, v1, p0}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 62
    .line 63
    const v1, -0x28c40733

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 67
    .line 68
    .line 69
    iput v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$provideGlance$1;->label:I

    .line 70
    .line 71
    invoke-static {p0, v0}, Landroidx/room/Room;->provideContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-ne p0, p2, :cond_3

    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method
