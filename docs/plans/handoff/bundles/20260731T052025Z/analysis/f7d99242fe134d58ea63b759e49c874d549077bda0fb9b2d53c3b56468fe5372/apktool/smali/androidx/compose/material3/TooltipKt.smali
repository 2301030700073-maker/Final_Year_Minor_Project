.class public abstract Landroidx/compose/material3/TooltipKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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

.method public static final PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    move-object/from16 v0, p9

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, -0x147d586e

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v10, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    and-int/lit8 v2, v10, 0x8

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    :goto_1
    or-int/2addr v2, v10

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v2, v10

    .line 42
    :goto_2
    or-int/lit16 v3, v2, 0xdb0

    .line 43
    .line 44
    and-int/lit16 v4, v10, 0x6000

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    or-int/lit16 v3, v2, 0x2db0

    .line 49
    .line 50
    :cond_3
    const/high16 v2, 0x30000

    .line 51
    .line 52
    and-int/2addr v2, v10

    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    const/high16 v2, 0x10000

    .line 56
    .line 57
    or-int/2addr v3, v2

    .line 58
    :cond_4
    const/high16 v2, 0x180000

    .line 59
    .line 60
    and-int/2addr v2, v10

    .line 61
    if-nez v2, :cond_5

    .line 62
    .line 63
    const/high16 v2, 0x80000

    .line 64
    .line 65
    or-int/2addr v3, v2

    .line 66
    :cond_5
    const/high16 v2, 0x6c00000

    .line 67
    .line 68
    or-int/2addr v2, v3

    .line 69
    const/high16 v3, 0x30000000

    .line 70
    .line 71
    and-int/2addr v3, v10

    .line 72
    if-nez v3, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const/high16 v3, 0x20000000

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    const/high16 v3, 0x10000000

    .line 84
    .line 85
    :goto_3
    or-int/2addr v2, v3

    .line 86
    :cond_7
    const v3, 0x12492493

    .line 87
    .line 88
    .line 89
    and-int/2addr v3, v2

    .line 90
    const v4, 0x12492492

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    if-eq v3, v4, :cond_8

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    goto :goto_4

    .line 98
    :cond_8
    move v3, v5

    .line 99
    :goto_4
    and-int/lit8 v4, v2, 0x1

    .line 100
    .line 101
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_b

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 108
    .line 109
    .line 110
    and-int/lit8 v3, v10, 0x1

    .line 111
    .line 112
    const v4, -0x3fe001

    .line 113
    .line 114
    .line 115
    if-eqz v3, :cond_a

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_9

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    and-int/2addr v2, v4

    .line 128
    move-object/from16 v11, p1

    .line 129
    .line 130
    move/from16 v3, p2

    .line 131
    .line 132
    move-object/from16 v12, p3

    .line 133
    .line 134
    move-wide/from16 v7, p4

    .line 135
    .line 136
    move-wide/from16 v13, p6

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_a
    :goto_5
    sget v3, Landroidx/compose/material3/TooltipDefaults;->plainTooltipMaxWidth:F

    .line 140
    .line 141
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$6:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 142
    .line 143
    invoke-static {v6, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    sget-object v7, Landroidx/compose/material3/tokens/ListTokens;->SupportingTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 148
    .line 149
    invoke-static {v7, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v7

    .line 153
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$8:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 154
    .line 155
    invoke-static {v11, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v11

    .line 159
    and-int/2addr v2, v4

    .line 160
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 161
    .line 162
    move-wide v13, v11

    .line 163
    move-object v11, v4

    .line 164
    move-object v12, v6

    .line 165
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 166
    .line 167
    .line 168
    const v4, -0x66828db7

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;

    .line 178
    .line 179
    invoke-direct {v4, v3, v7, v8, v9}, Landroidx/compose/material3/TooltipKt$PlainTooltip$4;-><init>(FJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 180
    .line 181
    .line 182
    const v5, -0x5dd15193

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v20

    .line 189
    shr-int/lit8 v2, v2, 0x9

    .line 190
    .line 191
    const v4, 0xe000

    .line 192
    .line 193
    .line 194
    and-int/2addr v4, v2

    .line 195
    const/high16 v5, 0xc00000

    .line 196
    .line 197
    or-int/2addr v4, v5

    .line 198
    const/high16 v5, 0x70000

    .line 199
    .line 200
    and-int/2addr v2, v5

    .line 201
    or-int v22, v4, v2

    .line 202
    .line 203
    const/16 v23, 0x48

    .line 204
    .line 205
    const-wide/16 v15, 0x0

    .line 206
    .line 207
    const/16 v17, 0x0

    .line 208
    .line 209
    const/16 v18, 0x0

    .line 210
    .line 211
    const/16 v19, 0x0

    .line 212
    .line 213
    move-object/from16 v21, v0

    .line 214
    .line 215
    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 216
    .line 217
    .line 218
    move-wide v5, v7

    .line 219
    move-object v2, v11

    .line 220
    move-object v4, v12

    .line 221
    move-wide v7, v13

    .line 222
    goto :goto_7

    .line 223
    :cond_b
    move-object/from16 v21, v0

    .line 224
    .line 225
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    move-object/from16 v2, p1

    .line 229
    .line 230
    move/from16 v3, p2

    .line 231
    .line 232
    move-object/from16 v4, p3

    .line 233
    .line 234
    move-wide/from16 v5, p4

    .line 235
    .line 236
    move-wide/from16 v7, p6

    .line 237
    .line 238
    :goto_7
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    if-eqz v11, :cond_c

    .line 243
    .line 244
    new-instance v0, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 247
    .line 248
    .line 249
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 250
    .line 251
    :cond_c
    return-void
.end method

.method public static final TooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x11825480

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v7, 0x6

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int/2addr v0, v7

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, v7

    .line 32
    :goto_1
    and-int/lit8 v3, v7, 0x30

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/16 v3, 0x20

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v3, 0x10

    .line 46
    .line 47
    :goto_2
    or-int/2addr v0, v3

    .line 48
    :cond_3
    and-int/lit16 v3, v7, 0x180

    .line 49
    .line 50
    if-nez v3, :cond_6

    .line 51
    .line 52
    and-int/lit16 v3, v7, 0x200

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_3
    if-eqz v3, :cond_5

    .line 66
    .line 67
    const/16 v3, 0x100

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/16 v3, 0x80

    .line 71
    .line 72
    :goto_4
    or-int/2addr v0, v3

    .line 73
    :cond_6
    const v3, 0xdb6c00

    .line 74
    .line 75
    .line 76
    or-int/2addr v0, v3

    .line 77
    const/high16 v3, 0x6000000

    .line 78
    .line 79
    and-int/2addr v3, v7

    .line 80
    if-nez v3, :cond_8

    .line 81
    .line 82
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_7

    .line 87
    .line 88
    const/high16 v3, 0x4000000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_7
    const/high16 v3, 0x2000000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v3

    .line 94
    :cond_8
    const v3, 0x2492493

    .line 95
    .line 96
    .line 97
    and-int/2addr v3, v0

    .line 98
    const v5, 0x2492492

    .line 99
    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x1

    .line 103
    if-eq v3, v5, :cond_9

    .line 104
    .line 105
    move v3, v9

    .line 106
    goto :goto_6

    .line 107
    :cond_9
    move v3, v8

    .line 108
    :goto_6
    and-int/lit8 v5, v0, 0x1

    .line 109
    .line 110
    invoke-virtual {v4, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_c

    .line 115
    .line 116
    iget-object v3, p2, Landroidx/compose/material3/TooltipStateImpl;->transition:Landroidx/compose/animation/core/MutableTransitionState;

    .line 117
    .line 118
    const-string v5, "tooltip transition"

    .line 119
    .line 120
    const/16 v10, 0x30

    .line 121
    .line 122
    invoke-static {v3, v5, v4, v10}, Landroidx/compose/animation/core/ArcSplineKt;->rememberTransition(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 131
    .line 132
    if-ne v5, v10, :cond_a

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 143
    .line 144
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    if-ne v11, v10, :cond_b

    .line 149
    .line 150
    new-instance v11, Landroidx/compose/material3/TooltipScopeImpl;

    .line 151
    .line 152
    new-instance v10, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    invoke-direct {v10, v5, v8}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_b
    check-cast v11, Landroidx/compose/material3/TooltipScopeImpl;

    .line 164
    .line 165
    new-instance v10, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 166
    .line 167
    invoke-direct {v10, v1, v5, v6}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const v1, -0x16cb6ae

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v10, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-instance v5, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 178
    .line 179
    invoke-direct {v5, v8, p1, v3, v11}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    const v3, -0x1f6f824a

    .line 183
    .line 184
    .line 185
    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    and-int/lit8 v5, v0, 0xe

    .line 190
    .line 191
    const v8, 0x6000030

    .line 192
    .line 193
    .line 194
    or-int/2addr v5, v8

    .line 195
    and-int/lit16 v8, v0, 0x380

    .line 196
    .line 197
    or-int/2addr v5, v8

    .line 198
    and-int/lit16 v8, v0, 0x1c00

    .line 199
    .line 200
    or-int/2addr v5, v8

    .line 201
    const v8, 0xe000

    .line 202
    .line 203
    .line 204
    and-int/2addr v8, v0

    .line 205
    or-int/2addr v5, v8

    .line 206
    const/high16 v8, 0x70000

    .line 207
    .line 208
    and-int/2addr v8, v0

    .line 209
    or-int/2addr v5, v8

    .line 210
    const/high16 v8, 0x380000

    .line 211
    .line 212
    and-int/2addr v8, v0

    .line 213
    or-int/2addr v5, v8

    .line 214
    const/high16 v8, 0x1c00000

    .line 215
    .line 216
    and-int/2addr v0, v8

    .line 217
    or-int/2addr v5, v0

    .line 218
    move-object v0, v3

    .line 219
    move-object v3, v1

    .line 220
    move-object v1, v0

    .line 221
    move-object v0, p0

    .line 222
    move-object v2, p2

    .line 223
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/Icons$Filled;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 227
    .line 228
    move v5, v9

    .line 229
    goto :goto_7

    .line 230
    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 231
    .line 232
    .line 233
    move-object v0, p3

    .line 234
    move/from16 v5, p4

    .line 235
    .line 236
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    if-eqz v8, :cond_d

    .line 241
    .line 242
    move-object v4, v0

    .line 243
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 244
    .line 245
    move-object v1, p0

    .line 246
    move-object v2, p1

    .line 247
    move-object v3, p2

    .line 248
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 249
    .line 250
    .line 251
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 252
    .line 253
    :cond_d
    return-void
.end method
