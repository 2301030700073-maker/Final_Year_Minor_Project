.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static cancel(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 8
    .line 9
    const-string v1, "CancelWorkByTag_"

    .line 10
    .line 11
    const-string v2, "org.schabi.newpipe_streams_notifications"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 18
    .line 19
    iget-object v2, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroidx/room/TransactionExecutor;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v3, p0, v4}, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkManagerImpl;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/SystemClock;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 4
    .line 5
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    sget-object v2, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    .line 15
    .line 16
    :goto_0
    move-object v5, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    new-instance v4, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v4, v2}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 25
    .line 26
    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v3, 0x18

    .line 30
    .line 31
    if-lt v2, v3, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_2
    move-object v14, v1

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_3
    new-instance v3, Landroidx/work/Constraints;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const-wide/16 v10, -0x1

    .line 49
    .line 50
    move-wide v12, v10

    .line 51
    invoke-direct/range {v3 .. v14}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 55
    .line 56
    iget-wide v4, v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    .line 57
    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    const-class v2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 65
    .line 66
    invoke-direct {v1, v0, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(ILjava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v1, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v2, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    const-wide/32 v6, 0xdbba0

    .line 77
    .line 78
    .line 79
    cmp-long v8, v4, v6

    .line 80
    .line 81
    const-string v9, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 82
    .line 83
    if-gez v8, :cond_2

    .line 84
    .line 85
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v10, v2, v9}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    if-gez v8, :cond_3

    .line 93
    .line 94
    move-wide v10, v6

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    move-wide v10, v4

    .line 97
    :goto_4
    if-gez v8, :cond_4

    .line 98
    .line 99
    move-wide v12, v6

    .line 100
    goto :goto_5

    .line 101
    :cond_4
    move-wide v12, v4

    .line 102
    :goto_5
    cmp-long v4, v10, v6

    .line 103
    .line 104
    if-gez v4, :cond_5

    .line 105
    .line 106
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5, v2, v9}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    if-gez v4, :cond_6

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    move-wide v6, v10

    .line 117
    :goto_6
    iput-wide v6, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 118
    .line 119
    const-wide/32 v4, 0x493e0

    .line 120
    .line 121
    .line 122
    cmp-long v4, v12, v4

    .line 123
    .line 124
    if-gez v4, :cond_7

    .line 125
    .line 126
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "Flex duration lesser than minimum allowed value; Changed to 300000"

    .line 131
    .line 132
    invoke-virtual {v4, v2, v5}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_7
    iget-wide v4, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 136
    .line 137
    cmp-long v4, v12, v4

    .line 138
    .line 139
    if-lez v4, :cond_8

    .line 140
    .line 141
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v6, "Flex duration greater than interval duration; Changed to "

    .line 148
    .line 149
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v2, v5}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    const-wide/32 v14, 0x493e0

    .line 163
    .line 164
    .line 165
    iget-wide v4, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 166
    .line 167
    move-wide/from16 v16, v4

    .line 168
    .line 169
    invoke-static/range {v12 .. v17}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    iput-wide v4, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 174
    .line 175
    iget-object v0, v1, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 176
    .line 177
    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 178
    .line 179
    const-string v0, "org.schabi.newpipe_streams_notifications"

    .line 180
    .line 181
    iget-object v2, v1, Landroidx/work/OneTimeWorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    .line 182
    .line 183
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 191
    .line 192
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 197
    .line 198
    if-eqz p2, :cond_9

    .line 199
    .line 200
    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->CANCEL_AND_REENQUEUE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_9
    move-object v3, v1

    .line 204
    :goto_7
    sget-object v4, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 205
    .line 206
    const-string v5, "org.schabi.newpipe_streams_notifications"

    .line 207
    .line 208
    if-ne v3, v4, :cond_a

    .line 209
    .line 210
    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 211
    .line 212
    iget-object v1, v1, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 213
    .line 214
    const-string v3, "enqueueUniquePeriodic_"

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iget-object v4, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 221
    .line 222
    iget-object v4, v4, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v4, Landroidx/room/TransactionExecutor;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v5, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 230
    .line 231
    const/16 v6, 0xc

    .line 232
    .line 233
    invoke-direct {v5, v2, v0, v6}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    invoke-static {v1, v3, v4, v5}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/SystemClock;

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_a
    if-ne v3, v1, :cond_b

    .line 241
    .line 242
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 243
    .line 244
    :goto_8
    move-object v4, v1

    .line 245
    goto :goto_9

    .line 246
    :cond_b
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :goto_9
    new-instance v1, Landroidx/work/impl/WorkContinuationImpl;

    .line 250
    .line 251
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const/4 v6, 0x0

    .line 256
    move-object v3, v5

    .line 257
    move-object v5, v0

    .line 258
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/SystemClock;

    .line 262
    .line 263
    .line 264
    return-void
.end method
