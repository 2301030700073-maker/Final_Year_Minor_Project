.class public final Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
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

.method public constructor <init>(Landroid/content/Context;Landroidx/work/SystemClock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Landroid/content/ComponentName;

    .line 9
    .line 10
    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 11
    .line 12
    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 16
    .line 17
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
    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 34
    .line 35
    invoke-direct {v2, p2, p0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 36
    .line 37
    .line 38
    iget-boolean p0, v0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-boolean p2, v0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v3, 0x18

    .line 61
    .line 62
    const/16 v4, 0x1a

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x1

    .line 66
    const/16 v7, 0x1c

    .line 67
    .line 68
    if-lt v2, v7, :cond_0

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    iget-object v1, v0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 80
    .line 81
    const/16 v8, 0x1e

    .line 82
    .line 83
    if-lt v2, v8, :cond_1

    .line 84
    .line 85
    sget-object v8, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 86
    .line 87
    if-ne v1, v8, :cond_1

    .line 88
    .line 89
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 90
    .line 91
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    const/16 v8, 0x19

    .line 95
    .line 96
    invoke-virtual {v1, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

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
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    sget-object v8, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter$1;->$SwitchMap$androidx$work$NetworkType:[I

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    aget v8, v8, v9

    .line 115
    .line 116
    if-eq v8, v6, :cond_6

    .line 117
    .line 118
    const/4 v9, 0x2

    .line 119
    if-eq v8, v9, :cond_5

    .line 120
    .line 121
    const/4 v10, 0x3

    .line 122
    if-eq v8, v10, :cond_7

    .line 123
    .line 124
    const/4 v9, 0x4

    .line 125
    if-eq v8, v9, :cond_3

    .line 126
    .line 127
    const/4 v10, 0x5

    .line 128
    if-eq v8, v10, :cond_2

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    if-lt v2, v4, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    if-lt v2, v3, :cond_4

    .line 135
    .line 136
    move v9, v10

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    :goto_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v10, "API version too low. Cannot convert network type value "

    .line 145
    .line 146
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget-object v9, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v8, v9, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    move v9, v6

    .line 162
    goto :goto_1

    .line 163
    :cond_6
    move v9, v5

    .line 164
    :cond_7
    :goto_1
    invoke-virtual {p0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 165
    .line 166
    .line 167
    :goto_2
    if-nez p2, :cond_9

    .line 168
    .line 169
    iget-object p2, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 170
    .line 171
    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 172
    .line 173
    if-ne p2, v1, :cond_8

    .line 174
    .line 175
    move p2, v5

    .line 176
    goto :goto_3

    .line 177
    :cond_8
    move p2, v6

    .line 178
    :goto_3
    iget-wide v8, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 179
    .line 180
    invoke-virtual {p0, v8, v9, p2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 181
    .line 182
    .line 183
    :cond_9
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v10

    .line 191
    sub-long/2addr v8, v10

    .line 192
    const-wide/16 v10, 0x0

    .line 193
    .line 194
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 195
    .line 196
    .line 197
    move-result-wide v8

    .line 198
    if-gt v2, v7, :cond_a

    .line 199
    .line 200
    invoke-virtual {p0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_a
    cmp-long p2, v8, v10

    .line 205
    .line 206
    if-lez p2, :cond_b

    .line 207
    .line 208
    invoke-virtual {p0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_b
    iget-boolean p2, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 213
    .line 214
    if-nez p2, :cond_c

    .line 215
    .line 216
    invoke-virtual {p0, v6}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 217
    .line 218
    .line 219
    :cond_c
    :goto_4
    if-lt v2, v3, :cond_e

    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    if-eqz p2, :cond_e

    .line 226
    .line 227
    iget-object p2, v0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 228
    .line 229
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_d

    .line 238
    .line 239
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroidx/work/Constraints$ContentUriTrigger;

    .line 244
    .line 245
    iget-boolean v2, v1, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    .line 246
    .line 247
    new-instance v3, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 248
    .line 249
    iget-object v1, v1, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    .line 250
    .line 251
    new-instance v3, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 252
    .line 253
    invoke-direct {v3, v1, v2}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v3}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_d
    iget-wide v1, v0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 261
    .line 262
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 263
    .line 264
    .line 265
    iget-wide v1, v0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 266
    .line 267
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 268
    .line 269
    .line 270
    :cond_e
    invoke-virtual {p0, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 271
    .line 272
    .line 273
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 274
    .line 275
    if-lt p2, v4, :cond_f

    .line 276
    .line 277
    iget-boolean v1, v0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 278
    .line 279
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 280
    .line 281
    .line 282
    iget-boolean v0, v0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 285
    .line 286
    .line 287
    :cond_f
    iget v0, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 288
    .line 289
    if-lez v0, :cond_10

    .line 290
    .line 291
    move v0, v6

    .line 292
    goto :goto_6

    .line 293
    :cond_10
    move v0, v5

    .line 294
    :goto_6
    cmp-long v1, v8, v10

    .line 295
    .line 296
    if-lez v1, :cond_11

    .line 297
    .line 298
    move v5, v6

    .line 299
    :cond_11
    const/16 v1, 0x1f

    .line 300
    .line 301
    if-lt p2, v1, :cond_12

    .line 302
    .line 303
    iget-boolean v1, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 304
    .line 305
    if-eqz v1, :cond_12

    .line 306
    .line 307
    if-nez v0, :cond_12

    .line 308
    .line 309
    if-nez v5, :cond_12

    .line 310
    .line 311
    invoke-virtual {p0, v6}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 312
    .line 313
    .line 314
    :cond_12
    const/16 v0, 0x23

    .line 315
    .line 316
    if-lt p2, v0, :cond_13

    .line 317
    .line 318
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz p1, :cond_13

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;

    .line 323
    .line 324
    .line 325
    :cond_13
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    return-object p0
.end method
