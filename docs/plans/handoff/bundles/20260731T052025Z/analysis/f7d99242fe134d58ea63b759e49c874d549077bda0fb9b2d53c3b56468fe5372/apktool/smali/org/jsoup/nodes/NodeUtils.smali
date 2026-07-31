.class public abstract Lorg/jsoup/nodes/NodeUtils;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AnimatedExpandIcon-xqIIw2o(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    .line 1
    move-object v3, p4

    .line 2
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v0, -0x33599e5b    # -8.7231784E7f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    :goto_0
    or-int v0, p5, v0

    .line 20
    .line 21
    and-int/lit8 v1, p6, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    or-int/lit8 v0, v0, 0x30

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v2

    .line 40
    :goto_2
    and-int/lit8 v2, p6, 0x4

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    or-int/lit16 v0, v0, 0x180

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_3
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    const/16 v4, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v4, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v4

    .line 59
    :goto_4
    and-int/lit8 v4, p6, 0x8

    .line 60
    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    or-int/lit16 v0, v0, 0xc00

    .line 64
    .line 65
    :goto_5
    move v6, v0

    .line 66
    goto :goto_7

    .line 67
    :cond_5
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    const/16 v5, 0x800

    .line 74
    .line 75
    goto :goto_6

    .line 76
    :cond_6
    const/16 v5, 0x400

    .line 77
    .line 78
    :goto_6
    or-int/2addr v0, v5

    .line 79
    goto :goto_5

    .line 80
    :goto_7
    and-int/lit16 v0, v6, 0x493

    .line 81
    .line 82
    const/16 v5, 0x492

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    if-eq v0, v5, :cond_7

    .line 86
    .line 87
    move v0, v7

    .line 88
    goto :goto_8

    .line 89
    :cond_7
    const/4 v0, 0x0

    .line 90
    :goto_8
    and-int/lit8 v5, v6, 0x1

    .line 91
    .line 92
    invoke-virtual {v3, v5, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_d

    .line 97
    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 101
    .line 102
    :cond_8
    if-eqz v2, :cond_9

    .line 103
    .line 104
    move p2, v7

    .line 105
    :cond_9
    const/4 v0, 0x0

    .line 106
    if-eqz v4, :cond_a

    .line 107
    .line 108
    move-object p3, v0

    .line 109
    :cond_a
    const/4 v1, 0x0

    .line 110
    if-eqz p0, :cond_b

    .line 111
    .line 112
    const/high16 v2, 0x43340000    # 180.0f

    .line 113
    .line 114
    goto :goto_9

    .line 115
    :cond_b
    move v2, v1

    .line 116
    :goto_9
    if-eqz p2, :cond_c

    .line 117
    .line 118
    const/4 v4, 0x7

    .line 119
    invoke-static {v1, v1, v0, v4}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_a
    move-object v1, v0

    .line 124
    goto :goto_b

    .line 125
    :cond_c
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_a

    .line 130
    :goto_b
    const/16 v4, 0xc00

    .line 131
    .line 132
    const/16 v5, 0x14

    .line 133
    .line 134
    move v0, v2

    .line 135
    const-string v2, "rotationAngle"

    .line 136
    .line 137
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v1, v0

    .line 142
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->KeyboardArrowDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 143
    .line 144
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {p1, v1}, Landroidx/compose/ui/draw/ClipKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    and-int/lit16 v2, v6, 0x1c00

    .line 159
    .line 160
    or-int/lit16 v4, v2, 0x180

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    move-object v2, p3

    .line 164
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 165
    .line 166
    .line 167
    move-object v8, v2

    .line 168
    :goto_c
    move-object v6, p1

    .line 169
    move v7, p2

    .line 170
    goto :goto_d

    .line 171
    :cond_d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    move-object v8, p3

    .line 175
    goto :goto_c

    .line 176
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    move v5, p0

    .line 185
    move/from16 v9, p5

    .line 186
    .line 187
    move/from16 v10, p6

    .line 188
    .line 189
    invoke-direct/range {v4 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;-><init>(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;II)V

    .line 190
    .line 191
    .line 192
    iput-object v4, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    :cond_e
    return-void
.end method

.method public static final Avatar-OadGlvw(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p7

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v10, p6

    .line 11
    .line 12
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v4, -0x2620a559

    .line 15
    .line 16
    .line 17
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v4, v0, 0x6

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    and-int/lit8 v4, v0, 0x8

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    :goto_0
    if-eqz v4, :cond_1

    .line 39
    .line 40
    move v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v4, 0x2

    .line 43
    :goto_1
    or-int/2addr v4, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v4, v0

    .line 46
    :goto_2
    and-int/lit8 v6, v0, 0x30

    .line 47
    .line 48
    const/16 v7, 0x20

    .line 49
    .line 50
    if-nez v6, :cond_4

    .line 51
    .line 52
    invoke-virtual {v10, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    move v6, v7

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/16 v6, 0x10

    .line 61
    .line 62
    :goto_3
    or-int/2addr v4, v6

    .line 63
    :cond_4
    and-int/lit16 v6, v0, 0x180

    .line 64
    .line 65
    if-nez v6, :cond_6

    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    const/16 v6, 0x100

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    const/16 v6, 0x80

    .line 81
    .line 82
    :goto_4
    or-int/2addr v4, v6

    .line 83
    :cond_6
    or-int/lit16 v6, v4, 0xc00

    .line 84
    .line 85
    and-int/lit8 v8, p8, 0x10

    .line 86
    .line 87
    if-eqz v8, :cond_8

    .line 88
    .line 89
    or-int/lit16 v6, v4, 0x6c00

    .line 90
    .line 91
    :cond_7
    move-object/from16 v4, p5

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_8
    and-int/lit16 v4, v0, 0x6000

    .line 95
    .line 96
    if-nez v4, :cond_7

    .line 97
    .line 98
    move-object/from16 v4, p5

    .line 99
    .line 100
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_9

    .line 105
    .line 106
    const/16 v9, 0x4000

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_9
    const/16 v9, 0x2000

    .line 110
    .line 111
    :goto_5
    or-int/2addr v6, v9

    .line 112
    :goto_6
    and-int/lit8 v9, p8, 0x20

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const/high16 v11, 0x30000

    .line 116
    .line 117
    if-eqz v9, :cond_a

    .line 118
    .line 119
    or-int/2addr v6, v11

    .line 120
    goto :goto_8

    .line 121
    :cond_a
    and-int v9, v0, v11

    .line 122
    .line 123
    if-nez v9, :cond_c

    .line 124
    .line 125
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_b

    .line 130
    .line 131
    const/high16 v9, 0x20000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    const/high16 v9, 0x10000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v6, v9

    .line 137
    :cond_c
    :goto_8
    const v9, 0x12493

    .line 138
    .line 139
    .line 140
    and-int/2addr v9, v6

    .line 141
    const v13, 0x12492

    .line 142
    .line 143
    .line 144
    if-eq v9, v13, :cond_d

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    goto :goto_9

    .line 148
    :cond_d
    move v9, v12

    .line 149
    :goto_9
    and-int/lit8 v13, v6, 0x1

    .line 150
    .line 151
    invoke-virtual {v10, v13, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_16

    .line 156
    .line 157
    if-eqz v8, :cond_e

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    :cond_e
    move-object v8, v4

    .line 161
    shr-int/lit8 v4, v6, 0x3

    .line 162
    .line 163
    and-int/lit8 v4, v4, 0xe

    .line 164
    .line 165
    const v9, 0x3e4ccccd    # 0.2f

    .line 166
    .line 167
    .line 168
    invoke-static {v9, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v14

    .line 172
    sget-object v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 179
    .line 180
    move/from16 v16, v11

    .line 181
    .line 182
    iget-wide v11, v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 183
    .line 184
    invoke-static {v14, v15, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v11

    .line 188
    and-int/lit8 v9, v6, 0xe

    .line 189
    .line 190
    if-eq v9, v5, :cond_10

    .line 191
    .line 192
    and-int/lit8 v5, v6, 0x8

    .line 193
    .line 194
    if-eqz v5, :cond_f

    .line 195
    .line 196
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_f

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_f
    const/4 v5, 0x0

    .line 204
    goto :goto_b

    .line 205
    :cond_10
    :goto_a
    const/4 v5, 0x1

    .line 206
    :goto_b
    and-int/lit8 v9, v6, 0x70

    .line 207
    .line 208
    if-ne v9, v7, :cond_11

    .line 209
    .line 210
    const/4 v9, 0x1

    .line 211
    goto :goto_c

    .line 212
    :cond_11
    const/4 v9, 0x0

    .line 213
    :goto_c
    or-int/2addr v5, v9

    .line 214
    invoke-virtual {v10, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    or-int/2addr v5, v9

    .line 219
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    if-nez v5, :cond_12

    .line 224
    .line 225
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 226
    .line 227
    if-ne v9, v5, :cond_14

    .line 228
    .line 229
    :cond_12
    instance-of v5, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 230
    .line 231
    if-eqz v5, :cond_13

    .line 232
    .line 233
    goto :goto_d

    .line 234
    :cond_13
    move-wide v11, v2

    .line 235
    :goto_d
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    .line 236
    .line 237
    invoke-direct {v9, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_14
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 244
    .line 245
    iget-wide v11, v9, Landroidx/compose/ui/graphics/Color;->value:J

    .line 246
    .line 247
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 248
    .line 249
    const/4 v13, 0x0

    .line 250
    invoke-static {v5, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    iget-wide v14, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 255
    .line 256
    ushr-long v17, v14, v7

    .line 257
    .line 258
    xor-long v14, v14, v17

    .line 259
    .line 260
    long-to-int v7, v14

    .line 261
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 266
    .line 267
    invoke-static {v10, v14}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 272
    .line 273
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 277
    .line 278
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 279
    .line 280
    .line 281
    iget-boolean v0, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 282
    .line 283
    if-eqz v0, :cond_15

    .line 284
    .line 285
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 286
    .line 287
    .line 288
    goto :goto_e

    .line 289
    :cond_15
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 290
    .line 291
    .line 292
    :goto_e
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 293
    .line 294
    invoke-static {v10, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 298
    .line 299
    invoke-static {v10, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 307
    .line 308
    invoke-static {v10, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 312
    .line 313
    invoke-static {v10, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 314
    .line 315
    .line 316
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 317
    .line 318
    invoke-static {v10, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;

    .line 322
    .line 323
    move-object/from16 v5, p3

    .line 324
    .line 325
    invoke-direct {v0, v1, v2, v3, v5}, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;)V

    .line 326
    .line 327
    .line 328
    const v7, 0x20df7f9

    .line 329
    .line 330
    .line 331
    invoke-static {v7, v0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    or-int v0, v4, v16

    .line 336
    .line 337
    and-int/lit16 v4, v6, 0x380

    .line 338
    .line 339
    or-int/2addr v0, v4

    .line 340
    const v4, 0xe000

    .line 341
    .line 342
    .line 343
    and-int/2addr v4, v6

    .line 344
    or-int/2addr v0, v4

    .line 345
    const/4 v7, 0x0

    .line 346
    move-object v6, v5

    .line 347
    move-wide v4, v11

    .line 348
    move v11, v0

    .line 349
    invoke-static/range {v2 .. v11}, Lkotlin/uuid/UuidKt;->AvatarLayout-1Kfb2uI(JJLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 350
    .line 351
    .line 352
    const v0, -0x6a42862b

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 356
    .line 357
    .line 358
    const/4 v13, 0x0

    .line 359
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 360
    .line 361
    .line 362
    const/4 v0, 0x1

    .line 363
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 364
    .line 365
    .line 366
    move-object v6, v8

    .line 367
    move-object v5, v14

    .line 368
    goto :goto_f

    .line 369
    :cond_16
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 370
    .line 371
    .line 372
    move-object/from16 v5, p4

    .line 373
    .line 374
    move-object v6, v4

    .line 375
    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    if-eqz v9, :cond_17

    .line 380
    .line 381
    new-instance v0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda1;

    .line 382
    .line 383
    move-wide/from16 v2, p1

    .line 384
    .line 385
    move-object/from16 v4, p3

    .line 386
    .line 387
    move/from16 v7, p7

    .line 388
    .line 389
    move/from16 v8, p8

    .line 390
    .line 391
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V

    .line 392
    .line 393
    .line 394
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 395
    .line 396
    :cond_17
    return-void
.end method

.method public static final ClickableSurface-zSi9XkE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p6

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x16c937eb

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, v7, 0x6

    .line 17
    .line 18
    move-object/from16 v8, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int/2addr v1, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v7

    .line 34
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 35
    .line 36
    move-object/from16 v9, p1

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v2, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v1, v2

    .line 52
    :cond_3
    or-int/lit16 v1, v1, 0x180

    .line 53
    .line 54
    and-int/lit16 v2, v7, 0xc00

    .line 55
    .line 56
    move-wide/from16 v12, p3

    .line 57
    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const/16 v2, 0x800

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v2, 0x400

    .line 70
    .line 71
    :goto_3
    or-int/2addr v1, v2

    .line 72
    :cond_5
    and-int/lit16 v2, v7, 0x6000

    .line 73
    .line 74
    if-nez v2, :cond_6

    .line 75
    .line 76
    or-int/lit16 v1, v1, 0x2000

    .line 77
    .line 78
    :cond_6
    const/high16 v2, 0x30000

    .line 79
    .line 80
    and-int/2addr v2, v7

    .line 81
    move-object/from16 v6, p5

    .line 82
    .line 83
    if-nez v2, :cond_8

    .line 84
    .line 85
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    const/high16 v2, 0x20000

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    const/high16 v2, 0x10000

    .line 95
    .line 96
    :goto_4
    or-int/2addr v1, v2

    .line 97
    :cond_8
    const v2, 0x12493

    .line 98
    .line 99
    .line 100
    and-int/2addr v2, v1

    .line 101
    const v3, 0x12492

    .line 102
    .line 103
    .line 104
    if-eq v2, v3, :cond_9

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    goto :goto_5

    .line 108
    :cond_9
    const/4 v2, 0x0

    .line 109
    :goto_5
    and-int/lit8 v3, v1, 0x1

    .line 110
    .line 111
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_c

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 118
    .line 119
    .line 120
    and-int/lit8 v2, v7, 0x1

    .line 121
    .line 122
    const v3, -0xe001

    .line 123
    .line 124
    .line 125
    if-eqz v2, :cond_b

    .line 126
    .line 127
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_a

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    and-int/2addr v1, v3

    .line 138
    move-object/from16 v11, p2

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_b
    :goto_6
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    and-int/2addr v1, v3

    .line 153
    sget-object v2, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 154
    .line 155
    move-object v11, v2

    .line 156
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 157
    .line 158
    .line 159
    and-int/lit8 v2, v1, 0x7e

    .line 160
    .line 161
    shl-int/lit8 v1, v1, 0x3

    .line 162
    .line 163
    and-int/lit16 v3, v1, 0x1c00

    .line 164
    .line 165
    or-int/2addr v2, v3

    .line 166
    const v3, 0xe000

    .line 167
    .line 168
    .line 169
    and-int/2addr v1, v3

    .line 170
    or-int v21, v2, v1

    .line 171
    .line 172
    const/16 v22, 0x3a4

    .line 173
    .line 174
    const/4 v10, 0x0

    .line 175
    const-wide/16 v14, 0x0

    .line 176
    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    move-object/from16 v20, v0

    .line 184
    .line 185
    move-object/from16 v19, v6

    .line 186
    .line 187
    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 188
    .line 189
    .line 190
    move-object v3, v11

    .line 191
    goto :goto_8

    .line 192
    :cond_c
    move-object/from16 v20, v0

    .line 193
    .line 194
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 195
    .line 196
    .line 197
    move-object/from16 v3, p2

    .line 198
    .line 199
    :goto_8
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    if-eqz v8, :cond_d

    .line 204
    .line 205
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda3;

    .line 206
    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    .line 211
    move-wide/from16 v4, p3

    .line 212
    .line 213
    move-object/from16 v6, p5

    .line 214
    .line 215
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 216
    .line 217
    .line 218
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 219
    .line 220
    :cond_d
    return-void
.end method

.method public static final ColorDialogView(Lnet/thunderbird/core/ui/setting/SettingValue$Color;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v5, p5

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object/from16 v13, p4

    .line 20
    .line 21
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v0, 0x6ad54629

    .line 24
    .line 25
    .line 26
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v0, v5, 0x6

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    and-int/lit8 v0, v5, 0x8

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    move v0, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x2

    .line 52
    :goto_1
    or-int/2addr v0, v5

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v0, v5

    .line 55
    :goto_2
    and-int/lit8 v4, v5, 0x30

    .line 56
    .line 57
    const/16 v6, 0x20

    .line 58
    .line 59
    if-nez v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    move v4, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v4, 0x10

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v4

    .line 72
    :cond_4
    and-int/lit16 v4, v5, 0x180

    .line 73
    .line 74
    move-object/from16 v9, p2

    .line 75
    .line 76
    if-nez v4, :cond_6

    .line 77
    .line 78
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    const/16 v4, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/16 v4, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v0, v4

    .line 90
    :cond_6
    and-int/lit16 v4, v5, 0xc00

    .line 91
    .line 92
    move-object/from16 v10, p3

    .line 93
    .line 94
    if-nez v4, :cond_8

    .line 95
    .line 96
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_7

    .line 101
    .line 102
    const/16 v4, 0x800

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    const/16 v4, 0x400

    .line 106
    .line 107
    :goto_5
    or-int/2addr v0, v4

    .line 108
    :cond_8
    and-int/lit16 v4, v5, 0x6000

    .line 109
    .line 110
    if-nez v4, :cond_a

    .line 111
    .line 112
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    .line 114
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_9

    .line 119
    .line 120
    const/16 v4, 0x4000

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_9
    const/16 v4, 0x2000

    .line 124
    .line 125
    :goto_6
    or-int/2addr v0, v4

    .line 126
    :cond_a
    and-int/lit16 v4, v0, 0x2493

    .line 127
    .line 128
    const/16 v7, 0x2492

    .line 129
    .line 130
    const/4 v8, 0x0

    .line 131
    const/4 v11, 0x1

    .line 132
    if-eq v4, v7, :cond_b

    .line 133
    .line 134
    move v4, v11

    .line 135
    goto :goto_7

    .line 136
    :cond_b
    move v4, v8

    .line 137
    :goto_7
    and-int/lit8 v7, v0, 0x1

    .line 138
    .line 139
    invoke-virtual {v13, v7, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_15

    .line 144
    .line 145
    new-array v4, v8, [Ljava/lang/Object;

    .line 146
    .line 147
    and-int/lit8 v7, v0, 0xe

    .line 148
    .line 149
    if-eq v7, v3, :cond_d

    .line 150
    .line 151
    and-int/lit8 v12, v0, 0x8

    .line 152
    .line 153
    if-eqz v12, :cond_c

    .line 154
    .line 155
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-eqz v12, :cond_c

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_c
    move v12, v8

    .line 163
    goto :goto_9

    .line 164
    :cond_d
    :goto_8
    move v12, v11

    .line 165
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 170
    .line 171
    if-nez v12, :cond_e

    .line 172
    .line 173
    if-ne v14, v15, :cond_f

    .line 174
    .line 175
    :cond_e
    new-instance v14, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    const/4 v12, 0x5

    .line 178
    invoke-direct {v14, v12, v1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_f
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 185
    .line 186
    invoke-static {v4, v14, v13, v8}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 191
    .line 192
    iget-object v12, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->title:Lkotlin/jvm/functions/Function0;

    .line 193
    .line 194
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    check-cast v12, Ljava/lang/String;

    .line 199
    .line 200
    iget-object v14, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->icon:Lkotlin/jvm/functions/Function0;

    .line 201
    .line 202
    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    check-cast v14, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 207
    .line 208
    and-int/lit8 v8, v0, 0x70

    .line 209
    .line 210
    if-ne v8, v6, :cond_10

    .line 211
    .line 212
    move v6, v11

    .line 213
    goto :goto_a

    .line 214
    :cond_10
    const/4 v6, 0x0

    .line 215
    :goto_a
    if-eq v7, v3, :cond_12

    .line 216
    .line 217
    and-int/lit8 v3, v0, 0x8

    .line 218
    .line 219
    if-eqz v3, :cond_11

    .line 220
    .line 221
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_11

    .line 226
    .line 227
    goto :goto_b

    .line 228
    :cond_11
    const/4 v8, 0x0

    .line 229
    goto :goto_c

    .line 230
    :cond_12
    :goto_b
    move v8, v11

    .line 231
    :goto_c
    or-int v3, v6, v8

    .line 232
    .line 233
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    or-int/2addr v3, v6

    .line 238
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    if-nez v3, :cond_13

    .line 243
    .line 244
    if-ne v6, v15, :cond_14

    .line 245
    .line 246
    :cond_13
    new-instance v6, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    const/16 v3, 0xe

    .line 249
    .line 250
    invoke-direct {v6, v2, v1, v4, v3}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_14
    move-object v8, v6

    .line 257
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 258
    .line 259
    new-instance v3, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    const/16 v6, 0x13

    .line 262
    .line 263
    invoke-direct {v3, v6, v1, v4}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    const v4, 0x40f49e49

    .line 267
    .line 268
    .line 269
    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    shl-int/lit8 v0, v0, 0x3

    .line 274
    .line 275
    and-int/lit16 v4, v0, 0x1c00

    .line 276
    .line 277
    const/high16 v6, 0xc00000

    .line 278
    .line 279
    or-int/2addr v4, v6

    .line 280
    const v6, 0xe000

    .line 281
    .line 282
    .line 283
    and-int/2addr v6, v0

    .line 284
    or-int/2addr v4, v6

    .line 285
    const/high16 v6, 0x70000

    .line 286
    .line 287
    and-int/2addr v0, v6

    .line 288
    or-int/2addr v0, v4

    .line 289
    const/16 v15, 0x40

    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    move-object v6, v12

    .line 293
    move-object v7, v14

    .line 294
    move v14, v0

    .line 295
    move-object v12, v3

    .line 296
    invoke-static/range {v6 .. v15}, Lorg/jsoup/Jsoup;->SettingDialogLayout(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 297
    .line 298
    .line 299
    goto :goto_d

    .line 300
    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 301
    .line 302
    .line 303
    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    if-eqz v7, :cond_16

    .line 308
    .line 309
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    const/16 v6, 0xb

    .line 312
    .line 313
    move-object/from16 v3, p2

    .line 314
    .line 315
    move-object/from16 v4, p3

    .line 316
    .line 317
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;II)V

    .line 318
    .line 319
    .line 320
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 321
    .line 322
    :cond_16
    return-void
.end method

.method public static from(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/InAppNotification;->getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_6

    .line 16
    .line 17
    instance-of v0, v0, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x1

    .line 30
    if-gt v3, v1, :cond_4

    .line 31
    .line 32
    const/16 v4, 0x65

    .line 33
    .line 34
    if-ge v1, v4, :cond_4

    .line 35
    .line 36
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getContentText()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-gt v3, v4, :cond_2

    .line 47
    .line 48
    const/16 v5, 0xc9

    .line 49
    .line 50
    if-ge v4, v5, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getSeverity()Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->access$getActionsWithoutTap(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-gt v3, v5, :cond_1

    .line 65
    .line 66
    const/4 v3, 0x3

    .line 67
    if-ge v5, v3, :cond_1

    .line 68
    .line 69
    check-cast p0, Ljava/lang/Iterable;

    .line 70
    .line 71
    invoke-static {p0}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance v2, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 76
    .line 77
    invoke-direct {v2, v0, v1, v4, p0}, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationSeverity;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_1
    const-string p0, "A notification with a BannerInlineNotification style must have at one or two actions"

    .line 82
    .line 83
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_2
    const-string p0, "A notification with a BannerInlineNotification style must have a contentText length of 1 to 200 characters."

    .line 88
    .line 89
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_3
    const-string p0, "A notification with a BannerInlineNotification style must have a contentText not null"

    .line 94
    .line 95
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_4
    const-string p0, "A notification with a BannerInlineNotification style must have a title length of 1 to 100 characters."

    .line 100
    .line 101
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_5
    const-string p0, "Check failed."

    .line 106
    .line 107
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return-object v2
.end method

.method public static final getType(Ljava/lang/String;)Lnet/thunderbird/feature/changelog/internal/ChangeType;
    .locals 3

    .line 1
    sget-object v0, Lnet/thunderbird/feature/changelog/internal/ChangeType;->NEW:Lnet/thunderbird/feature/changelog/internal/ChangeType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/feature/changelog/internal/ChangeType;->asPrefix()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-object v0, Lnet/thunderbird/feature/changelog/internal/ChangeType;->FIXED:Lnet/thunderbird/feature/changelog/internal/ChangeType;

    .line 16
    .line 17
    invoke-virtual {v0}, Lnet/thunderbird/feature/changelog/internal/ChangeType;->asPrefix()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    sget-object p0, Lnet/thunderbird/feature/changelog/internal/ChangeType;->CHANGED:Lnet/thunderbird/feature/changelog/internal/ChangeType;

    .line 29
    .line 30
    return-object p0
.end method

.method public static match-impl$default(Lkotlinx/datetime/internal/format/parser/ParserStructure;Ljava/lang/String;Lkotlinx/datetime/internal/format/parser/Copyable;)Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p2, p0, v2}, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;-><init>(Lkotlinx/datetime/internal/format/parser/Copyable;Lkotlinx/datetime/internal/format/parser/ParserStructure;I)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    new-array p2, p0, [Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    .line 17
    .line 18
    aput-object v1, p2, v2

    .line 19
    .line 20
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :cond_0
    :goto_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-le p1, p0, :cond_1

    .line 37
    .line 38
    new-instance p1, Lkotlinx/datetime/internal/format/parser/Parser$match-impl$$inlined$sortByDescending$1;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance p1, Lkotlinx/datetime/internal/format/parser/ParseException;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-ne p2, p0, :cond_2

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p2, "Position "

    .line 57
    .line 58
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 66
    .line 67
    iget p2, p2, Lkotlinx/datetime/internal/format/parser/ParseError;->position:I

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, ": "

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 82
    .line 83
    iget-object p2, p2, Lkotlinx/datetime/internal/format/parser/ParseError;->message:Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    mul-int/lit8 p0, p0, 0x21

    .line 106
    .line 107
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v5, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 p0, 0x8

    .line 113
    .line 114
    invoke-direct {v5, p0}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const/16 v6, 0x38

    .line 118
    .line 119
    const-string v2, ", "

    .line 120
    .line 121
    const-string v3, "Errors: "

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-static/range {v0 .. v6}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :goto_1
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_3
    iget-object v3, v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->output:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Lkotlinx/datetime/internal/format/parser/Copyable;

    .line 138
    .line 139
    invoke-interface {v3}, Lkotlinx/datetime/internal/format/parser/Copyable;->copy()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lkotlinx/datetime/internal/format/parser/Copyable;

    .line 144
    .line 145
    iget v4, v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->inputPosition:I

    .line 146
    .line 147
    iget-object v1, v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->parserStructure:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 148
    .line 149
    iget-object v5, v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 150
    .line 151
    iget-object v6, v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    move v7, v2

    .line 158
    :goto_2
    if-ge v7, v5, :cond_6

    .line 159
    .line 160
    iget-object v8, v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Lkotlinx/datetime/internal/format/parser/ParserOperation;

    .line 167
    .line 168
    invoke-interface {v8, v3, p1, v4}, Lkotlinx/datetime/internal/format/parser/ParserOperation;->consume-FANa98k(Lkotlinx/datetime/internal/format/parser/Copyable;Ljava/lang/String;I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    instance-of v8, v4, Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v8, :cond_4

    .line 175
    .line 176
    check-cast v4, Ljava/lang/Number;

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    add-int/lit8 v7, v7, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    instance-of v1, v4, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 186
    .line 187
    if-eqz v1, :cond_5

    .line 188
    .line 189
    check-cast v4, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_5
    const-string p0, "Unexpected parse result: "

    .line 197
    .line 198
    invoke-static {v4, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const/4 p0, 0x0

    .line 202
    return-object p0

    .line 203
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-ne v4, v1, :cond_7

    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_7
    new-instance v1, Lkotlinx/datetime/internal/format/parser/ParseError;

    .line 217
    .line 218
    sget-object v3, Lkotlinx/datetime/internal/format/parser/Parser$parse$1$3;->INSTANCE:Lkotlinx/datetime/internal/format/parser/Parser$parse$1$3;

    .line 219
    .line 220
    invoke-direct {v1, v4, v3}, Lkotlinx/datetime/internal/format/parser/ParseError;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    add-int/lit8 v1, v1, -0x1

    .line 233
    .line 234
    if-ltz v1, :cond_0

    .line 235
    .line 236
    :goto_3
    add-int/lit8 v5, v1, -0x1

    .line 237
    .line 238
    new-instance v7, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    .line 239
    .line 240
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 245
    .line 246
    invoke-direct {v7, v3, v1, v4}, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;-><init>(Lkotlinx/datetime/internal/format/parser/Copyable;Lkotlinx/datetime/internal/format/parser/ParserStructure;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    if-gez v5, :cond_9

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_9
    move v1, v5

    .line 257
    goto :goto_3
.end method

.method public static parse(Ljava/lang/String;)Lde/cketti/changelog/XmlParser;
    .locals 8

    .line 387
    const-string v0, "HTTP/1."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 388
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x4

    const/16 v5, 0x20

    const-string v6, "Unexpected status line: "

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    const/4 v0, 0x7

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_2
    const-string v0, "ICY "

    .line 394
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_1

    .line 395
    :cond_3
    const-string v0, "SOURCETABLE "

    .line 396
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    :goto_0
    move-object v2, v3

    .line 397
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v1, 0x3

    if-lt v0, v3, :cond_8

    .line 398
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 400
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/2addr v1, v4

    .line 401
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 402
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_6
    const-string p0, ""

    .line 404
    :goto_2
    new-instance v1, Lde/cketti/changelog/XmlParser;

    invoke-direct {v1, v2, v0, p0}, Lde/cketti/changelog/XmlParser;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    return-object v1

    .line 405
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 406
    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const-string v6, "a hexadecimal digit"

    .line 16
    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    const/16 v9, 0x20

    .line 20
    .line 21
    if-eq v1, v9, :cond_11

    .line 22
    .line 23
    const/16 v10, 0x24

    .line 24
    .line 25
    if-eq v1, v10, :cond_1

    .line 26
    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v4, 0x40

    .line 41
    .line 42
    if-gt v3, v4, :cond_0

    .line 43
    .line 44
    move-object v3, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "..."

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, "\" of length "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_1
    move-wide v11, v4

    .line 80
    :goto_1
    const/16 v1, 0x8

    .line 81
    .line 82
    if-ge v8, v1, :cond_3

    .line 83
    .line 84
    shl-long/2addr v11, v7

    .line 85
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    ushr-int/lit8 v13, v1, 0x8

    .line 90
    .line 91
    if-nez v13, :cond_2

    .line 92
    .line 93
    sget-object v13, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 94
    .line 95
    aget-wide v14, v13, v1

    .line 96
    .line 97
    cmp-long v1, v14, v4

    .line 98
    .line 99
    if-ltz v1, :cond_2

    .line 100
    .line 101
    or-long/2addr v11, v14

    .line 102
    add-int/lit8 v8, v8, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v8, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    const-string v13, "\'-\' (hyphen)"

    .line 114
    .line 115
    const/16 v14, 0x2d

    .line 116
    .line 117
    if-ne v8, v14, :cond_10

    .line 118
    .line 119
    const/16 v1, 0x9

    .line 120
    .line 121
    move-wide v15, v4

    .line 122
    :goto_2
    const/16 v8, 0xd

    .line 123
    .line 124
    if-ge v1, v8, :cond_5

    .line 125
    .line 126
    shl-long/2addr v15, v7

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    ushr-int/lit8 v17, v8, 0x8

    .line 132
    .line 133
    if-nez v17, :cond_4

    .line 134
    .line 135
    sget-object v17, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 136
    .line 137
    aget-wide v18, v17, v8

    .line 138
    .line 139
    cmp-long v8, v18, v4

    .line 140
    .line 141
    if-ltz v8, :cond_4

    .line 142
    .line 143
    or-long v15, v15, v18

    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ne v1, v14, :cond_f

    .line 157
    .line 158
    const/16 v1, 0xe

    .line 159
    .line 160
    move-wide/from16 v17, v4

    .line 161
    .line 162
    :goto_3
    const/16 v8, 0x12

    .line 163
    .line 164
    if-ge v1, v8, :cond_7

    .line 165
    .line 166
    shl-long v17, v17, v7

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    ushr-int/lit8 v19, v8, 0x8

    .line 173
    .line 174
    if-nez v19, :cond_6

    .line 175
    .line 176
    sget-object v19, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 177
    .line 178
    aget-wide v20, v19, v8

    .line 179
    .line 180
    cmp-long v8, v20, v4

    .line 181
    .line 182
    if-ltz v8, :cond_6

    .line 183
    .line 184
    or-long v17, v17, v20

    .line 185
    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v2

    .line 193
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-ne v1, v14, :cond_e

    .line 198
    .line 199
    const/16 v1, 0x13

    .line 200
    .line 201
    move-wide/from16 v19, v4

    .line 202
    .line 203
    :goto_4
    const/16 v8, 0x17

    .line 204
    .line 205
    if-ge v1, v8, :cond_9

    .line 206
    .line 207
    shl-long v19, v19, v7

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    ushr-int/lit8 v21, v8, 0x8

    .line 214
    .line 215
    if-nez v21, :cond_8

    .line 216
    .line 217
    sget-object v21, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 218
    .line 219
    aget-wide v22, v21, v8

    .line 220
    .line 221
    cmp-long v8, v22, v4

    .line 222
    .line 223
    if-ltz v8, :cond_8

    .line 224
    .line 225
    or-long v19, v19, v22

    .line 226
    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v2

    .line 234
    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-ne v1, v14, :cond_d

    .line 239
    .line 240
    const/16 v1, 0x18

    .line 241
    .line 242
    move-wide v13, v4

    .line 243
    :goto_5
    if-ge v1, v10, :cond_b

    .line 244
    .line 245
    shl-long/2addr v13, v7

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    ushr-int/lit8 v21, v8, 0x8

    .line 251
    .line 252
    if-nez v21, :cond_a

    .line 253
    .line 254
    sget-object v21, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 255
    .line 256
    aget-wide v22, v21, v8

    .line 257
    .line 258
    cmp-long v8, v22, v4

    .line 259
    .line 260
    if-ltz v8, :cond_a

    .line 261
    .line 262
    or-long v13, v13, v22

    .line 263
    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_a
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v2

    .line 271
    :cond_b
    shl-long v0, v11, v9

    .line 272
    .line 273
    shl-long v2, v15, v3

    .line 274
    .line 275
    or-long/2addr v0, v2

    .line 276
    or-long v0, v0, v17

    .line 277
    .line 278
    const/16 v2, 0x30

    .line 279
    .line 280
    shl-long v2, v19, v2

    .line 281
    .line 282
    or-long/2addr v2, v13

    .line 283
    cmp-long v6, v0, v4

    .line 284
    .line 285
    if-nez v6, :cond_c

    .line 286
    .line 287
    cmp-long v4, v2, v4

    .line 288
    .line 289
    if-nez v4, :cond_c

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_c
    new-instance v4, Lkotlin/uuid/Uuid;

    .line 293
    .line 294
    invoke-direct {v4, v0, v1, v2, v3}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 295
    .line 296
    .line 297
    return-object v4

    .line 298
    :cond_d
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v2

    .line 302
    :cond_e
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v2

    .line 306
    :cond_f
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v2

    .line 310
    :cond_10
    invoke-static {v1, v0, v13}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v2

    .line 314
    :cond_11
    move-wide v10, v4

    .line 315
    :goto_6
    if-ge v8, v3, :cond_13

    .line 316
    .line 317
    shl-long/2addr v10, v7

    .line 318
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    ushr-int/lit8 v12, v1, 0x8

    .line 323
    .line 324
    if-nez v12, :cond_12

    .line 325
    .line 326
    sget-object v12, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 327
    .line 328
    aget-wide v13, v12, v1

    .line 329
    .line 330
    cmp-long v1, v13, v4

    .line 331
    .line 332
    if-ltz v1, :cond_12

    .line 333
    .line 334
    or-long/2addr v10, v13

    .line 335
    add-int/lit8 v8, v8, 0x1

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_12
    invoke-static {v8, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v2

    .line 342
    :cond_13
    move-wide v12, v4

    .line 343
    :goto_7
    if-ge v3, v9, :cond_15

    .line 344
    .line 345
    shl-long/2addr v12, v7

    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    ushr-int/lit8 v8, v1, 0x8

    .line 351
    .line 352
    if-nez v8, :cond_14

    .line 353
    .line 354
    sget-object v8, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 355
    .line 356
    aget-wide v14, v8, v1

    .line 357
    .line 358
    cmp-long v1, v14, v4

    .line 359
    .line 360
    if-ltz v1, :cond_14

    .line 361
    .line 362
    or-long/2addr v12, v14

    .line 363
    add-int/lit8 v3, v3, 0x1

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_14
    invoke-static {v3, v0, v6}, Lkotlin/uuid/UuidKt;->uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v2

    .line 370
    :cond_15
    cmp-long v0, v10, v4

    .line 371
    .line 372
    if-nez v0, :cond_16

    .line 373
    .line 374
    cmp-long v0, v12, v4

    .line 375
    .line 376
    if-nez v0, :cond_16

    .line 377
    .line 378
    :goto_8
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 379
    .line 380
    return-object v0

    .line 381
    :cond_16
    new-instance v0, Lkotlin/uuid/Uuid;

    .line 382
    .line 383
    invoke-direct {v0, v10, v11, v12, v13}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 384
    .line 385
    .line 386
    return-object v0
.end method

.method public static parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 11
    .line 12
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static stream(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x111

    .line 7
    .line 8
    invoke-static {v0, p0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p0, p1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static thread$default(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    new-instance p2, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final toggleSelectMessages(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Ljava/util/List;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 31
    .line 32
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-boolean v3, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 39
    .line 40
    xor-int/lit8 v7, v3, 0x1

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const v9, 0xdfff

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-static/range {v4 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :cond_0
    iget-boolean v3, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 53
    .line 54
    add-int/2addr v2, v3

    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v1}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ExitSelectionMode;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ExitSelectionMode;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_2
    const/4 p2, 0x3

    .line 77
    const/4 p3, 0x0

    .line 78
    invoke-static {p0, p3, p3, p1, p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method


# virtual methods
.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract toIntent()Landroid/content/Intent;
.end method
