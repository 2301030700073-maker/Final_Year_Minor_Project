.class public final synthetic Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;JLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$2:J

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v3, :cond_b

    .line 15
    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 21
    .line 22
    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 23
    .line 24
    iget-object v7, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 25
    .line 26
    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    iget-boolean v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    .line 31
    .line 32
    iget v9, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    .line 33
    .line 34
    const/high16 v10, -0x80000000

    .line 35
    .line 36
    if-eq v9, v10, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v9, "position() should be called first"

    .line 40
    .line 41
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v9, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/4 v11, 0x0

    .line 51
    :goto_2
    if-ge v11, v10, :cond_a

    .line 52
    .line 53
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 58
    .line 59
    iget v13, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    .line 60
    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    iget v14, v12, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    iget v14, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 67
    .line 68
    :goto_3
    sub-int/2addr v13, v14

    .line 69
    iget v14, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 70
    .line 71
    move v15, v5

    .line 72
    iget-wide v4, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    .line 73
    .line 74
    move-object/from16 v16, v2

    .line 75
    .line 76
    iget-object v2, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 77
    .line 78
    move/from16 v17, v3

    .line 79
    .line 80
    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v2, v11, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_7

    .line 87
    .line 88
    if-eqz v7, :cond_2

    .line 89
    .line 90
    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    .line 91
    .line 92
    move v3, v7

    .line 93
    move/from16 v18, v8

    .line 94
    .line 95
    move-object/from16 v19, v9

    .line 96
    .line 97
    move/from16 v20, v10

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_2
    move v3, v7

    .line 101
    move/from16 v18, v8

    .line 102
    .line 103
    iget-wide v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    .line 104
    .line 105
    move-object/from16 v19, v9

    .line 106
    .line 107
    move/from16 v20, v10

    .line 108
    .line 109
    const-wide v9, 0x7fffffff7fffffffL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_3

    .line 119
    .line 120
    iget-wide v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    move-wide v7, v4

    .line 124
    :goto_4
    iget-object v9, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    check-cast v9, Landroidx/compose/ui/unit/IntOffset;

    .line 131
    .line 132
    iget-wide v9, v9, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 133
    .line 134
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-gt v9, v13, :cond_4

    .line 143
    .line 144
    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-le v9, v13, :cond_5

    .line 149
    .line 150
    :cond_4
    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-lt v4, v14, :cond_6

    .line 155
    .line 156
    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-lt v4, v14, :cond_6

    .line 161
    .line 162
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->cancelPlacementAnimation()V

    .line 163
    .line 164
    .line 165
    :cond_6
    move-wide v4, v7

    .line 166
    :goto_5
    iget-object v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_7
    move v3, v7

    .line 170
    move/from16 v18, v8

    .line 171
    .line 172
    move-object/from16 v19, v9

    .line 173
    .line 174
    move/from16 v20, v10

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    :goto_6
    iget-wide v8, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->f$2:J

    .line 178
    .line 179
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    if-nez v3, :cond_8

    .line 184
    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->finalOffset:J

    .line 188
    .line 189
    :cond_8
    if-eqz v7, :cond_9

    .line 190
    .line 191
    invoke-static {v1, v12, v4, v5, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_9
    invoke-static {v1, v12, v4, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 196
    .line 197
    .line 198
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 199
    .line 200
    move v7, v3

    .line 201
    move v5, v15

    .line 202
    move-object/from16 v2, v16

    .line 203
    .line 204
    move/from16 v3, v17

    .line 205
    .line 206
    move/from16 v8, v18

    .line 207
    .line 208
    move-object/from16 v9, v19

    .line 209
    .line 210
    move/from16 v10, v20

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_a
    move-object/from16 v16, v2

    .line 215
    .line 216
    move/from16 v17, v3

    .line 217
    .line 218
    move v15, v5

    .line 219
    add-int/lit8 v5, v15, 0x1

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    .line 225
    return-object v0
.end method
