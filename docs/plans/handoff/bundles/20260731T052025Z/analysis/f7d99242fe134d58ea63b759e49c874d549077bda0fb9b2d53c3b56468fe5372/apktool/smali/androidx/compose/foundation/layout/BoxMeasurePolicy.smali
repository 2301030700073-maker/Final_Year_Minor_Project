.class public final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final alignment:Landroidx/compose/ui/BiasAlignment;

.field public final propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/BiasAlignment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/ui/BiasAlignment;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 23
    .line 24
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 25
    .line 26
    if-eq p0, p1, :cond_3

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/BiasAlignment;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x4cf

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p0, 0x4d5

    .line 17
    .line 18
    :goto_0
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public final synthetic maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$maxIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$maxIntrinsicWidth(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/16 v4, 0x1d

    .line 24
    .line 25
    invoke-direct {v2, v4}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v0, v1, v8, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    move-object/from16 v6, p0

    .line 34
    .line 35
    iget-boolean v0, v6, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move-wide/from16 v0, p3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-wide v0, -0x1fffffffdL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long v0, p3, v0

    .line 48
    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v7, 0x1

    .line 55
    const/4 v9, 0x0

    .line 56
    if-ne v4, v7, :cond_8

    .line 57
    .line 58
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 63
    .line 64
    invoke-interface {v2}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v10, v4, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 69
    .line 70
    if-eqz v10, :cond_2

    .line 71
    .line 72
    move-object v5, v4

    .line 73
    check-cast v5, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 74
    .line 75
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    .line 77
    iget-boolean v4, v5, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v4, v9

    .line 81
    :goto_1
    if-nez v4, :cond_4

    .line 82
    .line 83
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 92
    .line 93
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget v5, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 102
    .line 103
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    :goto_2
    move v5, v4

    .line 108
    move v4, v1

    .line 109
    move-object v1, v0

    .line 110
    goto :goto_5

    .line 111
    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ltz v0, :cond_5

    .line 128
    .line 129
    move v10, v7

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move v10, v9

    .line 132
    :goto_3
    if-ltz v5, :cond_6

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    move v7, v9

    .line 136
    :goto_4
    and-int/2addr v7, v10

    .line 137
    if-nez v7, :cond_7

    .line 138
    .line 139
    const-string/jumbo v7, "width and height must be >= 0"

    .line 140
    .line 141
    .line 142
    invoke-static {v7}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-static {v0, v0, v5, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    .line 146
    .line 147
    .line 148
    move-result-wide v9

    .line 149
    invoke-interface {v2, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_2

    .line 154
    :goto_5
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v4, v5, v8, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0

    .line 164
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 169
    .line 170
    move-object v6, v4

    .line 171
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 172
    .line 173
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    iput v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 181
    .line 182
    move-object v10, v5

    .line 183
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    iput v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    move v12, v9

    .line 199
    move v13, v12

    .line 200
    :goto_6
    if-ge v12, v11, :cond_c

    .line 201
    .line 202
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 207
    .line 208
    invoke-interface {v14}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    instance-of v7, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 213
    .line 214
    if-eqz v7, :cond_9

    .line 215
    .line 216
    check-cast v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_9
    move-object v15, v10

    .line 220
    :goto_7
    if-eqz v15, :cond_a

    .line 221
    .line 222
    iget-boolean v7, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_a
    move v7, v9

    .line 226
    :goto_8
    if-nez v7, :cond_b

    .line 227
    .line 228
    invoke-interface {v14, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    aput-object v7, v6, v12

    .line 233
    .line 234
    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 235
    .line 236
    iget v15, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 237
    .line 238
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    iput v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 243
    .line 244
    iget v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 245
    .line 246
    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 247
    .line 248
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    iput v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_b
    const/4 v13, 0x1

    .line 256
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 257
    .line 258
    const/4 v7, 0x1

    .line 259
    goto :goto_6

    .line 260
    :cond_c
    if-eqz v13, :cond_12

    .line 261
    .line 262
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 263
    .line 264
    const v1, 0x7fffffff

    .line 265
    .line 266
    .line 267
    if-eq v0, v1, :cond_d

    .line 268
    .line 269
    move v7, v0

    .line 270
    goto :goto_a

    .line 271
    :cond_d
    move v7, v9

    .line 272
    :goto_a
    iget v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 273
    .line 274
    if-eq v11, v1, :cond_e

    .line 275
    .line 276
    move v1, v11

    .line 277
    goto :goto_b

    .line 278
    :cond_e
    move v1, v9

    .line 279
    :goto_b
    invoke-static {v7, v0, v1, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 280
    .line 281
    .line 282
    move-result-wide v0

    .line 283
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    move v11, v9

    .line 288
    :goto_c
    if-ge v11, v7, :cond_12

    .line 289
    .line 290
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 295
    .line 296
    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    instance-of v14, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 301
    .line 302
    if-eqz v14, :cond_f

    .line 303
    .line 304
    check-cast v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_f
    move-object v13, v10

    .line 308
    :goto_d
    if-eqz v13, :cond_10

    .line 309
    .line 310
    iget-boolean v13, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 311
    .line 312
    goto :goto_e

    .line 313
    :cond_10
    move v13, v9

    .line 314
    :goto_e
    if-eqz v13, :cond_11

    .line 315
    .line 316
    invoke-interface {v12, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    aput-object v12, v6, v11

    .line 321
    .line 322
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_12
    iget v9, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 326
    .line 327
    iget v10, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 328
    .line 329
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    move-object v1, v6

    .line 333
    move-object/from16 v6, p0

    .line 334
    .line 335
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v3, v9, v10, v8, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0
.end method

.method public final synthetic minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicWidth(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoxMeasurePolicy(alignment="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", propagateMinConstraints="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 19
    .line 20
    const/16 v1, 0x29

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
