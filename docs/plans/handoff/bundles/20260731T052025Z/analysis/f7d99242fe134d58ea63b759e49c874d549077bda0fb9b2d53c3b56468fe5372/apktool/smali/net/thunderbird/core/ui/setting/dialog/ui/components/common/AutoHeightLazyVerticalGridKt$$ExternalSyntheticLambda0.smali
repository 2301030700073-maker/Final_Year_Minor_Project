.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$2:Lkotlinx/collections/immutable/ImmutableList;

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(FLkotlinx/collections/immutable/ImmutableList;FLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$0:F

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$2:Lkotlinx/collections/immutable/ImmutableList;

    .line 7
    .line 8
    iput p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$3:F

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    move-object v4, v2

    .line 27
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    :goto_0
    or-int/2addr v3, v4

    .line 39
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 40
    .line 41
    const/16 v5, 0x12

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    move v4, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v4, 0x0

    .line 49
    :goto_1
    and-int/2addr v3, v6

    .line 50
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_7

    .line 57
    .line 58
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->getMaxWidth-D9Ej5fM()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v3, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$0:F

    .line 65
    .line 66
    add-float/2addr v1, v3

    .line 67
    const/high16 v4, 0x42400000    # 48.0f

    .line 68
    .line 69
    add-float v5, v4, v3

    .line 70
    .line 71
    div-float/2addr v1, v5

    .line 72
    float-to-int v1, v1

    .line 73
    if-ge v1, v6, :cond_3

    .line 74
    .line 75
    move v1, v6

    .line 76
    :cond_3
    iget-object v5, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$2:Lkotlinx/collections/immutable/ImmutableList;

    .line 77
    .line 78
    move-object v7, v5

    .line 79
    check-cast v7, Lkotlin/collections/AbstractCollection;

    .line 80
    .line 81
    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    int-to-float v7, v7

    .line 86
    int-to-float v1, v1

    .line 87
    div-float/2addr v7, v1

    .line 88
    float-to-double v7, v7

    .line 89
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    double-to-float v1, v7

    .line 94
    float-to-int v1, v1

    .line 95
    add-int/lit8 v7, v1, -0x1

    .line 96
    .line 97
    int-to-float v7, v7

    .line 98
    iget v8, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$3:F

    .line 99
    .line 100
    mul-float/2addr v7, v8

    .line 101
    int-to-float v1, v1

    .line 102
    mul-float/2addr v1, v4

    .line 103
    new-instance v9, Landroidx/compose/ui/unit/Dp;

    .line 104
    .line 105
    invoke-direct {v9, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroidx/compose/ui/unit/Dp;

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    invoke-direct {v7, v10}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v7}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-gez v10, :cond_4

    .line 119
    .line 120
    move-object v9, v7

    .line 121
    :cond_4
    iget v7, v9, Landroidx/compose/ui/unit/Dp;->value:F

    .line 122
    .line 123
    add-float/2addr v1, v7

    .line 124
    new-instance v7, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 125
    .line 126
    invoke-direct {v7, v4}, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;-><init>(F)V

    .line 127
    .line 128
    .line 129
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 130
    .line 131
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v9, 0x7

    .line 134
    invoke-direct {v4, v9}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v11, v8, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 138
    .line 139
    .line 140
    new-instance v12, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 141
    .line 142
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {v4, v9}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v12, v3, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 148
    .line 149
    .line 150
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 151
    .line 152
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    iget-object v3, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    or-int/2addr v1, v4

    .line 167
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-nez v1, :cond_5

    .line 172
    .line 173
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 174
    .line 175
    if-ne v4, v1, :cond_6

    .line 176
    .line 177
    :cond_5
    new-instance v4, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/4 v1, 0x3

    .line 180
    invoke-direct {v4, v1, v5, v3}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    move-object/from16 v16, v4

    .line 187
    .line 188
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 189
    .line 190
    const/high16 v18, 0x6000000

    .line 191
    .line 192
    const/16 v19, 0x298

    .line 193
    .line 194
    iget-object v9, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v13, 0x0

    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    move-object/from16 v17, v2

    .line 201
    .line 202
    invoke-static/range {v7 .. v19}, Landroidx/work/Data$Companion;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    move-object/from16 v17, v2

    .line 207
    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 209
    .line 210
    .line 211
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 212
    .line 213
    return-object v0
.end method
