.class public abstract Landroidx/compose/material3/MaterialThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalUsingExpressiveTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final _localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/MaterialThemeKt;->LocalUsingExpressiveTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    .line 29
    return-void
.end method

.method public static final MaterialExpressiveTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v5, p2

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x4e84dbdc

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p2, p3, 0x6

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    move p2, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x2

    .line 24
    :goto_0
    or-int/2addr p2, p3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move p2, p3

    .line 27
    :goto_1
    or-int/lit16 p2, p2, 0xdb0

    .line 28
    .line 29
    and-int/lit16 v0, p3, 0x6000

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/16 v0, 0x4000

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v0, 0x2000

    .line 43
    .line 44
    :goto_2
    or-int/2addr p2, v0

    .line 45
    :cond_3
    and-int/lit16 v0, p2, 0x2493

    .line 46
    .line 47
    const/16 v1, 0x2492

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v0, v8

    .line 55
    :goto_3
    and-int/lit8 v1, p2, 0x1

    .line 56
    .line 57
    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->LocalUsingExpressiveTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    const v0, 0x56f16f4e

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 84
    .line 85
    if-nez p0, :cond_5

    .line 86
    .line 87
    const v1, -0x3f428139

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/compose/material3/MaterialTheme$Values;

    .line 98
    .line 99
    iget-object v1, v1, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 100
    .line 101
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const v1, -0x3f4284bc

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 112
    .line 113
    .line 114
    move-object v1, p0

    .line 115
    :goto_4
    const v2, -0x3f427878

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroidx/compose/material3/MaterialTheme$Values;

    .line 126
    .line 127
    iget-object v2, v2, Landroidx/compose/material3/MaterialTheme$Values;->motionScheme:Landroidx/compose/material3/MotionScheme;

    .line 128
    .line 129
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 130
    .line 131
    .line 132
    const v3, -0x3f42701a

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroidx/compose/material3/MaterialTheme$Values;

    .line 143
    .line 144
    iget-object v3, v3, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 145
    .line 146
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    const v4, -0x3f4268fe

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 160
    .line 161
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->shapes:Landroidx/compose/material3/Shapes;

    .line 162
    .line 163
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 164
    .line 165
    .line 166
    const v4, 0xe000

    .line 167
    .line 168
    .line 169
    and-int v6, p2, v4

    .line 170
    .line 171
    move-object v4, v2

    .line 172
    move-object v2, v0

    .line 173
    move-object v0, v1

    .line 174
    move-object v1, v4

    .line 175
    move-object v4, p1

    .line 176
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_6
    move-object v4, p1

    .line 184
    const p1, 0x56f66d35

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 188
    .line 189
    .line 190
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance p2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 197
    .line 198
    const/16 v0, 0xa

    .line 199
    .line 200
    invoke-direct {p2, p0, v4, v0}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    const v0, 0x5b8825f8

    .line 204
    .line 205
    .line 206
    invoke-static {v0, p2, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const/16 v0, 0x38

    .line 211
    .line 212
    invoke-static {p1, p2, v5, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    move-object v4, p1

    .line 220
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 221
    .line 222
    .line 223
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    new-instance p2, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;

    .line 230
    .line 231
    invoke-direct {p2, p3, p0, v4, v7}, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 235
    .line 236
    :cond_8
    return-void
.end method

.method public static final MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v0, p5

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v7, 0x35e9c094

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v7, v6, 0x6

    .line 24
    .line 25
    const/4 v8, 0x2

    .line 26
    if-nez v7, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v7, v8

    .line 37
    :goto_0
    or-int/2addr v7, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v7, v6

    .line 40
    :goto_1
    and-int/lit8 v9, v6, 0x30

    .line 41
    .line 42
    if-nez v9, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v9, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v7, v9

    .line 56
    :cond_3
    and-int/lit16 v9, v6, 0x180

    .line 57
    .line 58
    if-nez v9, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_4

    .line 65
    .line 66
    const/16 v9, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v9, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v7, v9

    .line 72
    :cond_5
    and-int/lit16 v9, v6, 0xc00

    .line 73
    .line 74
    if-nez v9, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    const/16 v9, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v9, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v7, v9

    .line 88
    :cond_7
    and-int/lit16 v9, v6, 0x6000

    .line 89
    .line 90
    if-nez v9, :cond_9

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_8

    .line 97
    .line 98
    const/16 v9, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v9, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v7, v9

    .line 104
    :cond_9
    and-int/lit16 v9, v7, 0x2493

    .line 105
    .line 106
    const/16 v10, 0x2492

    .line 107
    .line 108
    const/4 v12, 0x1

    .line 109
    if-eq v9, v10, :cond_a

    .line 110
    .line 111
    move v9, v12

    .line 112
    goto :goto_6

    .line 113
    :cond_a
    const/4 v9, 0x0

    .line 114
    :goto_6
    and-int/2addr v7, v12

    .line 115
    invoke-virtual {v0, v7, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_f

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 122
    .line 123
    .line 124
    and-int/lit8 v7, v6, 0x1

    .line 125
    .line 126
    if-eqz v7, :cond_c

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_b

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    :cond_c
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 139
    .line 140
    .line 141
    new-instance v7, Landroidx/compose/material3/MaterialTheme$Values;

    .line 142
    .line 143
    invoke-direct {v7, v1, v4, v3, v2}, Landroidx/compose/material3/MaterialTheme$Values;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Typography;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/MotionScheme;)V

    .line 144
    .line 145
    .line 146
    const-wide/16 v9, 0x0

    .line 147
    .line 148
    const/4 v13, 0x7

    .line 149
    invoke-static {v13, v9, v10}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(IJ)Landroidx/compose/material3/RippleNodeFactory;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    iget-wide v13, v1, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 154
    .line 155
    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    if-nez v10, :cond_e

    .line 164
    .line 165
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 166
    .line 167
    if-ne v15, v10, :cond_d

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_d
    move/from16 v16, v12

    .line 171
    .line 172
    const/16 p5, 0x0

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_e
    :goto_8
    new-instance v15, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 176
    .line 177
    const v10, 0x3ecccccd    # 0.4f

    .line 178
    .line 179
    .line 180
    move/from16 v16, v12

    .line 181
    .line 182
    const/16 p5, 0x0

    .line 183
    .line 184
    invoke-static {v13, v14, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 185
    .line 186
    .line 187
    move-result-wide v11

    .line 188
    invoke-direct {v15, v13, v14, v11, v12}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJ)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :goto_9
    check-cast v15, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 195
    .line 196
    sget-object v10, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 197
    .line 198
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    sget-object v10, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    sget-object v10, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 209
    .line 210
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    const/4 v11, 0x3

    .line 215
    new-array v11, v11, [Landroidx/compose/runtime/ProvidedValue;

    .line 216
    .line 217
    aput-object v7, v11, p5

    .line 218
    .line 219
    aput-object v9, v11, v16

    .line 220
    .line 221
    aput-object v10, v11, v8

    .line 222
    .line 223
    new-instance v7, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda4;

    .line 224
    .line 225
    move/from16 v8, p5

    .line 226
    .line 227
    invoke-direct {v7, v4, v5, v8}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 228
    .line 229
    .line 230
    const v8, -0x68571c2c

    .line 231
    .line 232
    .line 233
    invoke-static {v8, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    const/16 v8, 0x38

    .line 238
    .line 239
    invoke-static {v11, v7, v0, v8}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 244
    .line 245
    .line 246
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    if-eqz v8, :cond_10

    .line 251
    .line 252
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;

    .line 253
    .line 254
    const/4 v7, 0x0

    .line 255
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 256
    .line 257
    .line 258
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    :cond_10
    return-void
.end method
