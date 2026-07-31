.class public final Landroidx/compose/foundation/layout/FlowMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
.implements Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;


# instance fields
.field public final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

.field public final crossAxisArrangementSpacing:F

.field public final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final mainAxisSpacing:F

.field public final maxLines:I

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
    iput p6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

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
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    goto/16 :goto_d

    .line 17
    .line 18
    :cond_0
    const v5, 0x7fffffff

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v1, v2, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    new-instance v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 26
    .line 27
    move/from16 v11, p2

    .line 28
    .line 29
    move/from16 v12, p3

    .line 30
    .line 31
    move-object/from16 v7, p5

    .line 32
    .line 33
    move-object v6, v10

    .line 34
    move/from16 v10, p4

    .line 35
    .line 36
    invoke-direct/range {v6 .. v12}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V

    .line 37
    .line 38
    .line 39
    move-object v10, v6

    .line 40
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-interface {v6, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v7, v2

    .line 54
    :goto_0
    if-eqz v6, :cond_2

    .line 55
    .line 56
    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v8, v2

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    const/4 v11, 0x1

    .line 67
    if-le v9, v11, :cond_3

    .line 68
    .line 69
    move v9, v11

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v9, v11

    .line 72
    move v11, v2

    .line 73
    :goto_2
    invoke-static {v1, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    move-wide/from16 v22, v3

    .line 80
    .line 81
    if-nez v6, :cond_4

    .line 82
    .line 83
    move-object/from16 v15, v21

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-static {v8, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    new-instance v4, Landroidx/collection/IntIntPair;

    .line 91
    .line 92
    invoke-direct {v4, v2, v3}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 93
    .line 94
    .line 95
    move-object v15, v4

    .line 96
    :goto_3
    const/16 v19, 0x0

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v17, 0x0

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    invoke-virtual/range {v10 .. v20}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-boolean v2, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-wide/from16 v3, v22

    .line 119
    .line 120
    goto/16 :goto_d

    .line 121
    .line 122
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move v11, v1

    .line 127
    move/from16 v13, v16

    .line 128
    .line 129
    move/from16 v3, v18

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    const/16 v22, 0x0

    .line 134
    .line 135
    :goto_4
    if-ge v4, v2, :cond_d

    .line 136
    .line 137
    sub-int v8, v11, v8

    .line 138
    .line 139
    add-int/lit8 v11, v4, 0x1

    .line 140
    .line 141
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v18

    .line 145
    invoke-static {v11, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 150
    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    invoke-interface {v3, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    goto :goto_5

    .line 158
    :cond_6
    const/4 v7, 0x0

    .line 159
    :goto_5
    if-eqz v3, :cond_7

    .line 160
    .line 161
    invoke-interface {v3, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    add-int v12, v12, p2

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_7
    const/4 v12, 0x0

    .line 169
    :goto_6
    add-int/lit8 v4, v4, 0x2

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-ge v4, v14, :cond_8

    .line 176
    .line 177
    move v4, v11

    .line 178
    move v11, v9

    .line 179
    goto :goto_7

    .line 180
    :cond_8
    move v4, v11

    .line 181
    const/4 v11, 0x0

    .line 182
    :goto_7
    sub-int v16, v4, v22

    .line 183
    .line 184
    move/from16 v15, v16

    .line 185
    .line 186
    move/from16 v16, v13

    .line 187
    .line 188
    invoke-static {v8, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 189
    .line 190
    .line 191
    move-result-wide v13

    .line 192
    if-nez v3, :cond_9

    .line 193
    .line 194
    move-object/from16 v9, v21

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_9
    invoke-static {v12, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 198
    .line 199
    .line 200
    move-result-wide v5

    .line 201
    new-instance v9, Landroidx/collection/IntIntPair;

    .line 202
    .line 203
    invoke-direct {v9, v5, v6}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 204
    .line 205
    .line 206
    :goto_8
    const/16 v19, 0x0

    .line 207
    .line 208
    const/16 v20, 0x0

    .line 209
    .line 210
    move v6, v12

    .line 211
    move v12, v15

    .line 212
    move-object v15, v9

    .line 213
    invoke-virtual/range {v10 .. v20}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    iget-boolean v5, v11, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 218
    .line 219
    if-eqz v5, :cond_c

    .line 220
    .line 221
    add-int v18, v18, p3

    .line 222
    .line 223
    add-int v14, v18, v17

    .line 224
    .line 225
    move/from16 v13, v16

    .line 226
    .line 227
    move/from16 v16, v12

    .line 228
    .line 229
    if-eqz v3, :cond_a

    .line 230
    .line 231
    const/4 v12, 0x1

    .line 232
    :goto_9
    move v15, v8

    .line 233
    goto :goto_a

    .line 234
    :cond_a
    const/4 v12, 0x0

    .line 235
    goto :goto_9

    .line 236
    :goto_a
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/OffsetKt;

    .line 237
    .line 238
    .line 239
    move/from16 v16, v13

    .line 240
    .line 241
    sub-int v12, v6, p2

    .line 242
    .line 243
    add-int/lit8 v13, v16, 0x1

    .line 244
    .line 245
    iget-boolean v3, v11, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 246
    .line 247
    if-eqz v3, :cond_b

    .line 248
    .line 249
    move v12, v4

    .line 250
    move/from16 v17, v14

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_b
    move v11, v1

    .line 254
    move/from16 v22, v4

    .line 255
    .line 256
    move v8, v12

    .line 257
    move/from16 v17, v14

    .line 258
    .line 259
    const/4 v3, 0x0

    .line 260
    goto :goto_b

    .line 261
    :cond_c
    move v15, v8

    .line 262
    move v8, v6

    .line 263
    move v11, v15

    .line 264
    move/from16 v13, v16

    .line 265
    .line 266
    move/from16 v3, v18

    .line 267
    .line 268
    :goto_b
    move v12, v4

    .line 269
    const v5, 0x7fffffff

    .line 270
    .line 271
    .line 272
    const/4 v9, 0x1

    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_d
    :goto_c
    sub-int v0, v17, p3

    .line 276
    .line 277
    invoke-static {v0, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    :goto_d
    const/16 v0, 0x20

    .line 282
    .line 283
    shr-long v0, v3, v0

    .line 284
    .line 285
    long-to-int v0, v0

    .line 286
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
    invoke-static {p1, p2, p0, p3}, Lkotlin/math/MathKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

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
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    .line 67
    .line 68
    iget v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

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
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v2

    .line 43
    mul-int/2addr v0, v1

    .line 44
    const v2, 0x7fffffff

    .line 45
    .line 46
    .line 47
    add-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

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
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    iget v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

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
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    iget p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 56
    .line 57
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    move v0, v3

    .line 66
    move v1, v0

    .line 67
    move v2, v1

    .line 68
    move v4, v2

    .line 69
    :goto_1
    if-ge v0, p1, :cond_5

    .line 70
    .line 71
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 76
    .line 77
    invoke-interface {v5, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    add-int/2addr v5, p0

    .line 82
    add-int/lit8 v6, v0, 0x1

    .line 83
    .line 84
    sub-int v7, v6, v2

    .line 85
    .line 86
    const v8, 0x7fffffff

    .line 87
    .line 88
    .line 89
    if-eq v7, v8, :cond_4

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-ne v6, v7, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    add-int/2addr v4, v5

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_2
    add-int/2addr v4, v5

    .line 101
    sub-int/2addr v4, p0

    .line 102
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    move v2, v0

    .line 107
    move v4, v3

    .line 108
    :goto_3
    move v0, v6

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    return v1
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
    iget v4, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    .line 10
    .line 11
    const/16 v5, 0x1d

    .line 12
    .line 13
    sget-object v13, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 14
    .line 15
    const/4 v14, 0x0

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    move-object v4, v1

    .line 19
    check-cast v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :cond_0
    move-object v1, v13

    .line 39
    goto/16 :goto_22

    .line 40
    .line 41
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v0, v5}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v6, v14, v14, v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_2
    const/4 v15, 0x1

    .line 64
    invoke-static {v15, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/util/List;

    .line 69
    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    move-object/from16 v5, v16

    .line 82
    .line 83
    :goto_0
    const/4 v8, 0x2

    .line 84
    invoke-static {v8, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/util/List;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move-object/from16 v1, v16

    .line 100
    .line 101
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 108
    .line 109
    invoke-static {v2, v3, v7}, Landroidx/compose/foundation/layout/OffsetKt;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v9

    .line 113
    const/16 v11, 0xa

    .line 114
    .line 115
    invoke-static {v11, v9, v10}, Landroidx/compose/foundation/layout/OffsetKt;->copy-yUG9Ft0$default(IJ)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/OffsetKt;->toBoxConstraints-OenEA2s(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    const v11, 0x7fffffff

    .line 124
    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    if-eqz v5, :cond_6

    .line 128
    .line 129
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 130
    .line 131
    .line 132
    move-result-object v17

    .line 133
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 134
    .line 135
    .line 136
    move-result v17

    .line 137
    cmpg-float v17, v17, v12

    .line 138
    .line 139
    if-nez v17, :cond_5

    .line 140
    .line 141
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 142
    .line 143
    .line 144
    invoke-interface {v5, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    move/from16 v17, v8

    .line 162
    .line 163
    invoke-interface {v5, v11}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    invoke-interface {v5, v8}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    :goto_2
    move/from16 v17, v8

    .line 172
    .line 173
    :goto_3
    if-eqz v1, :cond_8

    .line 174
    .line 175
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    cmpg-float v5, v5, v12

    .line 184
    .line 185
    if-nez v5, :cond_7

    .line 186
    .line 187
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 188
    .line 189
    .line 190
    invoke-interface {v1, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    invoke-interface {v1, v11}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 212
    .line 213
    .line 214
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v2, v3, v7}, Landroidx/compose/foundation/layout/OffsetKt;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v20

    .line 222
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 223
    .line 224
    const/16 v3, 0x10

    .line 225
    .line 226
    new-array v4, v3, [Landroidx/compose/ui/layout/MeasureResult;

    .line 227
    .line 228
    invoke-direct {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    sget-object v8, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 244
    .line 245
    new-instance v8, Landroidx/collection/MutableIntObjectMap;

    .line 246
    .line 247
    invoke-direct {v8}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v9, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    iget v10, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    .line 256
    .line 257
    invoke-interface {v6, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    move/from16 p2, v12

    .line 262
    .line 263
    move-object/from16 v29, v13

    .line 264
    .line 265
    float-to-double v12, v10

    .line 266
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 267
    .line 268
    .line 269
    move-result-wide v12

    .line 270
    double-to-float v10, v12

    .line 271
    float-to-int v10, v10

    .line 272
    iget v12, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 273
    .line 274
    invoke-interface {v6, v12}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    float-to-double v12, v12

    .line 279
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 280
    .line 281
    .line 282
    move-result-wide v12

    .line 283
    double-to-float v12, v12

    .line 284
    float-to-int v12, v12

    .line 285
    move/from16 v24, v12

    .line 286
    .line 287
    invoke-static {v14, v4, v14, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 288
    .line 289
    .line 290
    move-result-wide v11

    .line 291
    const/16 v13, 0xe

    .line 292
    .line 293
    invoke-static {v13, v11, v12}, Landroidx/compose/foundation/layout/OffsetKt;->copy-yUG9Ft0$default(IJ)J

    .line 294
    .line 295
    .line 296
    move-result-wide v18

    .line 297
    move/from16 v31, v15

    .line 298
    .line 299
    invoke-static/range {v18 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->toBoxConstraints-OenEA2s(J)J

    .line 300
    .line 301
    .line 302
    move-result-wide v14

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    if-nez v13, :cond_9

    .line 308
    .line 309
    :catch_0
    move-object/from16 v13, v16

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_9
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    check-cast v13, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .line 318
    :goto_5
    if-eqz v13, :cond_b

    .line 319
    .line 320
    invoke-static {v13}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 321
    .line 322
    .line 323
    move-result-object v18

    .line 324
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 325
    .line 326
    .line 327
    move-result v18

    .line 328
    cmpg-float v18, v18, p2

    .line 329
    .line 330
    if-nez v18, :cond_a

    .line 331
    .line 332
    invoke-static {v13}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 333
    .line 334
    .line 335
    invoke-interface {v13, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 336
    .line 337
    .line 338
    move-result-object v18

    .line 339
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    move-object/from16 v32, v1

    .line 344
    .line 345
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-static {v3, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 350
    .line 351
    .line 352
    move-result-wide v22

    .line 353
    :goto_6
    move-object/from16 v33, v2

    .line 354
    .line 355
    move-wide/from16 v1, v22

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_a
    move-object/from16 v32, v1

    .line 359
    .line 360
    const v1, 0x7fffffff

    .line 361
    .line 362
    .line 363
    invoke-interface {v13, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    move-object v1, v13

    .line 368
    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    invoke-static {v3, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 373
    .line 374
    .line 375
    move-result-wide v22

    .line 376
    move-object v13, v1

    .line 377
    move-object/from16 v18, v16

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :goto_7
    new-instance v3, Landroidx/collection/IntIntPair;

    .line 381
    .line 382
    invoke-direct {v3, v1, v2}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 383
    .line 384
    .line 385
    move-object/from16 v1, v18

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_b
    move-object/from16 v32, v1

    .line 389
    .line 390
    move-object/from16 v33, v2

    .line 391
    .line 392
    move-object/from16 v1, v16

    .line 393
    .line 394
    move-object v3, v1

    .line 395
    :goto_8
    move-object/from16 v45, v1

    .line 396
    .line 397
    const/16 v46, 0x20

    .line 398
    .line 399
    if-eqz v3, :cond_c

    .line 400
    .line 401
    iget-wide v1, v3, Landroidx/collection/IntIntPair;->packedValue:J

    .line 402
    .line 403
    shr-long v1, v1, v46

    .line 404
    .line 405
    long-to-int v1, v1

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    goto :goto_9

    .line 411
    :cond_c
    move-object/from16 v1, v16

    .line 412
    .line 413
    :goto_9
    const-wide v47, 0xffffffffL

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    move-object/from16 v49, v1

    .line 419
    .line 420
    if-eqz v3, :cond_d

    .line 421
    .line 422
    iget-wide v1, v3, Landroidx/collection/IntIntPair;->packedValue:J

    .line 423
    .line 424
    and-long v1, v1, v47

    .line 425
    .line 426
    long-to-int v1, v1

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    move-object/from16 p4, v1

    .line 432
    .line 433
    :goto_a
    const/16 v2, 0x10

    .line 434
    .line 435
    goto :goto_b

    .line 436
    :cond_d
    move-object/from16 p4, v16

    .line 437
    .line 438
    goto :goto_a

    .line 439
    :goto_b
    new-array v1, v2, [I

    .line 440
    .line 441
    new-array v2, v2, [I

    .line 442
    .line 443
    move-object/from16 v50, v13

    .line 444
    .line 445
    new-instance v13, Landroidx/collection/MutableIntSet;

    .line 446
    .line 447
    invoke-direct {v13}, Landroidx/collection/MutableIntSet;-><init>()V

    .line 448
    .line 449
    .line 450
    new-instance v34, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 451
    .line 452
    move-object/from16 v51, v1

    .line 453
    .line 454
    iget-object v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 455
    .line 456
    move-object/from16 v19, v1

    .line 457
    .line 458
    iget v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    .line 459
    .line 460
    move/from16 v22, v1

    .line 461
    .line 462
    move/from16 v23, v10

    .line 463
    .line 464
    move-object/from16 v18, v34

    .line 465
    .line 466
    invoke-direct/range {v18 .. v24}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V

    .line 467
    .line 468
    .line 469
    move v1, v5

    .line 470
    move/from16 v5, v23

    .line 471
    .line 472
    move/from16 v10, v24

    .line 473
    .line 474
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v35

    .line 478
    invoke-static {v4, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 479
    .line 480
    .line 481
    move-result-wide v37

    .line 482
    const/16 v43, 0x0

    .line 483
    .line 484
    const/16 v44, 0x0

    .line 485
    .line 486
    const/16 v36, 0x0

    .line 487
    .line 488
    const/16 v40, 0x0

    .line 489
    .line 490
    const/16 v41, 0x0

    .line 491
    .line 492
    const/16 v42, 0x0

    .line 493
    .line 494
    move-object/from16 v39, v3

    .line 495
    .line 496
    invoke-virtual/range {v34 .. v44}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    iget-boolean v0, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 501
    .line 502
    if-eqz v0, :cond_f

    .line 503
    .line 504
    if-eqz v39, :cond_e

    .line 505
    .line 506
    move/from16 v24, v31

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_e
    const/16 v24, 0x0

    .line 510
    .line 511
    :goto_c
    const/16 v26, 0x0

    .line 512
    .line 513
    const/16 v28, 0x0

    .line 514
    .line 515
    const/16 v25, -0x1

    .line 516
    .line 517
    move-object/from16 v23, v3

    .line 518
    .line 519
    move/from16 v27, v4

    .line 520
    .line 521
    move-object/from16 v22, v34

    .line 522
    .line 523
    invoke-virtual/range {v22 .. v28}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/OffsetKt;

    .line 524
    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_f
    move-object/from16 v23, v3

    .line 528
    .line 529
    :goto_d
    move v0, v5

    .line 530
    move v5, v1

    .line 531
    move-object/from16 v1, v23

    .line 532
    .line 533
    move/from16 v23, v0

    .line 534
    .line 535
    move-object v0, v2

    .line 536
    move/from16 v22, v4

    .line 537
    .line 538
    move/from16 v25, v7

    .line 539
    .line 540
    move/from16 v26, v10

    .line 541
    .line 542
    move-object/from16 v28, v13

    .line 543
    .line 544
    move-object/from16 v2, v45

    .line 545
    .line 546
    move-object/from16 v18, v49

    .line 547
    .line 548
    move-object/from16 v6, v50

    .line 549
    .line 550
    move-object/from16 v3, v51

    .line 551
    .line 552
    const/4 v10, 0x0

    .line 553
    const/4 v13, 0x0

    .line 554
    const/16 v24, 0x0

    .line 555
    .line 556
    const/16 v27, 0x0

    .line 557
    .line 558
    const/16 v37, 0x0

    .line 559
    .line 560
    const/16 v41, 0x0

    .line 561
    .line 562
    move-wide/from16 v49, v11

    .line 563
    .line 564
    const/4 v7, 0x0

    .line 565
    const/4 v12, 0x0

    .line 566
    move/from16 v11, v25

    .line 567
    .line 568
    :goto_e
    iget-boolean v1, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 569
    .line 570
    if-nez v1, :cond_1b

    .line 571
    .line 572
    if-eqz v6, :cond_1b

    .line 573
    .line 574
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    move/from16 v18, v1

    .line 585
    .line 586
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    move/from16 p4, v13

    .line 591
    .line 592
    add-int v13, v24, v18

    .line 593
    .line 594
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 595
    .line 596
    .line 597
    move-result v42

    .line 598
    sub-int v1, v22, v18

    .line 599
    .line 600
    add-int/lit8 v7, v10, 0x1

    .line 601
    .line 602
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    invoke-virtual {v8, v10, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v6}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    sub-int v36, v7, v27

    .line 615
    .line 616
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-nez v2, :cond_10

    .line 621
    .line 622
    move-object/from16 v6, v16

    .line 623
    .line 624
    goto :goto_10

    .line 625
    :cond_10
    :try_start_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v2, Landroidx/compose/ui/layout/Measurable;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 630
    .line 631
    goto :goto_f

    .line 632
    :catch_1
    move-object/from16 v2, v16

    .line 633
    .line 634
    :goto_f
    move-object v6, v2

    .line 635
    :goto_10
    if-eqz v6, :cond_12

    .line 636
    .line 637
    invoke-static {v6}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-static {v2}, Landroidx/compose/foundation/layout/OffsetKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    cmpg-float v2, v2, p2

    .line 646
    .line 647
    if-nez v2, :cond_11

    .line 648
    .line 649
    invoke-static {v6}, Landroidx/compose/foundation/layout/OffsetKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 650
    .line 651
    .line 652
    invoke-interface {v6, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    .line 657
    .line 658
    .line 659
    move-result v10

    .line 660
    move-object/from16 v18, v2

    .line 661
    .line 662
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    invoke-static {v10, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 667
    .line 668
    .line 669
    move-result-wide v38

    .line 670
    move-object/from16 v22, v18

    .line 671
    .line 672
    move v10, v7

    .line 673
    move-object/from16 v18, v6

    .line 674
    .line 675
    :goto_11
    move-wide/from16 v6, v38

    .line 676
    .line 677
    goto :goto_12

    .line 678
    :cond_11
    const v2, 0x7fffffff

    .line 679
    .line 680
    .line 681
    invoke-interface {v6, v2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 682
    .line 683
    .line 684
    move-result v10

    .line 685
    invoke-interface {v6, v10}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    invoke-static {v10, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 690
    .line 691
    .line 692
    move-result-wide v38

    .line 693
    move-object/from16 v22, v16

    .line 694
    .line 695
    move-object/from16 v18, v6

    .line 696
    .line 697
    move v10, v7

    .line 698
    goto :goto_11

    .line 699
    :goto_12
    new-instance v2, Landroidx/collection/IntIntPair;

    .line 700
    .line 701
    invoke-direct {v2, v6, v7}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 702
    .line 703
    .line 704
    goto :goto_13

    .line 705
    :cond_12
    move-object/from16 v18, v6

    .line 706
    .line 707
    move v10, v7

    .line 708
    move-object/from16 v2, v16

    .line 709
    .line 710
    move-object/from16 v22, v2

    .line 711
    .line 712
    :goto_13
    if-eqz v2, :cond_13

    .line 713
    .line 714
    iget-wide v6, v2, Landroidx/collection/IntIntPair;->packedValue:J

    .line 715
    .line 716
    shr-long v6, v6, v46

    .line 717
    .line 718
    long-to-int v6, v6

    .line 719
    add-int v6, v6, v23

    .line 720
    .line 721
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v6

    .line 725
    goto :goto_14

    .line 726
    :cond_13
    move-object/from16 v6, v16

    .line 727
    .line 728
    :goto_14
    move-object/from16 v24, v6

    .line 729
    .line 730
    if-eqz v2, :cond_14

    .line 731
    .line 732
    iget-wide v6, v2, Landroidx/collection/IntIntPair;->packedValue:J

    .line 733
    .line 734
    and-long v6, v6, v47

    .line 735
    .line 736
    long-to-int v6, v6

    .line 737
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    goto :goto_15

    .line 742
    :cond_14
    move-object/from16 v6, v16

    .line 743
    .line 744
    :goto_15
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    .line 745
    .line 746
    .line 747
    move-result v35

    .line 748
    move/from16 v40, v37

    .line 749
    .line 750
    invoke-static {v1, v11}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 751
    .line 752
    .line 753
    move-result-wide v37

    .line 754
    if-nez v2, :cond_15

    .line 755
    .line 756
    move/from16 v45, v1

    .line 757
    .line 758
    move-object/from16 v51, v2

    .line 759
    .line 760
    move-object/from16 v39, v16

    .line 761
    .line 762
    goto :goto_16

    .line 763
    :cond_15
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    .line 767
    .line 768
    .line 769
    move-result v7

    .line 770
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    move/from16 v45, v1

    .line 774
    .line 775
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 776
    .line 777
    .line 778
    move-result v1

    .line 779
    move-object/from16 v51, v2

    .line 780
    .line 781
    invoke-static {v7, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 782
    .line 783
    .line 784
    move-result-wide v1

    .line 785
    new-instance v7, Landroidx/collection/IntIntPair;

    .line 786
    .line 787
    invoke-direct {v7, v1, v2}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 788
    .line 789
    .line 790
    move-object/from16 v39, v7

    .line 791
    .line 792
    :goto_16
    const/16 v43, 0x0

    .line 793
    .line 794
    const/16 v44, 0x0

    .line 795
    .line 796
    invoke-virtual/range {v34 .. v44}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    iget-boolean v2, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 801
    .line 802
    if-eqz v2, :cond_1a

    .line 803
    .line 804
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    add-int v38, v41, v42

    .line 813
    .line 814
    move/from16 v37, v40

    .line 815
    .line 816
    move/from16 v40, v36

    .line 817
    .line 818
    if-eqz v51, :cond_16

    .line 819
    .line 820
    move/from16 v36, v31

    .line 821
    .line 822
    :goto_17
    move-object/from16 v35, v1

    .line 823
    .line 824
    move/from16 v39, v45

    .line 825
    .line 826
    goto :goto_18

    .line 827
    :cond_16
    const/16 v36, 0x0

    .line 828
    .line 829
    goto :goto_17

    .line 830
    :goto_18
    invoke-virtual/range {v34 .. v40}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/OffsetKt;

    .line 831
    .line 832
    .line 833
    move/from16 v40, v37

    .line 834
    .line 835
    add-int/lit8 v13, p4, 0x1

    .line 836
    .line 837
    array-length v1, v0

    .line 838
    if-ge v1, v13, :cond_17

    .line 839
    .line 840
    array-length v1, v0

    .line 841
    mul-int/lit8 v1, v1, 0x3

    .line 842
    .line 843
    div-int/lit8 v1, v1, 0x2

    .line 844
    .line 845
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    :cond_17
    aput v42, v0, p4

    .line 854
    .line 855
    add-int/lit8 v13, p4, 0x1

    .line 856
    .line 857
    sub-int v7, v25, v38

    .line 858
    .line 859
    sub-int v11, v7, v26

    .line 860
    .line 861
    add-int/lit8 v1, v12, 0x1

    .line 862
    .line 863
    array-length v5, v3

    .line 864
    if-ge v5, v1, :cond_18

    .line 865
    .line 866
    array-length v5, v3

    .line 867
    mul-int/lit8 v5, v5, 0x3

    .line 868
    .line 869
    div-int/lit8 v5, v5, 0x2

    .line 870
    .line 871
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    :cond_18
    aput v10, v3, v12

    .line 880
    .line 881
    add-int/lit8 v12, v12, 0x1

    .line 882
    .line 883
    if-eqz v24, :cond_19

    .line 884
    .line 885
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    sub-int v1, v1, v23

    .line 890
    .line 891
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    goto :goto_19

    .line 896
    :cond_19
    move-object/from16 v1, v16

    .line 897
    .line 898
    :goto_19
    add-int/lit8 v37, v40, 0x1

    .line 899
    .line 900
    add-int v41, v38, v26

    .line 901
    .line 902
    move v5, v2

    .line 903
    move/from16 v45, v4

    .line 904
    .line 905
    move/from16 v27, v10

    .line 906
    .line 907
    const/4 v7, 0x0

    .line 908
    const/16 v24, 0x0

    .line 909
    .line 910
    goto :goto_1a

    .line 911
    :cond_1a
    move-object/from16 v35, v1

    .line 912
    .line 913
    move-object/from16 v1, v24

    .line 914
    .line 915
    move/from16 v37, v40

    .line 916
    .line 917
    move/from16 v7, v42

    .line 918
    .line 919
    move/from16 v24, v13

    .line 920
    .line 921
    move/from16 v13, p4

    .line 922
    .line 923
    :goto_1a
    move-object/from16 p4, v6

    .line 924
    .line 925
    move-object/from16 v6, v18

    .line 926
    .line 927
    move-object/from16 v2, v22

    .line 928
    .line 929
    move/from16 v22, v45

    .line 930
    .line 931
    move-object/from16 v18, v1

    .line 932
    .line 933
    move-object/from16 v1, v35

    .line 934
    .line 935
    goto/16 :goto_e

    .line 936
    .line 937
    :cond_1b
    move/from16 p4, v13

    .line 938
    .line 939
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    new-array v2, v1, [Landroidx/compose/ui/layout/Placeable;

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    :goto_1b
    if-ge v4, v1, :cond_1c

    .line 947
    .line 948
    invoke-virtual {v8, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v6

    .line 952
    aput-object v6, v2, v4

    .line 953
    .line 954
    add-int/lit8 v4, v4, 0x1

    .line 955
    .line 956
    goto :goto_1b

    .line 957
    :cond_1c
    new-array v11, v12, [I

    .line 958
    .line 959
    new-array v13, v12, [I

    .line 960
    .line 961
    move v1, v5

    .line 962
    move-object v7, v9

    .line 963
    const/4 v4, 0x0

    .line 964
    const/4 v9, 0x0

    .line 965
    const/4 v14, 0x0

    .line 966
    :goto_1c
    if-ge v4, v12, :cond_20

    .line 967
    .line 968
    aget v10, v3, v4

    .line 969
    .line 970
    if-ltz v4, :cond_1f

    .line 971
    .line 972
    move/from16 v15, p4

    .line 973
    .line 974
    if-ge v4, v15, :cond_1f

    .line 975
    .line 976
    aget v5, v0, v4

    .line 977
    .line 978
    move-object/from16 v6, v28

    .line 979
    .line 980
    invoke-virtual {v6, v4}, Landroidx/collection/MutableIntSet;->contains(I)Z

    .line 981
    .line 982
    .line 983
    move-result v8

    .line 984
    if-eqz v8, :cond_1d

    .line 985
    .line 986
    move-object v8, v2

    .line 987
    const v17, 0x7fffffff

    .line 988
    .line 989
    .line 990
    goto :goto_1e

    .line 991
    :cond_1d
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 992
    .line 993
    .line 994
    move-result v5

    .line 995
    const v8, 0x7fffffff

    .line 996
    .line 997
    .line 998
    if-ne v5, v8, :cond_1e

    .line 999
    .line 1000
    move v5, v8

    .line 1001
    move/from16 v17, v5

    .line 1002
    .line 1003
    :goto_1d
    move-object v8, v2

    .line 1004
    goto :goto_1e

    .line 1005
    :cond_1e
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1006
    .line 1007
    .line 1008
    move-result v5

    .line 1009
    sub-int/2addr v5, v14

    .line 1010
    move/from16 v17, v8

    .line 1011
    .line 1012
    goto :goto_1d

    .line 1013
    :goto_1e
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 1014
    .line 1015
    .line 1016
    move-result v2

    .line 1017
    move-object/from16 v51, v3

    .line 1018
    .line 1019
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    move-object/from16 v18, v0

    .line 1024
    .line 1025
    move-object/from16 v28, v6

    .line 1026
    .line 1027
    move/from16 p2, v14

    .line 1028
    .line 1029
    move/from16 v19, v17

    .line 1030
    .line 1031
    move-object/from16 v14, v33

    .line 1032
    .line 1033
    move-object/from16 v0, p0

    .line 1034
    .line 1035
    move-object/from16 v6, p1

    .line 1036
    .line 1037
    move/from16 v17, v12

    .line 1038
    .line 1039
    move v12, v4

    .line 1040
    move v4, v5

    .line 1041
    move/from16 v5, v23

    .line 1042
    .line 1043
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 1052
    .line 1053
    .line 1054
    move-result v4

    .line 1055
    aput v4, v13, v12

    .line 1056
    .line 1057
    add-int v4, p2, v4

    .line 1058
    .line 1059
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    add-int/lit8 v2, v12, 0x1

    .line 1067
    .line 1068
    move v9, v10

    .line 1069
    move/from16 p4, v15

    .line 1070
    .line 1071
    move/from16 v12, v17

    .line 1072
    .line 1073
    move-object/from16 v0, v18

    .line 1074
    .line 1075
    move-object/from16 v3, v51

    .line 1076
    .line 1077
    move v14, v4

    .line 1078
    move v4, v2

    .line 1079
    move-object v2, v8

    .line 1080
    goto :goto_1c

    .line 1081
    :cond_1f
    const-string v0, "Index must be between 0 and size"

    .line 1082
    .line 1083
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    return-object v16

    .line 1087
    :cond_20
    move-object/from16 v0, p0

    .line 1088
    .line 1089
    move-object/from16 v6, p1

    .line 1090
    .line 1091
    move/from16 p2, v14

    .line 1092
    .line 1093
    move-object/from16 v14, v33

    .line 1094
    .line 1095
    iget v2, v14, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1096
    .line 1097
    if-nez v2, :cond_21

    .line 1098
    .line 1099
    const/4 v1, 0x0

    .line 1100
    const/16 v30, 0x0

    .line 1101
    .line 1102
    goto :goto_1f

    .line 1103
    :cond_21
    move/from16 v30, p2

    .line 1104
    .line 1105
    :goto_1f
    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 1106
    .line 1107
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1112
    .line 1113
    .line 1114
    move-result v2

    .line 1115
    iget v3, v14, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1116
    .line 1117
    add-int/lit8 v3, v3, -0x1

    .line 1118
    .line 1119
    mul-int/2addr v3, v2

    .line 1120
    add-int v3, v3, v30

    .line 1121
    .line 1122
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 1123
    .line 1124
    .line 1125
    move-result v2

    .line 1126
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1127
    .line 1128
    .line 1129
    move-result v4

    .line 1130
    if-ge v3, v2, :cond_22

    .line 1131
    .line 1132
    move v3, v2

    .line 1133
    :cond_22
    if-le v3, v4, :cond_23

    .line 1134
    .line 1135
    goto :goto_20

    .line 1136
    :cond_23
    move v4, v3

    .line 1137
    :goto_20
    invoke-interface {v0, v6, v4, v13, v11}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1145
    .line 1146
    .line 1147
    move-result v2

    .line 1148
    if-ge v1, v0, :cond_24

    .line 1149
    .line 1150
    move v1, v0

    .line 1151
    :cond_24
    if-le v1, v2, :cond_25

    .line 1152
    .line 1153
    goto :goto_21

    .line 1154
    :cond_25
    move v2, v1

    .line 1155
    :goto_21
    new-instance v0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1156
    .line 1157
    const/16 v1, 0xc

    .line 1158
    .line 1159
    invoke-direct {v0, v1, v14}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1160
    .line 1161
    .line 1162
    move-object/from16 v1, v29

    .line 1163
    .line 1164
    invoke-interface {v6, v2, v4, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    return-object v0

    .line 1169
    :goto_22
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 1170
    .line 1171
    invoke-direct {v0, v5}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1172
    .line 1173
    .line 1174
    const/4 v2, 0x0

    .line 1175
    invoke-interface {v6, v2, v2, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    iget v4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

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
    .locals 38

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
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

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
    invoke-static {v10, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    return v10

    .line 87
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    new-array v5, v1, [I

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    new-array v12, v11, [I

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    move v14, v10

    .line 104
    :goto_2
    if-ge v14, v13, :cond_4

    .line 105
    .line 106
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 111
    .line 112
    invoke-interface {v15, v3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    aput v6, v5, v14

    .line 117
    .line 118
    invoke-interface {v15, v6}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    aput v6, v12, v14

    .line 123
    .line 124
    add-int/lit8 v14, v14, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    move-object v13, v12

    .line 132
    iget-object v12, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 133
    .line 134
    const v14, 0x7fffffff

    .line 135
    .line 136
    .line 137
    if-ge v14, v6, :cond_5

    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-lt v14, v6, :cond_6

    .line 147
    .line 148
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    move v15, v10

    .line 160
    move/from16 v18, v15

    .line 161
    .line 162
    :goto_3
    if-ge v15, v1, :cond_7

    .line 163
    .line 164
    aget v19, v5, v15

    .line 165
    .line 166
    add-int v18, v18, v19

    .line 167
    .line 168
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    sub-int/2addr v15, v4

    .line 176
    mul-int v15, v15, v16

    .line 177
    .line 178
    add-int v15, v15, v18

    .line 179
    .line 180
    if-eqz v11, :cond_22

    .line 181
    .line 182
    aget v18, v13, v10

    .line 183
    .line 184
    sub-int/2addr v11, v4

    .line 185
    move/from16 v19, v7

    .line 186
    .line 187
    move/from16 v20, v10

    .line 188
    .line 189
    if-gt v4, v11, :cond_a

    .line 190
    .line 191
    move/from16 v7, v18

    .line 192
    .line 193
    move v10, v4

    .line 194
    :goto_4
    aget v14, v13, v10

    .line 195
    .line 196
    if-ge v7, v14, :cond_8

    .line 197
    .line 198
    move v7, v14

    .line 199
    :cond_8
    if-eq v10, v11, :cond_9

    .line 200
    .line 201
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_9
    move/from16 v18, v7

    .line 205
    .line 206
    :cond_a
    if-eqz v1, :cond_21

    .line 207
    .line 208
    aget v7, v5, v20

    .line 209
    .line 210
    sub-int/2addr v1, v4

    .line 211
    if-gt v4, v1, :cond_c

    .line 212
    .line 213
    move v10, v4

    .line 214
    :goto_5
    aget v11, v5, v10

    .line 215
    .line 216
    if-ge v7, v11, :cond_b

    .line 217
    .line 218
    move v7, v11

    .line 219
    :cond_b
    if-eq v10, v1, :cond_c

    .line 220
    .line 221
    add-int/lit8 v10, v10, 0x1

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_c
    move v1, v15

    .line 225
    move/from16 v10, v18

    .line 226
    .line 227
    :goto_6
    if-gt v7, v1, :cond_20

    .line 228
    .line 229
    if-ne v10, v3, :cond_d

    .line 230
    .line 231
    goto/16 :goto_17

    .line 232
    .line 233
    :cond_d
    add-int v10, v7, v1

    .line 234
    .line 235
    div-int/lit8 v10, v10, 0x2

    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v11, :cond_e

    .line 242
    .line 243
    move v4, v1

    .line 244
    move-object v11, v2

    .line 245
    move-wide v0, v8

    .line 246
    move-object/from16 v21, v13

    .line 247
    .line 248
    goto/16 :goto_14

    .line 249
    .line 250
    :cond_e
    move/from16 v11, v20

    .line 251
    .line 252
    const v14, 0x7fffffff

    .line 253
    .line 254
    .line 255
    invoke-static {v11, v10, v11, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 256
    .line 257
    .line 258
    move-result-wide v20

    .line 259
    new-instance v22, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 260
    .line 261
    iget v15, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    .line 262
    .line 263
    move v4, v11

    .line 264
    move v0, v14

    .line 265
    move-object/from16 v11, v22

    .line 266
    .line 267
    move-wide/from16 v36, v20

    .line 268
    .line 269
    move-object/from16 v21, v13

    .line 270
    .line 271
    move-wide/from16 v13, v36

    .line 272
    .line 273
    invoke-direct/range {v11 .. v17}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V

    .line 274
    .line 275
    .line 276
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 281
    .line 282
    if-eqz v11, :cond_f

    .line 283
    .line 284
    aget v20, v21, v4

    .line 285
    .line 286
    move/from16 v13, v20

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_f
    move v13, v4

    .line 290
    :goto_7
    if-eqz v11, :cond_10

    .line 291
    .line 292
    aget v14, v5, v4

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_10
    const/4 v14, 0x0

    .line 296
    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    const/4 v15, 0x1

    .line 301
    if-le v4, v15, :cond_11

    .line 302
    .line 303
    move/from16 v23, v15

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_11
    const/16 v23, 0x0

    .line 307
    .line 308
    :goto_9
    invoke-static {v10, v0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 309
    .line 310
    .line 311
    move-result-wide v25

    .line 312
    move v4, v1

    .line 313
    if-nez v11, :cond_12

    .line 314
    .line 315
    const/16 v27, 0x0

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_12
    invoke-static {v14, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    new-instance v11, Landroidx/collection/IntIntPair;

    .line 323
    .line 324
    invoke-direct {v11, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 325
    .line 326
    .line 327
    move-object/from16 v27, v11

    .line 328
    .line 329
    :goto_a
    const/16 v31, 0x0

    .line 330
    .line 331
    const/16 v32, 0x0

    .line 332
    .line 333
    const/16 v24, 0x0

    .line 334
    .line 335
    const/16 v28, 0x0

    .line 336
    .line 337
    const/16 v29, 0x0

    .line 338
    .line 339
    const/16 v30, 0x0

    .line 340
    .line 341
    invoke-virtual/range {v22 .. v32}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 346
    .line 347
    if-eqz v0, :cond_13

    .line 348
    .line 349
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    move-object v11, v2

    .line 353
    move-wide v0, v8

    .line 354
    goto/16 :goto_14

    .line 355
    .line 356
    :cond_13
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    move/from16 v23, v10

    .line 361
    .line 362
    move/from16 v18, v14

    .line 363
    .line 364
    const/4 v1, 0x0

    .line 365
    const/4 v11, 0x0

    .line 366
    move v14, v13

    .line 367
    const/4 v13, 0x0

    .line 368
    :goto_b
    move/from16 v15, v30

    .line 369
    .line 370
    if-ge v11, v0, :cond_1b

    .line 371
    .line 372
    sub-int v13, v23, v18

    .line 373
    .line 374
    move/from16 v18, v0

    .line 375
    .line 376
    add-int/lit8 v0, v11, 0x1

    .line 377
    .line 378
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 379
    .line 380
    .line 381
    move-result v30

    .line 382
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 387
    .line 388
    if-eqz v14, :cond_14

    .line 389
    .line 390
    aget v15, v21, v0

    .line 391
    .line 392
    goto :goto_c

    .line 393
    :cond_14
    const/4 v15, 0x0

    .line 394
    :goto_c
    if-eqz v14, :cond_15

    .line 395
    .line 396
    aget v23, v5, v0

    .line 397
    .line 398
    add-int v23, v23, v16

    .line 399
    .line 400
    move/from16 v33, v0

    .line 401
    .line 402
    move/from16 v0, v23

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_15
    move/from16 v33, v0

    .line 406
    .line 407
    const/4 v0, 0x0

    .line 408
    :goto_d
    add-int/lit8 v11, v11, 0x2

    .line 409
    .line 410
    move/from16 v34, v1

    .line 411
    .line 412
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-ge v11, v1, :cond_16

    .line 417
    .line 418
    const/16 v23, 0x1

    .line 419
    .line 420
    goto :goto_e

    .line 421
    :cond_16
    const/16 v23, 0x0

    .line 422
    .line 423
    :goto_e
    sub-int v24, v33, v34

    .line 424
    .line 425
    const v1, 0x7fffffff

    .line 426
    .line 427
    .line 428
    invoke-static {v13, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 429
    .line 430
    .line 431
    move-result-wide v25

    .line 432
    if-nez v14, :cond_17

    .line 433
    .line 434
    move/from16 v35, v0

    .line 435
    .line 436
    move-object v11, v2

    .line 437
    const/16 v27, 0x0

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_17
    move-object v11, v2

    .line 441
    invoke-static {v0, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 442
    .line 443
    .line 444
    move-result-wide v1

    .line 445
    move/from16 v35, v0

    .line 446
    .line 447
    new-instance v0, Landroidx/collection/IntIntPair;

    .line 448
    .line 449
    invoke-direct {v0, v1, v2}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v27, v0

    .line 453
    .line 454
    :goto_f
    const/16 v31, 0x0

    .line 455
    .line 456
    const/16 v32, 0x0

    .line 457
    .line 458
    invoke-virtual/range {v22 .. v32}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    .line 463
    .line 464
    if-eqz v1, :cond_1a

    .line 465
    .line 466
    add-int v30, v30, v17

    .line 467
    .line 468
    add-int v26, v30, v29

    .line 469
    .line 470
    move/from16 v25, v28

    .line 471
    .line 472
    move/from16 v28, v24

    .line 473
    .line 474
    if-eqz v14, :cond_18

    .line 475
    .line 476
    const/16 v24, 0x1

    .line 477
    .line 478
    :goto_10
    move-object/from16 v23, v0

    .line 479
    .line 480
    move/from16 v27, v13

    .line 481
    .line 482
    goto :goto_11

    .line 483
    :cond_18
    const/16 v24, 0x0

    .line 484
    .line 485
    goto :goto_10

    .line 486
    :goto_11
    invoke-virtual/range {v22 .. v28}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/OffsetKt;

    .line 487
    .line 488
    .line 489
    move-object/from16 v0, v23

    .line 490
    .line 491
    move/from16 v28, v25

    .line 492
    .line 493
    sub-int v1, v35, v16

    .line 494
    .line 495
    add-int/lit8 v28, v28, 0x1

    .line 496
    .line 497
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 498
    .line 499
    if-eqz v0, :cond_19

    .line 500
    .line 501
    move/from16 v29, v26

    .line 502
    .line 503
    move/from16 v13, v33

    .line 504
    .line 505
    goto :goto_13

    .line 506
    :cond_19
    move/from16 v35, v1

    .line 507
    .line 508
    move/from16 v23, v10

    .line 509
    .line 510
    move/from16 v29, v26

    .line 511
    .line 512
    move/from16 v1, v33

    .line 513
    .line 514
    const/16 v30, 0x0

    .line 515
    .line 516
    goto :goto_12

    .line 517
    :cond_1a
    move/from16 v27, v13

    .line 518
    .line 519
    move/from16 v23, v27

    .line 520
    .line 521
    move/from16 v1, v34

    .line 522
    .line 523
    :goto_12
    move-object v2, v11

    .line 524
    move v14, v15

    .line 525
    move/from16 v0, v18

    .line 526
    .line 527
    move/from16 v11, v33

    .line 528
    .line 529
    move v13, v11

    .line 530
    move/from16 v18, v35

    .line 531
    .line 532
    goto/16 :goto_b

    .line 533
    .line 534
    :cond_1b
    move-object v11, v2

    .line 535
    :goto_13
    sub-int v0, v29, v17

    .line 536
    .line 537
    invoke-static {v0, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 538
    .line 539
    .line 540
    move-result-wide v0

    .line 541
    :goto_14
    const/16 v2, 0x20

    .line 542
    .line 543
    shr-long v13, v0, v2

    .line 544
    .line 545
    long-to-int v2, v13

    .line 546
    const-wide v13, 0xffffffffL

    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    and-long/2addr v0, v13

    .line 552
    long-to-int v0, v0

    .line 553
    if-gt v2, v3, :cond_1e

    .line 554
    .line 555
    if-ge v0, v6, :cond_1c

    .line 556
    .line 557
    goto :goto_16

    .line 558
    :cond_1c
    if-ge v2, v3, :cond_1d

    .line 559
    .line 560
    add-int/lit8 v1, v10, -0x1

    .line 561
    .line 562
    move-object/from16 v0, p0

    .line 563
    .line 564
    :goto_15
    move v15, v10

    .line 565
    move-object/from16 v13, v21

    .line 566
    .line 567
    const/4 v4, 0x1

    .line 568
    const/16 v20, 0x0

    .line 569
    .line 570
    move v10, v2

    .line 571
    move-object v2, v11

    .line 572
    goto/16 :goto_6

    .line 573
    .line 574
    :cond_1d
    return v10

    .line 575
    :cond_1e
    :goto_16
    add-int/lit8 v7, v10, 0x1

    .line 576
    .line 577
    if-le v7, v4, :cond_1f

    .line 578
    .line 579
    return v7

    .line 580
    :cond_1f
    move-object/from16 v0, p0

    .line 581
    .line 582
    move v1, v4

    .line 583
    goto :goto_15

    .line 584
    :cond_20
    :goto_17
    return v15

    .line 585
    :cond_21
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 586
    .line 587
    .line 588
    const/16 v20, 0x0

    .line 589
    .line 590
    return v20

    .line 591
    :cond_22
    move/from16 v20, v10

    .line 592
    .line 593
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 594
    .line 595
    .line 596
    return v20
.end method

.method public final placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III[IIII)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    move-object v6, p0

    .line 6
    move-object v5, p1

    .line 7
    move v9, p3

    .line 8
    move-object v10, p4

    .line 9
    move/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v1, p7

    .line 12
    .line 13
    move/from16 v2, p8

    .line 14
    .line 15
    move/from16 v3, p9

    .line 16
    .line 17
    move/from16 v4, p10

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$$ExternalSyntheticLambda0;-><init>([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowMeasurePolicy;ILandroidx/compose/ui/unit/LayoutDirection;I[I)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 23
    .line 24
    move/from16 p1, p5

    .line 25
    .line 26
    invoke-interface {p2, p1, v7, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
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
    const-string v1, ", maxItemsInMainAxis=2147483647, maxLines="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", overflow="

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
