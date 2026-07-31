.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:Lorg/wikipedia/feed/ForYouContentState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouContentState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$3:Lorg/wikipedia/dataclient/WikiSite;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$4:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$5:Lorg/wikipedia/feed/ForYouContentState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 2
    .line 3
    move-object v9, p2

    .line 4
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    and-int/lit8 p3, p2, 0x6

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const/4 p3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x2

    .line 28
    :goto_0
    or-int/2addr p2, p3

    .line 29
    :cond_1
    and-int/lit8 p3, p2, 0x13

    .line 30
    .line 31
    const/16 v0, 0x12

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq p3, v0, :cond_2

    .line 35
    .line 36
    move p3, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p3, 0x0

    .line 39
    :goto_1
    and-int/2addr p2, v1

    .line 40
    invoke-virtual {v9, p2, p3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_a

    .line 45
    .line 46
    iget-object p2, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    .line 47
    .line 48
    iget-wide v0, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-interface {p2, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_2
    move v4, p1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_3
    sget-object p1, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE$1:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 70
    .line 71
    iget-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 72
    .line 73
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-nez p3, :cond_4

    .line 84
    .line 85
    if-ne v0, v1, :cond_5

    .line 86
    .line 87
    :cond_4
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 88
    .line 89
    invoke-direct {v0, p2, p1}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 96
    .line 97
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 104
    .line 105
    invoke-static {v9}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    or-int/2addr v2, v3

    .line 118
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    or-int/2addr p1, v2

    .line 123
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-nez p1, :cond_6

    .line 128
    .line 129
    if-ne v2, v1, :cond_7

    .line 130
    .line 131
    :cond_6
    const/high16 p1, 0x43c80000    # 400.0f

    .line 132
    .line 133
    const/4 v2, 0x5

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-static {v3, p1, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v2, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 141
    .line 142
    invoke-direct {v2, v0, p3, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/SpringSpec;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    move-object p1, v2

    .line 149
    check-cast p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 150
    .line 151
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 152
    .line 153
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 154
    .line 155
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 160
    .line 161
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 162
    .line 163
    sget-object v0, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 164
    .line 165
    invoke-static {p3, v2, v3, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    move-object v0, v1

    .line 170
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$1:Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iget v3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$2:I

    .line 177
    .line 178
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    or-int/2addr v2, v5

    .line 183
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    or-int/2addr v2, v5

    .line 188
    iget-object v5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$3:Lorg/wikipedia/dataclient/WikiSite;

    .line 189
    .line 190
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    or-int/2addr v2, v6

    .line 195
    iget-object v6, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$4:Lkotlin/jvm/functions/Function1;

    .line 196
    .line 197
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    or-int/2addr v2, v7

    .line 202
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;->f$5:Lorg/wikipedia/feed/ForYouContentState;

    .line 203
    .line 204
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    or-int/2addr v2, v7

    .line 209
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    if-nez v2, :cond_8

    .line 214
    .line 215
    if-ne v7, v0, :cond_9

    .line 216
    .line 217
    :cond_8
    new-instance v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;

    .line 218
    .line 219
    move-object v2, p0

    .line 220
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;-><init>(Ljava/util/List;Lorg/wikipedia/feed/ForYouContentState;IFLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    move-object v7, v0

    .line 227
    :cond_9
    move-object v8, v7

    .line 228
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    const/4 v10, 0x0

    .line 231
    const/16 v11, 0x1bc

    .line 232
    .line 233
    const/4 v2, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    const/4 v6, 0x0

    .line 237
    const/4 v7, 0x0

    .line 238
    move-object v5, p1

    .line 239
    move-object v1, p2

    .line 240
    move-object v0, p3

    .line 241
    invoke-static/range {v0 .. v11}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 246
    .line 247
    .line 248
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    .line 250
    return-object p0
.end method
