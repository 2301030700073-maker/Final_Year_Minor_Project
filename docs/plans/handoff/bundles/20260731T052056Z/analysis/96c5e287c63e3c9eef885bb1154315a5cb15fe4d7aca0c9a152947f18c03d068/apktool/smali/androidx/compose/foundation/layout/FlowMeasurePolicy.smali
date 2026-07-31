.class public final Landroidx/compose/foundation/layout/FlowMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
.implements Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;


# instance fields
.field public final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

.field public final crossAxisArrangementSpacing:F

.field public final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final mainAxisSpacing:F

.field public final maxItemsInMainAxis:I

.field public final overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;FILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 17
    .line 18
    return-void
.end method

.method public static intrinsicCrossAxisSize(Ljava/util/List;IIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    goto/16 :goto_11

    .line 17
    .line 18
    :cond_0
    const v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v1, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    new-instance v9, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 26
    .line 27
    move/from16 v10, p3

    .line 28
    .line 29
    move/from16 v5, p4

    .line 30
    .line 31
    move-object/from16 v6, p5

    .line 32
    .line 33
    move-object v4, v9

    .line 34
    move/from16 v9, p2

    .line 35
    .line 36
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JII)V

    .line 37
    .line 38
    .line 39
    move-object v9, v4

    .line 40
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v5, v3

    .line 54
    :goto_0
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v6, v3

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x1

    .line 67
    if-le v7, v8, :cond_3

    .line 68
    .line 69
    move v10, v8

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v10, v3

    .line 72
    :goto_2
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 73
    .line 74
    .line 75
    move-result-wide v12

    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    const/4 v14, 0x0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    invoke-static {v6, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    new-instance v11, Landroidx/collection/IntIntPair;

    .line 85
    .line 86
    invoke-direct {v11, v14, v15}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 87
    .line 88
    .line 89
    move-object v14, v11

    .line 90
    :goto_3
    const/16 v18, 0x0

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    iget-boolean v10, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 105
    .line 106
    const-wide v20, 0xffffffffL

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    if-eqz v10, :cond_7

    .line 112
    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    :goto_4
    move-object/from16 v6, p5

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    move v8, v3

    .line 119
    goto :goto_4

    .line 120
    :goto_5
    invoke-virtual {v6, v3, v3, v8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout(IIZ)Landroidx/collection/IntIntPair;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    iget-wide v0, v0, Landroidx/collection/IntIntPair;->packedValue:J

    .line 127
    .line 128
    and-long v0, v0, v20

    .line 129
    .line 130
    long-to-int v0, v0

    .line 131
    goto :goto_6

    .line 132
    :cond_6
    move v0, v3

    .line 133
    :goto_6
    invoke-static {v0, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    goto/16 :goto_11

    .line 138
    .line 139
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    move v13, v1

    .line 144
    move v11, v3

    .line 145
    move v14, v11

    .line 146
    move/from16 v22, v14

    .line 147
    .line 148
    move v12, v15

    .line 149
    move/from16 v10, v17

    .line 150
    .line 151
    :goto_7
    if-ge v11, v4, :cond_10

    .line 152
    .line 153
    sub-int v6, v13, v6

    .line 154
    .line 155
    add-int/lit8 v13, v11, 0x1

    .line 156
    .line 157
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v17

    .line 161
    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 166
    .line 167
    if-eqz v5, :cond_8

    .line 168
    .line 169
    invoke-interface {v5, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    goto :goto_8

    .line 174
    :cond_8
    move v10, v3

    .line 175
    :goto_8
    if-eqz v5, :cond_9

    .line 176
    .line 177
    invoke-interface {v5, v10}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    add-int v14, v14, p2

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_9
    move v14, v3

    .line 185
    :goto_9
    add-int/lit8 v11, v11, 0x2

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-ge v11, v15, :cond_a

    .line 192
    .line 193
    move v11, v8

    .line 194
    goto :goto_a

    .line 195
    :cond_a
    move v11, v3

    .line 196
    :goto_a
    sub-int v15, v13, v22

    .line 197
    .line 198
    move/from16 v19, v11

    .line 199
    .line 200
    move/from16 v18, v13

    .line 201
    .line 202
    move v11, v15

    .line 203
    move v15, v12

    .line 204
    invoke-static {v6, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 205
    .line 206
    .line 207
    move-result-wide v12

    .line 208
    if-nez v5, :cond_b

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    :goto_b
    move/from16 v2, v18

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_b
    invoke-static {v14, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    new-instance v7, Landroidx/collection/IntIntPair;

    .line 219
    .line 220
    invoke-direct {v7, v2, v3}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 221
    .line 222
    .line 223
    goto :goto_b

    .line 224
    :goto_c
    const/16 v18, 0x0

    .line 225
    .line 226
    move v3, v10

    .line 227
    move/from16 v10, v19

    .line 228
    .line 229
    const/16 v19, 0x0

    .line 230
    .line 231
    move/from16 v23, v14

    .line 232
    .line 233
    move-object v14, v7

    .line 234
    move/from16 v7, v23

    .line 235
    .line 236
    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    iget-boolean v12, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 241
    .line 242
    if-eqz v12, :cond_f

    .line 243
    .line 244
    add-int v17, v17, p3

    .line 245
    .line 246
    add-int v13, v17, v16

    .line 247
    .line 248
    move v12, v15

    .line 249
    move v15, v11

    .line 250
    if-eqz v5, :cond_c

    .line 251
    .line 252
    move v11, v8

    .line 253
    :goto_d
    move v14, v6

    .line 254
    goto :goto_e

    .line 255
    :cond_c
    const/4 v11, 0x0

    .line 256
    goto :goto_d

    .line 257
    :goto_e
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    move v15, v12

    .line 262
    sub-int v14, v7, p2

    .line 263
    .line 264
    add-int/lit8 v12, v15, 0x1

    .line 265
    .line 266
    iget-boolean v6, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 267
    .line 268
    if-eqz v6, :cond_e

    .line 269
    .line 270
    if-eqz v5, :cond_d

    .line 271
    .line 272
    iget-wide v0, v5, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    .line 273
    .line 274
    iget-boolean v3, v5, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    .line 275
    .line 276
    if-nez v3, :cond_d

    .line 277
    .line 278
    and-long v0, v0, v20

    .line 279
    .line 280
    long-to-int v0, v0

    .line 281
    add-int v0, v0, p3

    .line 282
    .line 283
    add-int/2addr v13, v0

    .line 284
    :cond_d
    move/from16 v16, v13

    .line 285
    .line 286
    move v14, v2

    .line 287
    goto :goto_10

    .line 288
    :cond_e
    move/from16 v22, v2

    .line 289
    .line 290
    move/from16 v16, v13

    .line 291
    .line 292
    move v6, v14

    .line 293
    const/4 v10, 0x0

    .line 294
    move v13, v1

    .line 295
    goto :goto_f

    .line 296
    :cond_f
    move v14, v6

    .line 297
    move v6, v7

    .line 298
    move v13, v14

    .line 299
    move v12, v15

    .line 300
    move/from16 v10, v17

    .line 301
    .line 302
    :goto_f
    move v11, v2

    .line 303
    move v14, v11

    .line 304
    move v5, v3

    .line 305
    const v2, 0x7fffffff

    .line 306
    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    goto/16 :goto_7

    .line 310
    .line 311
    :cond_10
    :goto_10
    sub-int v0, v16, p3

    .line 312
    .line 313
    invoke-static {v0, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    :goto_11
    const/16 v2, 0x20

    .line 318
    .line 319
    shr-long/2addr v0, v2

    .line 320
    long-to-int v0, v0

    .line 321
    return v0
.end method


# virtual methods
.method public final createConstraints-xF2OJ5Q(IIIZ)J
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/foundation/layout/RowKt;->DefaultRowMeasurePolicy:Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    invoke-static {p1, p2, p0, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :cond_0
    invoke-static {p1, p2, p0, p3}, Lkotlin/text/UStringsKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method public final crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 34
    .line 35
    iget v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 45
    .line 46
    iget-object v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 56
    .line 57
    iget v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 67
    .line 68
    iget v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 69
    .line 70
    if-eq v0, v1, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 74
    .line 75
    iget-object p1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 76
    .line 77
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_8

    .line 82
    .line 83
    :goto_0
    const/4 p0, 0x0

    .line 84
    return p0

    .line 85
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 86
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x9511

    .line 8
    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    const/16 v1, 0x1f

    .line 12
    .line 13
    mul-int/2addr v0, v1

    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v0

    .line 21
    mul-int/2addr v2, v1

    .line 22
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IFI)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/ui/BiasAlignment$Vertical;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v0

    .line 37
    mul-int/2addr v2, v1

    .line 38
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 39
    .line 40
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IFI)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 45
    .line 46
    add-int/2addr v0, v2

    .line 47
    mul-int/2addr v0, v1

    .line 48
    const v2, 0x7fffffff

    .line 49
    .line 50
    .line 51
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v0

    .line 60
    return p0
.end method

.method public final mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 33
    .line 34
    :cond_1
    const/16 v2, 0xd

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v3, p3, v3, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 42
    .line 43
    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setOverflowMeasurables--hBUhpc$foundation_layout(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Measurable;J)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/util/List;

    .line 51
    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 55
    .line 56
    :cond_2
    move-object v0, p2

    .line 57
    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 58
    .line 59
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 64
    .line 65
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 70
    .line 71
    iget-object v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 72
    .line 73
    move v1, p3

    .line 74
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;IIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 33
    .line 34
    :cond_1
    const/4 v2, 0x7

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v3, v3, v3, p3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1, v4, v5}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setOverflowMeasurables--hBUhpc$foundation_layout(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Measurable;J)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/util/List;

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 54
    .line 55
    :cond_2
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 56
    .line 57
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v1, v3

    .line 66
    move v2, v1

    .line 67
    move v4, v2

    .line 68
    move v5, v4

    .line 69
    :goto_1
    if-ge v1, v0, :cond_5

    .line 70
    .line 71
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 76
    .line 77
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    add-int/2addr v6, p1

    .line 82
    add-int/lit8 v7, v1, 0x1

    .line 83
    .line 84
    sub-int v8, v7, v4

    .line 85
    .line 86
    iget v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 87
    .line 88
    if-eq v8, v9, :cond_4

    .line 89
    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-ne v7, v8, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    add-int/2addr v5, v6

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_2
    add-int/2addr v5, v6

    .line 100
    sub-int/2addr v5, p1

    .line 101
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move v4, v1

    .line 106
    move v5, v3

    .line 107
    :goto_3
    move v1, v7

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    return v2
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-wide/from16 v2, p3

    .line 8
    .line 9
    iget v4, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 10
    .line 11
    sget-object v13, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 12
    .line 13
    const/4 v14, 0x0

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move-object v4, v1

    .line 17
    check-cast v4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    iget-object v4, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 34
    .line 35
    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 36
    .line 37
    if-eq v4, v7, :cond_1

    .line 38
    .line 39
    :cond_0
    move-object v15, v13

    .line 40
    goto/16 :goto_21

    .line 41
    .line 42
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 55
    .line 56
    const/4 v1, 0x6

    .line 57
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v6, v14, v14, v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_2
    const/4 v15, 0x1

    .line 66
    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/util/List;

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 v7, 0x0

    .line 82
    :goto_0
    const/4 v9, 0x2

    .line 83
    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/util/List;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/4 v1, 0x0

    .line 99
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-object v9, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 106
    .line 107
    invoke-static {v2, v3, v9}, Landroidx/compose/foundation/layout/OffsetKt;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    const/16 v12, 0xa

    .line 112
    .line 113
    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/layout/OffsetKt;->copy-yUG9Ft0$default(JI)J

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    invoke-static {v10, v11, v9}, Landroidx/compose/foundation/layout/OffsetKt;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v10

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    if-eqz v7, :cond_6

    .line 124
    .line 125
    invoke-static {v7}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 130
    .line 131
    .line 132
    move-result v17

    .line 133
    cmpg-float v17, v17, v16

    .line 134
    .line 135
    if-nez v17, :cond_5

    .line 136
    .line 137
    invoke-static {v7}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 138
    .line 139
    .line 140
    invoke-interface {v7, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    move/from16 v18, v15

    .line 145
    .line 146
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-static {v15, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 155
    .line 156
    .line 157
    move-result-wide v14

    .line 158
    new-instance v12, Landroidx/collection/IntIntPair;

    .line 159
    .line 160
    invoke-direct {v12, v14, v15}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 161
    .line 162
    .line 163
    iput-object v12, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMoreSize:Landroidx/collection/IntIntPair;

    .line 164
    .line 165
    iput-object v8, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMorePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 166
    .line 167
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    move/from16 v18, v15

    .line 175
    .line 176
    const v8, 0x7fffffff

    .line 177
    .line 178
    .line 179
    invoke-interface {v7, v8}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    invoke-interface {v7, v12}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 184
    .line 185
    .line 186
    :goto_2
    iput-object v7, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMoreMeasurable:Landroidx/compose/ui/layout/Measurable;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    move/from16 v18, v15

    .line 190
    .line 191
    :goto_3
    if-eqz v1, :cond_8

    .line 192
    .line 193
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-static {v7}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    cmpg-float v7, v7, v16

    .line 202
    .line 203
    if-nez v7, :cond_7

    .line 204
    .line 205
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 206
    .line 207
    .line 208
    invoke-interface {v1, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    invoke-static {v8, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 221
    .line 222
    .line 223
    move-result-wide v10

    .line 224
    new-instance v8, Landroidx/collection/IntIntPair;

    .line 225
    .line 226
    invoke-direct {v8, v10, v11}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 227
    .line 228
    .line 229
    iput-object v8, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapseSize:Landroidx/collection/IntIntPair;

    .line 230
    .line 231
    iput-object v7, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapsePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 232
    .line 233
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_7
    const v8, 0x7fffffff

    .line 241
    .line 242
    .line 243
    invoke-interface {v1, v8}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-interface {v1, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 248
    .line 249
    .line 250
    :goto_4
    iput-object v1, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapseMeasurable:Landroidx/compose/ui/layout/Measurable;

    .line 251
    .line 252
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v2, v3, v9}, Landroidx/compose/foundation/layout/OffsetKt;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v22

    .line 260
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    .line 261
    .line 262
    const/16 v2, 0x10

    .line 263
    .line 264
    new-array v2, v2, [Landroidx/compose/ui/layout/MeasureResult;

    .line 265
    .line 266
    invoke-direct {v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    sget-object v5, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 282
    .line 283
    new-instance v5, Landroidx/collection/MutableIntObjectMap;

    .line 284
    .line 285
    invoke-direct {v5}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 286
    .line 287
    .line 288
    new-instance v7, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .line 292
    .line 293
    iget v8, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 294
    .line 295
    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    float-to-double v10, v8

    .line 300
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 301
    .line 302
    .line 303
    move-result-wide v10

    .line 304
    double-to-float v8, v10

    .line 305
    float-to-int v8, v8

    .line 306
    iget v10, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 307
    .line 308
    invoke-interface {v6, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    float-to-double v10, v10

    .line 313
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 314
    .line 315
    .line 316
    move-result-wide v10

    .line 317
    double-to-float v10, v10

    .line 318
    float-to-int v10, v10

    .line 319
    move-object v15, v13

    .line 320
    move-object/from16 p3, v14

    .line 321
    .line 322
    const/4 v11, 0x0

    .line 323
    invoke-static {v11, v2, v11, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 324
    .line 325
    .line 326
    move-result-wide v13

    .line 327
    const/16 v11, 0xe

    .line 328
    .line 329
    invoke-static {v13, v14, v11}, Landroidx/compose/foundation/layout/OffsetKt;->copy-yUG9Ft0$default(JI)J

    .line 330
    .line 331
    .line 332
    move-result-wide v11

    .line 333
    invoke-static {v11, v12, v9}, Landroidx/compose/foundation/layout/OffsetKt;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v11

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-nez v9, :cond_9

    .line 342
    .line 343
    :catch_0
    const/4 v9, 0x0

    .line 344
    goto :goto_5

    .line 345
    :cond_9
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    check-cast v9, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    :goto_5
    if-eqz v9, :cond_b

    .line 352
    .line 353
    invoke-static {v9}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 354
    .line 355
    .line 356
    move-result-object v19

    .line 357
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 358
    .line 359
    .line 360
    move-result v19

    .line 361
    cmpg-float v19, v19, v16

    .line 362
    .line 363
    if-nez v19, :cond_a

    .line 364
    .line 365
    invoke-static {v9}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 366
    .line 367
    .line 368
    invoke-interface {v9, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 369
    .line 370
    .line 371
    move-result-object v19

    .line 372
    move-object/from16 v31, v1

    .line 373
    .line 374
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    move/from16 p4, v3

    .line 379
    .line 380
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    invoke-static {v1, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 385
    .line 386
    .line 387
    move-result-wide v20

    .line 388
    :goto_6
    move/from16 v24, v8

    .line 389
    .line 390
    move-object v1, v9

    .line 391
    move-wide/from16 v8, v20

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_a
    move-object/from16 v31, v1

    .line 395
    .line 396
    move/from16 p4, v3

    .line 397
    .line 398
    const v1, 0x7fffffff

    .line 399
    .line 400
    .line 401
    invoke-interface {v9, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    invoke-interface {v9, v3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-static {v3, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 410
    .line 411
    .line 412
    move-result-wide v20

    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :goto_7
    new-instance v3, Landroidx/collection/IntIntPair;

    .line 417
    .line 418
    invoke-direct {v3, v8, v9}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v8, v19

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_b
    move-object/from16 v31, v1

    .line 425
    .line 426
    move/from16 p4, v3

    .line 427
    .line 428
    move/from16 v24, v8

    .line 429
    .line 430
    move-object v1, v9

    .line 431
    const/4 v3, 0x0

    .line 432
    const/4 v8, 0x0

    .line 433
    :goto_8
    move/from16 v25, v10

    .line 434
    .line 435
    const/16 v43, 0x20

    .line 436
    .line 437
    if-eqz v3, :cond_c

    .line 438
    .line 439
    iget-wide v9, v3, Landroidx/collection/IntIntPair;->packedValue:J

    .line 440
    .line 441
    shr-long v9, v9, v43

    .line 442
    .line 443
    long-to-int v9, v9

    .line 444
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    goto :goto_9

    .line 449
    :cond_c
    const/4 v9, 0x0

    .line 450
    :goto_9
    const-wide v44, 0xffffffffL

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    move-object v10, v8

    .line 456
    move-object/from16 v46, v9

    .line 457
    .line 458
    if-eqz v3, :cond_d

    .line 459
    .line 460
    iget-wide v8, v3, Landroidx/collection/IntIntPair;->packedValue:J

    .line 461
    .line 462
    and-long v8, v8, v44

    .line 463
    .line 464
    long-to-int v8, v8

    .line 465
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    goto :goto_a

    .line 470
    :cond_d
    const/4 v8, 0x0

    .line 471
    :goto_a
    new-instance v9, Landroidx/collection/MutableIntList;

    .line 472
    .line 473
    invoke-direct {v9}, Landroidx/collection/MutableIntList;-><init>()V

    .line 474
    .line 475
    .line 476
    move-wide/from16 v47, v13

    .line 477
    .line 478
    new-instance v13, Landroidx/collection/MutableIntList;

    .line 479
    .line 480
    invoke-direct {v13}, Landroidx/collection/MutableIntList;-><init>()V

    .line 481
    .line 482
    .line 483
    new-instance v14, Landroidx/collection/MutableIntSet;

    .line 484
    .line 485
    invoke-direct {v14}, Landroidx/collection/MutableIntSet;-><init>()V

    .line 486
    .line 487
    .line 488
    new-instance v32, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 489
    .line 490
    move-object/from16 v49, v1

    .line 491
    .line 492
    iget v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 493
    .line 494
    move/from16 v20, v1

    .line 495
    .line 496
    iget-object v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 497
    .line 498
    move-object/from16 v21, v1

    .line 499
    .line 500
    move-object/from16 v19, v32

    .line 501
    .line 502
    invoke-direct/range {v19 .. v25}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JII)V

    .line 503
    .line 504
    .line 505
    move/from16 v1, v24

    .line 506
    .line 507
    move/from16 v19, v25

    .line 508
    .line 509
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v33

    .line 513
    invoke-static {v2, v4}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 514
    .line 515
    .line 516
    move-result-wide v35

    .line 517
    const/16 v41, 0x0

    .line 518
    .line 519
    const/16 v42, 0x0

    .line 520
    .line 521
    const/16 v34, 0x0

    .line 522
    .line 523
    const/16 v38, 0x0

    .line 524
    .line 525
    const/16 v39, 0x0

    .line 526
    .line 527
    const/16 v40, 0x0

    .line 528
    .line 529
    move-object/from16 v37, v3

    .line 530
    .line 531
    invoke-virtual/range {v32 .. v42}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    iget-boolean v0, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 536
    .line 537
    if-eqz v0, :cond_f

    .line 538
    .line 539
    if-eqz v37, :cond_e

    .line 540
    .line 541
    move/from16 v26, v18

    .line 542
    .line 543
    goto :goto_b

    .line 544
    :cond_e
    const/16 v26, 0x0

    .line 545
    .line 546
    :goto_b
    const/16 v28, 0x0

    .line 547
    .line 548
    const/16 v30, 0x0

    .line 549
    .line 550
    const/16 v27, -0x1

    .line 551
    .line 552
    move/from16 v29, v2

    .line 553
    .line 554
    move-object/from16 v25, v3

    .line 555
    .line 556
    move-object/from16 v24, v32

    .line 557
    .line 558
    invoke-virtual/range {v24 .. v30}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    goto :goto_c

    .line 563
    :cond_f
    move-object/from16 v25, v3

    .line 564
    .line 565
    const/4 v0, 0x0

    .line 566
    :goto_c
    move/from16 v24, v1

    .line 567
    .line 568
    move/from16 v26, v4

    .line 569
    .line 570
    move-object/from16 v20, v8

    .line 571
    .line 572
    move-object v1, v10

    .line 573
    move-object/from16 v28, v15

    .line 574
    .line 575
    move-object/from16 v8, v25

    .line 576
    .line 577
    const/4 v6, 0x0

    .line 578
    const/16 v25, 0x0

    .line 579
    .line 580
    const/16 v27, 0x0

    .line 581
    .line 582
    const/16 v35, 0x0

    .line 583
    .line 584
    const/16 v39, 0x0

    .line 585
    .line 586
    move/from16 v10, p4

    .line 587
    .line 588
    move/from16 p4, v2

    .line 589
    .line 590
    move/from16 v15, v26

    .line 591
    .line 592
    const/4 v4, 0x0

    .line 593
    :goto_d
    move-object/from16 v3, v49

    .line 594
    .line 595
    iget-boolean v8, v8, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 596
    .line 597
    if-nez v8, :cond_19

    .line 598
    .line 599
    if-eqz v3, :cond_19

    .line 600
    .line 601
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    .line 605
    .line 606
    .line 607
    move-result v8

    .line 608
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    move/from16 v29, v8

    .line 612
    .line 613
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 614
    .line 615
    .line 616
    move-result v8

    .line 617
    move-object/from16 v20, v14

    .line 618
    .line 619
    add-int v14, v25, v29

    .line 620
    .line 621
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 622
    .line 623
    .line 624
    move-result v40

    .line 625
    sub-int v4, p4, v29

    .line 626
    .line 627
    add-int/lit8 v8, v6, 0x1

    .line 628
    .line 629
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    invoke-virtual {v5, v6, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    invoke-interface {v3}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    sub-int v34, v8, v27

    .line 642
    .line 643
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_10

    .line 648
    .line 649
    const/4 v3, 0x0

    .line 650
    goto :goto_f

    .line 651
    :cond_10
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    check-cast v1, Landroidx/compose/ui/layout/Measurable;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    .line 657
    goto :goto_e

    .line 658
    :catch_1
    const/4 v1, 0x0

    .line 659
    :goto_e
    move-object v3, v1

    .line 660
    :goto_f
    if-eqz v3, :cond_12

    .line 661
    .line 662
    invoke-static {v3}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    cmpg-float v1, v1, v16

    .line 671
    .line 672
    if-nez v1, :cond_11

    .line 673
    .line 674
    invoke-static {v3}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 675
    .line 676
    .line 677
    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    move-object/from16 p4, v1

    .line 686
    .line 687
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    invoke-static {v6, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 692
    .line 693
    .line 694
    move-result-wide v29

    .line 695
    move-object/from16 v1, p4

    .line 696
    .line 697
    :goto_10
    move-wide/from16 v50, v29

    .line 698
    .line 699
    move-wide/from16 v29, v11

    .line 700
    .line 701
    move-wide/from16 v11, v50

    .line 702
    .line 703
    goto :goto_11

    .line 704
    :cond_11
    const v1, 0x7fffffff

    .line 705
    .line 706
    .line 707
    invoke-interface {v3, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 708
    .line 709
    .line 710
    move-result v6

    .line 711
    invoke-interface {v3, v6}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    invoke-static {v6, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 716
    .line 717
    .line 718
    move-result-wide v29

    .line 719
    const/4 v1, 0x0

    .line 720
    goto :goto_10

    .line 721
    :goto_11
    new-instance v6, Landroidx/collection/IntIntPair;

    .line 722
    .line 723
    invoke-direct {v6, v11, v12}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 724
    .line 725
    .line 726
    goto :goto_12

    .line 727
    :cond_12
    move-wide/from16 v29, v11

    .line 728
    .line 729
    const/4 v1, 0x0

    .line 730
    const/4 v6, 0x0

    .line 731
    :goto_12
    if-eqz v6, :cond_13

    .line 732
    .line 733
    iget-wide v11, v6, Landroidx/collection/IntIntPair;->packedValue:J

    .line 734
    .line 735
    shr-long v11, v11, v43

    .line 736
    .line 737
    long-to-int v11, v11

    .line 738
    add-int v11, v11, v24

    .line 739
    .line 740
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 741
    .line 742
    .line 743
    move-result-object v11

    .line 744
    goto :goto_13

    .line 745
    :cond_13
    const/4 v11, 0x0

    .line 746
    :goto_13
    move-object/from16 p4, v11

    .line 747
    .line 748
    if-eqz v6, :cond_14

    .line 749
    .line 750
    iget-wide v11, v6, Landroidx/collection/IntIntPair;->packedValue:J

    .line 751
    .line 752
    and-long v11, v11, v44

    .line 753
    .line 754
    long-to-int v11, v11

    .line 755
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v11

    .line 759
    goto :goto_14

    .line 760
    :cond_14
    const/4 v11, 0x0

    .line 761
    :goto_14
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v33

    .line 765
    move/from16 v38, v35

    .line 766
    .line 767
    invoke-static {v4, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 768
    .line 769
    .line 770
    move-result-wide v35

    .line 771
    if-nez v6, :cond_15

    .line 772
    .line 773
    move-object/from16 v25, v1

    .line 774
    .line 775
    move-object/from16 v49, v3

    .line 776
    .line 777
    move/from16 v46, v4

    .line 778
    .line 779
    const/16 v37, 0x0

    .line 780
    .line 781
    goto :goto_15

    .line 782
    :cond_15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    .line 786
    .line 787
    .line 788
    move-result v12

    .line 789
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    move-object/from16 v25, v1

    .line 793
    .line 794
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    move-object/from16 v49, v3

    .line 799
    .line 800
    move/from16 v46, v4

    .line 801
    .line 802
    invoke-static {v12, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 803
    .line 804
    .line 805
    move-result-wide v3

    .line 806
    new-instance v1, Landroidx/collection/IntIntPair;

    .line 807
    .line 808
    invoke-direct {v1, v3, v4}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 809
    .line 810
    .line 811
    move-object/from16 v37, v1

    .line 812
    .line 813
    :goto_15
    const/16 v41, 0x0

    .line 814
    .line 815
    const/16 v42, 0x0

    .line 816
    .line 817
    invoke-virtual/range {v32 .. v42}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    move/from16 v3, v40

    .line 822
    .line 823
    iget-boolean v4, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 824
    .line 825
    if-eqz v4, :cond_18

    .line 826
    .line 827
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 832
    .line 833
    .line 834
    move-result v0

    .line 835
    add-int v36, v39, v3

    .line 836
    .line 837
    move/from16 v35, v38

    .line 838
    .line 839
    move/from16 v38, v34

    .line 840
    .line 841
    if-eqz v6, :cond_16

    .line 842
    .line 843
    move/from16 v34, v18

    .line 844
    .line 845
    :goto_16
    move-object/from16 v33, v1

    .line 846
    .line 847
    move/from16 v37, v46

    .line 848
    .line 849
    goto :goto_17

    .line 850
    :cond_16
    const/16 v34, 0x0

    .line 851
    .line 852
    goto :goto_16

    .line 853
    :goto_17
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    move/from16 v38, v35

    .line 858
    .line 859
    invoke-virtual {v13, v3}, Landroidx/collection/MutableIntList;->add(I)V

    .line 860
    .line 861
    .line 862
    sub-int v4, v26, v36

    .line 863
    .line 864
    sub-int v15, v4, v19

    .line 865
    .line 866
    invoke-virtual {v9, v8}, Landroidx/collection/MutableIntList;->add(I)V

    .line 867
    .line 868
    .line 869
    if-eqz p4, :cond_17

    .line 870
    .line 871
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    sub-int v3, v3, v24

    .line 876
    .line 877
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    goto :goto_18

    .line 882
    :cond_17
    const/4 v3, 0x0

    .line 883
    :goto_18
    add-int/lit8 v35, v38, 0x1

    .line 884
    .line 885
    add-int v36, v36, v19

    .line 886
    .line 887
    move v10, v0

    .line 888
    move-object v0, v1

    .line 889
    move/from16 v46, v2

    .line 890
    .line 891
    move/from16 v27, v8

    .line 892
    .line 893
    move/from16 v39, v36

    .line 894
    .line 895
    const/4 v4, 0x0

    .line 896
    const/4 v14, 0x0

    .line 897
    goto :goto_19

    .line 898
    :cond_18
    move-object/from16 v33, v1

    .line 899
    .line 900
    move v4, v3

    .line 901
    move/from16 v35, v38

    .line 902
    .line 903
    move-object/from16 v3, p4

    .line 904
    .line 905
    :goto_19
    move v6, v8

    .line 906
    move-object/from16 v1, v25

    .line 907
    .line 908
    move-object/from16 v8, v33

    .line 909
    .line 910
    move/from16 p4, v46

    .line 911
    .line 912
    move-object/from16 v46, v3

    .line 913
    .line 914
    move/from16 v25, v14

    .line 915
    .line 916
    move-object/from16 v14, v20

    .line 917
    .line 918
    move-object/from16 v20, v11

    .line 919
    .line 920
    move-wide/from16 v11, v29

    .line 921
    .line 922
    goto/16 :goto_d

    .line 923
    .line 924
    :cond_19
    move-object/from16 v20, v14

    .line 925
    .line 926
    if-eqz v0, :cond_1b

    .line 927
    .line 928
    iget-wide v1, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    .line 929
    .line 930
    iget-object v3, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsis:Landroidx/compose/ui/layout/Measurable;

    .line 931
    .line 932
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    add-int/lit8 v3, v3, -0x1

    .line 940
    .line 941
    iget-object v4, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 942
    .line 943
    invoke-virtual {v5, v3, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    iget v3, v9, Landroidx/collection/MutableIntList;->_size:I

    .line 947
    .line 948
    add-int/lit8 v3, v3, -0x1

    .line 949
    .line 950
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    .line 951
    .line 952
    if-eqz v0, :cond_1a

    .line 953
    .line 954
    invoke-virtual {v13, v3}, Landroidx/collection/MutableIntList;->get(I)I

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    and-long v1, v1, v44

    .line 959
    .line 960
    long-to-int v1, v1

    .line 961
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    invoke-virtual {v13, v3, v0}, Landroidx/collection/MutableIntList;->set(II)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v9}, Landroidx/collection/MutableIntList;->last()I

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    add-int/lit8 v0, v0, 0x1

    .line 973
    .line 974
    invoke-virtual {v9, v3, v0}, Landroidx/collection/MutableIntList;->set(II)V

    .line 975
    .line 976
    .line 977
    goto :goto_1a

    .line 978
    :cond_1a
    and-long v1, v1, v44

    .line 979
    .line 980
    long-to-int v0, v1

    .line 981
    invoke-virtual {v13, v0}, Landroidx/collection/MutableIntList;->add(I)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v9}, Landroidx/collection/MutableIntList;->last()I

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    .line 989
    .line 990
    invoke-virtual {v9, v0}, Landroidx/collection/MutableIntList;->add(I)V

    .line 991
    .line 992
    .line 993
    :cond_1b
    :goto_1a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    new-array v8, v0, [Landroidx/compose/ui/layout/Placeable;

    .line 998
    .line 999
    const/4 v11, 0x0

    .line 1000
    :goto_1b
    if-ge v11, v0, :cond_1c

    .line 1001
    .line 1002
    invoke-virtual {v5, v11}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    aput-object v1, v8, v11

    .line 1007
    .line 1008
    add-int/lit8 v11, v11, 0x1

    .line 1009
    .line 1010
    goto :goto_1b

    .line 1011
    :cond_1c
    iget v14, v9, Landroidx/collection/MutableIntList;->_size:I

    .line 1012
    .line 1013
    new-array v11, v14, [I

    .line 1014
    .line 1015
    new-array v15, v14, [I

    .line 1016
    .line 1017
    iget-object v0, v9, Landroidx/collection/MutableIntList;->content:[I

    .line 1018
    .line 1019
    move v1, v10

    .line 1020
    const/4 v9, 0x0

    .line 1021
    const/4 v12, 0x0

    .line 1022
    const/16 v16, 0x0

    .line 1023
    .line 1024
    :goto_1c
    if-ge v12, v14, :cond_1f

    .line 1025
    .line 1026
    aget v10, v0, v12

    .line 1027
    .line 1028
    invoke-virtual {v13, v12}, Landroidx/collection/MutableIntList;->get(I)I

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    move-object/from16 v3, v20

    .line 1033
    .line 1034
    invoke-virtual {v3, v12}, Landroidx/collection/MutableIntSet;->contains(I)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v4

    .line 1038
    if-eqz v4, :cond_1d

    .line 1039
    .line 1040
    const v4, 0x7fffffff

    .line 1041
    .line 1042
    .line 1043
    goto :goto_1d

    .line 1044
    :cond_1d
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1045
    .line 1046
    .line 1047
    move-result v2

    .line 1048
    const v4, 0x7fffffff

    .line 1049
    .line 1050
    .line 1051
    if-ne v2, v4, :cond_1e

    .line 1052
    .line 1053
    move v2, v4

    .line 1054
    goto :goto_1d

    .line 1055
    :cond_1e
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1056
    .line 1057
    .line 1058
    move-result v2

    .line 1059
    sub-int v2, v2, v16

    .line 1060
    .line 1061
    :goto_1d
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 1062
    .line 1063
    .line 1064
    move-result v5

    .line 1065
    move-object/from16 v20, v3

    .line 1066
    .line 1067
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    move-object/from16 v6, p1

    .line 1072
    .line 1073
    move-object/from16 v17, v0

    .line 1074
    .line 1075
    move/from16 v19, v4

    .line 1076
    .line 1077
    move-object/from16 v0, p0

    .line 1078
    .line 1079
    move v4, v2

    .line 1080
    move v2, v5

    .line 1081
    move/from16 v5, v24

    .line 1082
    .line 1083
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 1088
    .line 1089
    .line 1090
    move-result v3

    .line 1091
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 1092
    .line 1093
    .line 1094
    move-result v4

    .line 1095
    aput v4, v15, v12

    .line 1096
    .line 1097
    add-int v16, v16, v4

    .line 1098
    .line 1099
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1100
    .line 1101
    .line 1102
    move-result v1

    .line 1103
    move-object/from16 v3, p3

    .line 1104
    .line 1105
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    add-int/lit8 v12, v12, 0x1

    .line 1109
    .line 1110
    move v9, v10

    .line 1111
    move-object/from16 v0, v17

    .line 1112
    .line 1113
    goto :goto_1c

    .line 1114
    :cond_1f
    move-object/from16 v0, p0

    .line 1115
    .line 1116
    move-object/from16 v6, p1

    .line 1117
    .line 1118
    move-object/from16 v3, p3

    .line 1119
    .line 1120
    iget v2, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1121
    .line 1122
    if-nez v2, :cond_20

    .line 1123
    .line 1124
    const/4 v14, 0x0

    .line 1125
    const/16 v16, 0x0

    .line 1126
    .line 1127
    goto :goto_1e

    .line 1128
    :cond_20
    move v14, v1

    .line 1129
    :goto_1e
    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 1130
    .line 1131
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 1132
    .line 1133
    .line 1134
    move-result v1

    .line 1135
    invoke-interface {v6, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    iget v2, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1140
    .line 1141
    add-int/lit8 v2, v2, -0x1

    .line 1142
    .line 1143
    mul-int/2addr v2, v1

    .line 1144
    add-int v2, v2, v16

    .line 1145
    .line 1146
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1151
    .line 1152
    .line 1153
    move-result v4

    .line 1154
    if-ge v2, v1, :cond_21

    .line 1155
    .line 1156
    move v2, v1

    .line 1157
    :cond_21
    if-le v2, v4, :cond_22

    .line 1158
    .line 1159
    goto :goto_1f

    .line 1160
    :cond_22
    move v4, v2

    .line 1161
    :goto_1f
    invoke-interface {v0, v6, v4, v15, v11}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1162
    .line 1163
    .line 1164
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1169
    .line 1170
    .line 1171
    move-result v1

    .line 1172
    if-ge v14, v0, :cond_23

    .line 1173
    .line 1174
    move v14, v0

    .line 1175
    :cond_23
    if-le v14, v1, :cond_24

    .line 1176
    .line 1177
    goto :goto_20

    .line 1178
    :cond_24
    move v1, v14

    .line 1179
    :goto_20
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 1180
    .line 1181
    const/4 v2, 0x7

    .line 1182
    invoke-direct {v0, v2, v3}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 1183
    .line 1184
    .line 1185
    move-object/from16 v15, v28

    .line 1186
    .line 1187
    invoke-interface {v6, v1, v4, v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    return-object v0

    .line 1192
    :goto_21
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 1193
    .line 1194
    const/4 v1, 0x5

    .line 1195
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1196
    .line 1197
    .line 1198
    const/4 v11, 0x0

    .line 1199
    invoke-interface {v6, v11, v11, v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 33
    .line 34
    :cond_1
    const/16 v2, 0xd

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v3, p3, v3, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 42
    .line 43
    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setOverflowMeasurables--hBUhpc$foundation_layout(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Measurable;J)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/util/List;

    .line 51
    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 55
    .line 56
    :cond_2
    move-object v0, p2

    .line 57
    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 58
    .line 59
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 64
    .line 65
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 70
    .line 71
    iget-object v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 72
    .line 73
    move v1, p3

    .line 74
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;IIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    check-cast v5, Ljava/util/List;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    :goto_0
    const/4 v7, 0x2

    .line 27
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Ljava/util/List;

    .line 32
    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v8, 0x0

    .line 43
    :goto_1
    const/4 v9, 0x7

    .line 44
    const/4 v10, 0x0

    .line 45
    invoke-static {v10, v10, v10, v3, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    iget-object v9, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 50
    .line 51
    invoke-virtual {v9, v5, v8, v11, v12}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setOverflowMeasurables--hBUhpc$foundation_layout(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Measurable;J)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/List;

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 63
    .line 64
    :cond_2
    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 65
    .line 66
    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 71
    .line 72
    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 73
    .line 74
    .line 75
    move-result v17

    .line 76
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    return v10

    .line 83
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    new-array v5, v1, [I

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    new-array v9, v8, [I

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    move v12, v10

    .line 100
    :goto_2
    if-ge v12, v11, :cond_4

    .line 101
    .line 102
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 107
    .line 108
    invoke-interface {v13, v3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    aput v14, v5, v12

    .line 113
    .line 114
    invoke-interface {v13, v14}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    aput v13, v9, v12

    .line 119
    .line 120
    add-int/lit8 v12, v12, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    iget-object v13, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 128
    .line 129
    const v12, 0x7fffffff

    .line 130
    .line 131
    .line 132
    if-ge v12, v11, :cond_6

    .line 133
    .line 134
    iget-object v11, v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 135
    .line 136
    sget-object v14, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 137
    .line 138
    if-eq v11, v14, :cond_5

    .line 139
    .line 140
    sget-object v14, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 141
    .line 142
    if-ne v11, v14, :cond_6

    .line 143
    .line 144
    :cond_5
    :goto_3
    move v11, v4

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-lt v12, v11, :cond_7

    .line 151
    .line 152
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v11, v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 156
    .line 157
    sget-object v14, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    .line 158
    .line 159
    if-ne v11, v14, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    move v11, v10

    .line 163
    :goto_4
    sub-int v11, v12, v11

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    move v14, v10

    .line 174
    move v15, v14

    .line 175
    :goto_5
    if-ge v14, v1, :cond_8

    .line 176
    .line 177
    aget v18, v5, v14

    .line 178
    .line 179
    add-int v15, v15, v18

    .line 180
    .line 181
    add-int/lit8 v14, v14, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    sub-int/2addr v14, v4

    .line 189
    mul-int v14, v14, v16

    .line 190
    .line 191
    add-int/2addr v14, v15

    .line 192
    if-eqz v8, :cond_26

    .line 193
    .line 194
    aget v15, v9, v10

    .line 195
    .line 196
    sub-int/2addr v8, v4

    .line 197
    if-gt v4, v8, :cond_a

    .line 198
    .line 199
    move v6, v4

    .line 200
    move/from16 v19, v7

    .line 201
    .line 202
    :goto_6
    aget v7, v9, v6

    .line 203
    .line 204
    if-ge v15, v7, :cond_9

    .line 205
    .line 206
    move v15, v7

    .line 207
    :cond_9
    if-eq v6, v8, :cond_b

    .line 208
    .line 209
    add-int/lit8 v6, v6, 0x1

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_a
    move/from16 v19, v7

    .line 213
    .line 214
    :cond_b
    if-eqz v1, :cond_25

    .line 215
    .line 216
    aget v6, v5, v10

    .line 217
    .line 218
    sub-int/2addr v1, v4

    .line 219
    if-gt v4, v1, :cond_d

    .line 220
    .line 221
    move v7, v4

    .line 222
    :goto_7
    aget v8, v5, v7

    .line 223
    .line 224
    if-ge v6, v8, :cond_c

    .line 225
    .line 226
    move v6, v8

    .line 227
    :cond_c
    if-eq v7, v1, :cond_d

    .line 228
    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_d
    move v1, v14

    .line 233
    :goto_8
    if-gt v6, v1, :cond_24

    .line 234
    .line 235
    if-ne v15, v3, :cond_e

    .line 236
    .line 237
    goto/16 :goto_1b

    .line 238
    .line 239
    :cond_e
    add-int v7, v6, v1

    .line 240
    .line 241
    div-int/lit8 v7, v7, 0x2

    .line 242
    .line 243
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    const-wide v20, 0xffffffffL

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    if-eqz v8, :cond_f

    .line 253
    .line 254
    invoke-static {v10, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 255
    .line 256
    .line 257
    move-result-wide v14

    .line 258
    move-object/from16 v35, v2

    .line 259
    .line 260
    move-object/from16 p1, v5

    .line 261
    .line 262
    move/from16 v34, v10

    .line 263
    .line 264
    move v8, v11

    .line 265
    move v11, v1

    .line 266
    goto/16 :goto_19

    .line 267
    .line 268
    :cond_f
    invoke-static {v10, v7, v10, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 269
    .line 270
    .line 271
    move-result-wide v14

    .line 272
    new-instance v22, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 273
    .line 274
    move v8, v12

    .line 275
    iget v12, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 276
    .line 277
    move v8, v11

    .line 278
    move-object/from16 v11, v22

    .line 279
    .line 280
    invoke-direct/range {v11 .. v17}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JII)V

    .line 281
    .line 282
    .line 283
    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 288
    .line 289
    if-eqz v11, :cond_10

    .line 290
    .line 291
    aget v12, v9, v10

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_10
    move v12, v10

    .line 295
    :goto_9
    if-eqz v11, :cond_11

    .line 296
    .line 297
    aget v14, v5, v10

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_11
    move v14, v10

    .line 301
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    if-le v15, v4, :cond_12

    .line 306
    .line 307
    move/from16 v23, v4

    .line 308
    .line 309
    :goto_b
    const v15, 0x7fffffff

    .line 310
    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_12
    move/from16 v23, v10

    .line 314
    .line 315
    goto :goto_b

    .line 316
    :goto_c
    invoke-static {v7, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 317
    .line 318
    .line 319
    move-result-wide v25

    .line 320
    move-object/from16 p1, v5

    .line 321
    .line 322
    if-nez v11, :cond_13

    .line 323
    .line 324
    const/16 v27, 0x0

    .line 325
    .line 326
    goto :goto_d

    .line 327
    :cond_13
    invoke-static {v14, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 328
    .line 329
    .line 330
    move-result-wide v4

    .line 331
    new-instance v15, Landroidx/collection/IntIntPair;

    .line 332
    .line 333
    invoke-direct {v15, v4, v5}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v27, v15

    .line 337
    .line 338
    :goto_d
    const/16 v31, 0x0

    .line 339
    .line 340
    const/16 v32, 0x0

    .line 341
    .line 342
    const/16 v24, 0x0

    .line 343
    .line 344
    const/16 v28, 0x0

    .line 345
    .line 346
    const/16 v29, 0x0

    .line 347
    .line 348
    const/16 v30, 0x0

    .line 349
    .line 350
    invoke-virtual/range {v22 .. v32}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    iget-boolean v4, v4, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 355
    .line 356
    if-eqz v4, :cond_16

    .line 357
    .line 358
    if-eqz v11, :cond_14

    .line 359
    .line 360
    const/4 v4, 0x1

    .line 361
    goto :goto_e

    .line 362
    :cond_14
    move v4, v10

    .line 363
    :goto_e
    invoke-virtual {v13, v10, v10, v4}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout(IIZ)Landroidx/collection/IntIntPair;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    if-eqz v4, :cond_15

    .line 368
    .line 369
    iget-wide v4, v4, Landroidx/collection/IntIntPair;->packedValue:J

    .line 370
    .line 371
    and-long v4, v4, v20

    .line 372
    .line 373
    long-to-int v4, v4

    .line 374
    goto :goto_f

    .line 375
    :cond_15
    move v4, v10

    .line 376
    :goto_f
    invoke-static {v4, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 377
    .line 378
    .line 379
    move-result-wide v14

    .line 380
    move v11, v1

    .line 381
    move-object/from16 v35, v2

    .line 382
    .line 383
    move/from16 v34, v10

    .line 384
    .line 385
    goto/16 :goto_19

    .line 386
    .line 387
    :cond_16
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    move v15, v7

    .line 392
    move v11, v10

    .line 393
    move/from16 v23, v11

    .line 394
    .line 395
    move/from16 v33, v23

    .line 396
    .line 397
    move/from16 v5, v30

    .line 398
    .line 399
    :goto_10
    if-ge v11, v4, :cond_1f

    .line 400
    .line 401
    sub-int/2addr v15, v14

    .line 402
    add-int/lit8 v14, v11, 0x1

    .line 403
    .line 404
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 405
    .line 406
    .line 407
    move-result v30

    .line 408
    invoke-static {v2, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 413
    .line 414
    if-eqz v5, :cond_17

    .line 415
    .line 416
    aget v12, v9, v14

    .line 417
    .line 418
    goto :goto_11

    .line 419
    :cond_17
    move v12, v10

    .line 420
    :goto_11
    if-eqz v5, :cond_18

    .line 421
    .line 422
    aget v23, p1, v14

    .line 423
    .line 424
    add-int v23, v23, v16

    .line 425
    .line 426
    move/from16 v34, v10

    .line 427
    .line 428
    move/from16 v10, v23

    .line 429
    .line 430
    goto :goto_12

    .line 431
    :cond_18
    move/from16 v34, v10

    .line 432
    .line 433
    :goto_12
    add-int/lit8 v11, v11, 0x2

    .line 434
    .line 435
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-ge v11, v0, :cond_19

    .line 440
    .line 441
    const/16 v23, 0x1

    .line 442
    .line 443
    goto :goto_13

    .line 444
    :cond_19
    move/from16 v23, v34

    .line 445
    .line 446
    :goto_13
    sub-int v24, v14, v33

    .line 447
    .line 448
    const v0, 0x7fffffff

    .line 449
    .line 450
    .line 451
    invoke-static {v15, v0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 452
    .line 453
    .line 454
    move-result-wide v25

    .line 455
    if-nez v5, :cond_1a

    .line 456
    .line 457
    move v11, v1

    .line 458
    move-object/from16 v35, v2

    .line 459
    .line 460
    const/16 v27, 0x0

    .line 461
    .line 462
    goto :goto_14

    .line 463
    :cond_1a
    move v11, v1

    .line 464
    invoke-static {v10, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 465
    .line 466
    .line 467
    move-result-wide v0

    .line 468
    move-object/from16 v35, v2

    .line 469
    .line 470
    new-instance v2, Landroidx/collection/IntIntPair;

    .line 471
    .line 472
    invoke-direct {v2, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v27, v2

    .line 476
    .line 477
    :goto_14
    const/16 v31, 0x0

    .line 478
    .line 479
    const/16 v32, 0x0

    .line 480
    .line 481
    invoke-virtual/range {v22 .. v32}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 486
    .line 487
    if-eqz v1, :cond_1e

    .line 488
    .line 489
    add-int v30, v30, v17

    .line 490
    .line 491
    add-int v26, v30, v29

    .line 492
    .line 493
    move/from16 v25, v28

    .line 494
    .line 495
    move/from16 v28, v24

    .line 496
    .line 497
    if-eqz v5, :cond_1b

    .line 498
    .line 499
    const/16 v24, 0x1

    .line 500
    .line 501
    :goto_15
    move-object/from16 v23, v0

    .line 502
    .line 503
    move/from16 v27, v15

    .line 504
    .line 505
    goto :goto_16

    .line 506
    :cond_1b
    move/from16 v24, v34

    .line 507
    .line 508
    goto :goto_15

    .line 509
    :goto_16
    invoke-virtual/range {v22 .. v28}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    move-object/from16 v1, v23

    .line 514
    .line 515
    move/from16 v28, v25

    .line 516
    .line 517
    sub-int v10, v10, v16

    .line 518
    .line 519
    add-int/lit8 v28, v28, 0x1

    .line 520
    .line 521
    iget-boolean v1, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 522
    .line 523
    if-eqz v1, :cond_1d

    .line 524
    .line 525
    if-eqz v0, :cond_1c

    .line 526
    .line 527
    iget-wide v1, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    .line 528
    .line 529
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    .line 530
    .line 531
    if-nez v0, :cond_1c

    .line 532
    .line 533
    and-long v1, v1, v20

    .line 534
    .line 535
    long-to-int v0, v1

    .line 536
    add-int v0, v0, v17

    .line 537
    .line 538
    add-int v26, v0, v26

    .line 539
    .line 540
    :cond_1c
    move/from16 v29, v26

    .line 541
    .line 542
    goto :goto_18

    .line 543
    :cond_1d
    move v15, v7

    .line 544
    move/from16 v33, v14

    .line 545
    .line 546
    move/from16 v29, v26

    .line 547
    .line 548
    move/from16 v5, v34

    .line 549
    .line 550
    goto :goto_17

    .line 551
    :cond_1e
    move/from16 v27, v15

    .line 552
    .line 553
    move/from16 v5, v30

    .line 554
    .line 555
    :goto_17
    move-object/from16 v0, p0

    .line 556
    .line 557
    move v1, v11

    .line 558
    move v11, v14

    .line 559
    move/from16 v23, v11

    .line 560
    .line 561
    move-object/from16 v2, v35

    .line 562
    .line 563
    move v14, v10

    .line 564
    move/from16 v10, v34

    .line 565
    .line 566
    goto/16 :goto_10

    .line 567
    .line 568
    :cond_1f
    move v11, v1

    .line 569
    move-object/from16 v35, v2

    .line 570
    .line 571
    move/from16 v34, v10

    .line 572
    .line 573
    move/from16 v14, v23

    .line 574
    .line 575
    :goto_18
    sub-int v0, v29, v17

    .line 576
    .line 577
    invoke-static {v0, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 578
    .line 579
    .line 580
    move-result-wide v14

    .line 581
    :goto_19
    const/16 v0, 0x20

    .line 582
    .line 583
    shr-long v0, v14, v0

    .line 584
    .line 585
    long-to-int v0, v0

    .line 586
    and-long v1, v14, v20

    .line 587
    .line 588
    long-to-int v1, v1

    .line 589
    if-gt v0, v3, :cond_22

    .line 590
    .line 591
    if-ge v1, v8, :cond_20

    .line 592
    .line 593
    goto :goto_1a

    .line 594
    :cond_20
    if-ge v0, v3, :cond_21

    .line 595
    .line 596
    add-int/lit8 v1, v7, -0x1

    .line 597
    .line 598
    move-object/from16 v5, p1

    .line 599
    .line 600
    move v15, v0

    .line 601
    move v14, v7

    .line 602
    move v11, v8

    .line 603
    move/from16 v10, v34

    .line 604
    .line 605
    move-object/from16 v2, v35

    .line 606
    .line 607
    const/4 v4, 0x1

    .line 608
    const v12, 0x7fffffff

    .line 609
    .line 610
    .line 611
    move-object/from16 v0, p0

    .line 612
    .line 613
    goto/16 :goto_8

    .line 614
    .line 615
    :cond_21
    return v7

    .line 616
    :cond_22
    :goto_1a
    add-int/lit8 v6, v7, 0x1

    .line 617
    .line 618
    if-le v6, v11, :cond_23

    .line 619
    .line 620
    return v6

    .line 621
    :cond_23
    move-object/from16 v5, p1

    .line 622
    .line 623
    move v15, v0

    .line 624
    move v14, v7

    .line 625
    move v1, v11

    .line 626
    move/from16 v10, v34

    .line 627
    .line 628
    move-object/from16 v2, v35

    .line 629
    .line 630
    const/4 v4, 0x1

    .line 631
    const v12, 0x7fffffff

    .line 632
    .line 633
    .line 634
    move-object/from16 v0, p0

    .line 635
    .line 636
    move v11, v8

    .line 637
    goto/16 :goto_8

    .line 638
    .line 639
    :cond_24
    :goto_1b
    return v14

    .line 640
    :cond_25
    move/from16 v34, v10

    .line 641
    .line 642
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 643
    .line 644
    .line 645
    return v34

    .line 646
    :cond_26
    move/from16 v34, v10

    .line 647
    .line 648
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 649
    .line 650
    .line 651
    return v34
.end method

.method public final placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III[IIII)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    .line 1
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    move-object v6, p0

    .line 6
    move-object v5, p1

    .line 7
    move-object v9, p3

    .line 8
    move v7, p5

    .line 9
    move-object/from16 v1, p6

    .line 10
    .line 11
    move/from16 v2, p7

    .line 12
    .line 13
    move/from16 v3, p8

    .line 14
    .line 15
    move/from16 v4, p9

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$$ExternalSyntheticLambda0;-><init>([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowMeasurePolicy;ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 21
    .line 22
    invoke-interface {p2, p4, p5, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 2
    .line 3
    invoke-interface {p4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v1, p4

    .line 11
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FlowMeasurePolicy(isHorizontal=true, horizontalArrangement="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", verticalArrangement="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mainAxisSpacing="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", crossAxisAlignment="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", crossAxisArrangementSpacing="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", maxItemsInMainAxis="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", maxLines=2147483647, overflow="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 p0, 0x29

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
