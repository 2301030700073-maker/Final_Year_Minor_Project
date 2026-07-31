.class public abstract Landroidx/compose/material3/TooltipKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 2
    .line 3
    const/high16 v1, 0x41000000    # 8.0f

    .line 4
    .line 5
    const/high16 v2, 0x40800000    # 4.0f

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    return-void
.end method

.method public static final PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    move-object/from16 v0, p9

    .line 6
    .line 7
    move/from16 v2, p10

    .line 8
    .line 9
    const v3, -0x147d586e

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v3, v2, 0x6

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    and-int/lit8 v3, v2, 0x8

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    :goto_0
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_1
    or-int/2addr v3, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v3, v2

    .line 40
    :goto_2
    and-int/lit8 v4, v2, 0x30

    .line 41
    .line 42
    move-object/from16 v10, p1

    .line 43
    .line 44
    if-nez v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/16 v4, 0x10

    .line 56
    .line 57
    :goto_3
    or-int/2addr v3, v4

    .line 58
    :cond_4
    or-int/lit16 v4, v3, 0xd80

    .line 59
    .line 60
    and-int/lit16 v5, v2, 0x6000

    .line 61
    .line 62
    if-nez v5, :cond_5

    .line 63
    .line 64
    or-int/lit16 v4, v3, 0x2d80

    .line 65
    .line 66
    :cond_5
    const/high16 v3, 0x30000

    .line 67
    .line 68
    and-int/2addr v3, v2

    .line 69
    if-nez v3, :cond_6

    .line 70
    .line 71
    const/high16 v3, 0x10000

    .line 72
    .line 73
    or-int/2addr v4, v3

    .line 74
    :cond_6
    const/high16 v3, 0x180000

    .line 75
    .line 76
    and-int/2addr v3, v2

    .line 77
    move-wide/from16 v7, p6

    .line 78
    .line 79
    if-nez v3, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    const/high16 v3, 0x100000

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/high16 v3, 0x80000

    .line 91
    .line 92
    :goto_4
    or-int/2addr v4, v3

    .line 93
    :cond_8
    const/high16 v3, 0x6c00000

    .line 94
    .line 95
    or-int/2addr v3, v4

    .line 96
    const/high16 v4, 0x30000000

    .line 97
    .line 98
    and-int/2addr v4, v2

    .line 99
    if-nez v4, :cond_a

    .line 100
    .line 101
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_9

    .line 106
    .line 107
    const/high16 v4, 0x20000000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_9
    const/high16 v4, 0x10000000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v3, v4

    .line 113
    :cond_a
    const v4, 0x12492493

    .line 114
    .line 115
    .line 116
    and-int/2addr v4, v3

    .line 117
    const v5, 0x12492492

    .line 118
    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    if-eq v4, v5, :cond_b

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_6

    .line 125
    :cond_b
    move v4, v6

    .line 126
    :goto_6
    and-int/lit8 v5, v3, 0x1

    .line 127
    .line 128
    invoke-virtual {v0, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_e

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 135
    .line 136
    .line 137
    and-int/lit8 v4, v2, 0x1

    .line 138
    .line 139
    const v5, -0x7e001

    .line 140
    .line 141
    .line 142
    if-eqz v4, :cond_d

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_c

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    and-int/2addr v3, v5

    .line 155
    move/from16 v4, p2

    .line 156
    .line 157
    move-object/from16 v11, p3

    .line 158
    .line 159
    move-wide/from16 v12, p4

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_d
    :goto_7
    sget v4, Landroidx/compose/material3/TooltipDefaults;->plainTooltipMaxWidth:F

    .line 163
    .line 164
    sget-object v11, Landroidx/compose/material3/tokens/PlainTooltipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 165
    .line 166
    invoke-static {v11, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/Shape;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    sget-object v12, Landroidx/compose/material3/tokens/PlainTooltipTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 171
    .line 172
    invoke-static {v12, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v12

    .line 176
    and-int/2addr v3, v5

    .line 177
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 178
    .line 179
    .line 180
    const v5, -0x66828db7

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    new-instance v5, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;

    .line 190
    .line 191
    invoke-direct {v5, v4, v12, v13, v9}, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;-><init>(FJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 192
    .line 193
    .line 194
    const v6, -0x5dd15193

    .line 195
    .line 196
    .line 197
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v18

    .line 201
    shr-int/lit8 v5, v3, 0xc

    .line 202
    .line 203
    and-int/lit16 v5, v5, 0x380

    .line 204
    .line 205
    const/high16 v6, 0xc00000

    .line 206
    .line 207
    or-int/2addr v5, v6

    .line 208
    shr-int/lit8 v3, v3, 0x9

    .line 209
    .line 210
    const v6, 0xe000

    .line 211
    .line 212
    .line 213
    and-int/2addr v6, v3

    .line 214
    or-int/2addr v5, v6

    .line 215
    const/high16 v6, 0x70000

    .line 216
    .line 217
    and-int/2addr v3, v6

    .line 218
    or-int v20, v5, v3

    .line 219
    .line 220
    const/16 v21, 0x48

    .line 221
    .line 222
    const-wide/16 v14, 0x0

    .line 223
    .line 224
    const/16 v16, 0x0

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    move-object/from16 v19, v0

    .line 229
    .line 230
    move-wide v5, v12

    .line 231
    move-wide v12, v7

    .line 232
    invoke-static/range {v10 .. v21}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 233
    .line 234
    .line 235
    move v3, v4

    .line 236
    move-object v4, v11

    .line 237
    goto :goto_9

    .line 238
    :cond_e
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 239
    .line 240
    .line 241
    move/from16 v3, p2

    .line 242
    .line 243
    move-object/from16 v4, p3

    .line 244
    .line 245
    move-wide/from16 v5, p4

    .line 246
    .line 247
    :goto_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    if-eqz v11, :cond_f

    .line 252
    .line 253
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;

    .line 254
    .line 255
    move-wide/from16 v7, p6

    .line 256
    .line 257
    move v10, v2

    .line 258
    move-object/from16 v2, p1

    .line 259
    .line 260
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 261
    .line 262
    .line 263
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 264
    .line 265
    :cond_f
    return-void
.end method

.method public static final TooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 12

    .line 1
    move-object/from16 v6, p4

    .line 2
    .line 3
    move-object/from16 v4, p5

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    const v0, -0x11825480

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v7, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v7

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v7

    .line 29
    :goto_1
    and-int/lit8 v1, v7, 0x30

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v1, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v0, v1

    .line 45
    :cond_3
    and-int/lit16 v1, v7, 0x180

    .line 46
    .line 47
    if-nez v1, :cond_6

    .line 48
    .line 49
    and-int/lit16 v1, v7, 0x200

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_3
    if-eqz v1, :cond_5

    .line 63
    .line 64
    const/16 v1, 0x100

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    const/16 v1, 0x80

    .line 68
    .line 69
    :goto_4
    or-int/2addr v0, v1

    .line 70
    :cond_6
    and-int/lit16 v1, v7, 0xc00

    .line 71
    .line 72
    if-nez v1, :cond_8

    .line 73
    .line 74
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    const/16 v1, 0x800

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    const/16 v1, 0x400

    .line 86
    .line 87
    :goto_5
    or-int/2addr v0, v1

    .line 88
    :cond_8
    const v1, 0xdb6000

    .line 89
    .line 90
    .line 91
    or-int/2addr v0, v1

    .line 92
    const/high16 v1, 0x6000000

    .line 93
    .line 94
    and-int/2addr v1, v7

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    const/high16 v1, 0x4000000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_9
    const/high16 v1, 0x2000000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v1

    .line 109
    :cond_a
    const v1, 0x2492493

    .line 110
    .line 111
    .line 112
    and-int/2addr v1, v0

    .line 113
    const v3, 0x2492492

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v8, 0x1

    .line 118
    if-eq v1, v3, :cond_b

    .line 119
    .line 120
    move v1, v8

    .line 121
    goto :goto_7

    .line 122
    :cond_b
    move v1, v5

    .line 123
    :goto_7
    and-int/lit8 v3, v0, 0x1

    .line 124
    .line 125
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_e

    .line 130
    .line 131
    iget-object v1, p2, Landroidx/compose/material3/TooltipStateImpl;->transition:Landroidx/compose/animation/core/MutableTransitionState;

    .line 132
    .line 133
    const-string v3, "tooltip transition"

    .line 134
    .line 135
    const/16 v9, 0x30

    .line 136
    .line 137
    invoke-static {v1, v3, v4, v9}, Landroidx/compose/animation/core/ArcSplineKt;->rememberTransition(Lorg/wikipedia/settings/BasePreferenceLoader;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 146
    .line 147
    if-ne v3, v9, :cond_c

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_c
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 158
    .line 159
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    if-ne v10, v9, :cond_d

    .line 164
    .line 165
    new-instance v10, Landroidx/compose/material3/TooltipScopeImpl;

    .line 166
    .line 167
    new-instance v9, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 168
    .line 169
    const/16 v11, 0xa

    .line 170
    .line 171
    invoke-direct {v9, v3, v11}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_d
    check-cast v10, Landroidx/compose/material3/TooltipScopeImpl;

    .line 181
    .line 182
    new-instance v9, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 183
    .line 184
    const/4 v11, 0x5

    .line 185
    invoke-direct {v9, v11, v3, v6}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const v3, -0x16cb6ae

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v9, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    new-instance v9, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 196
    .line 197
    invoke-direct {v9, v1, p1, v10, v5}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    const v1, -0x1f6f824a

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v9, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    and-int/lit8 v5, v0, 0xe

    .line 208
    .line 209
    const v9, 0x6000030

    .line 210
    .line 211
    .line 212
    or-int/2addr v5, v9

    .line 213
    and-int/lit16 v9, v0, 0x380

    .line 214
    .line 215
    or-int/2addr v5, v9

    .line 216
    and-int/lit16 v9, v0, 0x1c00

    .line 217
    .line 218
    or-int/2addr v5, v9

    .line 219
    const v9, 0xe000

    .line 220
    .line 221
    .line 222
    and-int/2addr v9, v0

    .line 223
    or-int/2addr v5, v9

    .line 224
    const/high16 v9, 0x70000

    .line 225
    .line 226
    and-int/2addr v9, v0

    .line 227
    or-int/2addr v5, v9

    .line 228
    const/high16 v9, 0x380000

    .line 229
    .line 230
    and-int/2addr v9, v0

    .line 231
    or-int/2addr v5, v9

    .line 232
    const/high16 v9, 0x1c00000

    .line 233
    .line 234
    and-int/2addr v0, v9

    .line 235
    or-int/2addr v5, v0

    .line 236
    move-object v0, p0

    .line 237
    move-object v2, p2

    .line 238
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 239
    .line 240
    .line 241
    move v4, v8

    .line 242
    goto :goto_8

    .line 243
    :cond_e
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 244
    .line 245
    .line 246
    move v4, p3

    .line 247
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    if-eqz v8, :cond_f

    .line 252
    .line 253
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 254
    .line 255
    move-object v1, p0

    .line 256
    move-object v2, p1

    .line 257
    move-object v3, p2

    .line 258
    move-object v5, v6

    .line 259
    move v6, v7

    .line 260
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 261
    .line 262
    .line 263
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 264
    .line 265
    :cond_f
    return-void
.end method
