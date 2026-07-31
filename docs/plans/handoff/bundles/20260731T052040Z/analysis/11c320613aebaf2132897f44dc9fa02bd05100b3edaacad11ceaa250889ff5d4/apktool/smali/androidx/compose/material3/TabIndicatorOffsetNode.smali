.class public final Landroidx/compose/material3/TabIndicatorOffsetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public initialOffset:Landroidx/compose/ui/unit/Dp;

.field public initialWidth:Landroidx/compose/ui/unit/Dp;

.field public offsetAnimatable:Landroidx/compose/animation/core/Animatable;

.field public selectedTabIndex:I

.field public tabPositionsState:Landroidx/compose/runtime/State;

.field public widthAnimatable:Landroidx/compose/animation/core/Animatable;


# virtual methods
.method public final synthetic maxIntrinsicHeight(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/node/Owner$-CC;->$default$maxIntrinsicHeight(Landroidx/compose/ui/node/LayoutModifierNode;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic maxIntrinsicWidth(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/node/Owner$-CC;->$default$maxIntrinsicWidth(Landroidx/compose/ui/node/LayoutModifierNode;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    .line 1
    sget-object v0, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance p0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/16 p2, 0x16

    .line 23
    .line 24
    invoke-direct {p0, p2}, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v3, v3, v2, p0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 33
    .line 34
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    iget v4, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    .line 41
    .line 42
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/compose/material3/TabPosition;

    .line 47
    .line 48
    iget v1, v1, Landroidx/compose/material3/TabPosition;->width:F

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialWidth:Landroidx/compose/ui/unit/Dp;

    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    const/16 v6, 0xc

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v8, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 59
    .line 60
    if-nez v8, :cond_1

    .line 61
    .line 62
    new-instance v8, Landroidx/compose/animation/core/Animatable;

    .line 63
    .line 64
    invoke-direct {v8, v4, v0, v7, v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Float;I)V

    .line 65
    .line 66
    .line 67
    iput-object v8, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 68
    .line 69
    :cond_1
    iget-object v4, v8, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    .line 76
    .line 77
    iget v4, v4, Landroidx/compose/ui/unit/Dp;->value:F

    .line 78
    .line 79
    invoke-static {v1, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v9, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$2;

    .line 90
    .line 91
    invoke-direct {v9, v8, v1, p0, v7}, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$2;-><init>(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/material3/TabIndicatorOffsetNode;Lkotlin/coroutines/Continuation;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v7, v7, v9, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance v4, Landroidx/compose/ui/unit/Dp;

    .line 99
    .line 100
    invoke-direct {v4, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 101
    .line 102
    .line 103
    iput-object v4, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialWidth:Landroidx/compose/ui/unit/Dp;

    .line 104
    .line 105
    :cond_3
    :goto_0
    iget-object v4, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 106
    .line 107
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/util/List;

    .line 112
    .line 113
    iget v8, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    .line 114
    .line 115
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Landroidx/compose/material3/TabPosition;

    .line 120
    .line 121
    iget v4, v4, Landroidx/compose/material3/TabPosition;->left:F

    .line 122
    .line 123
    iget-object v8, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialOffset:Landroidx/compose/ui/unit/Dp;

    .line 124
    .line 125
    if-eqz v8, :cond_5

    .line 126
    .line 127
    iget-object v9, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 128
    .line 129
    if-nez v9, :cond_4

    .line 130
    .line 131
    new-instance v9, Landroidx/compose/animation/core/Animatable;

    .line 132
    .line 133
    invoke-direct {v9, v8, v0, v7, v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Float;I)V

    .line 134
    .line 135
    .line 136
    iput-object v9, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 137
    .line 138
    :cond_4
    iget-object v0, v9, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 145
    .line 146
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 147
    .line 148
    invoke-static {v4, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v6, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$3;

    .line 159
    .line 160
    invoke-direct {v6, v9, v4, p0, v7}, Landroidx/compose/material3/TabIndicatorOffsetNode$measure$3;-><init>(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/material3/TabIndicatorOffsetNode;Lkotlin/coroutines/Continuation;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v7, v7, v6, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 168
    .line 169
    invoke-direct {v0, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->initialOffset:Landroidx/compose/ui/unit/Dp;

    .line 173
    .line 174
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v5, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->offsetAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 179
    .line 180
    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 181
    .line 182
    if-ne v0, v6, :cond_7

    .line 183
    .line 184
    if-eqz v5, :cond_9

    .line 185
    .line 186
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 191
    .line 192
    iget v4, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    if-eqz v5, :cond_8

    .line 196
    .line 197
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 202
    .line 203
    iget v4, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 204
    .line 205
    :cond_8
    neg-float v4, v4

    .line 206
    :cond_9
    :goto_2
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorOffsetNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 207
    .line 208
    if-eqz p0, :cond_a

    .line 209
    .line 210
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 215
    .line 216
    iget v1, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 217
    .line 218
    :cond_a
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    const/4 v7, 0x0

    .line 227
    const/16 v10, 0xc

    .line 228
    .line 229
    move-wide v8, p3

    .line 230
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(IIIJI)J

    .line 231
    .line 232
    .line 233
    move-result-wide p3

    .line 234
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 239
    .line 240
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 241
    .line 242
    new-instance p4, Landroidx/compose/material3/TabIndicatorOffsetNode$$ExternalSyntheticLambda0;

    .line 243
    .line 244
    invoke-direct {p4, p0, v4, v3}, Landroidx/compose/material3/TabIndicatorOffsetNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;FI)V

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, p2, p3, v2, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0
.end method

.method public final synthetic minIntrinsicHeight(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/node/Owner$-CC;->$default$minIntrinsicHeight(Landroidx/compose/ui/node/LayoutModifierNode;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic minIntrinsicWidth(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/node/Owner$-CC;->$default$minIntrinsicWidth(Landroidx/compose/ui/node/LayoutModifierNode;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
