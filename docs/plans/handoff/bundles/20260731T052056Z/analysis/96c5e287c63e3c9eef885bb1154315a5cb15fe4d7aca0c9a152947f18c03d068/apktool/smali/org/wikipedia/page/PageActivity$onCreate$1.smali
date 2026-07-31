.class public final Lorg/wikipedia/page/PageActivity$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->this$0:Lorg/wikipedia/page/PageActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->this$0:Lorg/wikipedia/page/PageActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->this$0:Lorg/wikipedia/page/PageActivity;

    .line 5
    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    if-ne v7, v5, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v4, v6

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 38
    .line 39
    invoke-direct {p1, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iput v5, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 50
    .line 51
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getSTART_DATE()Lj$/time/LocalDate;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    sget-object v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 71
    .line 72
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/16 v6, 0x19

    .line 77
    .line 78
    if-lt v3, v6, :cond_4

    .line 79
    .line 80
    :cond_3
    :goto_0
    move-object p0, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-static {v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->hasActiveStreak(Lj$/time/LocalDate;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeEnrolled()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeLastReadDate()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-lez v6, :cond_6

    .line 114
    .line 115
    invoke-static {v3}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    :cond_6
    if-nez v1, :cond_3

    .line 124
    .line 125
    invoke-virtual {v2}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const v2, 0x7f12064e

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/2addr v1, v5

    .line 143
    const v2, 0x7f120651

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->updateWidgetsAndSendAnalytics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-ne p0, v0, :cond_3

    .line 154
    .line 155
    :goto_1
    if-ne p0, v0, :cond_7

    .line 156
    .line 157
    move-object v4, v0

    .line 158
    :cond_7
    :goto_2
    return-object v4

    .line 159
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 160
    .line 161
    iget v7, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 162
    .line 163
    if-eqz v7, :cond_9

    .line 164
    .line 165
    if-ne v7, v5, :cond_8

    .line 166
    .line 167
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move-object v4, v6

    .line 175
    goto :goto_3

    .line 176
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 180
    .line 181
    new-instance v3, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 182
    .line 183
    invoke-direct {v3, v1, v2, v6}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 184
    .line 185
    .line 186
    iput v5, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 187
    .line 188
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-ne p0, v0, :cond_a

    .line 193
    .line 194
    move-object v4, v0

    .line 195
    :cond_a
    :goto_3
    return-object v4

    .line 196
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 197
    .line 198
    iget v1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 199
    .line 200
    if-eqz v1, :cond_c

    .line 201
    .line 202
    if-ne v1, v5, :cond_b

    .line 203
    .line 204
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_b
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    move-object v4, v6

    .line 212
    goto :goto_4

    .line 213
    :cond_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 217
    .line 218
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1;

    .line 219
    .line 220
    invoke-direct {v1, v2, v6, v5}, Lorg/wikipedia/page/PageActivity$onCreate$1;-><init>(Lorg/wikipedia/page/PageActivity;Lkotlin/coroutines/Continuation;I)V

    .line 221
    .line 222
    .line 223
    iput v5, p0, Lorg/wikipedia/page/PageActivity$onCreate$1;->label:I

    .line 224
    .line 225
    invoke-static {v2, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    if-ne p0, v0, :cond_d

    .line 230
    .line 231
    move-object v4, v0

    .line 232
    :cond_d
    :goto_4
    return-object v4

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
