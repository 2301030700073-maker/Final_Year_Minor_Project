.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final TopAppBarHorizontalPadding:F

.field public static final TopAppBarTitleInset:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 15
    .line 16
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const v2, 0x3e19999a    # 0.15f

    .line 32
    .line 33
    .line 34
    const v3, 0x3f4ccccd    # 0.8f

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    const/high16 v0, 0x40800000    # 4.0f

    .line 41
    .line 42
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    .line 43
    .line 44
    const/high16 v0, 0x41400000    # 12.0f

    .line 45
    .line 46
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarTitleInset:F

    .line 47
    .line 48
    return-void
.end method

.method public static final BottomAppBar-1oL4kX8(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 13

    .line 1
    move-object/from16 v8, p8

    .line 2
    .line 3
    const v0, 0x66bc780

    .line 4
    .line 5
    .line 6
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p9, 0x6

    .line 10
    .line 11
    invoke-virtual {v8, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x20

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v3, 0x10

    .line 22
    .line 23
    :goto_0
    or-int/2addr v0, v3

    .line 24
    const v3, 0x16c80

    .line 25
    .line 26
    .line 27
    or-int/2addr v0, v3

    .line 28
    const v3, 0x92493

    .line 29
    .line 30
    .line 31
    and-int/2addr v3, v0

    .line 32
    const v5, 0x92492

    .line 33
    .line 34
    .line 35
    if-eq v3, v5, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    and-int/lit8 v5, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 49
    .line 50
    .line 51
    and-int/lit8 v3, p9, 0x1

    .line 52
    .line 53
    const v5, -0x70381

    .line 54
    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    and-int/2addr v0, v5

    .line 69
    move v3, v0

    .line 70
    move-object v0, p0

    .line 71
    move p0, v3

    .line 72
    move-wide/from16 v3, p3

    .line 73
    .line 74
    move-object/from16 v5, p5

    .line 75
    .line 76
    move-object/from16 v6, p6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_2
    invoke-static {p1, p2, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/GapComposer;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sget-object p0, Landroidx/compose/material3/BottomAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 84
    .line 85
    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 86
    .line 87
    invoke-static {v8}, Landroidx/compose/foundation/layout/OffsetKt;->current(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v3, v3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->systemBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 92
    .line 93
    invoke-static {v8}, Landroidx/compose/foundation/layout/OffsetKt;->current(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    iget-object v9, v9, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 98
    .line 99
    new-instance v10, Landroidx/compose/foundation/layout/UnionInsets;

    .line 100
    .line 101
    invoke-direct {v10, v3, v9}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 102
    .line 103
    .line 104
    sget v3, Landroidx/compose/foundation/layout/OffsetKt;->Horizontal:I

    .line 105
    .line 106
    const/16 v3, 0xf

    .line 107
    .line 108
    or-int/2addr v3, v4

    .line 109
    new-instance v4, Landroidx/compose/foundation/layout/LimitInsets;

    .line 110
    .line 111
    invoke-direct {v4, v10, v3}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/UnionInsets;I)V

    .line 112
    .line 113
    .line 114
    and-int/2addr v0, v5

    .line 115
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 116
    .line 117
    move-object v5, p0

    .line 118
    move p0, v0

    .line 119
    move-object v0, v3

    .line 120
    move-wide v11, v6

    .line 121
    move-object v6, v4

    .line 122
    move-wide v3, v11

    .line 123
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 124
    .line 125
    .line 126
    and-int/lit8 p0, p0, 0x70

    .line 127
    .line 128
    const v7, 0xd86c06

    .line 129
    .line 130
    .line 131
    or-int v9, p0, v7

    .line 132
    .line 133
    move-wide v1, p1

    .line 134
    move-object/from16 v7, p7

    .line 135
    .line 136
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt;->BottomAppBar-e-3WI5M(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 137
    .line 138
    .line 139
    move-object v1, v0

    .line 140
    move-object v7, v6

    .line 141
    move-object v6, v5

    .line 142
    move-wide v4, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    move-object v1, p0

    .line 148
    move-wide/from16 v4, p3

    .line 149
    .line 150
    move-object/from16 v6, p5

    .line 151
    .line 152
    move-object/from16 v7, p6

    .line 153
    .line 154
    :goto_4
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-eqz p0, :cond_5

    .line 159
    .line 160
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;

    .line 161
    .line 162
    move-wide v2, p1

    .line 163
    move-object/from16 v8, p7

    .line 164
    .line 165
    move/from16 v9, p9

    .line 166
    .line 167
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 171
    .line 172
    :cond_5
    return-void
.end method

.method public static final BottomAppBar-e-3WI5M(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 13

    .line 1
    move-object/from16 v9, p8

    .line 2
    .line 3
    move/from16 v11, p9

    .line 4
    .line 5
    const v0, 0x5d24a7e2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v11, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v11

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v11

    .line 27
    :goto_1
    and-int/lit8 v1, v11, 0x30

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v9, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, v11, 0x180

    .line 44
    .line 45
    move-wide/from16 v4, p3

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v9, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/16 v1, 0x100

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    const/16 v1, 0x80

    .line 59
    .line 60
    :goto_3
    or-int/2addr v0, v1

    .line 61
    :cond_5
    and-int/lit16 v1, v11, 0xc00

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    const/16 v1, 0x800

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    const/16 v1, 0x400

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v1

    .line 78
    :cond_7
    and-int/lit16 v1, v11, 0x6000

    .line 79
    .line 80
    move-object/from16 v6, p5

    .line 81
    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    const/16 v1, 0x4000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const/16 v1, 0x2000

    .line 94
    .line 95
    :goto_5
    or-int/2addr v0, v1

    .line 96
    :cond_9
    const/high16 v1, 0x30000

    .line 97
    .line 98
    and-int/2addr v1, v11

    .line 99
    move-object/from16 v7, p6

    .line 100
    .line 101
    if-nez v1, :cond_b

    .line 102
    .line 103
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    const/high16 v1, 0x20000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    const/high16 v1, 0x10000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v0, v1

    .line 115
    :cond_b
    const/high16 v1, 0x180000

    .line 116
    .line 117
    and-int/2addr v1, v11

    .line 118
    if-nez v1, :cond_d

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_c

    .line 126
    .line 127
    const/high16 v1, 0x100000

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_c
    const/high16 v1, 0x80000

    .line 131
    .line 132
    :goto_7
    or-int/2addr v0, v1

    .line 133
    :cond_d
    const/high16 v1, 0xc00000

    .line 134
    .line 135
    and-int/2addr v1, v11

    .line 136
    move-object/from16 v8, p7

    .line 137
    .line 138
    if-nez v1, :cond_f

    .line 139
    .line 140
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_e

    .line 145
    .line 146
    const/high16 v1, 0x800000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_e
    const/high16 v1, 0x400000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v0, v1

    .line 152
    :cond_f
    const v1, 0x492493

    .line 153
    .line 154
    .line 155
    and-int/2addr v1, v0

    .line 156
    const v10, 0x492492

    .line 157
    .line 158
    .line 159
    if-eq v1, v10, :cond_10

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    goto :goto_9

    .line 163
    :cond_10
    const/4 v1, 0x0

    .line 164
    :goto_9
    and-int/lit8 v10, v0, 0x1

    .line 165
    .line 166
    invoke-virtual {v9, v10, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_13

    .line 171
    .line 172
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 173
    .line 174
    .line 175
    and-int/lit8 v1, v11, 0x1

    .line 176
    .line 177
    if-eqz v1, :cond_12

    .line 178
    .line 179
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_11

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 187
    .line 188
    .line 189
    :cond_12
    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 190
    .line 191
    .line 192
    move v1, v0

    .line 193
    sget v0, Landroidx/compose/material3/tokens/BottomAppBarTokens;->ContainerHeight:F

    .line 194
    .line 195
    shl-int/lit8 v1, v1, 0x6

    .line 196
    .line 197
    and-int/lit16 v10, v1, 0x380

    .line 198
    .line 199
    or-int/lit8 v10, v10, 0x36

    .line 200
    .line 201
    and-int/lit16 v12, v1, 0x1c00

    .line 202
    .line 203
    or-int/2addr v10, v12

    .line 204
    const v12, 0xe000

    .line 205
    .line 206
    .line 207
    and-int/2addr v12, v1

    .line 208
    or-int/2addr v10, v12

    .line 209
    const/high16 v12, 0x70000

    .line 210
    .line 211
    and-int/2addr v12, v1

    .line 212
    or-int/2addr v10, v12

    .line 213
    const/high16 v12, 0x380000

    .line 214
    .line 215
    and-int/2addr v12, v1

    .line 216
    or-int/2addr v10, v12

    .line 217
    const/high16 v12, 0x1c00000

    .line 218
    .line 219
    and-int/2addr v12, v1

    .line 220
    or-int/2addr v10, v12

    .line 221
    const/high16 v12, 0xe000000

    .line 222
    .line 223
    and-int/2addr v12, v1

    .line 224
    or-int/2addr v10, v12

    .line 225
    const/high16 v12, 0x70000000

    .line 226
    .line 227
    and-int/2addr v1, v12

    .line 228
    or-int/2addr v10, v1

    .line 229
    move-object v1, p0

    .line 230
    move-wide v2, p1

    .line 231
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->BottomAppBarLayout-t5fmz9U(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_13
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    :goto_b
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    if-eqz v10, :cond_14

    .line 243
    .line 244
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;

    .line 245
    .line 246
    move-object v1, p0

    .line 247
    move-wide v2, p1

    .line 248
    move-wide/from16 v4, p3

    .line 249
    .line 250
    move-object/from16 v6, p5

    .line 251
    .line 252
    move-object/from16 v7, p6

    .line 253
    .line 254
    move-object/from16 v8, p7

    .line 255
    .line 256
    move v9, v11

    .line 257
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 258
    .line 259
    .line 260
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 261
    .line 262
    :cond_14
    return-void
.end method

.method public static final BottomAppBarLayout-t5fmz9U(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 22

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v8, p7

    .line 8
    .line 9
    move-object/from16 v9, p8

    .line 10
    .line 11
    move-object/from16 v0, p9

    .line 12
    .line 13
    move/from16 v3, p10

    .line 14
    .line 15
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 16
    .line 17
    const v5, -0x869f6c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v5, v3, 0x6

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x2

    .line 36
    :goto_0
    or-int/2addr v5, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v5, v3

    .line 39
    :goto_1
    and-int/lit8 v6, v3, 0x30

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v4, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v5, v4

    .line 55
    :cond_3
    and-int/lit16 v4, v3, 0x180

    .line 56
    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const/16 v4, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v4, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v5, v4

    .line 71
    :cond_5
    and-int/lit16 v4, v3, 0xc00

    .line 72
    .line 73
    move-wide/from16 v12, p2

    .line 74
    .line 75
    if-nez v4, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    const/16 v4, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v4, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v5, v4

    .line 89
    :cond_7
    and-int/lit16 v4, v3, 0x6000

    .line 90
    .line 91
    move-wide/from16 v14, p4

    .line 92
    .line 93
    if-nez v4, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

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
    goto :goto_5

    .line 104
    :cond_8
    const/16 v4, 0x2000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v5, v4

    .line 107
    :cond_9
    const/high16 v4, 0x30000

    .line 108
    .line 109
    and-int/2addr v4, v3

    .line 110
    if-nez v4, :cond_b

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_a

    .line 118
    .line 119
    const/high16 v4, 0x20000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v4, 0x10000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v5, v4

    .line 125
    :cond_b
    const/high16 v4, 0x180000

    .line 126
    .line 127
    and-int/2addr v4, v3

    .line 128
    if-nez v4, :cond_d

    .line 129
    .line 130
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_c

    .line 135
    .line 136
    const/high16 v4, 0x100000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/high16 v4, 0x80000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v5, v4

    .line 142
    :cond_d
    const/high16 v4, 0xc00000

    .line 143
    .line 144
    and-int v6, v3, v4

    .line 145
    .line 146
    if-nez v6, :cond_f

    .line 147
    .line 148
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_e

    .line 153
    .line 154
    const/high16 v6, 0x800000

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_e
    const/high16 v6, 0x400000

    .line 158
    .line 159
    :goto_8
    or-int/2addr v5, v6

    .line 160
    :cond_f
    const/high16 v6, 0x6000000

    .line 161
    .line 162
    and-int/2addr v6, v3

    .line 163
    const/4 v10, 0x0

    .line 164
    if-nez v6, :cond_11

    .line 165
    .line 166
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_10

    .line 171
    .line 172
    const/high16 v6, 0x4000000

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_10
    const/high16 v6, 0x2000000

    .line 176
    .line 177
    :goto_9
    or-int/2addr v5, v6

    .line 178
    :cond_11
    const/high16 v6, 0x30000000

    .line 179
    .line 180
    and-int/2addr v6, v3

    .line 181
    if-nez v6, :cond_13

    .line 182
    .line 183
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_12

    .line 188
    .line 189
    const/high16 v6, 0x20000000

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_12
    const/high16 v6, 0x10000000

    .line 193
    .line 194
    :goto_a
    or-int/2addr v5, v6

    .line 195
    :cond_13
    const v6, 0x12492493

    .line 196
    .line 197
    .line 198
    and-int/2addr v6, v5

    .line 199
    const v11, 0x12492492

    .line 200
    .line 201
    .line 202
    move/from16 v16, v4

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    if-eq v6, v11, :cond_14

    .line 206
    .line 207
    const/4 v6, 0x1

    .line 208
    goto :goto_b

    .line 209
    :cond_14
    move v6, v4

    .line 210
    :goto_b
    and-int/lit8 v11, v5, 0x1

    .line 211
    .line 212
    invoke-virtual {v0, v11, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_1c

    .line 217
    .line 218
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 219
    .line 220
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    check-cast v6, Landroid/content/Context;

    .line 225
    .line 226
    const-string v11, "accessibility"

    .line 227
    .line 228
    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 242
    .line 243
    if-ne v11, v10, :cond_15

    .line 244
    .line 245
    new-instance v11, Landroidx/compose/material3/internal/Listener;

    .line 246
    .line 247
    invoke-direct {v11, v4}, Landroidx/compose/material3/internal/Listener;-><init>(Z)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_15
    check-cast v11, Landroidx/compose/material3/internal/Listener;

    .line 254
    .line 255
    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 256
    .line 257
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    .line 262
    .line 263
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v19

    .line 267
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v20

    .line 271
    or-int v19, v19, v20

    .line 272
    .line 273
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-nez v19, :cond_17

    .line 278
    .line 279
    if-ne v3, v10, :cond_16

    .line 280
    .line 281
    goto :goto_c

    .line 282
    :cond_16
    move/from16 v19, v5

    .line 283
    .line 284
    goto :goto_d

    .line 285
    :cond_17
    :goto_c
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 286
    .line 287
    move/from16 v19, v5

    .line 288
    .line 289
    const/16 v5, 0xd

    .line 290
    .line 291
    invoke-direct {v3, v5, v11, v6}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :goto_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 298
    .line 299
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v20

    .line 307
    or-int v5, v5, v20

    .line 308
    .line 309
    move/from16 v20, v5

    .line 310
    .line 311
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    if-nez v20, :cond_18

    .line 316
    .line 317
    if-ne v5, v10, :cond_19

    .line 318
    .line 319
    :cond_18
    new-instance v5, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 320
    .line 321
    const/16 v12, 0x15

    .line 322
    .line 323
    invoke-direct {v5, v12, v11, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 330
    .line 331
    const/4 v6, 0x0

    .line 332
    invoke-static {v4, v3, v5, v0, v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->ObserveState(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11}, Landroidx/compose/material3/internal/Listener;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const v3, -0x230bccfe

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 345
    .line 346
    .line 347
    sget-object v3, Landroidx/compose/material3/tokens/BottomAppBarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 348
    .line 349
    invoke-static {v3, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/Shape;

    .line 350
    .line 351
    .line 352
    move-result-object v11

    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    if-nez v3, :cond_1a

    .line 363
    .line 364
    if-ne v4, v10, :cond_1b

    .line 365
    .line 366
    :cond_1a
    new-instance v4, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 367
    .line 368
    invoke-direct {v4, v6}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_1b
    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 375
    .line 376
    invoke-static {v2, v4}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 381
    .line 382
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    new-instance v3, Landroidx/compose/material3/AppBarKt$BottomAppBarLayout$2;

    .line 387
    .line 388
    invoke-direct {v3, v8, v1, v7, v9}, Landroidx/compose/material3/AppBarKt$BottomAppBarLayout$2;-><init>(Landroidx/compose/foundation/layout/WindowInsets;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 389
    .line 390
    .line 391
    const v4, 0x3ed44e5b

    .line 392
    .line 393
    .line 394
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v18

    .line 398
    shr-int/lit8 v3, v19, 0x3

    .line 399
    .line 400
    and-int/lit16 v4, v3, 0x380

    .line 401
    .line 402
    or-int v4, v4, v16

    .line 403
    .line 404
    and-int/lit16 v5, v3, 0x1c00

    .line 405
    .line 406
    or-int/2addr v4, v5

    .line 407
    const v5, 0xe000

    .line 408
    .line 409
    .line 410
    and-int/2addr v3, v5

    .line 411
    or-int v20, v4, v3

    .line 412
    .line 413
    const/16 v21, 0x60

    .line 414
    .line 415
    const/16 v16, 0x0

    .line 416
    .line 417
    const/16 v17, 0x0

    .line 418
    .line 419
    move-wide/from16 v12, p2

    .line 420
    .line 421
    move-object/from16 v19, v0

    .line 422
    .line 423
    invoke-static/range {v10 .. v21}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 424
    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_1c
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 428
    .line 429
    .line 430
    :goto_e
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    if-eqz v11, :cond_1d

    .line 435
    .line 436
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;

    .line 437
    .line 438
    move-wide/from16 v3, p2

    .line 439
    .line 440
    move-wide/from16 v5, p4

    .line 441
    .line 442
    move/from16 v10, p10

    .line 443
    .line 444
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda8;-><init>(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 445
    .line 446
    .line 447
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 448
    .line 449
    :cond_1d
    return-void
.end method

.method public static final SingleRowTopAppBar-wn8IZOc(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V
    .locals 23

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 6
    .line 7
    const v2, -0x793953af

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v2, v11, 0x6

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x4

    .line 17
    move-object/from16 v13, p0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move v2, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v3

    .line 30
    :goto_0
    or-int/2addr v2, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v11

    .line 33
    :goto_1
    and-int/lit8 v5, v11, 0x30

    .line 34
    .line 35
    const/16 v6, 0x10

    .line 36
    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    move-object/from16 v14, p1

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    move v5, v7

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v5, v6

    .line 52
    :goto_2
    or-int/2addr v2, v5

    .line 53
    :cond_3
    and-int/lit16 v5, v11, 0x180

    .line 54
    .line 55
    move-object/from16 v15, p2

    .line 56
    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    const/16 v5, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v5, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v2, v5

    .line 71
    :cond_5
    and-int/lit16 v5, v11, 0xc00

    .line 72
    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    const/16 v5, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v5, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v2, v5

    .line 88
    :cond_7
    and-int/lit16 v5, v11, 0x6000

    .line 89
    .line 90
    if-nez v5, :cond_9

    .line 91
    .line 92
    move-object/from16 v5, p3

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_8

    .line 99
    .line 100
    const/16 v8, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v8, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v2, v8

    .line 106
    goto :goto_6

    .line 107
    :cond_9
    move-object/from16 v5, p3

    .line 108
    .line 109
    :goto_6
    const/high16 v8, 0x30000

    .line 110
    .line 111
    and-int/2addr v8, v11

    .line 112
    if-nez v8, :cond_b

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    const/high16 v1, 0x20000

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_a
    const/high16 v1, 0x10000

    .line 124
    .line 125
    :goto_7
    or-int/2addr v2, v1

    .line 126
    :cond_b
    const/high16 v1, 0x180000

    .line 127
    .line 128
    and-int/2addr v1, v11

    .line 129
    if-nez v1, :cond_d

    .line 130
    .line 131
    move-object/from16 v1, p4

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_c

    .line 138
    .line 139
    const/high16 v8, 0x100000

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    const/high16 v8, 0x80000

    .line 143
    .line 144
    :goto_8
    or-int/2addr v2, v8

    .line 145
    goto :goto_9

    .line 146
    :cond_d
    move-object/from16 v1, p4

    .line 147
    .line 148
    :goto_9
    const/high16 v8, 0xc00000

    .line 149
    .line 150
    and-int/2addr v8, v11

    .line 151
    if-nez v8, :cond_f

    .line 152
    .line 153
    move-object/from16 v8, p5

    .line 154
    .line 155
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_e

    .line 160
    .line 161
    const/high16 v9, 0x800000

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_e
    const/high16 v9, 0x400000

    .line 165
    .line 166
    :goto_a
    or-int/2addr v2, v9

    .line 167
    goto :goto_b

    .line 168
    :cond_f
    move-object/from16 v8, p5

    .line 169
    .line 170
    :goto_b
    const/high16 v9, 0x6000000

    .line 171
    .line 172
    and-int/2addr v9, v11

    .line 173
    if-nez v9, :cond_11

    .line 174
    .line 175
    move/from16 v9, p6

    .line 176
    .line 177
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_10

    .line 182
    .line 183
    const/high16 v10, 0x4000000

    .line 184
    .line 185
    goto :goto_c

    .line 186
    :cond_10
    const/high16 v10, 0x2000000

    .line 187
    .line 188
    :goto_c
    or-int/2addr v2, v10

    .line 189
    goto :goto_d

    .line 190
    :cond_11
    move/from16 v9, p6

    .line 191
    .line 192
    :goto_d
    const/high16 v10, 0x30000000

    .line 193
    .line 194
    and-int/2addr v10, v11

    .line 195
    if-nez v10, :cond_13

    .line 196
    .line 197
    move-object/from16 v10, p7

    .line 198
    .line 199
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_12

    .line 204
    .line 205
    const/high16 v12, 0x20000000

    .line 206
    .line 207
    goto :goto_e

    .line 208
    :cond_12
    const/high16 v12, 0x10000000

    .line 209
    .line 210
    :goto_e
    or-int/2addr v2, v12

    .line 211
    goto :goto_f

    .line 212
    :cond_13
    move-object/from16 v10, p7

    .line 213
    .line 214
    :goto_f
    and-int/lit8 v12, p12, 0x6

    .line 215
    .line 216
    if-nez v12, :cond_15

    .line 217
    .line 218
    move-object/from16 v12, p8

    .line 219
    .line 220
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v16

    .line 224
    if-eqz v16, :cond_14

    .line 225
    .line 226
    move v3, v4

    .line 227
    :cond_14
    or-int v3, p12, v3

    .line 228
    .line 229
    goto :goto_10

    .line 230
    :cond_15
    move-object/from16 v12, p8

    .line 231
    .line 232
    move/from16 v3, p12

    .line 233
    .line 234
    :goto_10
    and-int/lit8 v4, p12, 0x30

    .line 235
    .line 236
    if-nez v4, :cond_17

    .line 237
    .line 238
    move-object/from16 v4, p9

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v16

    .line 244
    if-eqz v16, :cond_16

    .line 245
    .line 246
    move v6, v7

    .line 247
    :cond_16
    or-int/2addr v3, v6

    .line 248
    goto :goto_11

    .line 249
    :cond_17
    move-object/from16 v4, p9

    .line 250
    .line 251
    :goto_11
    const v6, 0x12492493

    .line 252
    .line 253
    .line 254
    and-int/2addr v6, v2

    .line 255
    const v7, 0x12492492

    .line 256
    .line 257
    .line 258
    const/4 v1, 0x0

    .line 259
    const/16 v16, 0x1

    .line 260
    .line 261
    if-ne v6, v7, :cond_19

    .line 262
    .line 263
    and-int/lit8 v3, v3, 0x13

    .line 264
    .line 265
    const/16 v6, 0x12

    .line 266
    .line 267
    if-eq v3, v6, :cond_18

    .line 268
    .line 269
    goto :goto_12

    .line 270
    :cond_18
    move v3, v1

    .line 271
    goto :goto_13

    .line 272
    :cond_19
    :goto_12
    move/from16 v3, v16

    .line 273
    .line 274
    :goto_13
    and-int/lit8 v2, v2, 0x1

    .line 275
    .line 276
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_1a

    .line 281
    .line 282
    new-instance v12, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 283
    .line 284
    move-object/from16 v17, p4

    .line 285
    .line 286
    move-object/from16 v21, p8

    .line 287
    .line 288
    move-object/from16 v22, v4

    .line 289
    .line 290
    move-object/from16 v16, v5

    .line 291
    .line 292
    move-object/from16 v18, v8

    .line 293
    .line 294
    move/from16 v19, v9

    .line 295
    .line 296
    move-object/from16 v20, v10

    .line 297
    .line 298
    invoke-direct/range {v12 .. v22}, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;)V

    .line 299
    .line 300
    .line 301
    sget-object v2, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 308
    .line 309
    invoke-virtual {v2, v12, v0, v1}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/GapComposer;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_14

    .line 313
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 314
    .line 315
    .line 316
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    if-eqz v13, :cond_1b

    .line 321
    .line 322
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;

    .line 323
    .line 324
    move-object/from16 v1, p0

    .line 325
    .line 326
    move-object/from16 v2, p1

    .line 327
    .line 328
    move-object/from16 v3, p2

    .line 329
    .line 330
    move-object/from16 v4, p3

    .line 331
    .line 332
    move-object/from16 v5, p4

    .line 333
    .line 334
    move-object/from16 v6, p5

    .line 335
    .line 336
    move/from16 v7, p6

    .line 337
    .line 338
    move-object/from16 v8, p7

    .line 339
    .line 340
    move-object/from16 v9, p8

    .line 341
    .line 342
    move-object/from16 v10, p9

    .line 343
    .line 344
    move/from16 v12, p12

    .line 345
    .line 346
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;II)V

    .line 347
    .line 348
    .line 349
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 350
    .line 351
    :cond_1b
    return-void
.end method

.method public static final TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V
    .locals 19

    .line 1
    move-object/from16 v10, p8

    .line 2
    .line 3
    move/from16 v13, p9

    .line 4
    .line 5
    move/from16 v14, p10

    .line 6
    .line 7
    const v0, 0x6a5c1dd0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v13, 0x6

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v13

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v13

    .line 31
    :goto_1
    and-int/lit8 v2, v14, 0x2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    or-int/lit8 v0, v0, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v4, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v4, v13, 0x30

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    const/16 v5, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v5, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v5

    .line 58
    :goto_3
    and-int/lit8 v5, v14, 0x4

    .line 59
    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    :cond_5
    move-object/from16 v6, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v6, v13, 0x180

    .line 68
    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    move-object/from16 v6, p2

    .line 72
    .line 73
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_7

    .line 78
    .line 79
    const/16 v7, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v7, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v7

    .line 85
    :goto_5
    and-int/lit8 v7, v14, 0x8

    .line 86
    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0xc00

    .line 90
    .line 91
    :cond_8
    move-object/from16 v8, p3

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_9
    and-int/lit16 v8, v13, 0xc00

    .line 95
    .line 96
    if-nez v8, :cond_8

    .line 97
    .line 98
    move-object/from16 v8, p3

    .line 99
    .line 100
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_a

    .line 105
    .line 106
    const/16 v9, 0x800

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/16 v9, 0x400

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v9

    .line 112
    :goto_7
    or-int/lit16 v9, v0, 0x6000

    .line 113
    .line 114
    const/high16 v11, 0x30000

    .line 115
    .line 116
    and-int/2addr v11, v13

    .line 117
    if-nez v11, :cond_b

    .line 118
    .line 119
    const v9, 0x16000

    .line 120
    .line 121
    .line 122
    or-int/2addr v9, v0

    .line 123
    :cond_b
    const/high16 v0, 0x180000

    .line 124
    .line 125
    and-int/2addr v0, v13

    .line 126
    if-nez v0, :cond_d

    .line 127
    .line 128
    move-object/from16 v0, p6

    .line 129
    .line 130
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_c

    .line 135
    .line 136
    const/high16 v11, 0x100000

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_c
    const/high16 v11, 0x80000

    .line 140
    .line 141
    :goto_8
    or-int/2addr v9, v11

    .line 142
    goto :goto_9

    .line 143
    :cond_d
    move-object/from16 v0, p6

    .line 144
    .line 145
    :goto_9
    and-int/lit16 v11, v14, 0x80

    .line 146
    .line 147
    const/high16 v12, 0xc00000

    .line 148
    .line 149
    if-eqz v11, :cond_f

    .line 150
    .line 151
    or-int/2addr v9, v12

    .line 152
    :cond_e
    move-object/from16 v12, p7

    .line 153
    .line 154
    goto :goto_b

    .line 155
    :cond_f
    and-int/2addr v12, v13

    .line 156
    if-nez v12, :cond_e

    .line 157
    .line 158
    move-object/from16 v12, p7

    .line 159
    .line 160
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    if-eqz v15, :cond_10

    .line 165
    .line 166
    const/high16 v15, 0x800000

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_10
    const/high16 v15, 0x400000

    .line 170
    .line 171
    :goto_a
    or-int/2addr v9, v15

    .line 172
    :goto_b
    const v15, 0x492493

    .line 173
    .line 174
    .line 175
    and-int/2addr v15, v9

    .line 176
    const/16 v16, 0x10

    .line 177
    .line 178
    const v3, 0x492492

    .line 179
    .line 180
    .line 181
    if-eq v15, v3, :cond_11

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    goto :goto_c

    .line 185
    :cond_11
    const/4 v3, 0x0

    .line 186
    :goto_c
    and-int/lit8 v15, v9, 0x1

    .line 187
    .line 188
    invoke-virtual {v10, v15, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_1a

    .line 193
    .line 194
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 195
    .line 196
    .line 197
    and-int/lit8 v3, v13, 0x1

    .line 198
    .line 199
    const v15, -0x70001

    .line 200
    .line 201
    .line 202
    if-eqz v3, :cond_13

    .line 203
    .line 204
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_12

    .line 209
    .line 210
    goto :goto_e

    .line 211
    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    and-int v2, v9, v15

    .line 215
    .line 216
    move/from16 v15, p4

    .line 217
    .line 218
    move-object/from16 v7, p5

    .line 219
    .line 220
    move v3, v2

    .line 221
    move-object v2, v4

    .line 222
    :goto_d
    move-object v4, v6

    .line 223
    move-object v5, v8

    .line 224
    move-object v9, v12

    .line 225
    goto :goto_10

    .line 226
    :cond_13
    :goto_e
    if-eqz v2, :cond_14

    .line 227
    .line 228
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 229
    .line 230
    goto :goto_f

    .line 231
    :cond_14
    move-object v2, v4

    .line 232
    :goto_f
    if-eqz v5, :cond_15

    .line 233
    .line 234
    sget-object v3, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->lambda$657782987:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 235
    .line 236
    move-object v6, v3

    .line 237
    :cond_15
    if-eqz v7, :cond_16

    .line 238
    .line 239
    sget-object v3, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->lambda$-1270442071:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 240
    .line 241
    move-object v8, v3

    .line 242
    :cond_16
    sget v3, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 243
    .line 244
    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 245
    .line 246
    invoke-static {v10}, Landroidx/compose/foundation/layout/OffsetKt;->current(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->systemBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 251
    .line 252
    invoke-static {v10}, Landroidx/compose/foundation/layout/OffsetKt;->current(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    iget-object v5, v5, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 257
    .line 258
    new-instance v7, Landroidx/compose/foundation/layout/UnionInsets;

    .line 259
    .line 260
    invoke-direct {v7, v4, v5}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 261
    .line 262
    .line 263
    sget v4, Landroidx/compose/foundation/layout/OffsetKt;->Horizontal:I

    .line 264
    .line 265
    const/16 v4, 0xf

    .line 266
    .line 267
    or-int/lit8 v4, v4, 0x10

    .line 268
    .line 269
    new-instance v5, Landroidx/compose/foundation/layout/LimitInsets;

    .line 270
    .line 271
    invoke-direct {v5, v7, v4}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/UnionInsets;I)V

    .line 272
    .line 273
    .line 274
    and-int v4, v9, v15

    .line 275
    .line 276
    if-eqz v11, :cond_17

    .line 277
    .line 278
    const/4 v7, 0x0

    .line 279
    move v15, v3

    .line 280
    move v3, v4

    .line 281
    move-object v4, v6

    .line 282
    move-object v9, v7

    .line 283
    move-object v7, v5

    .line 284
    move-object v5, v8

    .line 285
    goto :goto_10

    .line 286
    :cond_17
    move v15, v3

    .line 287
    move v3, v4

    .line 288
    move-object v7, v5

    .line 289
    goto :goto_d

    .line 290
    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 291
    .line 292
    .line 293
    sget-object v6, Landroidx/compose/material3/tokens/AppBarSmallTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 294
    .line 295
    invoke-static {v6, v10}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/text/TextStyle;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    move v8, v3

    .line 300
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    .line 301
    .line 302
    const/high16 v11, 0x7fc00000    # Float.NaN

    .line 303
    .line 304
    invoke-static {v15, v11}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-nez v11, :cond_19

    .line 309
    .line 310
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 311
    .line 312
    invoke-static {v15, v11}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_18

    .line 317
    .line 318
    goto :goto_11

    .line 319
    :cond_18
    move v11, v15

    .line 320
    goto :goto_12

    .line 321
    :cond_19
    :goto_11
    sget v11, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 322
    .line 323
    :goto_12
    shr-int/lit8 v12, v8, 0x3

    .line 324
    .line 325
    and-int/lit8 v12, v12, 0xe

    .line 326
    .line 327
    const v16, 0x36c00

    .line 328
    .line 329
    .line 330
    or-int v12, v12, v16

    .line 331
    .line 332
    shl-int/lit8 v16, v8, 0x3

    .line 333
    .line 334
    and-int/lit8 v16, v16, 0x70

    .line 335
    .line 336
    or-int v12, v12, v16

    .line 337
    .line 338
    shl-int/lit8 v16, v8, 0xc

    .line 339
    .line 340
    const/high16 v17, 0x380000

    .line 341
    .line 342
    and-int v17, v16, v17

    .line 343
    .line 344
    or-int v12, v12, v17

    .line 345
    .line 346
    const/high16 v17, 0x1c00000

    .line 347
    .line 348
    and-int v16, v16, v17

    .line 349
    .line 350
    or-int v12, v12, v16

    .line 351
    .line 352
    shr-int/lit8 v8, v8, 0x12

    .line 353
    .line 354
    and-int/lit8 v8, v8, 0x7e

    .line 355
    .line 356
    move/from16 v18, v8

    .line 357
    .line 358
    move-object v8, v0

    .line 359
    move-object v0, v2

    .line 360
    move-object v2, v6

    .line 361
    move v6, v11

    .line 362
    move v11, v12

    .line 363
    move/from16 v12, v18

    .line 364
    .line 365
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-wn8IZOc(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V

    .line 366
    .line 367
    .line 368
    move-object v2, v0

    .line 369
    move-object v3, v4

    .line 370
    move-object v4, v5

    .line 371
    move-object v6, v7

    .line 372
    move-object v8, v9

    .line 373
    move v5, v15

    .line 374
    goto :goto_13

    .line 375
    :cond_1a
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 376
    .line 377
    .line 378
    move/from16 v5, p4

    .line 379
    .line 380
    move-object v2, v4

    .line 381
    move-object v3, v6

    .line 382
    move-object v4, v8

    .line 383
    move-object v8, v12

    .line 384
    move-object/from16 v6, p5

    .line 385
    .line 386
    :goto_13
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    if-eqz v11, :cond_1b

    .line 391
    .line 392
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda1;

    .line 393
    .line 394
    move-object/from16 v1, p0

    .line 395
    .line 396
    move-object/from16 v7, p6

    .line 397
    .line 398
    move v9, v13

    .line 399
    move v10, v14

    .line 400
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;II)V

    .line 401
    .line 402
    .line 403
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 404
    .line 405
    :cond_1b
    return-void
.end method

.method public static final TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/GapComposer;I)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v3, p2

    .line 6
    .line 7
    move-wide/from16 v9, p8

    .line 8
    .line 9
    move-object/from16 v15, p14

    .line 10
    .line 11
    move/from16 v0, p16

    .line 12
    .line 13
    move-object/from16 v5, p17

    .line 14
    .line 15
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 16
    .line 17
    const v7, 0x788a5dc

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x2

    .line 32
    :goto_0
    or-int v7, p18, v7

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    if-eqz v11, :cond_1

    .line 39
    .line 40
    const/16 v11, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v11, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v7, v11

    .line 46
    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-eqz v11, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v11, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v7, v11

    .line 58
    move-wide/from16 v13, p4

    .line 59
    .line 60
    invoke-virtual {v5, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 61
    .line 62
    .line 63
    move-result v17

    .line 64
    if-eqz v17, :cond_3

    .line 65
    .line 66
    const/16 v17, 0x800

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v17, 0x400

    .line 70
    .line 71
    :goto_3
    or-int v7, v7, v17

    .line 72
    .line 73
    move-wide/from16 v11, p6

    .line 74
    .line 75
    invoke-virtual {v5, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    if-eqz v19, :cond_4

    .line 80
    .line 81
    const/16 v19, 0x4000

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    const/16 v19, 0x2000

    .line 85
    .line 86
    :goto_4
    or-int v7, v7, v19

    .line 87
    .line 88
    invoke-virtual {v5, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 89
    .line 90
    .line 91
    move-result v19

    .line 92
    const/high16 v20, 0x10000

    .line 93
    .line 94
    const/high16 v21, 0x20000

    .line 95
    .line 96
    if-eqz v19, :cond_5

    .line 97
    .line 98
    move/from16 v19, v21

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    move/from16 v19, v20

    .line 102
    .line 103
    :goto_5
    or-int v7, v7, v19

    .line 104
    .line 105
    move-object/from16 v8, p10

    .line 106
    .line 107
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v22

    .line 111
    if-eqz v22, :cond_6

    .line 112
    .line 113
    const/high16 v22, 0x100000

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    const/high16 v22, 0x80000

    .line 117
    .line 118
    :goto_6
    or-int v7, v7, v22

    .line 119
    .line 120
    move/from16 v22, v7

    .line 121
    .line 122
    move-object/from16 v7, p11

    .line 123
    .line 124
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v23

    .line 128
    const/high16 v24, 0x400000

    .line 129
    .line 130
    if-eqz v23, :cond_7

    .line 131
    .line 132
    const/high16 v23, 0x800000

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_7
    move/from16 v23, v24

    .line 136
    .line 137
    :goto_7
    or-int v22, v22, v23

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_8

    .line 145
    .line 146
    const/high16 v7, 0x4000000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_8
    const/high16 v7, 0x2000000

    .line 150
    .line 151
    :goto_8
    or-int v7, v22, v7

    .line 152
    .line 153
    move/from16 v22, v7

    .line 154
    .line 155
    move-object/from16 v7, p12

    .line 156
    .line 157
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v25

    .line 161
    if-eqz v25, :cond_9

    .line 162
    .line 163
    const/high16 v25, 0x20000000

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_9
    const/high16 v25, 0x10000000

    .line 167
    .line 168
    :goto_9
    or-int v22, v22, v25

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_a

    .line 175
    .line 176
    const/16 v18, 0x100

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_a
    const/16 v18, 0x80

    .line 180
    .line 181
    :goto_a
    const v6, 0x186c36

    .line 182
    .line 183
    .line 184
    or-int v6, v6, v18

    .line 185
    .line 186
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v18

    .line 190
    if-eqz v18, :cond_b

    .line 191
    .line 192
    move/from16 v20, v21

    .line 193
    .line 194
    :cond_b
    or-int v6, v6, v20

    .line 195
    .line 196
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 197
    .line 198
    .line 199
    move-result v18

    .line 200
    if-eqz v18, :cond_c

    .line 201
    .line 202
    const/high16 v24, 0x800000

    .line 203
    .line 204
    :cond_c
    or-int v6, v6, v24

    .line 205
    .line 206
    const v18, 0x12492493

    .line 207
    .line 208
    .line 209
    and-int v7, v22, v18

    .line 210
    .line 211
    const v8, 0x12492492

    .line 212
    .line 213
    .line 214
    if-ne v7, v8, :cond_e

    .line 215
    .line 216
    const v7, 0x492493

    .line 217
    .line 218
    .line 219
    and-int/2addr v7, v6

    .line 220
    const v8, 0x492492

    .line 221
    .line 222
    .line 223
    if-eq v7, v8, :cond_d

    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_d
    const/4 v7, 0x0

    .line 227
    goto :goto_c

    .line 228
    :cond_e
    :goto_b
    const/4 v7, 0x1

    .line 229
    :goto_c
    and-int/lit8 v8, v22, 0x1

    .line 230
    .line 231
    invoke-virtual {v5, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eqz v7, :cond_21

    .line 236
    .line 237
    and-int/lit8 v7, v22, 0x70

    .line 238
    .line 239
    const/16 v8, 0x20

    .line 240
    .line 241
    if-eq v7, v8, :cond_f

    .line 242
    .line 243
    const/4 v7, 0x0

    .line 244
    goto :goto_d

    .line 245
    :cond_f
    const/4 v7, 0x1

    .line 246
    :goto_d
    and-int/lit16 v8, v6, 0x380

    .line 247
    .line 248
    const/16 v11, 0x100

    .line 249
    .line 250
    if-ne v8, v11, :cond_10

    .line 251
    .line 252
    const/4 v8, 0x1

    .line 253
    goto :goto_e

    .line 254
    :cond_10
    const/4 v8, 0x0

    .line 255
    :goto_e
    or-int/2addr v7, v8

    .line 256
    const/high16 v8, 0x1c00000

    .line 257
    .line 258
    and-int/2addr v8, v6

    .line 259
    const/high16 v11, 0x800000

    .line 260
    .line 261
    if-ne v8, v11, :cond_11

    .line 262
    .line 263
    const/4 v8, 0x1

    .line 264
    goto :goto_f

    .line 265
    :cond_11
    const/4 v8, 0x0

    .line 266
    :goto_f
    or-int/2addr v7, v8

    .line 267
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 272
    .line 273
    if-nez v7, :cond_12

    .line 274
    .line 275
    if-ne v8, v11, :cond_13

    .line 276
    .line 277
    :cond_12
    new-instance v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    .line 278
    .line 279
    invoke-direct {v8, v2, v0}, Landroidx/compose/material3/TopAppBarMeasurePolicy;-><init>(Landroidx/compose/material3/internal/FloatProducer;F)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_13
    check-cast v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    .line 286
    .line 287
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-static {v5, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 300
    .line 301
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 305
    .line 306
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 307
    .line 308
    .line 309
    iget-boolean v2, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 310
    .line 311
    if-eqz v2, :cond_14

    .line 312
    .line 313
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 314
    .line 315
    .line 316
    goto :goto_10

    .line 317
    :cond_14
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 318
    .line 319
    .line 320
    :goto_10
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 321
    .line 322
    invoke-static {v5, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 323
    .line 324
    .line 325
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 326
    .line 327
    invoke-static {v5, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 331
    .line 332
    move/from16 v16, v6

    .line 333
    .line 334
    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 335
    .line 336
    if-nez v6, :cond_15

    .line 337
    .line 338
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-nez v6, :cond_16

    .line 351
    .line 352
    :cond_15
    invoke-static {v7, v5, v7, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 353
    .line 354
    .line 355
    :cond_16
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 356
    .line 357
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    .line 359
    .line 360
    const-string v0, "navigationIcon"

    .line 361
    .line 362
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 363
    .line 364
    invoke-static {v7, v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 365
    .line 366
    .line 367
    move-result-object v25

    .line 368
    const/16 v29, 0x0

    .line 369
    .line 370
    const/16 v30, 0xe

    .line 371
    .line 372
    sget v34, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    .line 373
    .line 374
    const/16 v27, 0x0

    .line 375
    .line 376
    const/16 v28, 0x0

    .line 377
    .line 378
    move/from16 v26, v34

    .line 379
    .line 380
    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move/from16 v13, v26

    .line 385
    .line 386
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 387
    .line 388
    const/4 v9, 0x0

    .line 389
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    move-object/from16 v25, v14

    .line 398
    .line 399
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 400
    .line 401
    .line 402
    move-result-object v14

    .line 403
    invoke-static {v5, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 408
    .line 409
    .line 410
    move-object/from16 v17, v11

    .line 411
    .line 412
    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 413
    .line 414
    if-eqz v11, :cond_17

    .line 415
    .line 416
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 417
    .line 418
    .line 419
    goto :goto_11

    .line 420
    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 421
    .line 422
    .line 423
    :goto_11
    invoke-static {v5, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v5, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 427
    .line 428
    .line 429
    iget-boolean v10, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 430
    .line 431
    if-nez v10, :cond_18

    .line 432
    .line 433
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    if-nez v10, :cond_19

    .line 446
    .line 447
    :cond_18
    invoke-static {v9, v5, v9, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 448
    .line 449
    .line 450
    :cond_19
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 451
    .line 452
    .line 453
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 454
    .line 455
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    .line 456
    .line 457
    invoke-direct {v9, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    shr-int/lit8 v10, v16, 0xc

    .line 465
    .line 466
    and-int/lit8 v10, v10, 0x70

    .line 467
    .line 468
    const/16 v11, 0x8

    .line 469
    .line 470
    or-int/2addr v10, v11

    .line 471
    invoke-static {v9, v15, v5, v10}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 472
    .line 473
    .line 474
    const/4 v9, 0x1

    .line 475
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 476
    .line 477
    .line 478
    const v9, -0x510b6613

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 482
    .line 483
    .line 484
    const-string v9, "title"

    .line 485
    .line 486
    invoke-static {v7, v9}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    const/4 v10, 0x0

    .line 491
    const/4 v11, 0x2

    .line 492
    invoke-static {v9, v13, v10, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    const v10, 0x1e6b2c0d

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 500
    .line 501
    .line 502
    const/4 v10, 0x0

    .line 503
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 504
    .line 505
    .line 506
    invoke-interface {v9, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    move-object/from16 v11, v17

    .line 515
    .line 516
    if-ne v10, v11, :cond_1a

    .line 517
    .line 518
    new-instance v10, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    .line 519
    .line 520
    const/4 v11, 0x3

    .line 521
    move-object/from16 v14, p13

    .line 522
    .line 523
    invoke-direct {v10, v11, v14}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    goto :goto_12

    .line 530
    :cond_1a
    move-object/from16 v14, p13

    .line 531
    .line 532
    :goto_12
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 533
    .line 534
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    move-object/from16 v10, v25

    .line 539
    .line 540
    const/4 v11, 0x0

    .line 541
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    invoke-static {v5, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 558
    .line 559
    .line 560
    move/from16 v26, v13

    .line 561
    .line 562
    iget-boolean v13, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 563
    .line 564
    if-eqz v13, :cond_1b

    .line 565
    .line 566
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 567
    .line 568
    .line 569
    goto :goto_13

    .line 570
    :cond_1b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 571
    .line 572
    .line 573
    :goto_13
    invoke-static {v5, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 577
    .line 578
    .line 579
    iget-boolean v3, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 580
    .line 581
    if-nez v3, :cond_1c

    .line 582
    .line 583
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v11

    .line 591
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-nez v3, :cond_1d

    .line 596
    .line 597
    :cond_1c
    invoke-static {v4, v5, v4, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 598
    .line 599
    .line 600
    :cond_1d
    invoke-static {v5, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    .line 602
    .line 603
    shr-int/lit8 v3, v22, 0x9

    .line 604
    .line 605
    and-int/lit8 v3, v3, 0xe

    .line 606
    .line 607
    shr-int/lit8 v4, v22, 0x12

    .line 608
    .line 609
    and-int/lit8 v4, v4, 0x70

    .line 610
    .line 611
    or-int/2addr v3, v4

    .line 612
    shr-int/lit8 v4, v22, 0xc

    .line 613
    .line 614
    and-int/lit16 v4, v4, 0x380

    .line 615
    .line 616
    or-int v21, v3, v4

    .line 617
    .line 618
    move-wide/from16 v16, p4

    .line 619
    .line 620
    move-object/from16 v19, p10

    .line 621
    .line 622
    move-object/from16 v18, p11

    .line 623
    .line 624
    move-object/from16 v20, v5

    .line 625
    .line 626
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 627
    .line 628
    .line 629
    const/4 v9, 0x1

    .line 630
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 631
    .line 632
    .line 633
    const/4 v9, 0x0

    .line 634
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 635
    .line 636
    .line 637
    const-string v3, "actionIcons"

    .line 638
    .line 639
    invoke-static {v7, v3}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 640
    .line 641
    .line 642
    move-result-object v31

    .line 643
    const/16 v35, 0x0

    .line 644
    .line 645
    const/16 v36, 0xb

    .line 646
    .line 647
    const/16 v32, 0x0

    .line 648
    .line 649
    const/16 v33, 0x0

    .line 650
    .line 651
    move/from16 v34, v26

    .line 652
    .line 653
    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    invoke-static {v5, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 674
    .line 675
    .line 676
    iget-boolean v10, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 677
    .line 678
    if-eqz v10, :cond_1e

    .line 679
    .line 680
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 681
    .line 682
    .line 683
    goto :goto_14

    .line 684
    :cond_1e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 685
    .line 686
    .line 687
    :goto_14
    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v5, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 691
    .line 692
    .line 693
    iget-boolean v1, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 694
    .line 695
    if-nez v1, :cond_1f

    .line 696
    .line 697
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-nez v1, :cond_20

    .line 710
    .line 711
    :cond_1f
    invoke-static {v7, v5, v7, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 712
    .line 713
    .line 714
    :cond_20
    invoke-static {v5, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 715
    .line 716
    .line 717
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 718
    .line 719
    move-wide/from16 v9, p8

    .line 720
    .line 721
    invoke-direct {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    const/16 v1, 0x38

    .line 729
    .line 730
    move-object/from16 v2, p15

    .line 731
    .line 732
    invoke-static {v0, v2, v5, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 733
    .line 734
    .line 735
    const/4 v0, 0x1

    .line 736
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 740
    .line 741
    .line 742
    goto :goto_15

    .line 743
    :cond_21
    move-object/from16 v14, p13

    .line 744
    .line 745
    move-object/from16 v2, p15

    .line 746
    .line 747
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 748
    .line 749
    .line 750
    :goto_15
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    if-eqz v0, :cond_22

    .line 755
    .line 756
    move-object v1, v0

    .line 757
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;

    .line 758
    .line 759
    move-wide/from16 v3, p2

    .line 760
    .line 761
    move-wide/from16 v5, p4

    .line 762
    .line 763
    move-wide/from16 v7, p6

    .line 764
    .line 765
    move-object/from16 v11, p10

    .line 766
    .line 767
    move-object/from16 v12, p11

    .line 768
    .line 769
    move-object/from16 v13, p12

    .line 770
    .line 771
    move/from16 v17, p16

    .line 772
    .line 773
    move/from16 v18, p18

    .line 774
    .line 775
    move-object/from16 v37, v1

    .line 776
    .line 777
    move-object/from16 v16, v2

    .line 778
    .line 779
    move-object/from16 v1, p0

    .line 780
    .line 781
    move-object/from16 v2, p1

    .line 782
    .line 783
    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FI)V

    .line 784
    .line 785
    .line 786
    move-object/from16 v1, v37

    .line 787
    .line 788
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 789
    .line 790
    :cond_22
    return-void
.end method
