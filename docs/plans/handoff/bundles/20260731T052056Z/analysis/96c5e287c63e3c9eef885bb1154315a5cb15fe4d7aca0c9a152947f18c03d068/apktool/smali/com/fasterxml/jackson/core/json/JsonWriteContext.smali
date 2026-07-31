.class public final Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public _child:Ljava/lang/Object;

.field public _currentName:Ljava/io/Serializable;

.field public _currentValue:Ljava/lang/Object;

.field public _dups:Ljava/lang/Object;

.field public _gotName:Z

.field public _index:I

.field public final _parent:Ljava/lang/Object;

.field public _type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->$r8$classId:I

    .line 81
    sget-object v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Impulse:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method

.method public constructor <init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->$r8$classId:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 78
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    return-void
.end method

.method public constructor <init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->$r8$classId:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 72
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 73
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 75
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "Lsq2 not (yet) supported for differential axes"

    .line 24
    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    aget p1, p1, p2

    .line 36
    .line 37
    const/4 p2, 0x3

    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq p1, v0, :cond_3

    .line 40
    .line 41
    if-ne p1, v2, :cond_2

    .line 42
    .line 43
    move v2, p2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_3
    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 50
    .line 51
    const/16 p1, 0x14

    .line 52
    .line 53
    new-array v0, p1, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 56
    .line 57
    new-array v0, p1, [F

    .line 58
    .line 59
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 60
    .line 61
    new-array p1, p1, [F

    .line 62
    .line 63
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 64
    .line 65
    new-array p1, p2, [F

    .line 66
    .line 67
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public addDataPoint(FJ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0x14

    .line 6
    .line 7
    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 12
    .line 13
    aget-object v1, p0, v0

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-wide p2, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    .line 23
    .line 24
    iput p1, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    .line 25
    .line 26
    aput-object v1, p0, v0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iput-wide p2, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    .line 30
    .line 31
    iput p1, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    .line 32
    .line 33
    return-void
.end method

.method public calculateVelocity(F)F
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v3, v1, v2

    .line 7
    .line 8
    if-lez v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "maximumVelocity should be a positive value. You specified="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 29
    .line 30
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 33
    .line 34
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, [F

    .line 37
    .line 38
    iget-object v6, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 39
    .line 40
    check-cast v6, [F

    .line 41
    .line 42
    iget v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 43
    .line 44
    iget-object v8, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v8, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 47
    .line 48
    aget-object v9, v8, v7

    .line 49
    .line 50
    if-nez v9, :cond_1

    .line 51
    .line 52
    move v0, v2

    .line 53
    move/from16 v16, v0

    .line 54
    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :cond_1
    const/4 v10, 0x0

    .line 58
    move-object v11, v9

    .line 59
    :goto_1
    aget-object v12, v8, v7

    .line 60
    .line 61
    if-nez v12, :cond_2

    .line 62
    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    move/from16 v17, v3

    .line 66
    .line 67
    const/4 v15, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    iget-wide v14, v9, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    .line 70
    .line 71
    move/from16 v16, v2

    .line 72
    .line 73
    move/from16 v17, v3

    .line 74
    .line 75
    iget-wide v2, v12, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    .line 76
    .line 77
    sub-long/2addr v14, v2

    .line 78
    long-to-float v14, v14

    .line 79
    move/from16 v18, v14

    .line 80
    .line 81
    const/4 v15, 0x1

    .line 82
    iget-wide v13, v11, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    .line 83
    .line 84
    sub-long/2addr v2, v13

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    long-to-float v2, v2

    .line 90
    sget-object v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 91
    .line 92
    if-eq v4, v3, :cond_4

    .line 93
    .line 94
    if-eqz v17, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move-object v11, v9

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_2
    move-object v11, v12

    .line 100
    :goto_3
    const/high16 v3, 0x42c80000    # 100.0f

    .line 101
    .line 102
    cmpl-float v3, v18, v3

    .line 103
    .line 104
    if-gtz v3, :cond_8

    .line 105
    .line 106
    const/high16 v3, 0x42200000    # 40.0f

    .line 107
    .line 108
    cmpl-float v2, v2, v3

    .line 109
    .line 110
    if-lez v2, :cond_5

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    iget v2, v12, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    .line 114
    .line 115
    aput v2, v5, v10

    .line 116
    .line 117
    move/from16 v2, v18

    .line 118
    .line 119
    neg-float v2, v2

    .line 120
    aput v2, v6, v10

    .line 121
    .line 122
    const/16 v2, 0x14

    .line 123
    .line 124
    if-nez v7, :cond_6

    .line 125
    .line 126
    move v7, v2

    .line 127
    :cond_6
    sub-int/2addr v7, v15

    .line 128
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    if-lt v10, v2, :cond_7

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    move/from16 v2, v16

    .line 134
    .line 135
    move/from16 v3, v17

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    :goto_4
    iget v2, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 139
    .line 140
    if-lt v10, v2, :cond_f

    .line 141
    .line 142
    sget-object v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    aget v2, v2, v3

    .line 149
    .line 150
    if-eq v2, v15, :cond_a

    .line 151
    .line 152
    const/4 v3, 0x2

    .line 153
    if-ne v2, v3, :cond_9

    .line 154
    .line 155
    :try_start_0
    iget-object v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, [F

    .line 158
    .line 159
    invoke-static {v6, v5, v10, v0}, Landroidx/work/Operation$State;->polyFitLeastSquares([F[FI[F)V

    .line 160
    .line 161
    .line 162
    aget v0, v0, v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :catch_0
    move/from16 v0, v16

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_9
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 169
    .line 170
    .line 171
    return v16

    .line 172
    :cond_a
    sub-int/2addr v10, v15

    .line 173
    aget v0, v6, v10

    .line 174
    .line 175
    move v2, v10

    .line 176
    move/from16 v3, v16

    .line 177
    .line 178
    :goto_5
    const/high16 v4, 0x40000000    # 2.0f

    .line 179
    .line 180
    if-lez v2, :cond_e

    .line 181
    .line 182
    add-int/lit8 v7, v2, -0x1

    .line 183
    .line 184
    aget v8, v6, v7

    .line 185
    .line 186
    cmpg-float v9, v0, v8

    .line 187
    .line 188
    if-nez v9, :cond_b

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_b
    if-eqz v17, :cond_c

    .line 192
    .line 193
    aget v7, v5, v7

    .line 194
    .line 195
    neg-float v7, v7

    .line 196
    goto :goto_6

    .line 197
    :cond_c
    aget v9, v5, v2

    .line 198
    .line 199
    aget v7, v5, v7

    .line 200
    .line 201
    sub-float v7, v9, v7

    .line 202
    .line 203
    :goto_6
    sub-float/2addr v0, v8

    .line 204
    div-float/2addr v7, v0

    .line 205
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    mul-float/2addr v9, v4

    .line 214
    float-to-double v11, v9

    .line 215
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v11

    .line 219
    double-to-float v4, v11

    .line 220
    mul-float/2addr v0, v4

    .line 221
    sub-float v0, v7, v0

    .line 222
    .line 223
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    mul-float/2addr v4, v0

    .line 228
    add-float/2addr v3, v4

    .line 229
    if-ne v2, v10, :cond_d

    .line 230
    .line 231
    const/high16 v0, 0x3f000000    # 0.5f

    .line 232
    .line 233
    mul-float/2addr v3, v0

    .line 234
    :cond_d
    :goto_7
    add-int/lit8 v2, v2, -0x1

    .line 235
    .line 236
    move v0, v8

    .line 237
    goto :goto_5

    .line 238
    :cond_e
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    mul-float/2addr v2, v4

    .line 247
    float-to-double v2, v2

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    double-to-float v2, v2

    .line 253
    mul-float/2addr v0, v2

    .line 254
    :goto_8
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 255
    .line 256
    mul-float/2addr v0, v2

    .line 257
    goto :goto_9

    .line 258
    :cond_f
    move/from16 v0, v16

    .line 259
    .line 260
    :goto_9
    cmpg-float v2, v0, v16

    .line 261
    .line 262
    if-nez v2, :cond_10

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_10
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_11

    .line 270
    .line 271
    :goto_a
    move/from16 v2, v16

    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_11
    cmpl-float v2, v0, v16

    .line 275
    .line 276
    if-lez v2, :cond_13

    .line 277
    .line 278
    cmpl-float v2, v0, v1

    .line 279
    .line 280
    if-lez v2, :cond_12

    .line 281
    .line 282
    move v0, v1

    .line 283
    :cond_12
    move v2, v0

    .line 284
    goto :goto_b

    .line 285
    :cond_13
    neg-float v1, v1

    .line 286
    cmpg-float v2, v0, v1

    .line 287
    .line 288
    if-gez v2, :cond_12

    .line 289
    .line 290
    move v2, v1

    .line 291
    :goto_b
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 19
    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v3, :cond_5

    .line 25
    .line 26
    const/16 v1, 0x7b

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 32
    .line 33
    check-cast p0, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    const/16 v1, 0x22

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 43
    .line 44
    array-length v4, v3

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    :goto_0
    if-ge v2, v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ge v6, v4, :cond_2

    .line 56
    .line 57
    aget v7, v3, v6

    .line 58
    .line 59
    if-nez v7, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/16 v7, 0x5c

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    aget v7, v3, v6

    .line 68
    .line 69
    if-gez v7, :cond_1

    .line 70
    .line 71
    const-string/jumbo v7, "u00"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 78
    .line 79
    shr-int/lit8 v8, v6, 0x4

    .line 80
    .line 81
    aget-char v8, v7, v8

    .line 82
    .line 83
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    and-int/lit8 v6, v6, 0xf

    .line 87
    .line 88
    aget-char v6, v7, v6

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    int-to-char v6, v7

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    const/16 p0, 0x3f

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :goto_3
    const/16 p0, 0x7d

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    const/16 v1, 0x5b

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget p0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 126
    .line 127
    if-gez p0, :cond_6

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move v2, p0

    .line 131
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const/16 p0, 0x5d

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const-string p0, "/"

    .line 141
    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public typeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "?"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "Object"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string p0, "Array"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const-string p0, "root"

    .line 21
    .line 22
    return-object p0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcoil3/ImageLoader$Builder;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_7

    .line 23
    .line 24
    iget-object v3, v1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iput-object p1, v1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 31
    .line 32
    :goto_0
    move v3, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    :goto_1
    move v3, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget-object v3, v1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    iput-object p1, v1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v3, v1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Ljava/util/HashSet;

    .line 61
    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    new-instance v3, Ljava/util/HashSet;

    .line 65
    .line 66
    const/16 v4, 0x10

    .line 67
    .line 68
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object v3, v1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v4, v1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object v3, v1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Ljava/util/HashSet;

    .line 83
    .line 84
    iget-object v4, v1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object v3, v1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    xor-int/2addr v3, v0

    .line 100
    :goto_2
    if-nez v3, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    iget-object p0, v1, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 106
    .line 107
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    .line 108
    .line 109
    const-string v1, "Duplicate field \'"

    .line 110
    .line 111
    const-string v2, "\'"

    .line 112
    .line 113
    invoke-static {v1, p1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_7
    :goto_3
    iget p0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 122
    .line 123
    if-gez p0, :cond_8

    .line 124
    .line 125
    return v2

    .line 126
    :cond_8
    return v0

    .line 127
    :cond_9
    :goto_4
    const/4 p0, 0x4

    .line 128
    return p0
.end method
