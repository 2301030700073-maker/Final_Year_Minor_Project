.class public final Landroidx/compose/material3/SegmentedButtonDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BorderWidth:F

.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

.field public static final IconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 7
    .line 8
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->OutlineWidth$1:F

    .line 9
    .line 10
    sput v0, Landroidx/compose/material3/SegmentedButtonDefaults;->BorderWidth:F

    .line 11
    .line 12
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->IconSize:F

    .line 13
    .line 14
    sput v0, Landroidx/compose/material3/SegmentedButtonDefaults;->IconSize:F

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/material3/SegmentedButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final ActiveIcon(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x4be11234

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    and-int/lit8 v2, v0, 0x1

    .line 22
    .line 23
    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    sget-object v1, Landroidx/compose/material3/internal/Icons$Filled;->_check:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_1
    new-instance v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    const/16 v17, 0xe0

    .line 40
    .line 41
    const-string v8, "Filled.Check"

    .line 42
    .line 43
    const/high16 v9, 0x41c00000    # 24.0f

    .line 44
    .line 45
    const/high16 v10, 0x41c00000    # 24.0f

    .line 46
    .line 47
    const/high16 v11, 0x41c00000    # 24.0f

    .line 48
    .line 49
    const/high16 v12, 0x41c00000    # 24.0f

    .line 50
    .line 51
    const-wide/16 v13, 0x0

    .line 52
    .line 53
    const/4 v15, 0x0

    .line 54
    invoke-direct/range {v7 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 55
    .line 56
    .line 57
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 58
    .line 59
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    .line 60
    .line 61
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 62
    .line 63
    invoke-direct {v9, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 64
    .line 65
    .line 66
    new-instance v8, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v1, 0x20

    .line 69
    .line 70
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 74
    .line 75
    const/high16 v2, 0x41100000    # 9.0f

    .line 76
    .line 77
    const v3, 0x41815c29    # 16.17f

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 87
    .line 88
    const v3, 0x409a8f5c    # 4.83f

    .line 89
    .line 90
    .line 91
    const/high16 v4, 0x41400000    # 12.0f

    .line 92
    .line 93
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 100
    .line 101
    const v3, -0x404a3d71    # -1.42f

    .line 102
    .line 103
    .line 104
    const v4, 0x3fb47ae1    # 1.41f

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 114
    .line 115
    const/high16 v3, 0x41980000    # 19.0f

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 124
    .line 125
    const/high16 v2, 0x41a80000    # 21.0f

    .line 126
    .line 127
    const/high16 v3, 0x40e00000    # 7.0f

    .line 128
    .line 129
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 136
    .line 137
    const v2, -0x404b851f    # -1.41f

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    sget-object v1, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 147
    .line 148
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    const/high16 v10, 0x3f800000    # 1.0f

    .line 152
    .line 153
    const/high16 v11, 0x3f800000    # 1.0f

    .line 154
    .line 155
    const/high16 v12, 0x3f800000    # 1.0f

    .line 156
    .line 157
    const/4 v13, 0x2

    .line 158
    const/high16 v14, 0x3f800000    # 1.0f

    .line 159
    .line 160
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sput-object v1, Landroidx/compose/material3/internal/Icons$Filled;->_check:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 168
    .line 169
    :goto_1
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 170
    .line 171
    sget v3, Landroidx/compose/material3/SegmentedButtonDefaults;->IconSize:F

    .line 172
    .line 173
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const/16 v7, 0x30

    .line 178
    .line 179
    const/16 v8, 0x8

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    const-wide/16 v4, 0x0

    .line 183
    .line 184
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    new-instance v2, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    const/16 v3, 0xe

    .line 200
    .line 201
    move-object/from16 v4, p0

    .line 202
    .line 203
    invoke-direct {v2, v0, v3, v4}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 207
    .line 208
    :cond_3
    return-void
.end method

.method public final Icon(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v6, p3

    .line 2
    .line 3
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x2730152a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move/from16 v12, p1

    .line 12
    .line 13
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    or-int v0, p4, v0

    .line 24
    .line 25
    or-int/lit16 v0, v0, 0x1b0

    .line 26
    .line 27
    and-int/lit16 v2, v0, 0x93

    .line 28
    .line 29
    const/16 v3, 0x92

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v2, v8

    .line 37
    :goto_1
    and-int/lit8 v3, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {v6, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    sget-object v9, Landroidx/compose/material3/ComposableSingletons$SegmentedButtonKt;->lambda$1863131183:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 46
    .line 47
    const v2, -0x546b3e47

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 54
    .line 55
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 56
    .line 57
    invoke-static {v2, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 69
    .line 70
    .line 71
    move-result-wide v10

    .line 72
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 73
    .line 74
    invoke-static {v2, v6}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v5, Landroidx/compose/animation/EnterTransitionImpl;

    .line 79
    .line 80
    new-instance v13, Landroidx/compose/animation/TransitionData;

    .line 81
    .line 82
    new-instance v7, Landroidx/compose/animation/Scale;

    .line 83
    .line 84
    invoke-direct {v7, v4, v10, v11, v2}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 85
    .line 86
    .line 87
    const/16 v18, 0x0

    .line 88
    .line 89
    const/16 v19, 0x77

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v15, 0x0

    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    move-object/from16 v17, v7

    .line 96
    .line 97
    invoke-direct/range {v13 .. v19}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v5, v13}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v1, Landroidx/compose/material3/SegmentedButtonDefaults$Icon$1;

    .line 108
    .line 109
    invoke-direct {v1, v8}, Landroidx/compose/material3/SegmentedButtonDefaults$Icon$1;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const v4, 0x7ac2e083

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v1, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/high16 v1, 0x30000

    .line 120
    .line 121
    and-int/lit8 v0, v0, 0xe

    .line 122
    .line 123
    or-int v7, v0, v1

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    move v0, v12

    .line 128
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 132
    .line 133
    .line 134
    move-object v11, v9

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    move-object/from16 v11, p2

    .line 140
    .line 141
    :goto_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    new-instance v7, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 148
    .line 149
    const/4 v9, 0x2

    .line 150
    move-object/from16 v10, p0

    .line 151
    .line 152
    move/from16 v12, p1

    .line 153
    .line 154
    move/from16 v8, p4

    .line 155
    .line 156
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 157
    .line 158
    .line 159
    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 160
    .line 161
    :cond_3
    return-void
.end method
