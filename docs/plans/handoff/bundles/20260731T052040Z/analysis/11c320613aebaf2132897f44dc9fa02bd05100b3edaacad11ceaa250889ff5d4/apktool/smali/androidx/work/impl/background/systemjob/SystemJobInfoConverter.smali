.class public final Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClock:Landroidx/work/SystemClock;

.field public final mMarkImportantWhileForeground:Z

.field public final mWorkServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobInfoConverter"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/SystemClock;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mClock:Landroidx/work/SystemClock;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 13
    .line 14
    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 18
    .line 19
    iput-boolean p3, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mMarkImportantWhileForeground:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final convert(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;
    .locals 12

    .line 1
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 2
    .line 3
    new-instance v1, Landroid/os/PersistableBundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "EXTRA_WORK_SPEC_ID"

    .line 9
    .line 10
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "EXTRA_IS_PERIODIC"

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 34
    .line 35
    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 36
    .line 37
    .line 38
    iget-boolean p2, v0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 39
    .line 40
    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-boolean v2, v0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v4, 0x18

    .line 61
    .line 62
    const/16 v5, 0x1a

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x1

    .line 66
    const/16 v8, 0x1c

    .line 67
    .line 68
    if-lt v3, v8, :cond_0

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    iget-object v1, v0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 80
    .line 81
    const/16 v9, 0x1e

    .line 82
    .line 83
    if-lt v3, v9, :cond_1

    .line 84
    .line 85
    sget-object v9, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 86
    .line 87
    if-ne v1, v9, :cond_1

    .line 88
    .line 89
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 90
    .line 91
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    const/16 v9, 0x19

    .line 95
    .line 96
    invoke-virtual {v1, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_6

    .line 113
    .line 114
    if-eq v9, v7, :cond_5

    .line 115
    .line 116
    const/4 v10, 0x2

    .line 117
    if-eq v9, v10, :cond_7

    .line 118
    .line 119
    const/4 v10, 0x3

    .line 120
    if-eq v9, v10, :cond_3

    .line 121
    .line 122
    const/4 v10, 0x4

    .line 123
    if-eq v9, v10, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    if-lt v3, v5, :cond_4

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    if-lt v3, v4, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    :goto_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v11, "API version too low. Cannot convert network type value "

    .line 139
    .line 140
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sget-object v10, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v9, v10, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    move v10, v7

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    move v10, v6

    .line 158
    :cond_7
    :goto_1
    invoke-virtual {p2, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 159
    .line 160
    .line 161
    :goto_2
    if-nez v2, :cond_9

    .line 162
    .line 163
    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 164
    .line 165
    sget-object v2, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 166
    .line 167
    if-ne v1, v2, :cond_8

    .line 168
    .line 169
    move v1, v6

    .line 170
    goto :goto_3

    .line 171
    :cond_8
    move v1, v7

    .line 172
    :goto_3
    iget-wide v9, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 173
    .line 174
    invoke-virtual {p2, v9, v10, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 175
    .line 176
    .line 177
    :cond_9
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    iget-object v9, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mClock:Landroidx/work/SystemClock;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v9

    .line 190
    sub-long/2addr v1, v9

    .line 191
    const-wide/16 v9, 0x0

    .line 192
    .line 193
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    if-gt v3, v8, :cond_a

    .line 198
    .line 199
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_a
    cmp-long v8, v1, v9

    .line 204
    .line 205
    if-lez v8, :cond_b

    .line 206
    .line 207
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_b
    iget-boolean v8, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 212
    .line 213
    if-nez v8, :cond_c

    .line 214
    .line 215
    iget-boolean p0, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mMarkImportantWhileForeground:Z

    .line 216
    .line 217
    if-eqz p0, :cond_c

    .line 218
    .line 219
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 220
    .line 221
    .line 222
    :cond_c
    :goto_4
    if-lt v3, v4, :cond_e

    .line 223
    .line 224
    invoke-virtual {v0}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_e

    .line 229
    .line 230
    iget-object p0, v0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 231
    .line 232
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_d

    .line 241
    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Landroidx/work/Constraints$ContentUriTrigger;

    .line 247
    .line 248
    iget-boolean v4, v3, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    .line 249
    .line 250
    new-instance v8, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 251
    .line 252
    iget-object v3, v3, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    .line 253
    .line 254
    new-instance v8, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 255
    .line 256
    invoke-direct {v8, v3, v4}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_d
    iget-wide v3, v0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 264
    .line 265
    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 266
    .line 267
    .line 268
    iget-wide v3, v0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 269
    .line 270
    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 271
    .line 272
    .line 273
    :cond_e
    invoke-virtual {p2, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 274
    .line 275
    .line 276
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 277
    .line 278
    if-lt p0, v5, :cond_f

    .line 279
    .line 280
    iget-boolean v3, v0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 281
    .line 282
    invoke-virtual {p2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 283
    .line 284
    .line 285
    iget-boolean v0, v0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 286
    .line 287
    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 288
    .line 289
    .line 290
    :cond_f
    iget v0, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 291
    .line 292
    if-lez v0, :cond_10

    .line 293
    .line 294
    move v0, v7

    .line 295
    goto :goto_6

    .line 296
    :cond_10
    move v0, v6

    .line 297
    :goto_6
    cmp-long v1, v1, v9

    .line 298
    .line 299
    if-lez v1, :cond_11

    .line 300
    .line 301
    move v6, v7

    .line 302
    :cond_11
    const/16 v1, 0x1f

    .line 303
    .line 304
    if-lt p0, v1, :cond_12

    .line 305
    .line 306
    iget-boolean v1, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 307
    .line 308
    if-eqz v1, :cond_12

    .line 309
    .line 310
    if-nez v0, :cond_12

    .line 311
    .line 312
    if-nez v6, :cond_12

    .line 313
    .line 314
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 315
    .line 316
    .line 317
    :cond_12
    const/16 v0, 0x23

    .line 318
    .line 319
    if-lt p0, v0, :cond_13

    .line 320
    .line 321
    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 322
    .line 323
    if-eqz p0, :cond_13

    .line 324
    .line 325
    invoke-virtual {p2, p0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;

    .line 326
    .line 327
    .line 328
    :cond_13
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    return-object p0
.end method
