.class public final Landroidx/work/OneTimeWorkRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public id:Ljava/util/UUID;

.field public final tags:Ljava/util/LinkedHashSet;

.field public workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iput v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->$r8$classId:I

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->id:Ljava/util/UUID;

    .line 18
    .line 19
    new-instance v2, Landroidx/work/impl/model/WorkSpec;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->id:Ljava/util/UUID;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/16 v34, 0x0

    .line 35
    .line 36
    const v35, 0x1fffffa

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const-wide/16 v9, 0x0

    .line 44
    .line 45
    const-wide/16 v11, 0x0

    .line 46
    .line 47
    const-wide/16 v13, 0x0

    .line 48
    .line 49
    const/4 v15, 0x0

    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    const-wide/16 v18, 0x0

    .line 55
    .line 56
    const-wide/16 v20, 0x0

    .line 57
    .line 58
    const-wide/16 v22, 0x0

    .line 59
    .line 60
    const-wide/16 v24, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const/16 v28, 0x0

    .line 67
    .line 68
    const-wide/16 v29, 0x0

    .line 69
    .line 70
    const/16 v31, 0x0

    .line 71
    .line 72
    const/16 v32, 0x0

    .line 73
    .line 74
    const/16 v33, 0x0

    .line 75
    .line 76
    invoke-direct/range {v2 .. v35}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 80
    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    filled-new-array {v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 97
    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    aget-object v1, v1, v3

    .line 101
    .line 102
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Landroidx/work/OneTimeWorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/WorkRequest;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/work/OneTimeWorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 12
    .line 13
    iget-boolean v4, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroidx/work/PeriodicWorkRequest;

    .line 18
    .line 19
    iget-object v5, v0, Landroidx/work/OneTimeWorkRequest$Builder;->id:Ljava/util/UUID;

    .line 20
    .line 21
    invoke-direct {v4, v5, v1, v2}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/LinkedHashSet;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "PeriodicWorkRequests cannot be expedited"

    .line 26
    .line 27
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v4, v3

    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    new-instance v4, Landroidx/work/OneTimeWorkRequest;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->id:Ljava/util/UUID;

    .line 35
    .line 36
    iget-object v5, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 37
    .line 38
    invoke-direct {v4, v1, v5, v2}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/LinkedHashSet;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 44
    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v5, 0x18

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    if-lt v2, v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    :cond_1
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresCharging:Z

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    iget-boolean v1, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v1, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    move v1, v6

    .line 75
    :goto_2
    iget-object v2, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 76
    .line 77
    iget-boolean v5, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 78
    .line 79
    if-eqz v5, :cond_6

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    iget-wide v8, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 84
    .line 85
    const-wide/16 v10, 0x0

    .line 86
    .line 87
    cmp-long v1, v8, v10

    .line 88
    .line 89
    if-gtz v1, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    const-string v0, "Expedited jobs cannot be delayed"

    .line 93
    .line 94
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v3

    .line 98
    :cond_5
    const-string v0, "Expedited jobs only support network and storage constraints"

    .line 99
    .line 100
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v3

    .line 104
    :cond_6
    :goto_3
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 105
    .line 106
    const/16 v3, 0x7f

    .line 107
    .line 108
    if-nez v1, :cond_9

    .line 109
    .line 110
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 111
    .line 112
    const-string v5, "."

    .line 113
    .line 114
    filled-new-array {v5}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const/4 v8, 0x6

    .line 119
    invoke-static {v1, v5, v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ne v5, v6, :cond_7

    .line 128
    .line 129
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-gt v5, v3, :cond_8

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    invoke-static {v3, v1}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_5
    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-le v2, v3, :cond_a

    .line 161
    .line 162
    iget-object v2, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 163
    .line 164
    invoke-static {v3, v1}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 169
    .line 170
    :cond_a
    :goto_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iput-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->id:Ljava/util/UUID;

    .line 178
    .line 179
    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object v8, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v7, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 196
    .line 197
    iget-object v9, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v10, Landroidx/work/Data;

    .line 200
    .line 201
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 202
    .line 203
    invoke-direct {v10, v2}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 204
    .line 205
    .line 206
    new-instance v11, Landroidx/work/Data;

    .line 207
    .line 208
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 209
    .line 210
    invoke-direct {v11, v2}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 211
    .line 212
    .line 213
    iget-wide v12, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 214
    .line 215
    iget-wide v14, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 216
    .line 217
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 218
    .line 219
    move-wide/from16 v16, v2

    .line 220
    .line 221
    new-instance v2, Landroidx/work/Constraints;

    .line 222
    .line 223
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 224
    .line 225
    invoke-direct {v2, v3}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 226
    .line 227
    .line 228
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 229
    .line 230
    move-object/from16 v18, v2

    .line 231
    .line 232
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 233
    .line 234
    move-object/from16 v20, v2

    .line 235
    .line 236
    move/from16 v19, v3

    .line 237
    .line 238
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 239
    .line 240
    move-wide/from16 v21, v2

    .line 241
    .line 242
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 243
    .line 244
    move-wide/from16 v23, v2

    .line 245
    .line 246
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 247
    .line 248
    move-wide/from16 v25, v2

    .line 249
    .line 250
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 251
    .line 252
    move-wide/from16 v27, v2

    .line 253
    .line 254
    iget-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 255
    .line 256
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 257
    .line 258
    move/from16 v29, v2

    .line 259
    .line 260
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 261
    .line 262
    move/from16 v31, v2

    .line 263
    .line 264
    move-object/from16 v30, v3

    .line 265
    .line 266
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 267
    .line 268
    move-wide/from16 v32, v2

    .line 269
    .line 270
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 271
    .line 272
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 273
    .line 274
    move/from16 v34, v2

    .line 275
    .line 276
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 279
    .line 280
    const/high16 v38, 0x80000

    .line 281
    .line 282
    move-object/from16 v37, v1

    .line 283
    .line 284
    move-object/from16 v36, v2

    .line 285
    .line 286
    move/from16 v35, v3

    .line 287
    .line 288
    invoke-direct/range {v5 .. v38}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 289
    .line 290
    .line 291
    iput-object v5, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 292
    .line 293
    return-object v4

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
