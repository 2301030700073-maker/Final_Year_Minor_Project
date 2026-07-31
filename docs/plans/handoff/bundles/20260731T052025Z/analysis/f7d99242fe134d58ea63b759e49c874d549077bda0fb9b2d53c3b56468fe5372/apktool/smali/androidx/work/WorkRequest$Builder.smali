.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public backoffCriteriaSet:Z

.field public id:Ljava/lang/Object;

.field public tags:Ljava/lang/Object;

.field public workSpec:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewTransformation;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    .line 96
    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->id:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v2, Landroidx/work/impl/model/WorkSpec;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->id:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/UUID;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/16 v34, 0x0

    .line 33
    .line 34
    const v35, 0x1fffffa

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const-wide/16 v9, 0x0

    .line 42
    .line 43
    const-wide/16 v11, 0x0

    .line 44
    .line 45
    const-wide/16 v13, 0x0

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    const-wide/16 v18, 0x0

    .line 53
    .line 54
    const-wide/16 v20, 0x0

    .line 55
    .line 56
    const-wide/16 v22, 0x0

    .line 57
    .line 58
    const-wide/16 v24, 0x0

    .line 59
    .line 60
    const/16 v26, 0x0

    .line 61
    .line 62
    const/16 v27, 0x0

    .line 63
    .line 64
    const/16 v28, 0x0

    .line 65
    .line 66
    const-wide/16 v29, 0x0

    .line 67
    .line 68
    const/16 v31, 0x0

    .line 69
    .line 70
    const/16 v32, 0x0

    .line 71
    .line 72
    const/16 v33, 0x0

    .line 73
    .line 74
    invoke-direct/range {v2 .. v35}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 75
    .line 76
    .line 77
    iput-object v2, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    filled-new-array {v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public abstract apply(Lkotlinx/coroutines/flow/SharingConfig;)V
.end method

.method public build()Landroidx/work/WorkRequest;
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->buildInternal$work_runtime_release()Landroidx/work/WorkRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroidx/work/impl/model/WorkSpec;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x18

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    :cond_0
    iget-boolean v3, v2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-boolean v3, v2, Landroidx/work/Constraints;->requiresCharging:Z

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-boolean v2, v2, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    move v2, v5

    .line 43
    :goto_1
    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    .line 46
    .line 47
    iget-boolean v4, v3, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 48
    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    iget-wide v7, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 55
    .line 56
    const-wide/16 v9, 0x0

    .line 57
    .line 58
    cmp-long v2, v7, v9

    .line 59
    .line 60
    if-gtz v2, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string v0, "Expedited jobs cannot be delayed"

    .line 64
    .line 65
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v4

    .line 69
    :cond_4
    const-string v0, "Expedited jobs only support network and storage constraints"

    .line 70
    .line 71
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v4

    .line 75
    :cond_5
    :goto_2
    iget-object v2, v3, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 76
    .line 77
    const/16 v4, 0x7f

    .line 78
    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    iget-object v2, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 82
    .line 83
    const-string v7, "."

    .line 84
    .line 85
    filled-new-array {v7}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const/4 v8, 0x6

    .line 90
    invoke-static {v2, v7, v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-ne v7, v5, :cond_6

    .line 99
    .line 100
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/String;

    .line 112
    .line 113
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-gt v5, v4, :cond_7

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_4
    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-le v3, v4, :cond_9

    .line 132
    .line 133
    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    .line 136
    .line 137
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, v3, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 142
    .line 143
    :cond_9
    :goto_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iput-object v2, v0, Landroidx/work/WorkRequest$Builder;->id:Ljava/lang/Object;

    .line 151
    .line 152
    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v2, Landroidx/work/impl/model/WorkSpec;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 171
    .line 172
    iget-object v7, v2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v8, Landroidx/work/Data;

    .line 175
    .line 176
    iget-object v9, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 177
    .line 178
    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 179
    .line 180
    .line 181
    new-instance v9, Landroidx/work/Data;

    .line 182
    .line 183
    iget-object v10, v2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 184
    .line 185
    invoke-direct {v9, v10}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 186
    .line 187
    .line 188
    iget-wide v10, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 189
    .line 190
    iget-wide v12, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 191
    .line 192
    iget-wide v14, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 193
    .line 194
    move-object/from16 v37, v1

    .line 195
    .line 196
    new-instance v1, Landroidx/work/Constraints;

    .line 197
    .line 198
    move-object/from16 v16, v3

    .line 199
    .line 200
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 201
    .line 202
    invoke-direct {v1, v3}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 203
    .line 204
    .line 205
    iget v3, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 206
    .line 207
    move-object/from16 v17, v1

    .line 208
    .line 209
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 210
    .line 211
    move/from16 v19, v3

    .line 212
    .line 213
    move-object/from16 v18, v4

    .line 214
    .line 215
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 216
    .line 217
    move-wide/from16 v20, v3

    .line 218
    .line 219
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 220
    .line 221
    move-wide/from16 v22, v3

    .line 222
    .line 223
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 224
    .line 225
    move-wide/from16 v24, v3

    .line 226
    .line 227
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 228
    .line 229
    move-object/from16 v26, v1

    .line 230
    .line 231
    iget-boolean v1, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 232
    .line 233
    move/from16 v27, v1

    .line 234
    .line 235
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 236
    .line 237
    move-object/from16 v28, v1

    .line 238
    .line 239
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 240
    .line 241
    move-wide/from16 v29, v3

    .line 242
    .line 243
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 244
    .line 245
    move/from16 v31, v1

    .line 246
    .line 247
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 248
    .line 249
    move/from16 v32, v1

    .line 250
    .line 251
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 252
    .line 253
    move/from16 v33, v1

    .line 254
    .line 255
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 258
    .line 259
    const/high16 v36, 0x80000

    .line 260
    .line 261
    move-object/from16 v34, v1

    .line 262
    .line 263
    move-object/from16 v35, v2

    .line 264
    .line 265
    move-wide/from16 v38, v3

    .line 266
    .line 267
    move-object/from16 v3, v16

    .line 268
    .line 269
    move-object/from16 v16, v17

    .line 270
    .line 271
    move-object/from16 v4, v18

    .line 272
    .line 273
    move/from16 v17, v19

    .line 274
    .line 275
    move-wide/from16 v19, v20

    .line 276
    .line 277
    move-wide/from16 v21, v22

    .line 278
    .line 279
    move-wide/from16 v23, v24

    .line 280
    .line 281
    move-object/from16 v18, v26

    .line 282
    .line 283
    move-wide/from16 v25, v29

    .line 284
    .line 285
    move/from16 v29, v31

    .line 286
    .line 287
    move-wide/from16 v30, v38

    .line 288
    .line 289
    invoke-direct/range {v3 .. v36}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 290
    .line 291
    .line 292
    iput-object v3, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 293
    .line 294
    return-object v37
.end method

.method public abstract buildInternal$work_runtime_release()Landroidx/work/WorkRequest;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getPreview()Landroid/view/View;
.end method

.method public abstract getPreviewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;)V
.end method

.method public redrawPreview()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getPreview()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/camera/view/PreviewTransformation;

    .line 20
    .line 21
    new-instance v2, Landroid/util/Size;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-string v4, "PreviewTransform"

    .line 46
    .line 47
    if-eqz v3, :cond_9

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/view/PreviewTransformation;->isTransformationInfoReady()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_2
    instance-of v3, v1, Landroid/view/TextureView;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    check-cast v3, Landroid/view/TextureView;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/camera/view/PreviewTransformation;->getTextureViewCorrectionMatrix()Landroid/graphics/Matrix;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-boolean v5, p0, Landroidx/camera/view/PreviewTransformation;->mHasCameraTransform:Z

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x1

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    iget v5, p0, Landroidx/camera/view/PreviewTransformation;->mTargetRotation:I

    .line 97
    .line 98
    if-eq v3, v5, :cond_4

    .line 99
    .line 100
    move v3, v7

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move v3, v6

    .line 103
    :goto_0
    iget-boolean v5, p0, Landroidx/camera/view/PreviewTransformation;->mHasCameraTransform:Z

    .line 104
    .line 105
    if-nez v5, :cond_6

    .line 106
    .line 107
    if-nez v5, :cond_5

    .line 108
    .line 109
    iget v5, p0, Landroidx/camera/view/PreviewTransformation;->mPreviewRotationDegrees:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget v5, p0, Landroidx/camera/view/PreviewTransformation;->mTargetRotation:I

    .line 113
    .line 114
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->surfaceRotationToDegrees(I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    neg-int v5, v5

    .line 119
    :goto_1
    if-eqz v5, :cond_6

    .line 120
    .line 121
    move v6, v7

    .line 122
    :cond_6
    if-nez v3, :cond_7

    .line 123
    .line 124
    if-eqz v6, :cond_8

    .line 125
    .line 126
    :cond_7
    const-string v3, "Custom rotation not supported with SurfaceView/PERFORMANCE mode."

    .line 127
    .line 128
    invoke-static {v4, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroidx/camera/view/PreviewTransformation;->getTransformedSurfaceRect(ILandroid/util/Size;)Landroid/graphics/RectF;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iget-object v3, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    int-to-float v3, v3

    .line 153
    div-float/2addr v2, v3

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iget-object p0, p0, Landroidx/camera/view/PreviewTransformation;->mResolution:Landroid/util/Size;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    int-to-float p0, p0

    .line 168
    div-float/2addr v2, p0

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 170
    .line 171
    .line 172
    iget p0, v0, Landroid/graphics/RectF;->left:F

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    int-to-float v2, v2

    .line 179
    sub-float/2addr p0, v2

    .line 180
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 181
    .line 182
    .line 183
    iget p0, v0, Landroid/graphics/RectF;->top:F

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    int-to-float v0, v0

    .line 190
    sub-float/2addr p0, v0

    .line 191
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v0, "Transform not applied due to PreviewView size: "

    .line 198
    .line 199
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {v4, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_4
    return-void
.end method

.method public setBackoffCriteria(Landroidx/work/BackoffPolicy;)Landroidx/work/WorkRequest$Builder;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 12
    .line 13
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 14
    .line 15
    sget-object p1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v3, 0x2710

    .line 18
    .line 19
    const-wide/32 v5, 0x112a880

    .line 20
    .line 21
    .line 22
    const-wide/32 v1, 0x493e0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 13
    .line 14
    const-wide p1, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sub-long/2addr p1, v0

    .line 24
    iget-object p3, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p3, Landroidx/work/impl/model/WorkSpec;

    .line 27
    .line 28
    iget-wide v0, p3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 29
    .line 30
    cmp-long p1, p1, v0

    .line 31
    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    const-string p0, "The given initial delay is too large and will cause an overflow!"

    .line 40
    .line 41
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public abstract waitForNextFrame()Lcom/google/common/util/concurrent/ListenableFuture;
.end method
