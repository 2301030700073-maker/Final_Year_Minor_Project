.class public final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final alignment:Landroidx/compose/ui/Alignment;

.field public final propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    sget-object v7, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

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
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    invoke-direct {v2, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v0, v1, v7, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    move-object/from16 v6, p0

    .line 33
    .line 34
    iget-boolean v0, v6, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    move-wide/from16 v0, p3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-wide v0, -0x1fffffffdL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long v0, p3, v0

    .line 47
    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v8, 0x1

    .line 54
    const/4 v9, 0x0

    .line 55
    if-ne v4, v8, :cond_8

    .line 56
    .line 57
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 62
    .line 63
    invoke-interface {v2}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    instance-of v10, v4, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 68
    .line 69
    if-eqz v10, :cond_2

    .line 70
    .line 71
    move-object v5, v4

    .line 72
    check-cast v5, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 73
    .line 74
    :cond_2
    if-eqz v5, :cond_3

    .line 75
    .line 76
    iget-boolean v4, v5, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v4, v9

    .line 80
    :goto_1
    if-nez v4, :cond_4

    .line 81
    .line 82
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 91
    .line 92
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget v5, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 101
    .line 102
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    :goto_2
    move v5, v4

    .line 107
    move v4, v1

    .line 108
    move-object v1, v0

    .line 109
    goto :goto_5

    .line 110
    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-ltz v0, :cond_5

    .line 127
    .line 128
    move v10, v8

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move v10, v9

    .line 131
    :goto_3
    if-ltz v5, :cond_6

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    move v8, v9

    .line 135
    :goto_4
    and-int/2addr v8, v10

    .line 136
    if-nez v8, :cond_7

    .line 137
    .line 138
    const-string/jumbo v8, "width and height must be >= 0"

    .line 139
    .line 140
    .line 141
    invoke-static {v8}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-static {v0, v0, v5, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    invoke-interface {v2, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_2

    .line 153
    :goto_5
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;

    .line 154
    .line 155
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v3, v4, v5, v7, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 168
    .line 169
    move-object v6, v4

    .line 170
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 171
    .line 172
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    iput v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 180
    .line 181
    move-object v10, v5

    .line 182
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 183
    .line 184
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    iput v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    move v12, v9

    .line 198
    move v13, v12

    .line 199
    :goto_6
    if-ge v12, v11, :cond_c

    .line 200
    .line 201
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 206
    .line 207
    invoke-interface {v14}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    instance-of v8, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 212
    .line 213
    if-eqz v8, :cond_9

    .line 214
    .line 215
    check-cast v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_9
    move-object v15, v10

    .line 219
    :goto_7
    if-eqz v15, :cond_a

    .line 220
    .line 221
    iget-boolean v8, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_a
    move v8, v9

    .line 225
    :goto_8
    if-nez v8, :cond_b

    .line 226
    .line 227
    invoke-interface {v14, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    aput-object v8, v6, v12

    .line 232
    .line 233
    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 234
    .line 235
    iget v15, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 236
    .line 237
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    iput v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 242
    .line 243
    iget v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 244
    .line 245
    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 246
    .line 247
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    iput v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_b
    const/4 v13, 0x1

    .line 255
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 256
    .line 257
    const/4 v8, 0x1

    .line 258
    goto :goto_6

    .line 259
    :cond_c
    if-eqz v13, :cond_12

    .line 260
    .line 261
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 262
    .line 263
    const v1, 0x7fffffff

    .line 264
    .line 265
    .line 266
    if-eq v0, v1, :cond_d

    .line 267
    .line 268
    move v8, v0

    .line 269
    goto :goto_a

    .line 270
    :cond_d
    move v8, v9

    .line 271
    :goto_a
    iget v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 272
    .line 273
    if-eq v11, v1, :cond_e

    .line 274
    .line 275
    move v1, v11

    .line 276
    goto :goto_b

    .line 277
    :cond_e
    move v1, v9

    .line 278
    :goto_b
    invoke-static {v8, v0, v1, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 279
    .line 280
    .line 281
    move-result-wide v0

    .line 282
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    move v11, v9

    .line 287
    :goto_c
    if-ge v11, v8, :cond_12

    .line 288
    .line 289
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 294
    .line 295
    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    instance-of v14, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 300
    .line 301
    if-eqz v14, :cond_f

    .line 302
    .line 303
    check-cast v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_f
    move-object v13, v10

    .line 307
    :goto_d
    if-eqz v13, :cond_10

    .line 308
    .line 309
    iget-boolean v13, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    .line 310
    .line 311
    goto :goto_e

    .line 312
    :cond_10
    move v13, v9

    .line 313
    :goto_e
    if-eqz v13, :cond_11

    .line 314
    .line 315
    invoke-interface {v12, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    aput-object v12, v6, v11

    .line 320
    .line 321
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_12
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 325
    .line 326
    iget v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 327
    .line 328
    new-instance v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda3;

    .line 329
    .line 330
    move-object v1, v6

    .line 331
    move-object/from16 v6, p0

    .line 332
    .line 333
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda3;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v3, v8, v9, v7, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
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
    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

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
    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
