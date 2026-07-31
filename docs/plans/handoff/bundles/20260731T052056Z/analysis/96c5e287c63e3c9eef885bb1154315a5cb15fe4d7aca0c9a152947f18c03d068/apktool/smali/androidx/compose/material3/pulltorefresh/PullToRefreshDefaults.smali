.class public final Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Elevation:F

.field public static final INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

.field public static final IndicatorMaxDistance:F

.field public static final PositionalThreshold:F

.field public static final indicatorShape:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->indicatorShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 11
    .line 12
    const/high16 v0, 0x42a00000    # 80.0f

    .line 13
    .line 14
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->PositionalThreshold:F

    .line 15
    .line 16
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->IndicatorMaxDistance:F

    .line 17
    .line 18
    const/high16 v0, 0x40400000    # 3.0f

    .line 19
    .line 20
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Elevation:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final Indicator-2poqoh4(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/GapComposer;II)V
    .locals 14

    .line 1
    move/from16 v2, p2

    .line 2
    .line 3
    move-object/from16 v10, p9

    .line 4
    .line 5
    const v0, -0x402fbc70

    .line 6
    .line 7
    .line 8
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int v0, p10, v0

    .line 21
    .line 22
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    :goto_1
    or-int/2addr v0, v1

    .line 34
    move-object/from16 v4, p3

    .line 35
    .line 36
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_2
    or-int/2addr v0, v1

    .line 48
    and-int/lit8 v1, p11, 0x8

    .line 49
    .line 50
    move-wide/from16 v5, p4

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v10, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v1, 0x400

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v1

    .line 66
    and-int/lit8 v1, p11, 0x10

    .line 67
    .line 68
    move-wide/from16 v7, p6

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v10, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const/16 v1, 0x4000

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/16 v1, 0x2000

    .line 82
    .line 83
    :goto_4
    or-int/2addr v0, v1

    .line 84
    const/high16 v1, 0x10000

    .line 85
    .line 86
    or-int/2addr v0, v1

    .line 87
    const/high16 v1, 0x180000

    .line 88
    .line 89
    and-int v1, p10, v1

    .line 90
    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    const/high16 v1, 0x100000

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    const/high16 v1, 0x80000

    .line 103
    .line 104
    :goto_5
    or-int/2addr v0, v1

    .line 105
    :cond_6
    const v1, 0x92493

    .line 106
    .line 107
    .line 108
    and-int/2addr v1, v0

    .line 109
    const v3, 0x92492

    .line 110
    .line 111
    .line 112
    if-eq v1, v3, :cond_7

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    goto :goto_6

    .line 116
    :cond_7
    const/4 v1, 0x0

    .line 117
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 118
    .line 119
    invoke-virtual {v10, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_e

    .line 124
    .line 125
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 126
    .line 127
    .line 128
    and-int/lit8 v1, p10, 0x1

    .line 129
    .line 130
    const v3, -0x70001

    .line 131
    .line 132
    .line 133
    const v9, -0xe001

    .line 134
    .line 135
    .line 136
    if-eqz v1, :cond_b

    .line 137
    .line 138
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v1, p11, 0x8

    .line 149
    .line 150
    if-eqz v1, :cond_9

    .line 151
    .line 152
    and-int/lit16 v0, v0, -0x1c01

    .line 153
    .line 154
    :cond_9
    and-int/lit8 v1, p11, 0x10

    .line 155
    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    and-int/2addr v0, v9

    .line 159
    :cond_a
    and-int/2addr v0, v3

    .line 160
    move/from16 v4, p8

    .line 161
    .line 162
    :goto_7
    move-wide v12, v7

    .line 163
    move-wide v6, v5

    .line 164
    goto :goto_9

    .line 165
    :cond_b
    :goto_8
    and-int/lit8 v1, p11, 0x8

    .line 166
    .line 167
    if-eqz v1, :cond_c

    .line 168
    .line 169
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Landroidx/compose/material3/ColorScheme;

    .line 176
    .line 177
    iget-wide v5, v1, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 178
    .line 179
    and-int/lit16 v0, v0, -0x1c01

    .line 180
    .line 181
    :cond_c
    and-int/lit8 v1, p11, 0x10

    .line 182
    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 186
    .line 187
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Landroidx/compose/material3/ColorScheme;

    .line 192
    .line 193
    iget-wide v7, v1, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 194
    .line 195
    and-int/2addr v0, v9

    .line 196
    :cond_d
    and-int/2addr v0, v3

    .line 197
    sget v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->IndicatorMaxDistance:F

    .line 198
    .line 199
    move v4, v1

    .line 200
    goto :goto_7

    .line 201
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 202
    .line 203
    .line 204
    new-instance v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$Indicator$1;

    .line 205
    .line 206
    invoke-direct {v1, v2, v12, v13, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$Indicator$1;-><init>(ZJLandroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;)V

    .line 207
    .line 208
    .line 209
    const v3, 0x11c6ab49

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    and-int/lit8 v1, v0, 0xe

    .line 217
    .line 218
    const/high16 v3, 0xc00000

    .line 219
    .line 220
    or-int/2addr v1, v3

    .line 221
    and-int/lit8 v3, v0, 0x70

    .line 222
    .line 223
    or-int/2addr v1, v3

    .line 224
    and-int/lit16 v3, v0, 0x380

    .line 225
    .line 226
    or-int/2addr v1, v3

    .line 227
    shl-int/lit8 v0, v0, 0x6

    .line 228
    .line 229
    const/high16 v3, 0x70000

    .line 230
    .line 231
    and-int/2addr v3, v0

    .line 232
    or-int/2addr v1, v3

    .line 233
    const/high16 v3, 0xe000000

    .line 234
    .line 235
    and-int/2addr v0, v3

    .line 236
    or-int v11, v1, v0

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    const/4 v8, 0x0

    .line 240
    move-object v0, p0

    .line 241
    move-object v1, p1

    .line 242
    move-object/from16 v3, p3

    .line 243
    .line 244
    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->IndicatorBox-1CPYgEU(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 245
    .line 246
    .line 247
    move v9, v4

    .line 248
    move-wide v5, v6

    .line 249
    move-wide v7, v12

    .line 250
    goto :goto_a

    .line 251
    :cond_e
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 252
    .line 253
    .line 254
    move/from16 v9, p8

    .line 255
    .line 256
    :goto_a
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    if-eqz v12, :cond_f

    .line 261
    .line 262
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda0;

    .line 263
    .line 264
    move-object v1, p0

    .line 265
    move-object v2, p1

    .line 266
    move/from16 v3, p2

    .line 267
    .line 268
    move-object/from16 v4, p3

    .line 269
    .line 270
    move/from16 v10, p10

    .line 271
    .line 272
    move/from16 v11, p11

    .line 273
    .line 274
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFII)V

    .line 275
    .line 276
    .line 277
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 278
    .line 279
    :cond_f
    return-void
.end method

.method public final IndicatorBox-1CPYgEU(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move/from16 v5, p4

    .line 4
    .line 5
    move-wide/from16 v0, p6

    .line 6
    .line 7
    move-object/from16 v2, p9

    .line 8
    .line 9
    move-object/from16 v3, p10

    .line 10
    .line 11
    move/from16 v11, p11

    .line 12
    .line 13
    const v6, -0x4ff03da9

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v6, v11, 0x6

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    move-object/from16 v6, p1

    .line 24
    .line 25
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    const/4 v8, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v8, 0x2

    .line 34
    :goto_0
    or-int/2addr v8, v11

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object/from16 v6, p1

    .line 37
    .line 38
    move v8, v11

    .line 39
    :goto_1
    and-int/lit8 v9, v11, 0x30

    .line 40
    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    move/from16 v9, p2

    .line 44
    .line 45
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    if-eqz v12, :cond_2

    .line 50
    .line 51
    const/16 v12, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v12, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v8, v12

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move/from16 v9, p2

    .line 59
    .line 60
    :goto_3
    and-int/lit16 v12, v11, 0x180

    .line 61
    .line 62
    if-nez v12, :cond_5

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    if-eqz v12, :cond_4

    .line 69
    .line 70
    const/16 v12, 0x100

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/16 v12, 0x80

    .line 74
    .line 75
    :goto_4
    or-int/2addr v8, v12

    .line 76
    :cond_5
    and-int/lit16 v12, v11, 0xc00

    .line 77
    .line 78
    if-nez v12, :cond_7

    .line 79
    .line 80
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-eqz v12, :cond_6

    .line 85
    .line 86
    const/16 v12, 0x800

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    const/16 v12, 0x400

    .line 90
    .line 91
    :goto_5
    or-int/2addr v8, v12

    .line 92
    :cond_7
    and-int/lit16 v12, v11, 0x6000

    .line 93
    .line 94
    if-nez v12, :cond_8

    .line 95
    .line 96
    or-int/lit16 v8, v8, 0x2000

    .line 97
    .line 98
    :cond_8
    const/high16 v12, 0x30000

    .line 99
    .line 100
    and-int/2addr v12, v11

    .line 101
    if-nez v12, :cond_a

    .line 102
    .line 103
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_9

    .line 108
    .line 109
    const/high16 v12, 0x20000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/high16 v12, 0x10000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v8, v12

    .line 115
    :cond_a
    const/high16 v12, 0x180000

    .line 116
    .line 117
    and-int/2addr v12, v11

    .line 118
    if-nez v12, :cond_b

    .line 119
    .line 120
    const/high16 v12, 0x80000

    .line 121
    .line 122
    or-int/2addr v8, v12

    .line 123
    :cond_b
    const/high16 v12, 0xc00000

    .line 124
    .line 125
    and-int/2addr v12, v11

    .line 126
    if-nez v12, :cond_d

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_c

    .line 133
    .line 134
    const/high16 v12, 0x800000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    const/high16 v12, 0x400000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v8, v12

    .line 140
    :cond_d
    const/high16 v12, 0x6000000

    .line 141
    .line 142
    and-int/2addr v12, v11

    .line 143
    if-nez v12, :cond_f

    .line 144
    .line 145
    move-object/from16 v12, p0

    .line 146
    .line 147
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_e

    .line 152
    .line 153
    const/high16 v14, 0x4000000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/high16 v14, 0x2000000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v8, v14

    .line 159
    goto :goto_9

    .line 160
    :cond_f
    move-object/from16 v12, p0

    .line 161
    .line 162
    :goto_9
    const v14, 0x2492493

    .line 163
    .line 164
    .line 165
    and-int/2addr v14, v8

    .line 166
    const v15, 0x2492492

    .line 167
    .line 168
    .line 169
    if-eq v14, v15, :cond_10

    .line 170
    .line 171
    const/4 v14, 0x1

    .line 172
    goto :goto_a

    .line 173
    :cond_10
    const/4 v14, 0x0

    .line 174
    :goto_a
    and-int/lit8 v15, v8, 0x1

    .line 175
    .line 176
    invoke-virtual {v3, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-eqz v14, :cond_1e

    .line 181
    .line 182
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 183
    .line 184
    .line 185
    and-int/lit8 v14, v11, 0x1

    .line 186
    .line 187
    const v15, -0x38e001

    .line 188
    .line 189
    .line 190
    if-eqz v14, :cond_12

    .line 191
    .line 192
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eqz v14, :cond_11

    .line 197
    .line 198
    goto :goto_c

    .line 199
    :cond_11
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 200
    .line 201
    .line 202
    and-int/2addr v8, v15

    .line 203
    move-object/from16 v14, p5

    .line 204
    .line 205
    move/from16 v9, p8

    .line 206
    .line 207
    :goto_b
    move v15, v8

    .line 208
    goto :goto_d

    .line 209
    :cond_12
    :goto_c
    and-int/2addr v8, v15

    .line 210
    sget-object v14, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->indicatorShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 211
    .line 212
    sget v15, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Elevation:F

    .line 213
    .line 214
    move v9, v15

    .line 215
    goto :goto_b

    .line 216
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 217
    .line 218
    .line 219
    const/high16 v8, 0x42200000    # 40.0f

    .line 220
    .line 221
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 230
    .line 231
    if-ne v13, v10, :cond_13

    .line 232
    .line 233
    new-instance v13, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 234
    .line 235
    const/16 v7, 0x1d

    .line 236
    .line 237
    invoke-direct {v13, v7}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_13
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 244
    .line 245
    invoke-static {v8, v13}, Landroidx/compose/ui/draw/ClipKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    and-int/lit8 v7, v15, 0xe

    .line 250
    .line 251
    const/4 v8, 0x4

    .line 252
    if-ne v7, v8, :cond_14

    .line 253
    .line 254
    const/4 v7, 0x1

    .line 255
    goto :goto_e

    .line 256
    :cond_14
    const/4 v7, 0x0

    .line 257
    :goto_e
    and-int/lit8 v8, v15, 0x70

    .line 258
    .line 259
    const/16 v4, 0x20

    .line 260
    .line 261
    if-ne v8, v4, :cond_15

    .line 262
    .line 263
    const/4 v4, 0x1

    .line 264
    goto :goto_f

    .line 265
    :cond_15
    const/4 v4, 0x0

    .line 266
    :goto_f
    or-int/2addr v4, v7

    .line 267
    and-int/lit16 v7, v15, 0x1c00

    .line 268
    .line 269
    xor-int/lit16 v7, v7, 0xc00

    .line 270
    .line 271
    const/16 v8, 0x800

    .line 272
    .line 273
    if-le v7, v8, :cond_16

    .line 274
    .line 275
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-nez v7, :cond_17

    .line 280
    .line 281
    :cond_16
    and-int/lit16 v7, v15, 0xc00

    .line 282
    .line 283
    if-ne v7, v8, :cond_18

    .line 284
    .line 285
    :cond_17
    const/4 v7, 0x1

    .line 286
    goto :goto_10

    .line 287
    :cond_18
    const/4 v7, 0x0

    .line 288
    :goto_10
    or-int/2addr v4, v7

    .line 289
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    or-int/2addr v4, v7

    .line 294
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    or-int/2addr v4, v7

    .line 299
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    if-nez v4, :cond_1a

    .line 304
    .line 305
    if-ne v7, v10, :cond_19

    .line 306
    .line 307
    goto :goto_11

    .line 308
    :cond_19
    move-object v10, v14

    .line 309
    goto :goto_12

    .line 310
    :cond_1a
    :goto_11
    new-instance v5, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda2;

    .line 311
    .line 312
    move/from16 v7, p2

    .line 313
    .line 314
    move/from16 v8, p4

    .line 315
    .line 316
    move-object v10, v14

    .line 317
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZFFLandroidx/compose/ui/graphics/Shape;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    move-object v7, v5

    .line 324
    :goto_12
    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 325
    .line 326
    invoke-static {v13, v7}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {v4, v0, v1, v10}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 335
    .line 336
    shr-int/lit8 v6, v15, 0xc

    .line 337
    .line 338
    and-int/lit16 v6, v6, 0x1c00

    .line 339
    .line 340
    or-int/lit8 v6, v6, 0x30

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-static {v3, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 360
    .line 361
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 365
    .line 366
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 367
    .line 368
    .line 369
    iget-boolean v14, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 370
    .line 371
    if-eqz v14, :cond_1b

    .line 372
    .line 373
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 374
    .line 375
    .line 376
    goto :goto_13

    .line 377
    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 378
    .line 379
    .line 380
    :goto_13
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 381
    .line 382
    invoke-static {v3, v5, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 383
    .line 384
    .line 385
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 386
    .line 387
    invoke-static {v3, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 388
    .line 389
    .line 390
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 391
    .line 392
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 393
    .line 394
    if-nez v8, :cond_1c

    .line 395
    .line 396
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    if-nez v8, :cond_1d

    .line 409
    .line 410
    :cond_1c
    invoke-static {v7, v3, v7, v5}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 411
    .line 412
    .line 413
    :cond_1d
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 414
    .line 415
    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    shr-int/lit8 v4, v6, 0x6

    .line 419
    .line 420
    and-int/lit8 v4, v4, 0x70

    .line 421
    .line 422
    or-int/lit8 v4, v4, 0x6

    .line 423
    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 429
    .line 430
    invoke-virtual {v2, v5, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    const/4 v4, 0x1

    .line 434
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 435
    .line 436
    .line 437
    move-object v6, v10

    .line 438
    goto :goto_14

    .line 439
    :cond_1e
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 440
    .line 441
    .line 442
    move-object/from16 v6, p5

    .line 443
    .line 444
    move/from16 v9, p8

    .line 445
    .line 446
    :goto_14
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 447
    .line 448
    .line 449
    move-result-object v13

    .line 450
    if-eqz v13, :cond_1f

    .line 451
    .line 452
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda3;

    .line 453
    .line 454
    move/from16 v3, p2

    .line 455
    .line 456
    move-object/from16 v4, p3

    .line 457
    .line 458
    move/from16 v5, p4

    .line 459
    .line 460
    move-wide/from16 v7, p6

    .line 461
    .line 462
    move-object v10, v2

    .line 463
    move-object v1, v12

    .line 464
    move-object/from16 v2, p1

    .line 465
    .line 466
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 467
    .line 468
    .line 469
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 470
    .line 471
    :cond_1f
    return-void
.end method
