.class public final synthetic Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    iget v1, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v3, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/animation/core/Animatable;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    .line 21
    .line 22
    iget-wide v4, v1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 23
    .line 24
    iget-wide v0, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->f$2:J

    .line 25
    .line 26
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementDelta--gyyYBs(J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_0
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 40
    .line 41
    move-object/from16 v4, p1

    .line 42
    .line 43
    check-cast v4, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v1, v4, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_0

    .line 72
    .line 73
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    const-wide v9, 0xffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    and-long/2addr v7, v9

    .line 89
    long-to-int v3, v7

    .line 90
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/high16 v7, 0x42400000    # 48.0f

    .line 95
    .line 96
    invoke-virtual {v4, v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 105
    .line 106
    iget v8, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    if-ge v8, v11, :cond_1

    .line 110
    .line 111
    move v8, v11

    .line 112
    :cond_1
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    .line 113
    .line 114
    mul-int/2addr v5, v8

    .line 115
    iget v11, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 116
    .line 117
    mul-int/2addr v11, v8

    .line 118
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 119
    .line 120
    sub-int/2addr v11, v6

    .line 121
    int-to-float v5, v5

    .line 122
    sub-float/2addr v5, v3

    .line 123
    const/high16 v6, 0x3f800000    # 1.0f

    .line 124
    .line 125
    cmpg-float v8, v5, v6

    .line 126
    .line 127
    if-gez v8, :cond_2

    .line 128
    .line 129
    move v5, v6

    .line 130
    :cond_2
    int-to-float v8, v11

    .line 131
    div-float/2addr v8, v5

    .line 132
    const/4 v5, 0x0

    .line 133
    invoke-static {v8, v5, v6}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    sub-float/2addr v3, v7

    .line 138
    mul-float/2addr v3, v5

    .line 139
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 140
    .line 141
    .line 142
    move-result-wide v5

    .line 143
    const/16 v1, 0x20

    .line 144
    .line 145
    shr-long/2addr v5, v1

    .line 146
    long-to-int v5, v5

    .line 147
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    const/high16 v6, 0x40800000    # 4.0f

    .line 152
    .line 153
    invoke-virtual {v4, v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    sub-float/2addr v5, v8

    .line 158
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    int-to-long v11, v5

    .line 163
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    int-to-long v13, v3

    .line 168
    shl-long/2addr v11, v1

    .line 169
    and-long/2addr v13, v9

    .line 170
    or-long/2addr v11, v13

    .line 171
    invoke-virtual {v4, v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    int-to-long v5, v3

    .line 180
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    int-to-long v7, v3

    .line 185
    shl-long/2addr v5, v1

    .line 186
    and-long/2addr v7, v9

    .line 187
    or-long/2addr v5, v7

    .line 188
    const/high16 v3, 0x40000000    # 2.0f

    .line 189
    .line 190
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    int-to-long v7, v7

    .line 199
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    int-to-long v13, v3

    .line 204
    shl-long/2addr v7, v1

    .line 205
    and-long/2addr v9, v13

    .line 206
    or-long/2addr v7, v9

    .line 207
    iget-wide v0, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;->f$2:J

    .line 208
    .line 209
    move-wide v9, v11

    .line 210
    move-wide v11, v7

    .line 211
    move-wide v7, v9

    .line 212
    move-wide v9, v5

    .line 213
    move-wide v5, v0

    .line 214
    invoke-virtual/range {v4 .. v12}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawRoundRect-u-Aw5IA(JJJJ)V

    .line 215
    .line 216
    .line 217
    :cond_3
    return-object v2

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
