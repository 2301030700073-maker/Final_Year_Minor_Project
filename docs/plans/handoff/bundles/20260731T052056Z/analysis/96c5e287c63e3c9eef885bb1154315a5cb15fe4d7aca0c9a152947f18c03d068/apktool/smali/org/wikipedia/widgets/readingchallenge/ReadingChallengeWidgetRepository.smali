.class public final Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final REMOVE_DATE:Lj$/time/LocalDate;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    const/16 v2, 0x7ea

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->context:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static getCurrentState$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;)Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;
    .locals 9

    .line 1
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/16 v3, 0x19

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lt v1, v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeLastReadDate()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-lez v4, :cond_2

    .line 40
    .line 41
    invoke-static {v1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 46
    .line 47
    invoke-virtual {v4, v1, v0}, Lj$/time/temporal/ChronoUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x1

    .line 52
    .line 53
    cmp-long v1, v4, v6

    .line 54
    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    const v1, 0x7f120651

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 64
    .line 65
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeEnrolled()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeLastReadDate()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-lez v6, :cond_3

    .line 82
    .line 83
    invoke-static {v5}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :cond_3
    invoke-static {v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->hasActiveStreak(Lj$/time/LocalDate;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    sget-object v6, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;

    .line 96
    .line 97
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->context:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;->getInstallTime(Landroid/content/Context;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    invoke-static {v6, v7}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {p0, v6}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {p0, v6}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    sget-object v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 131
    .line 132
    sget-object v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$6:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 133
    .line 134
    sget-object v8, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 135
    .line 136
    invoke-virtual {v0, v8}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    if-eqz p0, :cond_5

    .line 144
    .line 145
    :goto_1
    return-object v7

    .line 146
    :cond_5
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getSTART_DATE()Lj$/time/LocalDate;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {v0, p0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$5:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_6
    if-nez v1, :cond_8

    .line 160
    .line 161
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v0, p0}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$4:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 173
    .line 174
    return-object p0

    .line 175
    :cond_8
    if-lt v4, v3, :cond_9

    .line 176
    .line 177
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$1:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_9
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v0, p0}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_b

    .line 189
    .line 190
    if-nez v5, :cond_b

    .line 191
    .line 192
    if-lez v4, :cond_a

    .line 193
    .line 194
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$ChallengeConcludedIncomplete;

    .line 195
    .line 196
    invoke-direct {p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$ChallengeConcludedIncomplete;-><init>(I)V

    .line 197
    .line 198
    .line 199
    return-object p0

    .line 200
    :cond_a
    :goto_2
    return-object v6

    .line 201
    :cond_b
    if-nez v4, :cond_c

    .line 202
    .line 203
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$EnrolledNotStarted;->INSTANCE:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$EnrolledNotStarted;

    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_c
    if-eqz v2, :cond_d

    .line 207
    .line 208
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 209
    .line 210
    invoke-direct {p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;-><init>(I)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_d
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;

    .line 215
    .line 216
    invoke-direct {p0, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;-><init>(I)V

    .line 217
    .line 218
    .line 219
    return-object p0
.end method

.method public static hasActiveStreak(Lj$/time/LocalDate;)Z
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeLastReadDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 14
    .line 15
    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0, p0}, Lj$/time/temporal/ChronoUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    cmp-long p0, v0, v2

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method


# virtual methods
.method public final observeState()Lkotlinx/coroutines/flow/Flow;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const v1, 0x7f120651

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f12064b

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x7f12064e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v3, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/16 v8, 0xc

    .line 45
    .line 46
    move-object v6, p0

    .line 47
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final updateWidgetsAndSendAnalytics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->getCurrentState$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;)Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$1:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v0, "challenge_completed"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    instance-of v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$ChallengeConcludedIncomplete;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v0, "challenge_incomplete"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v0, "challenge_no_streak"

    .line 41
    .line 42
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    instance-of v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const-string v0, "streak_ongoing"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    instance-of v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-string v0, "streak_ongoing_read"

    .line 62
    .line 63
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$4:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    const-string v0, "not_enrolled"

    .line 77
    .line 78
    invoke-static {v0, v3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$5:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    const-string v0, "not_yet_live"

    .line 91
    .line 92
    invoke-static {v0, v3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$EnrolledNotStarted;->INSTANCE:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$EnrolledNotStarted;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    const-string v0, "enrolled_not_started"

    .line 105
    .line 106
    invoke-static {v0, v3}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$3:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    const-string v0, "challenge_removed"

    .line 119
    .line 120
    invoke-static {v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;->logHeartbeat(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE$6:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 138
    .line 139
    const-string v2, "apps-widget"

    .line 140
    .line 141
    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 142
    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    const/16 v8, 0xfc

    .line 146
    .line 147
    const-string v2, "heartbeat"

    .line 148
    .line 149
    const-string/jumbo v3, "widget_random_article"

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_0
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 159
    .line 160
    invoke-direct {v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->context:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {v0, p0, p1}, Landroidx/room/Room;->updateAll(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 170
    .line 171
    if-ne p0, p1, :cond_a

    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p0
.end method
