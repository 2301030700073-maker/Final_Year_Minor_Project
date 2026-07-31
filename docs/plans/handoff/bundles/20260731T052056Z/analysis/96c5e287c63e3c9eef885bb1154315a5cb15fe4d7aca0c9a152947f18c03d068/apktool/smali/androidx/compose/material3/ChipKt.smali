.class public abstract Landroidx/compose/material3/ChipKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/high16 v1, 0x41000000    # 8.0f

    .line 3
    .line 4
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sput-object v2, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sput-object v2, Landroidx/compose/material3/ChipKt;->FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final AnimatingChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p11

    .line 6
    .line 7
    const v1, -0x7b6d352a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v11, p0

    .line 14
    .line 15
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v5, 0x2

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v5

    .line 25
    :goto_0
    or-int v1, p12, v1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v6, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v1, v6

    .line 39
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v6, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v1, v6

    .line 51
    move-object/from16 v8, p4

    .line 52
    .line 53
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    const/16 v6, 0x800

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v6, 0x400

    .line 63
    .line 64
    :goto_3
    or-int/2addr v1, v6

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    const/16 v7, 0x4000

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/16 v7, 0x2000

    .line 76
    .line 77
    :goto_4
    or-int/2addr v1, v7

    .line 78
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    const/high16 v6, 0x20000

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    const/high16 v6, 0x10000

    .line 88
    .line 89
    :goto_5
    or-int/2addr v1, v6

    .line 90
    move-wide/from16 v6, p5

    .line 91
    .line 92
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_6

    .line 97
    .line 98
    const/high16 v9, 0x100000

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    const/high16 v9, 0x80000

    .line 102
    .line 103
    :goto_6
    or-int/2addr v1, v9

    .line 104
    move-wide/from16 v12, p7

    .line 105
    .line 106
    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_7

    .line 111
    .line 112
    const/high16 v9, 0x800000

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_7
    const/high16 v9, 0x400000

    .line 116
    .line 117
    :goto_7
    or-int/2addr v1, v9

    .line 118
    move/from16 v10, p9

    .line 119
    .line 120
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_8

    .line 125
    .line 126
    const/high16 v9, 0x4000000

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_8
    const/high16 v9, 0x2000000

    .line 130
    .line 131
    :goto_8
    or-int/2addr v1, v9

    .line 132
    move-object/from16 v9, p10

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    if-eqz v14, :cond_9

    .line 139
    .line 140
    const/high16 v14, 0x20000000

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_9
    const/high16 v14, 0x10000000

    .line 144
    .line 145
    :goto_9
    or-int/2addr v1, v14

    .line 146
    const v14, 0x12492493

    .line 147
    .line 148
    .line 149
    and-int/2addr v14, v1

    .line 150
    const v15, 0x12492492

    .line 151
    .line 152
    .line 153
    const/16 v16, 0x0

    .line 154
    .line 155
    const/16 v17, 0x1

    .line 156
    .line 157
    if-eq v14, v15, :cond_a

    .line 158
    .line 159
    move/from16 v14, v17

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_a
    move/from16 v14, v16

    .line 163
    .line 164
    :goto_a
    and-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    invoke-virtual {v0, v1, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 175
    .line 176
    invoke-direct {v14, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v14, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 184
    .line 185
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    new-array v15, v5, [Landroidx/compose/runtime/ProvidedValue;

    .line 190
    .line 191
    aput-object v1, v15, v16

    .line 192
    .line 193
    aput-object v14, v15, v17

    .line 194
    .line 195
    new-instance v5, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;

    .line 196
    .line 197
    move-wide/from16 v18, v6

    .line 198
    .line 199
    move-object v7, v9

    .line 200
    move v6, v10

    .line 201
    move-wide/from16 v9, v18

    .line 202
    .line 203
    invoke-direct/range {v5 .. v13}, Landroidx/compose/material3/ChipKt$AnimatingChipContent$1;-><init>(FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;J)V

    .line 204
    .line 205
    .line 206
    const v1, -0x27d471ea

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const/16 v5, 0x38

    .line 214
    .line 215
    invoke-static {v15, v1, v0, v5}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_b

    .line 219
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 220
    .line 221
    .line 222
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    if-eqz v13, :cond_c

    .line 227
    .line 228
    new-instance v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;

    .line 229
    .line 230
    move-object/from16 v1, p0

    .line 231
    .line 232
    move-object/from16 v5, p4

    .line 233
    .line 234
    move-wide/from16 v6, p5

    .line 235
    .line 236
    move-wide/from16 v8, p7

    .line 237
    .line 238
    move/from16 v10, p9

    .line 239
    .line 240
    move-object/from16 v11, p10

    .line 241
    .line 242
    move/from16 v12, p12

    .line 243
    .line 244
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;I)V

    .line 245
    .line 246
    .line 247
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 248
    .line 249
    :cond_c
    return-void
.end method

.method public static final AssistChip(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V
    .locals 31

    .line 1
    move-object/from16 v13, p8

    .line 2
    .line 3
    const v0, 0x470dbf8b

    .line 4
    .line 5
    .line 6
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int v0, p9, v0

    .line 21
    .line 22
    const v2, 0x124b6d80

    .line 23
    .line 24
    .line 25
    or-int/2addr v0, v2

    .line 26
    const v2, 0x12492493

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v0

    .line 30
    const v3, 0x12492492

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v4

    .line 39
    :goto_1
    and-int/lit8 v3, v0, 0x1

    .line 40
    .line 41
    invoke-virtual {v13, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 48
    .line 49
    .line 50
    and-int/lit8 v2, p9, 0x1

    .line 51
    .line 52
    const v3, -0x7ff80001

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 65
    .line 66
    .line 67
    and-int/2addr v0, v3

    .line 68
    move/from16 v2, p3

    .line 69
    .line 70
    move-object/from16 v7, p4

    .line 71
    .line 72
    move-object/from16 v8, p5

    .line 73
    .line 74
    move-object/from16 v9, p6

    .line 75
    .line 76
    move-object/from16 v10, p7

    .line 77
    .line 78
    move v3, v0

    .line 79
    move-object/from16 v0, p2

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    :goto_2
    sget v2, Landroidx/compose/material3/AssistChipDefaults;->Height:F

    .line 84
    .line 85
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 86
    .line 87
    invoke-static {v2, v13}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/Shape;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    sget-object v5, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 92
    .line 93
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroidx/compose/material3/ColorScheme;

    .line 98
    .line 99
    iget-object v6, v5, Landroidx/compose/material3/ColorScheme;->defaultAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    .line 100
    .line 101
    if-nez v6, :cond_4

    .line 102
    .line 103
    new-instance v14, Landroidx/compose/material3/ChipColors;

    .line 104
    .line 105
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 106
    .line 107
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 108
    .line 109
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v17

    .line 113
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 114
    .line 115
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v19

    .line 119
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v21

    .line 123
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 124
    .line 125
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    sget v8, Landroidx/compose/material3/tokens/AssistChipTokens;->DisabledLabelTextOpacity:F

    .line 130
    .line 131
    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v25

    .line 135
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->DisabledIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 136
    .line 137
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    sget v9, Landroidx/compose/material3/tokens/AssistChipTokens;->DisabledIconOpacity:F

    .line 142
    .line 143
    invoke-static {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v27

    .line 147
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v6

    .line 151
    invoke-static {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v29

    .line 155
    move-wide/from16 v23, v15

    .line 156
    .line 157
    invoke-direct/range {v14 .. v30}, Landroidx/compose/material3/ChipColors;-><init>(JJJJJJJJ)V

    .line 158
    .line 159
    .line 160
    iput-object v14, v5, Landroidx/compose/material3/ColorScheme;->defaultAssistChipColorsCached:Landroidx/compose/material3/ChipColors;

    .line 161
    .line 162
    move-object v6, v14

    .line 163
    :cond_4
    sget v5, Landroidx/compose/material3/tokens/AssistChipTokens;->DraggedContainerElevation:F

    .line 164
    .line 165
    new-instance v7, Landroidx/compose/material3/ChipElevation;

    .line 166
    .line 167
    invoke-direct {v7, v5}, Landroidx/compose/material3/ChipElevation;-><init>(F)V

    .line 168
    .line 169
    .line 170
    sget-object v5, Landroidx/compose/material3/tokens/AssistChipTokens;->FlatOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 171
    .line 172
    invoke-static {v5, v13}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v8

    .line 176
    sget-object v5, Landroidx/compose/material3/tokens/AssistChipTokens;->FlatDisabledOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 177
    .line 178
    invoke-static {v5, v13}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v10

    .line 182
    sget v5, Landroidx/compose/material3/tokens/AssistChipTokens;->FlatDisabledOutlineOpacity:F

    .line 183
    .line 184
    invoke-static {v5, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 185
    .line 186
    .line 187
    sget v5, Landroidx/compose/material3/tokens/AssistChipTokens;->FlatOutlineWidth:F

    .line 188
    .line 189
    invoke-static {v5, v8, v9}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    and-int/2addr v0, v3

    .line 194
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 195
    .line 196
    move-object v8, v3

    .line 197
    move v3, v0

    .line 198
    move-object v0, v8

    .line 199
    move-object v10, v5

    .line 200
    move-object v8, v6

    .line 201
    move-object v9, v7

    .line 202
    move-object v7, v2

    .line 203
    move v2, v4

    .line 204
    :goto_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 205
    .line 206
    .line 207
    sget-object v4, Landroidx/compose/material3/tokens/AssistChipTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 208
    .line 209
    invoke-static {v4, v13}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/text/TextStyle;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    if-eqz v2, :cond_5

    .line 214
    .line 215
    iget-wide v5, v8, Landroidx/compose/material3/ChipColors;->labelColor:J

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_5
    iget-wide v5, v8, Landroidx/compose/material3/ChipColors;->disabledLabelColor:J

    .line 219
    .line 220
    :goto_4
    sget v11, Landroidx/compose/material3/AssistChipDefaults;->Height:F

    .line 221
    .line 222
    shl-int/lit8 v3, v3, 0x3

    .line 223
    .line 224
    and-int/lit8 v3, v3, 0x70

    .line 225
    .line 226
    const v12, 0xd80d86

    .line 227
    .line 228
    .line 229
    or-int v14, v3, v12

    .line 230
    .line 231
    const/16 v15, 0x6d80

    .line 232
    .line 233
    sget-object v12, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 234
    .line 235
    move-object/from16 v3, p1

    .line 236
    .line 237
    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 238
    .line 239
    .line 240
    move-object v4, v0

    .line 241
    move v5, v2

    .line 242
    move-object v6, v7

    .line 243
    move-object v7, v8

    .line 244
    move-object v8, v9

    .line 245
    move-object v9, v10

    .line 246
    goto :goto_5

    .line 247
    :cond_6
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 248
    .line 249
    .line 250
    move-object/from16 v4, p2

    .line 251
    .line 252
    move/from16 v5, p3

    .line 253
    .line 254
    move-object/from16 v6, p4

    .line 255
    .line 256
    move-object/from16 v7, p5

    .line 257
    .line 258
    move-object/from16 v8, p6

    .line 259
    .line 260
    move-object/from16 v9, p7

    .line 261
    .line 262
    :goto_5
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_7

    .line 267
    .line 268
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda5;

    .line 269
    .line 270
    move-object/from16 v2, p0

    .line 271
    .line 272
    move-object/from16 v3, p1

    .line 273
    .line 274
    move/from16 v10, p9

    .line 275
    .line 276
    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;I)V

    .line 277
    .line 278
    .line 279
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 280
    .line 281
    :cond_7
    return-void
.end method

.method public static final Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p8

    .line 6
    .line 7
    move-object/from16 v11, p9

    .line 8
    .line 9
    move-object/from16 v14, p13

    .line 10
    .line 11
    move/from16 v12, p14

    .line 12
    .line 13
    move/from16 v13, p15

    .line 14
    .line 15
    const v2, 0x3531f1d6

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v2, v12, 0x6

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x2

    .line 34
    :goto_0
    or-int/2addr v2, v12

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v2, v12

    .line 37
    :goto_1
    and-int/lit8 v6, v12, 0x30

    .line 38
    .line 39
    move-object/from16 v15, p1

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v6, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v2, v6

    .line 55
    :cond_3
    and-int/lit16 v6, v12, 0x180

    .line 56
    .line 57
    if-nez v6, :cond_5

    .line 58
    .line 59
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    const/16 v6, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v6, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v2, v6

    .line 71
    :cond_5
    and-int/lit16 v6, v12, 0xc00

    .line 72
    .line 73
    const/16 v16, 0x400

    .line 74
    .line 75
    const/16 v17, 0x800

    .line 76
    .line 77
    if-nez v6, :cond_7

    .line 78
    .line 79
    move-object/from16 v6, p3

    .line 80
    .line 81
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v18

    .line 85
    if-eqz v18, :cond_6

    .line 86
    .line 87
    move/from16 v18, v17

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    move/from16 v18, v16

    .line 91
    .line 92
    :goto_4
    or-int v2, v2, v18

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_7
    move-object/from16 v6, p3

    .line 96
    .line 97
    :goto_5
    and-int/lit16 v4, v12, 0x6000

    .line 98
    .line 99
    const/16 v19, 0x2000

    .line 100
    .line 101
    const/16 v20, 0x4000

    .line 102
    .line 103
    if-nez v4, :cond_9

    .line 104
    .line 105
    move-object/from16 v4, p4

    .line 106
    .line 107
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v21

    .line 111
    if-eqz v21, :cond_8

    .line 112
    .line 113
    move/from16 v21, v20

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    move/from16 v21, v19

    .line 117
    .line 118
    :goto_6
    or-int v2, v2, v21

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_9
    move-object/from16 v4, p4

    .line 122
    .line 123
    :goto_7
    const/high16 v21, 0x30000

    .line 124
    .line 125
    and-int v21, v12, v21

    .line 126
    .line 127
    move-wide/from16 v8, p5

    .line 128
    .line 129
    if-nez v21, :cond_b

    .line 130
    .line 131
    invoke-virtual {v14, v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 132
    .line 133
    .line 134
    move-result v23

    .line 135
    if-eqz v23, :cond_a

    .line 136
    .line 137
    const/high16 v23, 0x20000

    .line 138
    .line 139
    goto :goto_8

    .line 140
    :cond_a
    const/high16 v23, 0x10000

    .line 141
    .line 142
    :goto_8
    or-int v2, v2, v23

    .line 143
    .line 144
    :cond_b
    const/high16 v23, 0x180000

    .line 145
    .line 146
    and-int v23, v12, v23

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    if-nez v23, :cond_d

    .line 150
    .line 151
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v23

    .line 155
    if-eqz v23, :cond_c

    .line 156
    .line 157
    const/high16 v23, 0x100000

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_c
    const/high16 v23, 0x80000

    .line 161
    .line 162
    :goto_9
    or-int v2, v2, v23

    .line 163
    .line 164
    :cond_d
    const/high16 v23, 0xc00000

    .line 165
    .line 166
    and-int v23, v12, v23

    .line 167
    .line 168
    if-nez v23, :cond_f

    .line 169
    .line 170
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v23

    .line 174
    if-eqz v23, :cond_e

    .line 175
    .line 176
    const/high16 v23, 0x800000

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_e
    const/high16 v23, 0x400000

    .line 180
    .line 181
    :goto_a
    or-int v2, v2, v23

    .line 182
    .line 183
    :cond_f
    const/high16 v23, 0x6000000

    .line 184
    .line 185
    and-int v23, v12, v23

    .line 186
    .line 187
    move-object/from16 v8, p7

    .line 188
    .line 189
    if-nez v23, :cond_11

    .line 190
    .line 191
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_10

    .line 196
    .line 197
    const/high16 v9, 0x4000000

    .line 198
    .line 199
    goto :goto_b

    .line 200
    :cond_10
    const/high16 v9, 0x2000000

    .line 201
    .line 202
    :goto_b
    or-int/2addr v2, v9

    .line 203
    :cond_11
    const/high16 v9, 0x30000000

    .line 204
    .line 205
    and-int/2addr v9, v12

    .line 206
    if-nez v9, :cond_13

    .line 207
    .line 208
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_12

    .line 213
    .line 214
    const/high16 v9, 0x20000000

    .line 215
    .line 216
    goto :goto_c

    .line 217
    :cond_12
    const/high16 v9, 0x10000000

    .line 218
    .line 219
    :goto_c
    or-int/2addr v2, v9

    .line 220
    :cond_13
    and-int/lit8 v9, v13, 0x6

    .line 221
    .line 222
    if-nez v9, :cond_15

    .line 223
    .line 224
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_14

    .line 229
    .line 230
    const/16 v18, 0x4

    .line 231
    .line 232
    goto :goto_d

    .line 233
    :cond_14
    const/16 v18, 0x2

    .line 234
    .line 235
    :goto_d
    or-int v9, v13, v18

    .line 236
    .line 237
    goto :goto_e

    .line 238
    :cond_15
    move v9, v13

    .line 239
    :goto_e
    and-int/lit8 v18, v13, 0x30

    .line 240
    .line 241
    move-object/from16 v8, p10

    .line 242
    .line 243
    if-nez v18, :cond_17

    .line 244
    .line 245
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v18

    .line 249
    if-eqz v18, :cond_16

    .line 250
    .line 251
    const/16 v21, 0x20

    .line 252
    .line 253
    goto :goto_f

    .line 254
    :cond_16
    const/16 v21, 0x10

    .line 255
    .line 256
    :goto_f
    or-int v9, v9, v21

    .line 257
    .line 258
    :cond_17
    and-int/lit16 v10, v13, 0x180

    .line 259
    .line 260
    if-nez v10, :cond_19

    .line 261
    .line 262
    move/from16 v10, p11

    .line 263
    .line 264
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 265
    .line 266
    .line 267
    move-result v21

    .line 268
    if-eqz v21, :cond_18

    .line 269
    .line 270
    const/16 v18, 0x100

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_18
    const/16 v18, 0x80

    .line 274
    .line 275
    :goto_10
    or-int v9, v9, v18

    .line 276
    .line 277
    goto :goto_11

    .line 278
    :cond_19
    move/from16 v10, p11

    .line 279
    .line 280
    :goto_11
    and-int/lit16 v5, v13, 0xc00

    .line 281
    .line 282
    if-nez v5, :cond_1b

    .line 283
    .line 284
    move-object/from16 v5, p12

    .line 285
    .line 286
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v21

    .line 290
    if-eqz v21, :cond_1a

    .line 291
    .line 292
    move/from16 v16, v17

    .line 293
    .line 294
    :cond_1a
    or-int v9, v9, v16

    .line 295
    .line 296
    goto :goto_12

    .line 297
    :cond_1b
    move-object/from16 v5, p12

    .line 298
    .line 299
    :goto_12
    move/from16 v16, v2

    .line 300
    .line 301
    and-int/lit16 v2, v13, 0x6000

    .line 302
    .line 303
    if-nez v2, :cond_1d

    .line 304
    .line 305
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_1c

    .line 310
    .line 311
    move/from16 v19, v20

    .line 312
    .line 313
    :cond_1c
    or-int v9, v9, v19

    .line 314
    .line 315
    :cond_1d
    move v2, v9

    .line 316
    const v9, 0x12492493

    .line 317
    .line 318
    .line 319
    and-int v9, v16, v9

    .line 320
    .line 321
    move-object/from16 v17, v7

    .line 322
    .line 323
    const v7, 0x12492492

    .line 324
    .line 325
    .line 326
    const/16 v19, 0x1

    .line 327
    .line 328
    const/4 v8, 0x0

    .line 329
    if-ne v9, v7, :cond_1f

    .line 330
    .line 331
    and-int/lit16 v7, v2, 0x2493

    .line 332
    .line 333
    const/16 v9, 0x2492

    .line 334
    .line 335
    if-eq v7, v9, :cond_1e

    .line 336
    .line 337
    goto :goto_13

    .line 338
    :cond_1e
    move v7, v8

    .line 339
    goto :goto_14

    .line 340
    :cond_1f
    :goto_13
    move/from16 v7, v19

    .line 341
    .line 342
    :goto_14
    and-int/lit8 v9, v16, 0x1

    .line 343
    .line 344
    invoke-virtual {v14, v9, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_34

    .line 349
    .line 350
    const v7, 0x5f265045

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 361
    .line 362
    if-ne v7, v9, :cond_20

    .line 363
    .line 364
    new-instance v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 365
    .line 366
    invoke-direct {v7}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_20
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 373
    .line 374
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    if-ne v8, v9, :cond_21

    .line 382
    .line 383
    new-instance v8, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    move/from16 v21, v2

    .line 386
    .line 387
    const/16 v2, 0x11

    .line 388
    .line 389
    invoke-direct {v8, v2}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto :goto_15

    .line 396
    :cond_21
    move/from16 v21, v2

    .line 397
    .line 398
    :goto_15
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 399
    .line 400
    const/4 v2, 0x0

    .line 401
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v22

    .line 405
    if-eqz v3, :cond_22

    .line 406
    .line 407
    iget-wide v2, v0, Landroidx/compose/material3/ChipColors;->containerColor:J

    .line 408
    .line 409
    :goto_16
    move-wide/from16 v23, v2

    .line 410
    .line 411
    goto :goto_17

    .line 412
    :cond_22
    iget-wide v2, v0, Landroidx/compose/material3/ChipColors;->disabledContainerColor:J

    .line 413
    .line 414
    goto :goto_16

    .line 415
    :goto_17
    const/16 v25, 0x0

    .line 416
    .line 417
    if-nez v11, :cond_23

    .line 418
    .line 419
    const v2, 0x5f2a8220

    .line 420
    .line 421
    .line 422
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 423
    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 427
    .line 428
    .line 429
    move-object v12, v7

    .line 430
    move/from16 v0, v16

    .line 431
    .line 432
    move-object/from16 v7, v17

    .line 433
    .line 434
    goto/16 :goto_21

    .line 435
    .line 436
    :cond_23
    const v2, -0x4f82c1ff

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 440
    .line 441
    .line 442
    shr-int/lit8 v2, v16, 0x6

    .line 443
    .line 444
    and-int/lit8 v2, v2, 0xe

    .line 445
    .line 446
    shl-int/lit8 v3, v21, 0x6

    .line 447
    .line 448
    and-int/lit16 v3, v3, 0x380

    .line 449
    .line 450
    or-int/2addr v2, v3

    .line 451
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    if-ne v3, v9, :cond_24

    .line 456
    .line 457
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 458
    .line 459
    invoke-direct {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    :cond_24
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 466
    .line 467
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    if-ne v8, v9, :cond_25

    .line 472
    .line 473
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_25
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 481
    .line 482
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v26

    .line 486
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-nez v26, :cond_27

    .line 491
    .line 492
    if-ne v0, v9, :cond_26

    .line 493
    .line 494
    goto :goto_18

    .line 495
    :cond_26
    move/from16 v20, v2

    .line 496
    .line 497
    const/4 v2, 0x0

    .line 498
    goto :goto_19

    .line 499
    :cond_27
    :goto_18
    new-instance v0, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;

    .line 500
    .line 501
    move/from16 v20, v2

    .line 502
    .line 503
    move-object/from16 v1, v17

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    invoke-direct {v0, v7, v3, v1, v2}, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    :goto_19
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 513
    .line 514
    invoke-static {v14, v7, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 522
    .line 523
    if-nez p2, :cond_29

    .line 524
    .line 525
    :cond_28
    :goto_1a
    move/from16 v1, v25

    .line 526
    .line 527
    goto :goto_1b

    .line 528
    :cond_29
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 529
    .line 530
    if-eqz v1, :cond_2a

    .line 531
    .line 532
    goto :goto_1a

    .line 533
    :cond_2a
    instance-of v1, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 534
    .line 535
    if-eqz v1, :cond_2b

    .line 536
    .line 537
    goto :goto_1a

    .line 538
    :cond_2b
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 539
    .line 540
    if-eqz v1, :cond_2c

    .line 541
    .line 542
    goto :goto_1a

    .line 543
    :cond_2c
    instance-of v1, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 544
    .line 545
    if-eqz v1, :cond_28

    .line 546
    .line 547
    iget v1, v11, Landroidx/compose/material3/ChipElevation;->draggedElevation:F

    .line 548
    .line 549
    :goto_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    if-ne v3, v9, :cond_2d

    .line 554
    .line 555
    new-instance v3, Landroidx/compose/animation/core/Animatable;

    .line 556
    .line 557
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 558
    .line 559
    invoke-direct {v2, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 560
    .line 561
    .line 562
    sget-object v4, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 563
    .line 564
    const/16 v5, 0xc

    .line 565
    .line 566
    const/4 v6, 0x0

    .line 567
    invoke-direct {v3, v2, v4, v6, v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_2d
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 574
    .line 575
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 576
    .line 577
    invoke-direct {v2, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    or-int/2addr v4, v5

    .line 589
    and-int/lit8 v5, v20, 0xe

    .line 590
    .line 591
    xor-int/lit8 v5, v5, 0x6

    .line 592
    .line 593
    const/4 v6, 0x4

    .line 594
    if-le v5, v6, :cond_2f

    .line 595
    .line 596
    move/from16 v5, p2

    .line 597
    .line 598
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 599
    .line 600
    .line 601
    move-result v17

    .line 602
    if-nez v17, :cond_2e

    .line 603
    .line 604
    :goto_1c
    move/from16 v17, v1

    .line 605
    .line 606
    goto :goto_1d

    .line 607
    :cond_2e
    move/from16 v17, v1

    .line 608
    .line 609
    goto :goto_1e

    .line 610
    :cond_2f
    move/from16 v5, p2

    .line 611
    .line 612
    goto :goto_1c

    .line 613
    :goto_1d
    and-int/lit8 v1, v20, 0x6

    .line 614
    .line 615
    if-ne v1, v6, :cond_30

    .line 616
    .line 617
    goto :goto_1e

    .line 618
    :cond_30
    const/16 v19, 0x0

    .line 619
    .line 620
    :goto_1e
    or-int v1, v4, v19

    .line 621
    .line 622
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    or-int/2addr v1, v4

    .line 627
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    if-nez v1, :cond_31

    .line 632
    .line 633
    if-ne v4, v9, :cond_32

    .line 634
    .line 635
    :cond_31
    move-object v1, v2

    .line 636
    goto :goto_1f

    .line 637
    :cond_32
    move-object v1, v2

    .line 638
    move-object v12, v7

    .line 639
    move/from16 v0, v16

    .line 640
    .line 641
    const/4 v10, 0x0

    .line 642
    goto :goto_20

    .line 643
    :goto_1f
    new-instance v2, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 644
    .line 645
    move-object v4, v7

    .line 646
    move-object v7, v8

    .line 647
    const/4 v8, 0x0

    .line 648
    const/4 v9, 0x0

    .line 649
    move-object v6, v0

    .line 650
    move-object v12, v4

    .line 651
    move/from16 v0, v16

    .line 652
    .line 653
    move/from16 v4, v17

    .line 654
    .line 655
    const/4 v10, 0x0

    .line 656
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    move-object v4, v2

    .line 663
    :goto_20
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 664
    .line 665
    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 666
    .line 667
    .line 668
    iget-object v7, v3, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 669
    .line 670
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 671
    .line 672
    .line 673
    :goto_21
    if-eqz v7, :cond_33

    .line 674
    .line 675
    iget-object v1, v7, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 676
    .line 677
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 682
    .line 683
    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 684
    .line 685
    move/from16 v25, v1

    .line 686
    .line 687
    :cond_33
    new-instance v2, Landroidx/compose/material3/ChipKt$Chip$2;

    .line 688
    .line 689
    move/from16 v8, p2

    .line 690
    .line 691
    move-object/from16 v3, p3

    .line 692
    .line 693
    move-object/from16 v4, p4

    .line 694
    .line 695
    move-wide/from16 v5, p5

    .line 696
    .line 697
    move-object/from16 v7, p8

    .line 698
    .line 699
    move/from16 v9, p11

    .line 700
    .line 701
    move-object/from16 v10, p12

    .line 702
    .line 703
    invoke-direct/range {v2 .. v10}, Landroidx/compose/material3/ChipKt$Chip$2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/material3/ChipColors;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 704
    .line 705
    .line 706
    const v1, -0x43a1515

    .line 707
    .line 708
    .line 709
    invoke-static {v1, v2, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    shr-int/lit8 v2, v0, 0x3

    .line 714
    .line 715
    and-int/lit8 v2, v2, 0xe

    .line 716
    .line 717
    and-int/lit16 v3, v0, 0x380

    .line 718
    .line 719
    or-int/2addr v2, v3

    .line 720
    shr-int/lit8 v0, v0, 0xf

    .line 721
    .line 722
    and-int/lit16 v0, v0, 0x1c00

    .line 723
    .line 724
    or-int/2addr v0, v2

    .line 725
    shl-int/lit8 v2, v21, 0x15

    .line 726
    .line 727
    const/high16 v3, 0xe000000

    .line 728
    .line 729
    and-int/2addr v2, v3

    .line 730
    or-int/2addr v0, v2

    .line 731
    const/16 v16, 0x60

    .line 732
    .line 733
    const-wide/16 v8, 0x0

    .line 734
    .line 735
    move/from16 v4, p2

    .line 736
    .line 737
    move-object/from16 v5, p7

    .line 738
    .line 739
    move-object/from16 v11, p10

    .line 740
    .line 741
    move-object v13, v1

    .line 742
    move-object v2, v15

    .line 743
    move-object/from16 v3, v22

    .line 744
    .line 745
    move-wide/from16 v6, v23

    .line 746
    .line 747
    move/from16 v10, v25

    .line 748
    .line 749
    move v15, v0

    .line 750
    invoke-static/range {v2 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 751
    .line 752
    .line 753
    goto :goto_22

    .line 754
    :cond_34
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 755
    .line 756
    .line 757
    :goto_22
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    if-eqz v0, :cond_35

    .line 762
    .line 763
    move-object v1, v0

    .line 764
    new-instance v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda7;

    .line 765
    .line 766
    move-object/from16 v2, p1

    .line 767
    .line 768
    move/from16 v3, p2

    .line 769
    .line 770
    move-object/from16 v4, p3

    .line 771
    .line 772
    move-object/from16 v5, p4

    .line 773
    .line 774
    move-wide/from16 v6, p5

    .line 775
    .line 776
    move-object/from16 v8, p7

    .line 777
    .line 778
    move-object/from16 v9, p8

    .line 779
    .line 780
    move-object/from16 v10, p9

    .line 781
    .line 782
    move-object/from16 v11, p10

    .line 783
    .line 784
    move/from16 v12, p11

    .line 785
    .line 786
    move-object/from16 v13, p12

    .line 787
    .line 788
    move/from16 v14, p14

    .line 789
    .line 790
    move/from16 v15, p15

    .line 791
    .line 792
    move-object/from16 v27, v1

    .line 793
    .line 794
    move-object/from16 v1, p0

    .line 795
    .line 796
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;II)V

    .line 797
    .line 798
    .line 799
    move-object/from16 v1, v27

    .line 800
    .line 801
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 802
    .line 803
    :cond_35
    return-void
.end method

.method public static final ChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JJJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p10

    .line 6
    .line 7
    const v1, 0x41e69678

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v10, p0

    .line 14
    .line 15
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v5, 0x2

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v5

    .line 25
    :goto_0
    or-int v1, p11, v1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v6, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v1, v6

    .line 39
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v6, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v1, v6

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    const/16 v7, 0x800

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v7, 0x400

    .line 62
    .line 63
    :goto_3
    or-int/2addr v1, v7

    .line 64
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const/high16 v6, 0x20000

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/high16 v6, 0x10000

    .line 74
    .line 75
    :goto_4
    or-int/2addr v1, v6

    .line 76
    move-wide/from16 v8, p4

    .line 77
    .line 78
    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    const/high16 v6, 0x100000

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    const/high16 v6, 0x80000

    .line 88
    .line 89
    :goto_5
    or-int/2addr v1, v6

    .line 90
    move-wide/from16 v11, p6

    .line 91
    .line 92
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_6

    .line 97
    .line 98
    const/high16 v6, 0x800000

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    const/high16 v6, 0x400000

    .line 102
    .line 103
    :goto_6
    or-int/2addr v1, v6

    .line 104
    move/from16 v6, p8

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_7

    .line 111
    .line 112
    const/high16 v7, 0x4000000

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_7
    const/high16 v7, 0x2000000

    .line 116
    .line 117
    :goto_7
    or-int/2addr v1, v7

    .line 118
    move-object/from16 v7, p9

    .line 119
    .line 120
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eqz v13, :cond_8

    .line 125
    .line 126
    const/high16 v13, 0x20000000

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_8
    const/high16 v13, 0x10000000

    .line 130
    .line 131
    :goto_8
    or-int/2addr v1, v13

    .line 132
    const v13, 0x12492493

    .line 133
    .line 134
    .line 135
    and-int/2addr v13, v1

    .line 136
    const v14, 0x12492492

    .line 137
    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    const/16 v16, 0x1

    .line 141
    .line 142
    if-eq v13, v14, :cond_9

    .line 143
    .line 144
    move/from16 v13, v16

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_9
    move v13, v15

    .line 148
    :goto_9
    and-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    invoke-virtual {v0, v1, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_a

    .line 155
    .line 156
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 157
    .line 158
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 159
    .line 160
    invoke-direct {v13, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sget-object v13, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    .line 169
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    new-array v14, v5, [Landroidx/compose/runtime/ProvidedValue;

    .line 174
    .line 175
    aput-object v1, v14, v15

    .line 176
    .line 177
    aput-object v13, v14, v16

    .line 178
    .line 179
    new-instance v5, Landroidx/compose/material3/ChipKt$ChipContent$1;

    .line 180
    .line 181
    invoke-direct/range {v5 .. v12}, Landroidx/compose/material3/ChipKt$ChipContent$1;-><init>(FLandroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;J)V

    .line 182
    .line 183
    .line 184
    const v1, -0x7ef6d4c8

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const/16 v5, 0x38

    .line 192
    .line 193
    invoke-static {v14, v1, v0, v5}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 194
    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 198
    .line 199
    .line 200
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    if-eqz v12, :cond_b

    .line 205
    .line 206
    new-instance v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    move-object/from16 v1, p0

    .line 209
    .line 210
    move-wide/from16 v5, p4

    .line 211
    .line 212
    move-wide/from16 v7, p6

    .line 213
    .line 214
    move/from16 v9, p8

    .line 215
    .line 216
    move-object/from16 v10, p9

    .line 217
    .line 218
    move/from16 v11, p11

    .line 219
    .line 220
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JJJFLandroidx/compose/foundation/layout/PaddingValues;I)V

    .line 221
    .line 222
    .line 223
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 224
    .line 225
    :cond_b
    return-void
.end method

.method public static final FilterChip(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v13, p10

    .line 2
    .line 3
    const v0, -0x5294a540

    .line 4
    .line 5
    .line 6
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    move/from16 v0, p0

    .line 10
    .line 11
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x4

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    or-int v1, p11, v1

    .line 23
    .line 24
    move-object/from16 v4, p1

    .line 25
    .line 26
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    const/16 v5, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v5, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v1, v5

    .line 38
    const v5, 0x586c00

    .line 39
    .line 40
    .line 41
    or-int/2addr v1, v5

    .line 42
    move-object/from16 v8, p7

    .line 43
    .line 44
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const/high16 v5, 0x4000000

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/high16 v5, 0x2000000

    .line 54
    .line 55
    :goto_2
    or-int/2addr v1, v5

    .line 56
    const/high16 v5, 0x10000000

    .line 57
    .line 58
    or-int/2addr v1, v5

    .line 59
    move-object/from16 v10, p9

    .line 60
    .line 61
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    move v2, v3

    .line 68
    :cond_3
    or-int/lit8 v2, v2, 0x30

    .line 69
    .line 70
    const v3, 0x12492493

    .line 71
    .line 72
    .line 73
    and-int/2addr v3, v1

    .line 74
    const v5, 0x12492492

    .line 75
    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    if-ne v3, v5, :cond_5

    .line 79
    .line 80
    and-int/lit8 v3, v2, 0x13

    .line 81
    .line 82
    const/16 v5, 0x12

    .line 83
    .line 84
    if-eq v3, v5, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 v3, 0x0

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    :goto_3
    move v3, v6

    .line 90
    :goto_4
    and-int/lit8 v5, v1, 0x1

    .line 91
    .line 92
    invoke-virtual {v13, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 99
    .line 100
    .line 101
    and-int/lit8 v3, p11, 0x1

    .line 102
    .line 103
    const v5, -0x71c00001

    .line 104
    .line 105
    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 116
    .line 117
    .line 118
    and-int/2addr v1, v5

    .line 119
    move/from16 v3, p4

    .line 120
    .line 121
    move-object/from16 v7, p6

    .line 122
    .line 123
    move-object/from16 v9, p8

    .line 124
    .line 125
    move v5, v1

    .line 126
    move-object/from16 v1, p3

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_7
    :goto_5
    sget v3, Landroidx/compose/material3/FilterChipDefaults;->Height:F

    .line 130
    .line 131
    sget-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 132
    .line 133
    invoke-static {v3, v13}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/Shape;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    sget v7, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatSelectedHoverContainerElevation:F

    .line 138
    .line 139
    sget v9, Landroidx/compose/material3/tokens/FilterChipTokens;->DraggedContainerElevation:F

    .line 140
    .line 141
    new-instance v11, Landroidx/compose/material3/SelectableChipElevation;

    .line 142
    .line 143
    invoke-direct {v11, v7, v9}, Landroidx/compose/material3/SelectableChipElevation;-><init>(FF)V

    .line 144
    .line 145
    .line 146
    and-int/2addr v1, v5

    .line 147
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    .line 149
    move-object v7, v5

    .line 150
    move v5, v1

    .line 151
    move-object v1, v7

    .line 152
    move-object v7, v3

    .line 153
    move v3, v6

    .line 154
    move-object v9, v11

    .line 155
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 156
    .line 157
    .line 158
    sget-object v6, Landroidx/compose/material3/tokens/FilterChipTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 159
    .line 160
    invoke-static {v6, v13}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/text/TextStyle;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    sget v11, Landroidx/compose/material3/FilterChipDefaults;->Height:F

    .line 165
    .line 166
    and-int/lit8 v12, v5, 0xe

    .line 167
    .line 168
    const v14, 0xc00030

    .line 169
    .line 170
    .line 171
    or-int/2addr v12, v14

    .line 172
    shl-int/lit8 v14, v5, 0x3

    .line 173
    .line 174
    and-int/lit16 v14, v14, 0x380

    .line 175
    .line 176
    or-int/2addr v12, v14

    .line 177
    const v14, 0x6186c00

    .line 178
    .line 179
    .line 180
    or-int/2addr v14, v12

    .line 181
    shr-int/lit8 v5, v5, 0x18

    .line 182
    .line 183
    and-int/lit8 v5, v5, 0xe

    .line 184
    .line 185
    or-int/lit16 v5, v5, 0x6c00

    .line 186
    .line 187
    shl-int/lit8 v2, v2, 0x6

    .line 188
    .line 189
    and-int/lit16 v2, v2, 0x380

    .line 190
    .line 191
    or-int/2addr v2, v5

    .line 192
    const/high16 v5, 0x30000

    .line 193
    .line 194
    or-int v15, v2, v5

    .line 195
    .line 196
    sget-object v12, Landroidx/compose/material3/ChipKt;->FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 197
    .line 198
    move-object v2, v4

    .line 199
    move-object v5, v6

    .line 200
    move-object/from16 v4, p2

    .line 201
    .line 202
    move-object/from16 v6, p5

    .line 203
    .line 204
    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 205
    .line 206
    .line 207
    move-object v5, v1

    .line 208
    move v6, v3

    .line 209
    move-object v8, v7

    .line 210
    move-object v10, v9

    .line 211
    goto :goto_7

    .line 212
    :cond_8
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 213
    .line 214
    .line 215
    move-object/from16 v5, p3

    .line 216
    .line 217
    move/from16 v6, p4

    .line 218
    .line 219
    move-object/from16 v8, p6

    .line 220
    .line 221
    move-object/from16 v10, p8

    .line 222
    .line 223
    :goto_7
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_9

    .line 228
    .line 229
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda1;

    .line 230
    .line 231
    move/from16 v2, p0

    .line 232
    .line 233
    move-object/from16 v3, p1

    .line 234
    .line 235
    move-object/from16 v4, p2

    .line 236
    .line 237
    move-object/from16 v7, p5

    .line 238
    .line 239
    move-object/from16 v9, p7

    .line 240
    .line 241
    move-object/from16 v11, p9

    .line 242
    .line 243
    move/from16 v12, p11

    .line 244
    .line 245
    invoke-direct/range {v1 .. v12}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;I)V

    .line 246
    .line 247
    .line 248
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 249
    .line 250
    :cond_9
    return-void
.end method

.method public static final SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V
    .locals 29

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v0, p8

    .line 8
    .line 9
    move-object/from16 v14, p9

    .line 10
    .line 11
    move-object/from16 v15, p13

    .line 12
    .line 13
    move/from16 v10, p14

    .line 14
    .line 15
    move/from16 v11, p15

    .line 16
    .line 17
    const v3, 0x6a811700

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v3, v10, 0x6

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v10

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v10

    .line 39
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    const/16 v5, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v5, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v3, v5

    .line 55
    :cond_3
    and-int/lit16 v5, v10, 0x180

    .line 56
    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    move-object/from16 v5, p2

    .line 60
    .line 61
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    if-eqz v16, :cond_4

    .line 66
    .line 67
    const/16 v16, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v16, 0x80

    .line 71
    .line 72
    :goto_3
    or-int v3, v3, v16

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    move-object/from16 v5, p2

    .line 76
    .line 77
    :goto_4
    and-int/lit16 v6, v10, 0xc00

    .line 78
    .line 79
    const/16 v17, 0x400

    .line 80
    .line 81
    const/16 v18, 0x800

    .line 82
    .line 83
    if-nez v6, :cond_7

    .line 84
    .line 85
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_6

    .line 90
    .line 91
    move/from16 v6, v18

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    move/from16 v6, v17

    .line 95
    .line 96
    :goto_5
    or-int/2addr v3, v6

    .line 97
    :cond_7
    and-int/lit16 v6, v10, 0x6000

    .line 98
    .line 99
    const/16 v19, 0x2000

    .line 100
    .line 101
    const/16 v20, 0x4000

    .line 102
    .line 103
    if-nez v6, :cond_9

    .line 104
    .line 105
    move-object/from16 v6, p4

    .line 106
    .line 107
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v21

    .line 111
    if-eqz v21, :cond_8

    .line 112
    .line 113
    move/from16 v21, v20

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    move/from16 v21, v19

    .line 117
    .line 118
    :goto_6
    or-int v3, v3, v21

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_9
    move-object/from16 v6, p4

    .line 122
    .line 123
    :goto_7
    const/high16 v21, 0x30000

    .line 124
    .line 125
    and-int v22, v10, v21

    .line 126
    .line 127
    const/high16 v23, 0x10000

    .line 128
    .line 129
    const/high16 v24, 0x20000

    .line 130
    .line 131
    move-object/from16 v8, p5

    .line 132
    .line 133
    if-nez v22, :cond_b

    .line 134
    .line 135
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v25

    .line 139
    if-eqz v25, :cond_a

    .line 140
    .line 141
    move/from16 v25, v24

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_a
    move/from16 v25, v23

    .line 145
    .line 146
    :goto_8
    or-int v3, v3, v25

    .line 147
    .line 148
    :cond_b
    const/high16 v25, 0x180000

    .line 149
    .line 150
    and-int v25, v10, v25

    .line 151
    .line 152
    move-object/from16 v8, p6

    .line 153
    .line 154
    if-nez v25, :cond_d

    .line 155
    .line 156
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v25

    .line 160
    if-eqz v25, :cond_c

    .line 161
    .line 162
    const/high16 v25, 0x100000

    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_c
    const/high16 v25, 0x80000

    .line 166
    .line 167
    :goto_9
    or-int v3, v3, v25

    .line 168
    .line 169
    :cond_d
    const/high16 v25, 0xc00000

    .line 170
    .line 171
    and-int v25, v10, v25

    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    if-nez v25, :cond_f

    .line 175
    .line 176
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v25

    .line 180
    if-eqz v25, :cond_e

    .line 181
    .line 182
    const/high16 v25, 0x800000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_e
    const/high16 v25, 0x400000

    .line 186
    .line 187
    :goto_a
    or-int v3, v3, v25

    .line 188
    .line 189
    :cond_f
    const/high16 v25, 0x6000000

    .line 190
    .line 191
    and-int v25, v10, v25

    .line 192
    .line 193
    if-nez v25, :cond_11

    .line 194
    .line 195
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v25

    .line 199
    if-eqz v25, :cond_10

    .line 200
    .line 201
    const/high16 v25, 0x4000000

    .line 202
    .line 203
    goto :goto_b

    .line 204
    :cond_10
    const/high16 v25, 0x2000000

    .line 205
    .line 206
    :goto_b
    or-int v3, v3, v25

    .line 207
    .line 208
    :cond_11
    const/high16 v25, 0x30000000

    .line 209
    .line 210
    and-int v25, v10, v25

    .line 211
    .line 212
    move-object/from16 v8, p7

    .line 213
    .line 214
    if-nez v25, :cond_13

    .line 215
    .line 216
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v25

    .line 220
    if-eqz v25, :cond_12

    .line 221
    .line 222
    const/high16 v25, 0x20000000

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_12
    const/high16 v25, 0x10000000

    .line 226
    .line 227
    :goto_c
    or-int v3, v3, v25

    .line 228
    .line 229
    :cond_13
    and-int/lit8 v25, v11, 0x6

    .line 230
    .line 231
    if-nez v25, :cond_15

    .line 232
    .line 233
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v25

    .line 237
    if-eqz v25, :cond_14

    .line 238
    .line 239
    const/16 v25, 0x4

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_14
    const/16 v25, 0x2

    .line 243
    .line 244
    :goto_d
    or-int v25, v11, v25

    .line 245
    .line 246
    goto :goto_e

    .line 247
    :cond_15
    move/from16 v25, v11

    .line 248
    .line 249
    :goto_e
    and-int/lit8 v27, v11, 0x30

    .line 250
    .line 251
    if-nez v27, :cond_17

    .line 252
    .line 253
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v27

    .line 257
    if-eqz v27, :cond_16

    .line 258
    .line 259
    const/16 v16, 0x20

    .line 260
    .line 261
    goto :goto_f

    .line 262
    :cond_16
    const/16 v16, 0x10

    .line 263
    .line 264
    :goto_f
    or-int v25, v25, v16

    .line 265
    .line 266
    :cond_17
    and-int/lit16 v9, v11, 0x180

    .line 267
    .line 268
    if-nez v9, :cond_19

    .line 269
    .line 270
    move-object/from16 v9, p10

    .line 271
    .line 272
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v26

    .line 276
    if-eqz v26, :cond_18

    .line 277
    .line 278
    const/16 v16, 0x100

    .line 279
    .line 280
    goto :goto_10

    .line 281
    :cond_18
    const/16 v16, 0x80

    .line 282
    .line 283
    :goto_10
    or-int v25, v25, v16

    .line 284
    .line 285
    goto :goto_11

    .line 286
    :cond_19
    move-object/from16 v9, p10

    .line 287
    .line 288
    :goto_11
    and-int/lit16 v4, v11, 0xc00

    .line 289
    .line 290
    if-nez v4, :cond_1b

    .line 291
    .line 292
    move/from16 v4, p11

    .line 293
    .line 294
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 295
    .line 296
    .line 297
    move-result v22

    .line 298
    if-eqz v22, :cond_1a

    .line 299
    .line 300
    move/from16 v17, v18

    .line 301
    .line 302
    :cond_1a
    or-int v25, v25, v17

    .line 303
    .line 304
    goto :goto_12

    .line 305
    :cond_1b
    move/from16 v4, p11

    .line 306
    .line 307
    :goto_12
    and-int/lit16 v12, v11, 0x6000

    .line 308
    .line 309
    if-nez v12, :cond_1d

    .line 310
    .line 311
    move-object/from16 v12, p12

    .line 312
    .line 313
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v18

    .line 317
    if-eqz v18, :cond_1c

    .line 318
    .line 319
    move/from16 v19, v20

    .line 320
    .line 321
    :cond_1c
    or-int v25, v25, v19

    .line 322
    .line 323
    goto :goto_13

    .line 324
    :cond_1d
    move-object/from16 v12, p12

    .line 325
    .line 326
    :goto_13
    and-int v18, v11, v21

    .line 327
    .line 328
    if-nez v18, :cond_1f

    .line 329
    .line 330
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v18

    .line 334
    if-eqz v18, :cond_1e

    .line 335
    .line 336
    move/from16 v23, v24

    .line 337
    .line 338
    :cond_1e
    or-int v25, v25, v23

    .line 339
    .line 340
    :cond_1f
    const v18, 0x12492493

    .line 341
    .line 342
    .line 343
    move-object/from16 v19, v7

    .line 344
    .line 345
    and-int v7, v3, v18

    .line 346
    .line 347
    const v1, 0x12492492

    .line 348
    .line 349
    .line 350
    const/16 v18, 0x1

    .line 351
    .line 352
    const/4 v8, 0x0

    .line 353
    if-ne v7, v1, :cond_21

    .line 354
    .line 355
    const v1, 0x12493

    .line 356
    .line 357
    .line 358
    and-int v1, v25, v1

    .line 359
    .line 360
    const v7, 0x12492

    .line 361
    .line 362
    .line 363
    if-eq v1, v7, :cond_20

    .line 364
    .line 365
    goto :goto_14

    .line 366
    :cond_20
    move v1, v8

    .line 367
    goto :goto_15

    .line 368
    :cond_21
    :goto_14
    move/from16 v1, v18

    .line 369
    .line 370
    :goto_15
    and-int/lit8 v7, v3, 0x1

    .line 371
    .line 372
    invoke-virtual {v15, v7, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_3a

    .line 377
    .line 378
    const v1, 0x45d2e3b    # 2.5999653E-36f

    .line 379
    .line 380
    .line 381
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 389
    .line 390
    if-ne v1, v7, :cond_22

    .line 391
    .line 392
    new-instance v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 393
    .line 394
    invoke-direct {v1}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_22
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 401
    .line 402
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    if-ne v8, v7, :cond_23

    .line 410
    .line 411
    new-instance v8, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 412
    .line 413
    move/from16 v21, v3

    .line 414
    .line 415
    const/4 v3, 0x0

    .line 416
    invoke-direct {v8, v3}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto :goto_16

    .line 423
    :cond_23
    move/from16 v21, v3

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    :goto_16
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 427
    .line 428
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 429
    .line 430
    .line 431
    move-result-object v22

    .line 432
    if-nez v2, :cond_25

    .line 433
    .line 434
    if-eqz p0, :cond_24

    .line 435
    .line 436
    iget-wide v3, v0, Landroidx/compose/material3/SelectableChipColors;->disabledSelectedContainerColor:J

    .line 437
    .line 438
    goto :goto_17

    .line 439
    :cond_24
    iget-wide v3, v0, Landroidx/compose/material3/SelectableChipColors;->disabledContainerColor:J

    .line 440
    .line 441
    goto :goto_17

    .line 442
    :cond_25
    if-nez p0, :cond_26

    .line 443
    .line 444
    iget-wide v3, v0, Landroidx/compose/material3/SelectableChipColors;->containerColor:J

    .line 445
    .line 446
    goto :goto_17

    .line 447
    :cond_26
    iget-wide v3, v0, Landroidx/compose/material3/SelectableChipColors;->selectedContainerColor:J

    .line 448
    .line 449
    :goto_17
    const/16 v23, 0x0

    .line 450
    .line 451
    if-nez v14, :cond_27

    .line 452
    .line 453
    const v8, 0x461fef6

    .line 454
    .line 455
    .line 456
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 457
    .line 458
    .line 459
    const/4 v8, 0x0

    .line 460
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 461
    .line 462
    .line 463
    move-object/from16 v24, v1

    .line 464
    .line 465
    move-wide v10, v3

    .line 466
    move-object v0, v7

    .line 467
    move v12, v8

    .line 468
    move-object/from16 v7, v19

    .line 469
    .line 470
    goto/16 :goto_21

    .line 471
    .line 472
    :cond_27
    const v8, -0x31683195

    .line 473
    .line 474
    .line 475
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 476
    .line 477
    .line 478
    shr-int/lit8 v8, v21, 0x9

    .line 479
    .line 480
    and-int/lit8 v8, v8, 0xe

    .line 481
    .line 482
    shl-int/lit8 v0, v25, 0x3

    .line 483
    .line 484
    and-int/lit16 v0, v0, 0x380

    .line 485
    .line 486
    or-int/2addr v0, v8

    .line 487
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    if-ne v8, v7, :cond_28

    .line 492
    .line 493
    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 494
    .line 495
    invoke-direct {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :cond_28
    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 502
    .line 503
    move/from16 v21, v0

    .line 504
    .line 505
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    if-ne v0, v7, :cond_29

    .line 510
    .line 511
    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    :cond_29
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 519
    .line 520
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v24

    .line 524
    move-object/from16 v25, v0

    .line 525
    .line 526
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    if-nez v24, :cond_2b

    .line 531
    .line 532
    if-ne v0, v7, :cond_2a

    .line 533
    .line 534
    goto :goto_18

    .line 535
    :cond_2a
    move-wide/from16 v26, v3

    .line 536
    .line 537
    goto :goto_19

    .line 538
    :cond_2b
    :goto_18
    new-instance v0, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;

    .line 539
    .line 540
    move-wide/from16 v26, v3

    .line 541
    .line 542
    move-object/from16 v3, v19

    .line 543
    .line 544
    const/4 v4, 0x2

    .line 545
    invoke-direct {v0, v1, v8, v3, v4}, Landroidx/compose/material3/ChipElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    :goto_19
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 552
    .line 553
    invoke-static {v15, v1, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 554
    .line 555
    .line 556
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 561
    .line 562
    if-nez v2, :cond_2d

    .line 563
    .line 564
    :cond_2c
    :goto_1a
    move/from16 v4, v23

    .line 565
    .line 566
    goto :goto_1c

    .line 567
    :cond_2d
    instance-of v3, v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 568
    .line 569
    if-eqz v3, :cond_2e

    .line 570
    .line 571
    goto :goto_1a

    .line 572
    :cond_2e
    instance-of v3, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 573
    .line 574
    if-eqz v3, :cond_2f

    .line 575
    .line 576
    iget v3, v14, Landroidx/compose/material3/SelectableChipElevation;->hoveredElevation:F

    .line 577
    .line 578
    :goto_1b
    move v4, v3

    .line 579
    goto :goto_1c

    .line 580
    :cond_2f
    instance-of v3, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 581
    .line 582
    if-eqz v3, :cond_30

    .line 583
    .line 584
    goto :goto_1a

    .line 585
    :cond_30
    instance-of v3, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 586
    .line 587
    if-eqz v3, :cond_2c

    .line 588
    .line 589
    iget v3, v14, Landroidx/compose/material3/SelectableChipElevation;->draggedElevation:F

    .line 590
    .line 591
    goto :goto_1b

    .line 592
    :goto_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    if-ne v3, v7, :cond_31

    .line 597
    .line 598
    new-instance v3, Landroidx/compose/animation/core/Animatable;

    .line 599
    .line 600
    new-instance v8, Landroidx/compose/ui/unit/Dp;

    .line 601
    .line 602
    invoke-direct {v8, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v24, v1

    .line 606
    .line 607
    sget-object v1, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 608
    .line 609
    const/16 v5, 0xc

    .line 610
    .line 611
    const/4 v6, 0x0

    .line 612
    invoke-direct {v3, v8, v1, v6, v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    goto :goto_1d

    .line 619
    :cond_31
    move-object/from16 v24, v1

    .line 620
    .line 621
    :goto_1d
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 622
    .line 623
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 624
    .line 625
    invoke-direct {v1, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v5

    .line 632
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 633
    .line 634
    .line 635
    move-result v6

    .line 636
    or-int/2addr v5, v6

    .line 637
    and-int/lit8 v6, v21, 0xe

    .line 638
    .line 639
    xor-int/lit8 v6, v6, 0x6

    .line 640
    .line 641
    const/4 v8, 0x4

    .line 642
    if-le v6, v8, :cond_32

    .line 643
    .line 644
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-nez v6, :cond_33

    .line 649
    .line 650
    :cond_32
    and-int/lit8 v6, v21, 0x6

    .line 651
    .line 652
    if-ne v6, v8, :cond_34

    .line 653
    .line 654
    :cond_33
    move/from16 v6, v18

    .line 655
    .line 656
    goto :goto_1e

    .line 657
    :cond_34
    const/4 v6, 0x0

    .line 658
    :goto_1e
    or-int/2addr v5, v6

    .line 659
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    or-int/2addr v5, v6

    .line 664
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    if-nez v5, :cond_36

    .line 669
    .line 670
    if-ne v6, v7, :cond_35

    .line 671
    .line 672
    goto :goto_1f

    .line 673
    :cond_35
    move-object v0, v7

    .line 674
    move-wide/from16 v10, v26

    .line 675
    .line 676
    const/4 v12, 0x0

    .line 677
    goto :goto_20

    .line 678
    :cond_36
    :goto_1f
    new-instance v2, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 679
    .line 680
    const/4 v8, 0x0

    .line 681
    const/4 v9, 0x1

    .line 682
    move/from16 v5, p3

    .line 683
    .line 684
    move-object v6, v0

    .line 685
    move-object v0, v7

    .line 686
    move-object/from16 v7, v25

    .line 687
    .line 688
    move-wide/from16 v10, v26

    .line 689
    .line 690
    const/4 v12, 0x0

    .line 691
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    move-object v6, v2

    .line 698
    :goto_20
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 699
    .line 700
    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 701
    .line 702
    .line 703
    iget-object v7, v3, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 704
    .line 705
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 706
    .line 707
    .line 708
    :goto_21
    if-eqz v7, :cond_37

    .line 709
    .line 710
    iget-object v1, v7, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 711
    .line 712
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 717
    .line 718
    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 719
    .line 720
    move v9, v1

    .line 721
    :goto_22
    move-object v1, v0

    .line 722
    goto :goto_23

    .line 723
    :cond_37
    move/from16 v9, v23

    .line 724
    .line 725
    goto :goto_22

    .line 726
    :goto_23
    new-instance v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;

    .line 727
    .line 728
    move/from16 v3, p0

    .line 729
    .line 730
    move/from16 v2, p3

    .line 731
    .line 732
    move-object/from16 v4, p4

    .line 733
    .line 734
    move-object/from16 v5, p5

    .line 735
    .line 736
    move-object/from16 v6, p6

    .line 737
    .line 738
    move/from16 v7, p11

    .line 739
    .line 740
    move-object/from16 v8, p12

    .line 741
    .line 742
    move-object v12, v1

    .line 743
    move-object/from16 v1, p8

    .line 744
    .line 745
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ChipKt$SelectableChip$2;-><init>(Landroidx/compose/material3/SelectableChipColors;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;FLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 746
    .line 747
    .line 748
    const v1, -0x3b02f76a

    .line 749
    .line 750
    .line 751
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 756
    .line 757
    invoke-static {v10, v11, v15}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/GapComposer;)J

    .line 758
    .line 759
    .line 760
    move-result-wide v1

    .line 761
    if-nez v24, :cond_39

    .line 762
    .line 763
    const v3, 0x5b159de8

    .line 764
    .line 765
    .line 766
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-ne v3, v12, :cond_38

    .line 774
    .line 775
    new-instance v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 776
    .line 777
    invoke-direct {v3}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    :cond_38
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 784
    .line 785
    const/4 v8, 0x0

    .line 786
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 787
    .line 788
    .line 789
    move-object v8, v3

    .line 790
    goto :goto_24

    .line 791
    :cond_39
    const/4 v8, 0x0

    .line 792
    const v3, -0xd93f531

    .line 793
    .line 794
    .line 795
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 799
    .line 800
    .line 801
    move-object/from16 v8, v24

    .line 802
    .line 803
    :goto_24
    sget-object v3, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 804
    .line 805
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    .line 810
    .line 811
    iget v4, v4, Landroidx/compose/ui/unit/Dp;->value:F

    .line 812
    .line 813
    add-float v5, v4, v23

    .line 814
    .line 815
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 816
    .line 817
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 818
    .line 819
    invoke-direct {v6, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 827
    .line 828
    invoke-direct {v2, v5}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    const/4 v4, 0x2

    .line 836
    new-array v3, v4, [Landroidx/compose/runtime/ProvidedValue;

    .line 837
    .line 838
    const/16 v20, 0x0

    .line 839
    .line 840
    aput-object v1, v3, v20

    .line 841
    .line 842
    aput-object v2, v3, v18

    .line 843
    .line 844
    move-object v12, v0

    .line 845
    new-instance v0, Landroidx/compose/material3/SurfaceKt$Surface$3;

    .line 846
    .line 847
    move/from16 v7, p0

    .line 848
    .line 849
    move-object/from16 v2, p7

    .line 850
    .line 851
    move-object/from16 v6, p10

    .line 852
    .line 853
    move-object v13, v3

    .line 854
    move-wide v3, v10

    .line 855
    move-object/from16 v1, v22

    .line 856
    .line 857
    move-object/from16 v10, p2

    .line 858
    .line 859
    move v11, v9

    .line 860
    move/from16 v9, p3

    .line 861
    .line 862
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt$Surface$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function0;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 863
    .line 864
    .line 865
    const v1, 0x59ed78f3

    .line 866
    .line 867
    .line 868
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    const/16 v1, 0x38

    .line 873
    .line 874
    invoke-static {v13, v0, v15, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 875
    .line 876
    .line 877
    goto :goto_25

    .line 878
    :cond_3a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 879
    .line 880
    .line 881
    :goto_25
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    if-eqz v0, :cond_3b

    .line 886
    .line 887
    move-object v1, v0

    .line 888
    new-instance v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda3;

    .line 889
    .line 890
    move-object/from16 v2, p1

    .line 891
    .line 892
    move-object/from16 v3, p2

    .line 893
    .line 894
    move/from16 v4, p3

    .line 895
    .line 896
    move-object/from16 v5, p4

    .line 897
    .line 898
    move-object/from16 v6, p5

    .line 899
    .line 900
    move-object/from16 v7, p6

    .line 901
    .line 902
    move-object/from16 v8, p7

    .line 903
    .line 904
    move-object/from16 v9, p8

    .line 905
    .line 906
    move-object/from16 v11, p10

    .line 907
    .line 908
    move/from16 v12, p11

    .line 909
    .line 910
    move-object/from16 v13, p12

    .line 911
    .line 912
    move/from16 v15, p15

    .line 913
    .line 914
    move-object/from16 v28, v1

    .line 915
    .line 916
    move-object v10, v14

    .line 917
    move/from16 v1, p0

    .line 918
    .line 919
    move/from16 v14, p14

    .line 920
    .line 921
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda3;-><init>(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;II)V

    .line 922
    .line 923
    .line 924
    move-object/from16 v1, v28

    .line 925
    .line 926
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 927
    .line 928
    :cond_3b
    return-void
.end method

.method public static final leadingContent-XO-JAsU(Lkotlin/jvm/functions/Function2;JLandroidx/compose/runtime/GapComposer;)Lkotlin/jvm/functions/Function2;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const v1, 0x5de68e5d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/compose/material3/ChipKt$leadingContent$1;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2, p0, v0}, Landroidx/compose/material3/ChipKt$leadingContent$1;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 13
    .line 14
    .line 15
    const p0, -0xe25aefa

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const p0, 0x5dea06d3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static final trailingContent-RPmYEkk(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 1

    .line 1
    const v0, -0x48a661ab

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
