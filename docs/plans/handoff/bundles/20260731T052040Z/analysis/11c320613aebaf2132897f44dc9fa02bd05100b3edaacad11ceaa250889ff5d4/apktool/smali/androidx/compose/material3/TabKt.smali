.class public abstract Landroidx/compose/material3/TabKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DoubleLineTextBaselineWithIcon:F

.field public static final HorizontalTextPadding:F

.field public static final IconDistanceFromBaseline:J

.field public static final SingleLineTextBaselineWithIcon:F

.field public static final SmallTabHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    sget v0, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ContainerHeight:F

    .line 4
    .line 5
    sput v0, Landroidx/compose/material3/TabKt;->SmallTabHeight:F

    .line 6
    .line 7
    const/high16 v0, 0x41800000    # 16.0f

    .line 8
    .line 9
    sput v0, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    .line 10
    .line 11
    const/high16 v0, 0x41600000    # 14.0f

    .line 12
    .line 13
    sput v0, Landroidx/compose/material3/TabKt;->SingleLineTextBaselineWithIcon:F

    .line 14
    .line 15
    const/high16 v0, 0x40c00000    # 6.0f

    .line 16
    .line 17
    sput v0, Landroidx/compose/material3/TabKt;->DoubleLineTextBaselineWithIcon:F

    .line 18
    .line 19
    const/16 v0, 0x14

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/math/MathKt;->getSp(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Landroidx/compose/material3/TabKt;->IconDistanceFromBaseline:J

    .line 26
    .line 27
    return-void
.end method

.method public static final Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-wide/from16 v5, p4

    .line 2
    .line 3
    move/from16 v10, p10

    .line 4
    .line 5
    move-object/from16 v0, p9

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, -0x5dc429d5

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v10, 0x6

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    move/from16 v13, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    move v1, v2

    .line 31
    :goto_0
    or-int/2addr v1, v10

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v10

    .line 34
    :goto_1
    and-int/lit8 v3, v10, 0x30

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    move-object/from16 v3, p1

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/16 v4, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v4, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v1, v4

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move-object/from16 v3, p1

    .line 54
    .line 55
    :goto_3
    and-int/lit16 v4, v10, 0x180

    .line 56
    .line 57
    move-object/from16 v12, p2

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    const/16 v4, 0x80

    .line 71
    .line 72
    :goto_4
    or-int/2addr v1, v4

    .line 73
    :cond_5
    and-int/lit16 v4, v10, 0xc00

    .line 74
    .line 75
    move/from16 v15, p3

    .line 76
    .line 77
    if-nez v4, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    const/16 v4, 0x800

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v4, 0x400

    .line 89
    .line 90
    :goto_5
    or-int/2addr v1, v4

    .line 91
    :cond_7
    and-int/lit16 v4, v10, 0x6000

    .line 92
    .line 93
    if-nez v4, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_8

    .line 100
    .line 101
    const/16 v4, 0x4000

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/16 v4, 0x2000

    .line 105
    .line 106
    :goto_6
    or-int/2addr v1, v4

    .line 107
    :cond_9
    const/high16 v4, 0x30000

    .line 108
    .line 109
    and-int/2addr v4, v10

    .line 110
    move-wide/from16 v7, p6

    .line 111
    .line 112
    if-nez v4, :cond_b

    .line 113
    .line 114
    invoke-virtual {v0, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_a

    .line 119
    .line 120
    const/high16 v4, 0x20000

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_a
    const/high16 v4, 0x10000

    .line 124
    .line 125
    :goto_7
    or-int/2addr v1, v4

    .line 126
    :cond_b
    const/high16 v4, 0x180000

    .line 127
    .line 128
    and-int/2addr v4, v10

    .line 129
    if-nez v4, :cond_d

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_c

    .line 137
    .line 138
    const/high16 v4, 0x100000

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_c
    const/high16 v4, 0x80000

    .line 142
    .line 143
    :goto_8
    or-int/2addr v1, v4

    .line 144
    :cond_d
    const/high16 v4, 0xc00000

    .line 145
    .line 146
    and-int/2addr v4, v10

    .line 147
    move-object/from16 v9, p8

    .line 148
    .line 149
    if-nez v4, :cond_f

    .line 150
    .line 151
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_e

    .line 156
    .line 157
    const/high16 v4, 0x800000

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_e
    const/high16 v4, 0x400000

    .line 161
    .line 162
    :goto_9
    or-int/2addr v1, v4

    .line 163
    :cond_f
    const v4, 0x492493

    .line 164
    .line 165
    .line 166
    and-int/2addr v4, v1

    .line 167
    const v11, 0x492492

    .line 168
    .line 169
    .line 170
    if-eq v4, v11, :cond_10

    .line 171
    .line 172
    const/4 v4, 0x1

    .line 173
    goto :goto_a

    .line 174
    :cond_10
    const/4 v4, 0x0

    .line 175
    :goto_a
    and-int/lit8 v11, v1, 0x1

    .line 176
    .line 177
    invoke-virtual {v0, v11, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_13

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 184
    .line 185
    .line 186
    and-int/lit8 v4, v10, 0x1

    .line 187
    .line 188
    if-eqz v4, :cond_12

    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_11

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 198
    .line 199
    .line 200
    :cond_12
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v5, v6}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(IJ)Landroidx/compose/material3/RippleNodeFactory;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    new-instance v11, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda3;

    .line 208
    .line 209
    move-object/from16 v16, v3

    .line 210
    .line 211
    move-object/from16 v17, v9

    .line 212
    .line 213
    invoke-direct/range {v11 .. v17}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RippleNodeFactory;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 214
    .line 215
    .line 216
    const v2, 0x434457e7

    .line 217
    .line 218
    .line 219
    invoke-static {v2, v11, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    shr-int/lit8 v3, v1, 0xc

    .line 224
    .line 225
    and-int/lit8 v4, v3, 0xe

    .line 226
    .line 227
    or-int/lit16 v4, v4, 0xc00

    .line 228
    .line 229
    and-int/lit8 v3, v3, 0x70

    .line 230
    .line 231
    or-int/2addr v3, v4

    .line 232
    shl-int/lit8 v1, v1, 0x6

    .line 233
    .line 234
    and-int/lit16 v1, v1, 0x380

    .line 235
    .line 236
    or-int/2addr v1, v3

    .line 237
    move/from16 v4, p0

    .line 238
    .line 239
    move-wide/from16 v18, v5

    .line 240
    .line 241
    move-object v6, v0

    .line 242
    move-object v5, v2

    .line 243
    move-wide v2, v7

    .line 244
    move v7, v1

    .line 245
    move-wide/from16 v0, v18

    .line 246
    .line 247
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 248
    .line 249
    .line 250
    goto :goto_c

    .line 251
    :cond_13
    move-object v6, v0

    .line 252
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 253
    .line 254
    .line 255
    :goto_c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    if-eqz v11, :cond_14

    .line 260
    .line 261
    new-instance v0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda4;

    .line 262
    .line 263
    move/from16 v1, p0

    .line 264
    .line 265
    move-object/from16 v2, p1

    .line 266
    .line 267
    move-object/from16 v3, p2

    .line 268
    .line 269
    move/from16 v4, p3

    .line 270
    .line 271
    move-wide/from16 v5, p4

    .line 272
    .line 273
    move-wide/from16 v7, p6

    .line 274
    .line 275
    move-object/from16 v9, p8

    .line 276
    .line 277
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda4;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 278
    .line 279
    .line 280
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 281
    .line 282
    :cond_14
    return-void
.end method

.method public static final Tab-wqdebIU(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;JJLandroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    move-object/from16 v15, p9

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x3c7ff1ed

    .line 8
    .line 9
    .line 10
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move/from16 v6, p0

    .line 14
    .line 15
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p10, v0

    .line 25
    .line 26
    move-object/from16 v7, p1

    .line 27
    .line 28
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    const v1, 0x64b0d80

    .line 41
    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    const v1, 0x2492493

    .line 45
    .line 46
    .line 47
    and-int/2addr v1, v0

    .line 48
    const v2, 0x2492492

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x1

    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    move v1, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v1, v3

    .line 58
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 59
    .line 60
    invoke-virtual {v15, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 67
    .line 68
    .line 69
    and-int/lit8 v1, p10, 0x1

    .line 70
    .line 71
    const v2, -0x1f80001

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    and-int/2addr v0, v2

    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    move/from16 v9, p3

    .line 90
    .line 91
    move-wide/from16 v10, p5

    .line 92
    .line 93
    move-wide/from16 v12, p7

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    :goto_3
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 103
    .line 104
    iget-wide v8, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 105
    .line 106
    and-int/2addr v0, v2

    .line 107
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 108
    .line 109
    move-wide v10, v8

    .line 110
    move-wide v12, v10

    .line 111
    move v9, v4

    .line 112
    :goto_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 113
    .line 114
    .line 115
    if-nez v5, :cond_5

    .line 116
    .line 117
    const v2, 0x6d212155

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 124
    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    goto :goto_5

    .line 128
    :cond_5
    const v2, 0x6d212156

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {v2, v5, v3, v3}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;IB)V

    .line 137
    .line 138
    .line 139
    const v4, -0x680681c4

    .line 140
    .line 141
    .line 142
    invoke-static {v4, v2, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    :goto_5
    new-instance v4, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    invoke-direct {v4, v3}, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v4}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    new-instance v4, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    invoke-direct {v4, v2, v3}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    const v2, -0x3601c460    # -2082676.0f

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v4, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    and-int/lit8 v2, v0, 0xe

    .line 171
    .line 172
    const/high16 v3, 0xc00000

    .line 173
    .line 174
    or-int/2addr v2, v3

    .line 175
    and-int/lit8 v0, v0, 0x70

    .line 176
    .line 177
    or-int/2addr v0, v2

    .line 178
    const v2, 0x180c00

    .line 179
    .line 180
    .line 181
    or-int v16, v0, v2

    .line 182
    .line 183
    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/TabKt;->Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 184
    .line 185
    .line 186
    move-object v3, v1

    .line 187
    move v4, v9

    .line 188
    move-wide v6, v10

    .line 189
    move-wide v8, v12

    .line 190
    goto :goto_6

    .line 191
    :cond_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 192
    .line 193
    .line 194
    move-object/from16 v3, p2

    .line 195
    .line 196
    move/from16 v4, p3

    .line 197
    .line 198
    move-wide/from16 v6, p5

    .line 199
    .line 200
    move-wide/from16 v8, p7

    .line 201
    .line 202
    :goto_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    if-eqz v11, :cond_7

    .line 207
    .line 208
    new-instance v0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    move/from16 v1, p0

    .line 211
    .line 212
    move-object/from16 v2, p1

    .line 213
    .line 214
    move/from16 v10, p10

    .line 215
    .line 216
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;JJI)V

    .line 217
    .line 218
    .line 219
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 220
    .line 221
    :cond_7
    return-void
.end method

.method public static final TabBaselineLayout(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v4, -0x5075dc56

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    move v4, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x2

    .line 27
    :goto_0
    or-int/2addr v4, v1

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/16 v7, 0x20

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    move v6, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v6, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v4, v6

    .line 42
    and-int/lit8 v6, v4, 0x13

    .line 43
    .line 44
    const/16 v8, 0x12

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    if-eq v6, v8, :cond_2

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v6, v10

    .line 52
    :goto_2
    and-int/lit8 v8, v4, 0x1

    .line 53
    .line 54
    invoke-virtual {v3, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_a

    .line 59
    .line 60
    and-int/lit8 v6, v4, 0xe

    .line 61
    .line 62
    if-ne v6, v5, :cond_3

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v5, v10

    .line 67
    :goto_3
    and-int/lit8 v4, v4, 0x70

    .line 68
    .line 69
    if-ne v4, v7, :cond_4

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move v4, v10

    .line 74
    :goto_4
    or-int/2addr v4, v5

    .line 75
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-ne v5, v4, :cond_6

    .line 84
    .line 85
    :cond_5
    new-instance v5, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$1;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 94
    .line 95
    iget-wide v11, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 96
    .line 97
    ushr-long v13, v11, v7

    .line 98
    .line 99
    xor-long/2addr v11, v13

    .line 100
    long-to-int v4, v11

    .line 101
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 106
    .line 107
    invoke-static {v3, v11}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 117
    .line 118
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 119
    .line 120
    .line 121
    iget-boolean v13, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 122
    .line 123
    if-eqz v13, :cond_7

    .line 124
    .line 125
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 130
    .line 131
    .line 132
    :goto_5
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {v3, v5, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {v3, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 147
    .line 148
    invoke-static {v3, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 152
    .line 153
    invoke-static {v3, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 154
    .line 155
    .line 156
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {v3, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    const v11, 0x33e0a8f4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo v11, "text"

    .line 170
    .line 171
    .line 172
    invoke-static {v11}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    sget v15, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    .line 177
    .line 178
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/SpacerKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-static {v2, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 187
    .line 188
    ushr-long v16, v9, v7

    .line 189
    .line 190
    xor-long v9, v9, v16

    .line 191
    .line 192
    long-to-int v7, v9

    .line 193
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-static {v3, v11}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 202
    .line 203
    .line 204
    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 205
    .line 206
    if-eqz v11, :cond_8

    .line 207
    .line 208
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 213
    .line 214
    .line 215
    :goto_6
    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v3, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v3, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-interface {v0, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 243
    .line 244
    .line 245
    const/4 v15, 0x0

    .line 246
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 247
    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_9
    move v15, v10

    .line 251
    const/4 v2, 0x1

    .line 252
    const v4, 0x33e24221

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 259
    .line 260
    .line 261
    :goto_7
    const v4, 0x33e3a6a1

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 275
    .line 276
    .line 277
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-eqz v2, :cond_b

    .line 282
    .line 283
    new-instance v3, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda0;

    .line 284
    .line 285
    invoke-direct {v3, v1, v0}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 289
    .line 290
    :cond_b
    return-void
.end method

.method public static final TabTransition-Klgx-Pg(JJZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    move-object/from16 v5, p6

    .line 6
    .line 7
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x31a8c985

    .line 10
    .line 11
    .line 12
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v7, 0x6

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    move-wide/from16 v8, p0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    or-int/2addr v0, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v7

    .line 34
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 35
    .line 36
    move-wide/from16 v10, p2

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v5, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

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
    or-int/2addr v0, v2

    .line 52
    :cond_3
    and-int/lit16 v2, v7, 0x180

    .line 53
    .line 54
    move/from16 v12, p4

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    const/16 v2, 0x100

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v2, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v2

    .line 70
    :cond_5
    and-int/lit16 v2, v7, 0xc00

    .line 71
    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const/16 v2, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v2, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v2

    .line 86
    :cond_7
    and-int/lit16 v2, v0, 0x493

    .line 87
    .line 88
    const/16 v3, 0x492

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    if-eq v2, v3, :cond_8

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    goto :goto_5

    .line 95
    :cond_8
    move v2, v4

    .line 96
    :goto_5
    and-int/lit8 v3, v0, 0x1

    .line 97
    .line 98
    invoke-virtual {v5, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_17

    .line 103
    .line 104
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    shr-int/lit8 v13, v0, 0x6

    .line 109
    .line 110
    and-int/lit8 v0, v13, 0xe

    .line 111
    .line 112
    invoke-static {v0, v1, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(IILandroidx/compose/runtime/Composer;Ljava/lang/Object;)Landroidx/compose/animation/core/Transition;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 117
    .line 118
    iget-object v2, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const v3, -0x3fbb3b28

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    .line 135
    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    move-wide v14, v8

    .line 139
    goto :goto_6

    .line 140
    :cond_9
    move-wide v14, v10

    .line 141
    :goto_6
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 142
    .line 143
    .line 144
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 157
    .line 158
    if-nez v14, :cond_a

    .line 159
    .line 160
    if-ne v15, v3, :cond_b

    .line 161
    .line 162
    :cond_a
    sget-object v14, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$2:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 163
    .line 164
    new-instance v15, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    .line 165
    .line 166
    invoke-direct {v15, v2}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 170
    .line 171
    invoke-direct {v2, v14, v15}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    move-object v15, v2

    .line 178
    :cond_b
    check-cast v15, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_f

    .line 185
    .line 186
    const v2, 0x6355e4b0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    if-nez v2, :cond_d

    .line 201
    .line 202
    if-ne v14, v3, :cond_c

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_c
    move v1, v4

    .line 206
    goto :goto_9

    .line 207
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    if-eqz v2, :cond_e

    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    goto :goto_8

    .line 218
    :cond_e
    const/4 v14, 0x0

    .line 219
    :goto_8
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v2, v4, v14}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    move-object v14, v1

    .line 234
    const/4 v1, 0x0

    .line 235
    :goto_9
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 236
    .line 237
    .line 238
    move v2, v1

    .line 239
    goto :goto_a

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    invoke-static {v2, v4, v14}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_f
    move v2, v4

    .line 246
    const v4, 0x6359c50d

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    :goto_a
    check-cast v14, Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    const v4, -0x3fbb3b28

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 269
    .line 270
    .line 271
    if-eqz v1, :cond_10

    .line 272
    .line 273
    move-wide v7, v8

    .line 274
    goto :goto_b

    .line 275
    :cond_10
    move-wide v7, v10

    .line 276
    :goto_b
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 277
    .line 278
    .line 279
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 280
    .line 281
    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    if-nez v4, :cond_11

    .line 293
    .line 294
    if-ne v7, v3, :cond_12

    .line 295
    .line 296
    :cond_11
    new-instance v4, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    .line 297
    .line 298
    invoke-direct {v4, v0, v2}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_12
    check-cast v7, Landroidx/compose/runtime/State;

    .line 309
    .line 310
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    const v4, -0x3fbb3b28

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 324
    .line 325
    .line 326
    if-eqz v2, :cond_13

    .line 327
    .line 328
    move-wide/from16 v7, p0

    .line 329
    .line 330
    :goto_c
    const/4 v2, 0x0

    .line 331
    goto :goto_d

    .line 332
    :cond_13
    move-wide v7, v10

    .line 333
    goto :goto_c

    .line 334
    :goto_d
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 335
    .line 336
    .line 337
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 338
    .line 339
    invoke-direct {v2, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    if-nez v4, :cond_14

    .line 351
    .line 352
    if-ne v7, v3, :cond_15

    .line 353
    .line 354
    :cond_14
    new-instance v3, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;

    .line 355
    .line 356
    const/16 v4, 0xd

    .line 357
    .line 358
    invoke-direct {v3, v0, v4}, Landroidx/compose/material3/TabKt$TabTransition-Klgx-Pg$$inlined$animateColor$1;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 359
    .line 360
    .line 361
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_15
    check-cast v7, Landroidx/compose/runtime/State;

    .line 369
    .line 370
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    check-cast v3, Landroidx/compose/animation/core/Transition$Segment;

    .line 375
    .line 376
    const v4, 0x3f19b444

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 380
    .line 381
    .line 382
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 383
    .line 384
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 385
    .line 386
    invoke-interface {v3, v4, v7}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_16

    .line 391
    .line 392
    const v3, 0x10398cab

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 396
    .line 397
    .line 398
    sget-object v3, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 399
    .line 400
    invoke-static {v3, v5}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const/4 v4, 0x0

    .line 405
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 406
    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_16
    const/4 v4, 0x0

    .line 410
    const v3, 0x103b614d

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 414
    .line 415
    .line 416
    sget-object v3, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 417
    .line 418
    invoke-static {v3, v5}, Landroidx/compose/material3/BadgeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 423
    .line 424
    .line 425
    :goto_e
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 426
    .line 427
    .line 428
    move-object v4, v15

    .line 429
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 434
    .line 435
    iget-object v0, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 436
    .line 437
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 442
    .line 443
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 444
    .line 445
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 446
    .line 447
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    and-int/lit8 v1, v13, 0x70

    .line 455
    .line 456
    const/16 v2, 0x8

    .line 457
    .line 458
    or-int/2addr v1, v2

    .line 459
    invoke-static {v0, v6, v5, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 460
    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 464
    .line 465
    .line 466
    :goto_f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    if-eqz v8, :cond_18

    .line 471
    .line 472
    new-instance v0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;

    .line 473
    .line 474
    move-wide/from16 v1, p0

    .line 475
    .line 476
    move/from16 v7, p7

    .line 477
    .line 478
    move-wide v3, v10

    .line 479
    move v5, v12

    .line 480
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda6;-><init>(JJZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 481
    .line 482
    .line 483
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 484
    .line 485
    :cond_18
    return-void
.end method
