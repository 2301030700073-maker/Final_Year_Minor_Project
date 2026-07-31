.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static _archive:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _report:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final AutoDiscoveryResultApprovalView(Lnet/thunderbird/core/validation/input/BooleanInputField;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v3, p2

    .line 8
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p2, -0x7a9f036f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const/4 p2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x2

    .line 25
    :goto_0
    or-int/2addr p2, p3

    .line 26
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p2, v0

    .line 38
    and-int/lit8 v0, p2, 0x13

    .line 39
    .line 40
    const/16 v1, 0x12

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v0, v2

    .line 48
    :goto_2
    and-int/lit8 v1, p2, 0x1

    .line 49
    .line 50
    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/content/res/Resources;

    .line 63
    .line 64
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 71
    .line 72
    const/high16 v4, 0x41000000    # 8.0f

    .line 73
    .line 74
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 75
    .line 76
    invoke-static {v1, v5, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 77
    .line 78
    .line 79
    const v1, 0x7f12016c

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :cond_3
    move v8, v2

    .line 95
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-static {v1, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->toAutoDiscoveryValidationErrorString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_3
    move-object v6, v0

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    const/4 v0, 0x0

    .line 106
    goto :goto_3

    .line 107
    :goto_4
    const/4 v0, 0x3

    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    shl-int/2addr p2, v0

    .line 114
    and-int/lit16 p2, p2, 0x380

    .line 115
    .line 116
    const/high16 v0, 0x30000

    .line 117
    .line 118
    or-int/2addr v0, p2

    .line 119
    const/16 v1, 0x8

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    move-object v7, p1

    .line 123
    invoke-static/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->CheckboxInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_5
    move-object v7, p1

    .line 128
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 129
    .line 130
    .line 131
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    new-instance p2, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 138
    .line 139
    const/16 v0, 0x1b

    .line 140
    .line 141
    invoke-direct {p2, p3, v0, p0, v7}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 145
    .line 146
    :cond_6
    return-void
.end method

.method public static final CardFilled(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v6, p6

    .line 4
    .line 5
    move-object/from16 v13, p5

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x7c938a1c

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, p7, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    or-int/lit8 v2, v6, 0x6

    .line 20
    .line 21
    move v3, v2

    .line 22
    move-object/from16 v2, p0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    and-int/lit8 v2, v6, 0x6

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    move-object/from16 v2, p0

    .line 30
    .line 31
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x2

    .line 40
    :goto_0
    or-int/2addr v3, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object/from16 v2, p0

    .line 43
    .line 44
    move v3, v6

    .line 45
    :goto_1
    and-int/lit8 v4, v6, 0x30

    .line 46
    .line 47
    if-nez v4, :cond_5

    .line 48
    .line 49
    and-int/lit8 v4, p7, 0x2

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    move-object/from16 v4, p1

    .line 54
    .line 55
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object/from16 v4, p1

    .line 65
    .line 66
    :cond_4
    const/16 v5, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v3, v5

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move-object/from16 v4, p1

    .line 71
    .line 72
    :goto_3
    and-int/lit16 v5, v6, 0x180

    .line 73
    .line 74
    if-nez v5, :cond_8

    .line 75
    .line 76
    and-int/lit8 v5, p7, 0x4

    .line 77
    .line 78
    if-nez v5, :cond_7

    .line 79
    .line 80
    and-int/lit16 v5, v6, 0x200

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    :goto_4
    if-eqz v5, :cond_7

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/16 v5, 0x80

    .line 99
    .line 100
    :goto_5
    or-int/2addr v3, v5

    .line 101
    :cond_8
    and-int/lit16 v5, v6, 0xc00

    .line 102
    .line 103
    if-nez v5, :cond_9

    .line 104
    .line 105
    or-int/lit16 v3, v3, 0x400

    .line 106
    .line 107
    :cond_9
    or-int/lit16 v3, v3, 0x6000

    .line 108
    .line 109
    const/high16 v5, 0x30000

    .line 110
    .line 111
    and-int/2addr v5, v6

    .line 112
    move-object/from16 v12, p4

    .line 113
    .line 114
    if-nez v5, :cond_b

    .line 115
    .line 116
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_a

    .line 121
    .line 122
    const/high16 v5, 0x20000

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_a
    const/high16 v5, 0x10000

    .line 126
    .line 127
    :goto_6
    or-int/2addr v3, v5

    .line 128
    :cond_b
    const v5, 0x12493

    .line 129
    .line 130
    .line 131
    and-int/2addr v5, v3

    .line 132
    const v7, 0x12492

    .line 133
    .line 134
    .line 135
    const/4 v8, 0x0

    .line 136
    if-eq v5, v7, :cond_c

    .line 137
    .line 138
    const/4 v5, 0x1

    .line 139
    goto :goto_7

    .line 140
    :cond_c
    move v5, v8

    .line 141
    :goto_7
    and-int/lit8 v7, v3, 0x1

    .line 142
    .line 143
    invoke-virtual {v13, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_15

    .line 148
    .line 149
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 150
    .line 151
    .line 152
    and-int/lit8 v5, v6, 0x1

    .line 153
    .line 154
    if-eqz v5, :cond_10

    .line 155
    .line 156
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_d

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 164
    .line 165
    .line 166
    and-int/lit8 v1, p7, 0x2

    .line 167
    .line 168
    if-eqz v1, :cond_e

    .line 169
    .line 170
    and-int/lit8 v3, v3, -0x71

    .line 171
    .line 172
    :cond_e
    and-int/lit8 v1, p7, 0x4

    .line 173
    .line 174
    if-eqz v1, :cond_f

    .line 175
    .line 176
    and-int/lit16 v3, v3, -0x381

    .line 177
    .line 178
    :cond_f
    and-int/lit16 v1, v3, -0x1c01

    .line 179
    .line 180
    move-object v7, v2

    .line 181
    move v3, v8

    .line 182
    move v2, v1

    .line 183
    move-object v8, v4

    .line 184
    move-object/from16 v1, p3

    .line 185
    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_10
    :goto_8
    if-eqz v1, :cond_11

    .line 189
    .line 190
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_11
    move-object v1, v2

    .line 194
    :goto_9
    and-int/lit8 v2, p7, 0x2

    .line 195
    .line 196
    if-eqz v2, :cond_12

    .line 197
    .line 198
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$2:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 199
    .line 200
    invoke-static {v2, v13}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    and-int/lit8 v3, v3, -0x71

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_12
    move-object v2, v4

    .line 208
    :goto_a
    and-int/lit8 v4, p7, 0x4

    .line 209
    .line 210
    if-eqz v4, :cond_14

    .line 211
    .line 212
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 213
    .line 214
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 219
    .line 220
    iget-object v4, v0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    .line 221
    .line 222
    if-nez v4, :cond_13

    .line 223
    .line 224
    new-instance v14, Landroidx/compose/material3/CardColors;

    .line 225
    .line 226
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$4:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 227
    .line 228
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 229
    .line 230
    .line 231
    move-result-wide v15

    .line 232
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    invoke-static {v0, v9, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v17

    .line 240
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerColor$2:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 241
    .line 242
    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v9

    .line 246
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerOpacity$2:F

    .line 247
    .line 248
    invoke-static {v5, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v9

    .line 252
    move-object/from16 p0, v1

    .line 253
    .line 254
    move-object/from16 p1, v2

    .line 255
    .line 256
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v19

    .line 264
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v1

    .line 268
    invoke-static {v0, v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    const v4, 0x3ec28f5c    # 0.38f

    .line 273
    .line 274
    .line 275
    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 276
    .line 277
    .line 278
    move-result-wide v21

    .line 279
    invoke-direct/range {v14 .. v22}, Landroidx/compose/material3/CardColors;-><init>(JJJJ)V

    .line 280
    .line 281
    .line 282
    iput-object v14, v0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    .line 283
    .line 284
    move-object v4, v14

    .line 285
    goto :goto_b

    .line 286
    :cond_13
    move-object/from16 p0, v1

    .line 287
    .line 288
    move-object/from16 p1, v2

    .line 289
    .line 290
    :goto_b
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->toCardColors(Landroidx/compose/material3/CardColors;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    and-int/lit16 v3, v3, -0x381

    .line 295
    .line 296
    goto :goto_c

    .line 297
    :cond_14
    move-object/from16 p0, v1

    .line 298
    .line 299
    move-object/from16 p1, v2

    .line 300
    .line 301
    :goto_c
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 302
    .line 303
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    new-instance v1, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation$FilledCardElevation;

    .line 358
    .line 359
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 360
    .line 361
    .line 362
    and-int/lit16 v2, v3, -0x1c01

    .line 363
    .line 364
    move-object/from16 v7, p0

    .line 365
    .line 366
    move v3, v8

    .line 367
    move-object/from16 v8, p1

    .line 368
    .line 369
    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 370
    .line 371
    .line 372
    const v4, 0x155e1f50

    .line 373
    .line 374
    .line 375
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 376
    .line 377
    .line 378
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->toMaterial3CardColors(Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;)Landroidx/compose/material3/CardColors;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-interface {v1, v13}, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;->toMaterial3CardElevation(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CardElevation;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    const v4, 0x7007e

    .line 387
    .line 388
    .line 389
    and-int v14, v2, v4

    .line 390
    .line 391
    const/16 v15, 0x10

    .line 392
    .line 393
    const/4 v11, 0x0

    .line 394
    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 398
    .line 399
    .line 400
    move-object v4, v1

    .line 401
    move-object v1, v7

    .line 402
    move-object v2, v8

    .line 403
    :goto_e
    move-object v3, v0

    .line 404
    goto :goto_f

    .line 405
    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 406
    .line 407
    .line 408
    move-object v1, v2

    .line 409
    move-object v2, v4

    .line 410
    move-object/from16 v4, p3

    .line 411
    .line 412
    goto :goto_e

    .line 413
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    if-eqz v8, :cond_16

    .line 418
    .line 419
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;

    .line 420
    .line 421
    move-object/from16 v5, p4

    .line 422
    .line 423
    move/from16 v7, p7

    .line 424
    .line 425
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 426
    .line 427
    .line 428
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 429
    .line 430
    :cond_16
    return-void
.end method

.method public static final ComposeFailureStatePlugins(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/ui/Modifier;Lcom/skydoves/landscapist/ImageOptions;Ljava/lang/Throwable;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x13ee64de

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, p5

    .line 28
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 v1, 0x800

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v1, 0x400

    .line 62
    .line 63
    :goto_3
    or-int/2addr v0, v1

    .line 64
    and-int/lit16 v1, v0, 0x493

    .line 65
    .line 66
    const/16 v2, 0x492

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    if-eq v1, v2, :cond_4

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_4
    and-int/2addr v0, v3

    .line 75
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    instance-of v0, p0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    move-object v0, p0

    .line 86
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;->mutablePlugins:Ljava/util/ArrayList;

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 92
    .line 93
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_7

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_7
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    throw p0

    .line 128
    :cond_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 129
    .line 130
    .line 131
    :goto_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    if-eqz p4, :cond_9

    .line 136
    .line 137
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/16 v6, 0xc

    .line 140
    .line 141
    move-object v1, p0

    .line 142
    move-object v2, p1

    .line 143
    move-object v3, p2

    .line 144
    move-object v4, p3

    .line 145
    move v5, p5

    .line 146
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 150
    .line 151
    :cond_9
    return-void
.end method

.method public static final ComposeLoadingStatePlugins(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/ui/Modifier;Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x5f903d24

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, p5

    .line 28
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    and-int/lit16 v1, v0, 0x493

    .line 53
    .line 54
    const/16 v2, 0x492

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    if-eq v1, v2, :cond_3

    .line 58
    .line 59
    move v1, v3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_3
    and-int/2addr v0, v3

    .line 63
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    instance-of v0, p0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move-object v0, p0

    .line 74
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;->mutablePlugins:Ljava/util/ArrayList;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 80
    .line 81
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    throw p0

    .line 116
    :cond_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 117
    .line 118
    .line 119
    :goto_6
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    if-eqz p4, :cond_8

    .line 124
    .line 125
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    const/16 v6, 0xd

    .line 128
    .line 129
    move-object v1, p0

    .line 130
    move-object v2, p1

    .line 131
    move-object v3, p2

    .line 132
    move-object v4, p3

    .line 133
    move v5, p5

    .line 134
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 138
    .line 139
    :cond_8
    return-void
.end method

.method public static final ComposeSuccessStatePlugins(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x7717a7a1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, p6

    .line 28
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 v1, 0x800

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v1, 0x400

    .line 62
    .line 63
    :goto_3
    or-int/2addr v0, v1

    .line 64
    invoke-virtual {p5, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const/16 v1, 0x4000

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/16 v1, 0x2000

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v1

    .line 76
    and-int/lit16 v1, v0, 0x2493

    .line 77
    .line 78
    const/16 v2, 0x2492

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    if-eq v1, v2, :cond_5

    .line 82
    .line 83
    move v1, v3

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    const/4 v1, 0x0

    .line 86
    :goto_5
    and-int/2addr v0, v3

    .line 87
    invoke-virtual {p5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    instance-of v0, p0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;->mutablePlugins:Ljava/util/ArrayList;

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_6
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 104
    .line 105
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_8
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    throw p0

    .line 140
    :cond_9
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 141
    .line 142
    .line 143
    :goto_8
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    if-eqz p5, :cond_a

    .line 148
    .line 149
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 150
    .line 151
    move-object v1, p0

    .line 152
    move-object v2, p1

    .line 153
    move-object v3, p2

    .line 154
    move-object v4, p3

    .line 155
    move-object v5, p4

    .line 156
    move v6, p6

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/ui/graphics/ImageBitmap;I)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 161
    .line 162
    :cond_a
    return-void
.end method

.method public static final ComposeWithComposablePlugins(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, -0x285621ef

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p3

    .line 22
    and-int/lit8 v1, v0, 0x13

    .line 23
    .line 24
    const/16 v2, 0x12

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v4

    .line 33
    :goto_1
    and-int/2addr v0, v3

    .line 34
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    instance-of v0, p0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;->mutablePlugins:Ljava/util/ArrayList;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 51
    .line 52
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const v0, 0xac503e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x6

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_4
    const v0, 0xacc4bc

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 99
    .line 100
    .line 101
    const v0, -0x6b553a95

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v1, p1

    .line 112
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 125
    .line 126
    const/16 v2, 0x13

    .line 127
    .line 128
    invoke-direct {v1, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 129
    .line 130
    .line 131
    const v2, 0x7fb5ccf8

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 144
    .line 145
    .line 146
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 158
    .line 159
    .line 160
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 167
    .line 168
    const/16 v1, 0xb

    .line 169
    .line 170
    invoke-direct {v0, p3, v1, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 174
    .line 175
    :cond_8
    return-void
.end method

.method public static final DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 6

    .line 1
    move-object v4, p4

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p4, -0x290db853

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p4, p6, 0x1

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    or-int/lit8 v0, p5, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    and-int/lit8 v0, p5, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, p5

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v0, p5

    .line 33
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    and-int/lit8 v1, p6, 0x2

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/16 v1, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    :cond_4
    and-int/lit16 v1, p5, 0x180

    .line 54
    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    and-int/lit8 v1, p6, 0x4

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    invoke-virtual {v4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    const/16 v1, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    const/16 v1, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v1

    .line 73
    :cond_6
    and-int/lit16 v1, v0, 0x93

    .line 74
    .line 75
    const/16 v2, 0x92

    .line 76
    .line 77
    if-eq v1, v2, :cond_7

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    const/4 v1, 0x0

    .line 82
    :goto_4
    and-int/lit8 v2, v0, 0x1

    .line 83
    .line 84
    invoke-virtual {v4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_e

    .line 89
    .line 90
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 91
    .line 92
    .line 93
    and-int/lit8 v1, p5, 0x1

    .line 94
    .line 95
    if-eqz v1, :cond_b

    .line 96
    .line 97
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    and-int/lit8 p4, p6, 0x2

    .line 108
    .line 109
    if-eqz p4, :cond_9

    .line 110
    .line 111
    and-int/lit8 v0, v0, -0x71

    .line 112
    .line 113
    :cond_9
    and-int/lit8 p4, p6, 0x4

    .line 114
    .line 115
    if-eqz p4, :cond_a

    .line 116
    .line 117
    :goto_5
    and-int/lit16 v0, v0, -0x381

    .line 118
    .line 119
    :cond_a
    move-object v5, p0

    .line 120
    move-wide v2, p2

    .line 121
    move p0, v0

    .line 122
    move v0, p1

    .line 123
    goto :goto_7

    .line 124
    :cond_b
    :goto_6
    if-eqz p4, :cond_c

    .line 125
    .line 126
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 127
    .line 128
    :cond_c
    and-int/lit8 p4, p6, 0x2

    .line 129
    .line 130
    if-eqz p4, :cond_d

    .line 131
    .line 132
    sget p1, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    .line 133
    .line 134
    and-int/lit8 v0, v0, -0x71

    .line 135
    .line 136
    :cond_d
    and-int/lit8 p4, p6, 0x4

    .line 137
    .line 138
    if-eqz p4, :cond_a

    .line 139
    .line 140
    sget p2, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    .line 141
    .line 142
    sget-object p2, Landroidx/compose/material3/tokens/ListTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 143
    .line 144
    invoke-static {p2, v4}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 145
    .line 146
    .line 147
    move-result-wide p2

    .line 148
    goto :goto_5

    .line 149
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 150
    .line 151
    .line 152
    and-int/lit16 v1, p0, 0x3fe

    .line 153
    .line 154
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 155
    .line 156
    .line 157
    move p2, v0

    .line 158
    move-wide p3, v2

    .line 159
    move-object p1, v5

    .line 160
    goto :goto_8

    .line 161
    :cond_e
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    move-wide p3, p2

    .line 165
    move p2, p1

    .line 166
    move-object p1, p0

    .line 167
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_f

    .line 172
    .line 173
    new-instance p0, Lapp/k9mail/core/ui/compose/designsystem/atom/DividerHorizontalKt$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-direct/range {p0 .. p6}, Lapp/k9mail/core/ui/compose/designsystem/atom/DividerHorizontalKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    .line 176
    .line 177
    .line 178
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    :cond_f
    return-void
.end method

.method public static final ErrorView(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v14, p5

    .line 7
    .line 8
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x66d7b896

    .line 11
    .line 12
    .line 13
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, v6, 0x6

    .line 17
    .line 18
    move-object/from16 v7, p0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v6

    .line 34
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 35
    .line 36
    const/16 v17, 0x20

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x30

    .line 41
    .line 42
    :cond_2
    move-object/from16 v2, p1

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    and-int/lit8 v2, v6, 0x30

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    move/from16 v3, v17

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/16 v3, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v3

    .line 63
    :goto_3
    and-int/lit8 v3, p7, 0x4

    .line 64
    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    or-int/lit16 v0, v0, 0x180

    .line 68
    .line 69
    :cond_5
    move-object/from16 v4, p2

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_6
    and-int/lit16 v4, v6, 0x180

    .line 73
    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    move-object/from16 v4, p2

    .line 77
    .line 78
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_7

    .line 83
    .line 84
    const/16 v5, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    const/16 v5, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v0, v5

    .line 90
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 91
    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    or-int/lit16 v0, v0, 0xc00

    .line 95
    .line 96
    :cond_8
    move-object/from16 v8, p3

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_9
    and-int/lit16 v8, v6, 0xc00

    .line 100
    .line 101
    if-nez v8, :cond_8

    .line 102
    .line 103
    move-object/from16 v8, p3

    .line 104
    .line 105
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_a

    .line 110
    .line 111
    const/16 v9, 0x800

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_a
    const/16 v9, 0x400

    .line 115
    .line 116
    :goto_6
    or-int/2addr v0, v9

    .line 117
    :goto_7
    or-int/lit16 v9, v0, 0x6000

    .line 118
    .line 119
    and-int/lit16 v0, v9, 0x2493

    .line 120
    .line 121
    const/16 v10, 0x2492

    .line 122
    .line 123
    const/4 v11, 0x0

    .line 124
    if-eq v0, v10, :cond_b

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    goto :goto_8

    .line 128
    :cond_b
    move v0, v11

    .line 129
    :goto_8
    and-int/lit8 v10, v9, 0x1

    .line 130
    .line 131
    invoke-virtual {v14, v10, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_15

    .line 136
    .line 137
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    .line 139
    if-eqz v1, :cond_c

    .line 140
    .line 141
    move-object v13, v10

    .line 142
    goto :goto_9

    .line 143
    :cond_c
    move-object v13, v2

    .line 144
    :goto_9
    const/4 v0, 0x0

    .line 145
    if-eqz v3, :cond_d

    .line 146
    .line 147
    move-object/from16 v18, v0

    .line 148
    .line 149
    goto :goto_a

    .line 150
    :cond_d
    move-object/from16 v18, v4

    .line 151
    .line 152
    :goto_a
    if-eqz v5, :cond_e

    .line 153
    .line 154
    move-object/from16 v19, v0

    .line 155
    .line 156
    goto :goto_b

    .line 157
    :cond_e
    move-object/from16 v19, v8

    .line 158
    .line 159
    :goto_b
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 160
    .line 161
    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 162
    .line 163
    invoke-interface {v15, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-wide v2, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 172
    .line 173
    ushr-long v4, v2, v17

    .line 174
    .line 175
    xor-long/2addr v2, v4

    .line 176
    long-to-int v2, v2

    .line 177
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 191
    .line 192
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 193
    .line 194
    .line 195
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 196
    .line 197
    if-eqz v5, :cond_f

    .line 198
    .line 199
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    goto :goto_c

    .line 203
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 204
    .line 205
    .line 206
    :goto_c
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 207
    .line 208
    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 212
    .line 213
    invoke-static {v14, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 221
    .line 222
    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 223
    .line 224
    .line 225
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 226
    .line 227
    invoke-static {v14, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 228
    .line 229
    .line 230
    move-object/from16 p1, v8

    .line 231
    .line 232
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 233
    .line 234
    invoke-static {v14, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 238
    .line 239
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v16

    .line 243
    check-cast v16, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 244
    .line 245
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move/from16 v16, v9

    .line 249
    .line 250
    const/high16 v9, 0x41c00000    # 24.0f

    .line 251
    .line 252
    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    sget-object v9, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 257
    .line 258
    move-object/from16 p3, v0

    .line 259
    .line 260
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 261
    .line 262
    invoke-static {v9, v0, v14, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    move-object/from16 p4, v12

    .line 267
    .line 268
    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 269
    .line 270
    ushr-long v20, v11, v17

    .line 271
    .line 272
    xor-long v11, v11, v20

    .line 273
    .line 274
    long-to-int v11, v11

    .line 275
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    move-object/from16 v6, p4

    .line 280
    .line 281
    invoke-static {v14, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 286
    .line 287
    .line 288
    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 289
    .line 290
    if-eqz v7, :cond_10

    .line 291
    .line 292
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 293
    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 297
    .line 298
    .line 299
    :goto_d
    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v14, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v11, v14, v3, v14, v2}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v14, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 312
    .line 313
    const/16 v6, 0x30

    .line 314
    .line 315
    invoke-static {v9, v0, v14, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 320
    .line 321
    ushr-long v20, v11, v17

    .line 322
    .line 323
    xor-long v11, v11, v20

    .line 324
    .line 325
    long-to-int v7, v11

    .line 326
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-static {v14, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 335
    .line 336
    .line 337
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 338
    .line 339
    if-eqz v12, :cond_11

    .line 340
    .line 341
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 342
    .line 343
    .line 344
    goto :goto_e

    .line 345
    :cond_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 346
    .line 347
    .line 348
    :goto_e
    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v14, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v7, v14, v3, v14, v2}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v14, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    .line 359
    .line 360
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ErrorOutline:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 361
    .line 362
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 363
    .line 364
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 369
    .line 370
    iget-wide v11, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->error:J

    .line 371
    .line 372
    move-object v7, v2

    .line 373
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 374
    .line 375
    invoke-direct {v2, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 376
    .line 377
    .line 378
    move-object v9, v4

    .line 379
    const/4 v4, 0x0

    .line 380
    move-object v11, v5

    .line 381
    const/4 v5, 0x6

    .line 382
    move-object v12, v1

    .line 383
    const/4 v1, 0x0

    .line 384
    move/from16 v28, v6

    .line 385
    .line 386
    move-object/from16 v6, p3

    .line 387
    .line 388
    move/from16 p3, v28

    .line 389
    .line 390
    move-object/from16 v28, v7

    .line 391
    .line 392
    move-object v7, v3

    .line 393
    move-object v3, v14

    .line 394
    move-object/from16 v14, v28

    .line 395
    .line 396
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    const/high16 v0, 0x41800000    # 16.0f

    .line 409
    .line 410
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 415
    .line 416
    .line 417
    move-object v1, v11

    .line 418
    new-instance v11, Landroidx/compose/ui/text/style/TextAlign;

    .line 419
    .line 420
    const/4 v2, 0x3

    .line 421
    invoke-direct {v11, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 422
    .line 423
    .line 424
    move-object v2, v15

    .line 425
    and-int/lit8 v15, v16, 0xe

    .line 426
    .line 427
    move/from16 v4, v16

    .line 428
    .line 429
    const/16 v16, 0x36

    .line 430
    .line 431
    move-object v5, v8

    .line 432
    const/4 v8, 0x0

    .line 433
    move-object/from16 v20, v9

    .line 434
    .line 435
    move-object/from16 v21, v10

    .line 436
    .line 437
    const-wide/16 v9, 0x0

    .line 438
    .line 439
    move-object/from16 v22, v12

    .line 440
    .line 441
    const/4 v12, 0x0

    .line 442
    move-object/from16 v23, v13

    .line 443
    .line 444
    const/4 v13, 0x0

    .line 445
    const/4 v0, 0x1

    .line 446
    move-object/from16 v27, v5

    .line 447
    .line 448
    move-object/from16 v25, v7

    .line 449
    .line 450
    move-object/from16 v26, v14

    .line 451
    .line 452
    move-object/from16 v24, v22

    .line 453
    .line 454
    move-object/from16 v7, p0

    .line 455
    .line 456
    move-object v5, v1

    .line 457
    move-object v14, v3

    .line 458
    move-object/from16 v3, v20

    .line 459
    .line 460
    move-object/from16 v1, v21

    .line 461
    .line 462
    invoke-static/range {v7 .. v16}, Landroidx/compose/ui/unit/IntRectKt;->TextHeadlineSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 466
    .line 467
    .line 468
    if-eqz v18, :cond_12

    .line 469
    .line 470
    const v7, 0x54aaa7e9

    .line 471
    .line 472
    .line 473
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 481
    .line 482
    const/high16 v8, 0x41800000    # 16.0f

    .line 483
    .line 484
    invoke-static {v7, v1, v8, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 485
    .line 486
    .line 487
    shr-int/lit8 v7, v4, 0x6

    .line 488
    .line 489
    and-int/lit8 v7, v7, 0xe

    .line 490
    .line 491
    or-int/lit8 v15, v7, 0x30

    .line 492
    .line 493
    const/16 v16, 0x7c

    .line 494
    .line 495
    const-wide/16 v9, 0x0

    .line 496
    .line 497
    const/4 v11, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    const/4 v13, 0x0

    .line 500
    move-object v8, v2

    .line 501
    move-object/from16 v7, v18

    .line 502
    .line 503
    invoke-static/range {v7 .. v16}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 504
    .line 505
    .line 506
    move-object v2, v7

    .line 507
    const/4 v7, 0x0

    .line 508
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 509
    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_12
    move-object v8, v2

    .line 513
    move-object/from16 v2, v18

    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    const v9, 0x54ae1a14

    .line 517
    .line 518
    .line 519
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 523
    .line 524
    .line 525
    :goto_f
    if-eqz v19, :cond_14

    .line 526
    .line 527
    const v9, 0x54aed6dd

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 538
    .line 539
    const/high16 v9, 0x41c00000    # 24.0f

    .line 540
    .line 541
    invoke-static {v6, v1, v9, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 542
    .line 543
    .line 544
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 545
    .line 546
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 547
    .line 548
    const/4 v9, 0x6

    .line 549
    invoke-static {v1, v6, v14, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 554
    .line 555
    ushr-long v12, v10, v17

    .line 556
    .line 557
    xor-long/2addr v10, v12

    .line 558
    long-to-int v6, v10

    .line 559
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 560
    .line 561
    .line 562
    move-result-object v10

    .line 563
    invoke-static {v14, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 568
    .line 569
    .line 570
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 571
    .line 572
    if-eqz v11, :cond_13

    .line 573
    .line 574
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 575
    .line 576
    .line 577
    goto :goto_10

    .line 578
    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 579
    .line 580
    .line 581
    :goto_10
    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 582
    .line 583
    .line 584
    move-object/from16 v12, v24

    .line 585
    .line 586
    invoke-static {v14, v10, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v1, v25

    .line 590
    .line 591
    move-object/from16 v3, v26

    .line 592
    .line 593
    invoke-static {v6, v14, v1, v14, v3}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v5, v27

    .line 597
    .line 598
    invoke-static {v14, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 599
    .line 600
    .line 601
    sget-object v1, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_molecule_error_view_button_retry$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 602
    .line 603
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 608
    .line 609
    invoke-static {v1, v14}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    shr-int/lit8 v3, v4, 0x6

    .line 614
    .line 615
    and-int/lit8 v3, v3, 0x70

    .line 616
    .line 617
    const/16 v15, 0x3c

    .line 618
    .line 619
    const/4 v9, 0x0

    .line 620
    const/4 v10, 0x0

    .line 621
    const/4 v11, 0x0

    .line 622
    const/4 v12, 0x0

    .line 623
    move v8, v7

    .line 624
    move-object v7, v1

    .line 625
    move v1, v8

    .line 626
    move-object v13, v14

    .line 627
    move-object/from16 v8, v19

    .line 628
    .line 629
    move v14, v3

    .line 630
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 631
    .line 632
    .line 633
    move-object v14, v13

    .line 634
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 638
    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_14
    move v1, v7

    .line 642
    move-object/from16 v8, v19

    .line 643
    .line 644
    const v3, 0x54b5bef4

    .line 645
    .line 646
    .line 647
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 651
    .line 652
    .line 653
    :goto_11
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 657
    .line 658
    .line 659
    move-object/from16 v5, p1

    .line 660
    .line 661
    move-object v3, v2

    .line 662
    move-object/from16 v2, v23

    .line 663
    .line 664
    :goto_12
    move-object v4, v8

    .line 665
    goto :goto_13

    .line 666
    :cond_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 667
    .line 668
    .line 669
    move-object/from16 v5, p4

    .line 670
    .line 671
    move-object v3, v4

    .line 672
    goto :goto_12

    .line 673
    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    if-eqz v8, :cond_16

    .line 678
    .line 679
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;

    .line 680
    .line 681
    move-object/from16 v1, p0

    .line 682
    .line 683
    move/from16 v6, p6

    .line 684
    .line 685
    move/from16 v7, p7

    .line 686
    .line 687
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment;II)V

    .line 688
    .line 689
    .line 690
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 691
    .line 692
    :cond_16
    return-void
.end method

.method public static final IconWithPermissionStateOverlay(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v4, p2

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x1aec1430

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v6, 0x2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v6

    .line 20
    :goto_0
    or-int/2addr p2, p3

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p2, v0

    .line 38
    and-int/lit8 v0, p2, 0x13

    .line 39
    .line 40
    const/16 v2, 0x12

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eq v0, v2, :cond_2

    .line 45
    .line 46
    move v0, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v0, v8

    .line 49
    :goto_2
    and-int/lit8 v2, p2, 0x1

    .line 50
    .line 51
    invoke-virtual {v4, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    .line 58
    .line 59
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-wide v2, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 64
    .line 65
    ushr-long v9, v2, v1

    .line 66
    .line 67
    xor-long/2addr v2, v9

    .line 68
    long-to-int v1, v2

    .line 69
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 74
    .line 75
    invoke-static {v4, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 87
    .line 88
    .line 89
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 90
    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 98
    .line 99
    .line 100
    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {v4, v0, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 120
    .line 121
    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v4, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const/high16 v0, 0x42000000    # 32.0f

    .line 141
    .line 142
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    and-int/lit8 p2, p2, 0xe

    .line 147
    .line 148
    const/16 v5, 0xc

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    move-object v0, p0

    .line 152
    move-object v3, v4

    .line 153
    move v4, p2

    .line 154
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 155
    .line 156
    .line 157
    move-object v4, v3

    .line 158
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_6

    .line 163
    .line 164
    if-eq p2, v7, :cond_5

    .line 165
    .line 166
    if-ne p2, v6, :cond_4

    .line 167
    .line 168
    const p2, -0x43bef2d2

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 172
    .line 173
    .line 174
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Cancel:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 175
    .line 176
    sget-object p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    .line 178
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 183
    .line 184
    iget-wide v1, p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warning:J

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    invoke-static/range {v0 .. v5}, Landroidx/appcompat/app/ActionBar;->OverlayIcon-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_4
    const p0, 0x6127568

    .line 196
    .line 197
    .line 198
    invoke-static {v4, p0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    throw p0

    .line 203
    :cond_5
    const p2, -0x43c23b17

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->CheckCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 210
    .line 211
    sget-object p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 212
    .line 213
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 218
    .line 219
    iget-wide v1, p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->success:J

    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    const/4 v5, 0x0

    .line 223
    invoke-static/range {v0 .. v5}, Landroidx/appcompat/app/ActionBar;->OverlayIcon-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    const p2, 0x6127bae

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 237
    .line 238
    .line 239
    :goto_4
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 244
    .line 245
    .line 246
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    if-eqz p2, :cond_8

    .line 251
    .line 252
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 253
    .line 254
    invoke-direct {v0, p3, v6, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 258
    .line 259
    :cond_8
    return-void
.end method

.method public static final IncomingServerSettingsContent(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x1550155f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p5

    .line 32
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v1

    .line 56
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x800

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v1, 0x400

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v1

    .line 68
    and-int/lit16 v1, v0, 0x493

    .line 69
    .line 70
    const/16 v2, 0x492

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eq v1, v2, :cond_4

    .line 75
    .line 76
    move v1, v4

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v1, v3

    .line 79
    :goto_4
    and-int/2addr v0, v4

    .line 80
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/content/res/Resources;

    .line 93
    .line 94
    const-string v1, "IncomingServerSettingsContent"

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 97
    .line 98
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;

    .line 107
    .line 108
    invoke-direct {v2, p0, p1, p2, v0}, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;-><init>(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;)V

    .line 109
    .line 110
    .line 111
    const v0, 0x514667df

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2, p4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/16 v2, 0x30

    .line 119
    .line 120
    invoke-static {v1, v0, p4, v2, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    if-eqz p4, :cond_6

    .line 132
    .line 133
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/4 v6, 0x4

    .line 136
    move-object v1, p0

    .line 137
    move-object v2, p1

    .line 138
    move-object v3, p2

    .line 139
    move-object v4, p3

    .line 140
    move v5, p5

    .line 141
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 145
    .line 146
    :cond_6
    return-void
.end method

.method public static final LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 23

    .line 1
    move/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x3335543

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, v10, 0x6

    .line 18
    .line 19
    move v3, v2

    .line 20
    move-object/from16 v2, p9

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v2, v10, 0x6

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p9

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x2

    .line 38
    :goto_0
    or-int/2addr v3, v10

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v2, p9

    .line 41
    .line 42
    move v3, v10

    .line 43
    :goto_1
    and-int/lit8 v4, v10, 0x30

    .line 44
    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    and-int/lit8 v4, p1, 0x2

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    move-object/from16 v4, p6

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object/from16 v4, p6

    .line 63
    .line 64
    :cond_4
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v3, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    move-object/from16 v4, p6

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v5, p1, 0x4

    .line 71
    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    or-int/lit16 v3, v3, 0x180

    .line 75
    .line 76
    :cond_6
    move-object/from16 v6, p5

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    and-int/lit16 v6, v10, 0x180

    .line 80
    .line 81
    if-nez v6, :cond_6

    .line 82
    .line 83
    move-object/from16 v6, p5

    .line 84
    .line 85
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_8

    .line 90
    .line 91
    const/16 v7, 0x100

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_8
    const/16 v7, 0x80

    .line 95
    .line 96
    :goto_4
    or-int/2addr v3, v7

    .line 97
    :goto_5
    or-int/lit16 v3, v3, 0xc00

    .line 98
    .line 99
    and-int/lit16 v7, v10, 0x6000

    .line 100
    .line 101
    if-nez v7, :cond_b

    .line 102
    .line 103
    and-int/lit8 v7, p1, 0x10

    .line 104
    .line 105
    if-nez v7, :cond_9

    .line 106
    .line 107
    move-object/from16 v7, p4

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_a

    .line 114
    .line 115
    const/16 v8, 0x4000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    move-object/from16 v7, p4

    .line 119
    .line 120
    :cond_a
    const/16 v8, 0x2000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v3, v8

    .line 123
    goto :goto_7

    .line 124
    :cond_b
    move-object/from16 v7, p4

    .line 125
    .line 126
    :goto_7
    and-int/lit8 v8, p1, 0x20

    .line 127
    .line 128
    const/high16 v9, 0x30000

    .line 129
    .line 130
    if-eqz v8, :cond_d

    .line 131
    .line 132
    or-int/2addr v3, v9

    .line 133
    :cond_c
    move-object/from16 v9, p8

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_d
    and-int/2addr v9, v10

    .line 137
    if-nez v9, :cond_c

    .line 138
    .line 139
    move-object/from16 v9, p8

    .line 140
    .line 141
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_e

    .line 146
    .line 147
    const/high16 v11, 0x20000

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_e
    const/high16 v11, 0x10000

    .line 151
    .line 152
    :goto_8
    or-int/2addr v3, v11

    .line 153
    :goto_9
    const/high16 v11, 0x180000

    .line 154
    .line 155
    and-int/2addr v11, v10

    .line 156
    if-nez v11, :cond_f

    .line 157
    .line 158
    const/high16 v11, 0x80000

    .line 159
    .line 160
    or-int/2addr v3, v11

    .line 161
    :cond_f
    const/high16 v11, 0xc00000

    .line 162
    .line 163
    or-int/2addr v11, v3

    .line 164
    const/high16 v12, 0x6000000

    .line 165
    .line 166
    and-int/2addr v12, v10

    .line 167
    if-nez v12, :cond_10

    .line 168
    .line 169
    const/high16 v11, 0x2c00000

    .line 170
    .line 171
    or-int/2addr v11, v3

    .line 172
    :cond_10
    const/high16 v3, 0x30000000

    .line 173
    .line 174
    and-int/2addr v3, v10

    .line 175
    if-nez v3, :cond_12

    .line 176
    .line 177
    move-object/from16 v3, p10

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_11

    .line 184
    .line 185
    const/high16 v12, 0x20000000

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_11
    const/high16 v12, 0x10000000

    .line 189
    .line 190
    :goto_a
    or-int/2addr v11, v12

    .line 191
    goto :goto_b

    .line 192
    :cond_12
    move-object/from16 v3, p10

    .line 193
    .line 194
    :goto_b
    const v12, 0x12492493

    .line 195
    .line 196
    .line 197
    and-int/2addr v12, v11

    .line 198
    const v13, 0x12492492

    .line 199
    .line 200
    .line 201
    const/4 v14, 0x1

    .line 202
    if-eq v12, v13, :cond_13

    .line 203
    .line 204
    move v12, v14

    .line 205
    goto :goto_c

    .line 206
    :cond_13
    const/4 v12, 0x0

    .line 207
    :goto_c
    and-int/lit8 v13, v11, 0x1

    .line 208
    .line 209
    invoke-virtual {v0, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-eqz v12, :cond_1f

    .line 214
    .line 215
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 216
    .line 217
    .line 218
    and-int/lit8 v12, v10, 0x1

    .line 219
    .line 220
    const v13, -0xe380001

    .line 221
    .line 222
    .line 223
    const v15, -0xe001

    .line 224
    .line 225
    .line 226
    if-eqz v12, :cond_17

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_14

    .line 233
    .line 234
    goto :goto_e

    .line 235
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    and-int/lit8 v1, p1, 0x2

    .line 239
    .line 240
    if-eqz v1, :cond_15

    .line 241
    .line 242
    and-int/lit8 v11, v11, -0x71

    .line 243
    .line 244
    :cond_15
    and-int/lit8 v1, p1, 0x10

    .line 245
    .line 246
    if-eqz v1, :cond_16

    .line 247
    .line 248
    and-int/2addr v11, v15

    .line 249
    :cond_16
    and-int v1, v11, v13

    .line 250
    .line 251
    move-object/from16 v13, p2

    .line 252
    .line 253
    move-object/from16 v14, p3

    .line 254
    .line 255
    move/from16 v22, p11

    .line 256
    .line 257
    move-object/from16 v20, v2

    .line 258
    .line 259
    :goto_d
    move-object/from16 v17, v4

    .line 260
    .line 261
    move-object/from16 v16, v6

    .line 262
    .line 263
    move-object v15, v7

    .line 264
    move-object/from16 v19, v9

    .line 265
    .line 266
    goto :goto_10

    .line 267
    :cond_17
    :goto_e
    if-eqz v1, :cond_18

    .line 268
    .line 269
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 270
    .line 271
    goto :goto_f

    .line 272
    :cond_18
    move-object v1, v2

    .line 273
    :goto_f
    and-int/lit8 v2, p1, 0x2

    .line 274
    .line 275
    if-eqz v2, :cond_19

    .line 276
    .line 277
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    and-int/lit8 v11, v11, -0x71

    .line 282
    .line 283
    move-object v4, v2

    .line 284
    :cond_19
    if-eqz v5, :cond_1a

    .line 285
    .line 286
    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    invoke-direct {v2, v5, v5, v5, v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 290
    .line 291
    .line 292
    move-object v6, v2

    .line 293
    :cond_1a
    and-int/lit8 v2, p1, 0x10

    .line 294
    .line 295
    if-eqz v2, :cond_1b

    .line 296
    .line 297
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 298
    .line 299
    and-int/2addr v11, v15

    .line 300
    move-object v7, v2

    .line 301
    :cond_1b
    if-eqz v8, :cond_1c

    .line 302
    .line 303
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 304
    .line 305
    move-object v9, v2

    .line 306
    :cond_1c
    invoke-static {v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    if-nez v5, :cond_1d

    .line 319
    .line 320
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 321
    .line 322
    if-ne v8, v5, :cond_1e

    .line 323
    .line 324
    :cond_1d
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 325
    .line 326
    invoke-direct {v8, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_1e
    move-object v2, v8

    .line 333
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 334
    .line 335
    invoke-static {v0}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    and-int v8, v11, v13

    .line 340
    .line 341
    move-object/from16 v20, v1

    .line 342
    .line 343
    move-object v13, v5

    .line 344
    move v1, v8

    .line 345
    move/from16 v22, v14

    .line 346
    .line 347
    move-object v14, v2

    .line 348
    goto :goto_d

    .line 349
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 350
    .line 351
    .line 352
    and-int/lit8 v2, v1, 0xe

    .line 353
    .line 354
    or-int/lit16 v2, v2, 0x6000

    .line 355
    .line 356
    and-int/lit8 v4, v1, 0x70

    .line 357
    .line 358
    or-int/2addr v2, v4

    .line 359
    and-int/lit16 v4, v1, 0x380

    .line 360
    .line 361
    or-int/2addr v2, v4

    .line 362
    and-int/lit16 v4, v1, 0x1c00

    .line 363
    .line 364
    or-int/2addr v2, v4

    .line 365
    shr-int/lit8 v4, v1, 0x3

    .line 366
    .line 367
    const/high16 v5, 0x380000

    .line 368
    .line 369
    and-int/2addr v4, v5

    .line 370
    or-int/2addr v2, v4

    .line 371
    shl-int/lit8 v4, v1, 0xc

    .line 372
    .line 373
    const/high16 v5, 0x70000000

    .line 374
    .line 375
    and-int/2addr v4, v5

    .line 376
    or-int v11, v2, v4

    .line 377
    .line 378
    shr-int/lit8 v2, v1, 0xc

    .line 379
    .line 380
    and-int/lit8 v2, v2, 0xe

    .line 381
    .line 382
    shr-int/lit8 v1, v1, 0x12

    .line 383
    .line 384
    and-int/lit16 v1, v1, 0x1c00

    .line 385
    .line 386
    or-int v12, v2, v1

    .line 387
    .line 388
    move-object/from16 v18, v0

    .line 389
    .line 390
    move-object/from16 v21, v3

    .line 391
    .line 392
    invoke-static/range {v11 .. v22}, Landroidx/room/util/SchemaInfoUtilKt;->LazyList(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 393
    .line 394
    .line 395
    move-object v8, v13

    .line 396
    move-object v6, v14

    .line 397
    move-object v4, v15

    .line 398
    move-object/from16 v3, v16

    .line 399
    .line 400
    move-object/from16 v2, v17

    .line 401
    .line 402
    move-object/from16 v5, v19

    .line 403
    .line 404
    move-object/from16 v1, v20

    .line 405
    .line 406
    move/from16 v7, v22

    .line 407
    .line 408
    goto :goto_11

    .line 409
    :cond_1f
    move-object/from16 v18, v0

    .line 410
    .line 411
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 412
    .line 413
    .line 414
    move-object/from16 v8, p2

    .line 415
    .line 416
    move-object v1, v2

    .line 417
    move-object v2, v4

    .line 418
    move-object v3, v6

    .line 419
    move-object v4, v7

    .line 420
    move-object v5, v9

    .line 421
    move-object/from16 v6, p3

    .line 422
    .line 423
    move/from16 v7, p11

    .line 424
    .line 425
    :goto_11
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 426
    .line 427
    .line 428
    move-result-object v12

    .line 429
    if-eqz v12, :cond_20

    .line 430
    .line 431
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;

    .line 432
    .line 433
    move/from16 v11, p1

    .line 434
    .line 435
    move-object/from16 v9, p10

    .line 436
    .line 437
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    .line 438
    .line 439
    .line 440
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 441
    .line 442
    :cond_20
    return-void
.end method

.method public static final ListItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v5, p5

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p4

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v2, 0x3c00d06d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v2, v5, 0x6

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x2

    .line 33
    :goto_0
    or-int/2addr v2, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v2, v5

    .line 36
    :goto_1
    and-int/lit8 v3, p6, 0x1

    .line 37
    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    or-int/lit8 v2, v2, 0x30

    .line 43
    .line 44
    :cond_2
    move-object/from16 v7, p1

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    and-int/lit8 v7, v5, 0x30

    .line 48
    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    move-object/from16 v7, p1

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    move v8, v6

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    const/16 v8, 0x10

    .line 62
    .line 63
    :goto_2
    or-int/2addr v2, v8

    .line 64
    :goto_3
    and-int/lit16 v8, v5, 0x180

    .line 65
    .line 66
    if-nez v8, :cond_5

    .line 67
    .line 68
    or-int/lit16 v2, v2, 0x80

    .line 69
    .line 70
    :cond_5
    and-int/lit16 v8, v5, 0xc00

    .line 71
    .line 72
    if-nez v8, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    const/16 v8, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v8, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v2, v8

    .line 86
    :cond_7
    and-int/lit16 v8, v2, 0x493

    .line 87
    .line 88
    const/16 v9, 0x492

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x1

    .line 92
    if-eq v8, v9, :cond_8

    .line 93
    .line 94
    move v8, v11

    .line 95
    goto :goto_5

    .line 96
    :cond_8
    move v8, v10

    .line 97
    :goto_5
    and-int/lit8 v9, v2, 0x1

    .line 98
    .line 99
    invoke-virtual {v0, v9, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_d

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 106
    .line 107
    .line 108
    and-int/lit8 v8, v5, 0x1

    .line 109
    .line 110
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 111
    .line 112
    if-eqz v8, :cond_a

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_9

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    and-int/lit16 v2, v2, -0x381

    .line 125
    .line 126
    move-object/from16 v3, p2

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    .line 130
    .line 131
    move-object v7, v9

    .line 132
    :cond_b
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    and-int/lit16 v2, v2, -0x381

    .line 137
    .line 138
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 139
    .line 140
    .line 141
    invoke-static {v9, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    const/4 v9, 0x0

    .line 146
    const/4 v12, 0x7

    .line 147
    invoke-static {v1, v8, v9, v12}, Landroidx/camera/core/impl/Config$-CC;->animateItem$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/SnapSpec;I)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 152
    .line 153
    invoke-interface {v8, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-interface {v8, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 162
    .line 163
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 168
    .line 169
    ushr-long v14, v12, v6

    .line 170
    .line 171
    xor-long/2addr v12, v14

    .line 172
    long-to-int v6, v12

    .line 173
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v0, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 182
    .line 183
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 189
    .line 190
    .line 191
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 192
    .line 193
    if-eqz v13, :cond_c

    .line 194
    .line 195
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 200
    .line 201
    .line 202
    :goto_8
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 203
    .line 204
    invoke-static {v0, v9, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    .line 206
    .line 207
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 208
    .line 209
    invoke-static {v0, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 217
    .line 218
    invoke-static {v0, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 222
    .line 223
    invoke-static {v0, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 224
    .line 225
    .line 226
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 227
    .line 228
    invoke-static {v0, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 229
    .line 230
    .line 231
    shr-int/lit8 v2, v2, 0x9

    .line 232
    .line 233
    and-int/lit8 v2, v2, 0xe

    .line 234
    .line 235
    invoke-static {v2, v4, v0, v11}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 236
    .line 237
    .line 238
    :goto_9
    move-object v2, v7

    .line 239
    goto :goto_a

    .line 240
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 241
    .line 242
    .line 243
    move-object/from16 v3, p2

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    if-eqz v8, :cond_e

    .line 251
    .line 252
    new-instance v0, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;

    .line 253
    .line 254
    const/4 v7, 0x0

    .line 255
    move/from16 v6, p6

    .line 256
    .line 257
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;III)V

    .line 258
    .line 259
    .line 260
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 261
    .line 262
    :cond_e
    return-void
.end method

.method public static final OverlayIcon-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-wide/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v12, p4

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x3636b608    # -1648959.0f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int v0, p5, v0

    .line 24
    .line 25
    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v4, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v0, v4

    .line 37
    or-int/lit16 v0, v0, 0x180

    .line 38
    .line 39
    and-int/lit16 v4, v0, 0x93

    .line 40
    .line 41
    const/16 v5, 0x92

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    move v4, v6

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v4, 0x0

    .line 49
    :goto_2
    and-int/2addr v0, v6

    .line 50
    invoke-virtual {v12, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 63
    .line 64
    iget-wide v6, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surface:J

    .line 65
    .line 66
    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 67
    .line 68
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;

    .line 69
    .line 70
    invoke-direct {v0, p0, v2, v3, v1}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;JI)V

    .line 71
    .line 72
    .line 73
    const v1, -0x16a1d445

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    const v13, 0x30006

    .line 81
    .line 82
    .line 83
    const/16 v14, 0x18

    .line 84
    .line 85
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 86
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    invoke-static/range {v4 .. v14}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    move-object/from16 v4, p3

    .line 98
    .line 99
    :goto_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;

    .line 106
    .line 107
    move-object v1, p0

    .line 108
    move/from16 v5, p5

    .line 109
    .line 110
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 114
    .line 115
    :cond_4
    return-void
.end method

.method public static final PermissionBox(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object/from16 v10, p5

    .line 19
    .line 20
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    const v0, -0xfcb43f1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x2

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v3

    .line 38
    :goto_0
    or-int v0, p6, v0

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_1
    or-int/2addr v0, v4

    .line 56
    move-object/from16 v4, p2

    .line 57
    .line 58
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    const/16 v5, 0x100

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/16 v5, 0x80

    .line 68
    .line 69
    :goto_2
    or-int/2addr v0, v5

    .line 70
    move-object/from16 v14, p3

    .line 71
    .line 72
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    const/16 v5, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/16 v5, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v0, v5

    .line 84
    move-object/from16 v15, p4

    .line 85
    .line 86
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    const/16 v5, 0x4000

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    const/16 v5, 0x2000

    .line 96
    .line 97
    :goto_4
    or-int/2addr v0, v5

    .line 98
    and-int/lit16 v5, v0, 0x2493

    .line 99
    .line 100
    const/16 v6, 0x2492

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    if-eq v5, v6, :cond_5

    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    move v5, v7

    .line 108
    :goto_5
    and-int/lit8 v6, v0, 0x1

    .line 109
    .line 110
    invoke-virtual {v10, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_c

    .line 115
    .line 116
    const/high16 v5, 0x43fa0000    # 500.0f

    .line 117
    .line 118
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 119
    .line 120
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    sget-object v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    const/high16 v11, 0x41800000    # 16.0f

    .line 136
    .line 137
    const/4 v12, 0x0

    .line 138
    invoke-static {v5, v11, v12, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 143
    .line 144
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 145
    .line 146
    invoke-static {v5, v11, v10, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    const/16 v22, 0x20

    .line 151
    .line 152
    iget-wide v13, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 153
    .line 154
    ushr-long v16, v13, v22

    .line 155
    .line 156
    xor-long v13, v13, v16

    .line 157
    .line 158
    long-to-int v13, v13

    .line 159
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    invoke-static {v10, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 168
    .line 169
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 173
    .line 174
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 175
    .line 176
    .line 177
    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 178
    .line 179
    if-eqz v8, :cond_6

    .line 180
    .line 181
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 186
    .line 187
    .line 188
    :goto_6
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v10, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 194
    .line 195
    invoke-static {v10, v14, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 203
    .line 204
    invoke-static {v10, v13, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    .line 206
    .line 207
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 208
    .line 209
    invoke-static {v10, v13}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 210
    .line 211
    .line 212
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 213
    .line 214
    invoke-static {v10, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    .line 216
    .line 217
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 218
    .line 219
    move/from16 v23, v0

    .line 220
    .line 221
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 222
    .line 223
    const/4 v15, 0x0

    .line 224
    invoke-static {v3, v0, v10, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-wide v1, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 229
    .line 230
    ushr-long v15, v1, v22

    .line 231
    .line 232
    xor-long/2addr v1, v15

    .line 233
    long-to-int v1, v1

    .line 234
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {v10, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 243
    .line 244
    .line 245
    iget-boolean v15, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 246
    .line 247
    if-eqz v15, :cond_7

    .line 248
    .line 249
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 254
    .line 255
    .line 256
    :goto_7
    invoke-static {v10, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v10, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v10, v14, v10, v13}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v10, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    const/16 v17, 0x0

    .line 296
    .line 297
    const/16 v21, 0x1

    .line 298
    .line 299
    const/high16 v18, 0x41000000    # 8.0f

    .line 300
    .line 301
    const/high16 v19, 0x41800000    # 16.0f

    .line 302
    .line 303
    const/high16 v20, 0x41000000    # 8.0f

    .line 304
    .line 305
    move-object/from16 v16, v6

    .line 306
    .line 307
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object/from16 v1, v16

    .line 312
    .line 313
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 314
    .line 315
    const/4 v15, 0x0

    .line 316
    invoke-static {v2, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    move-object v3, v5

    .line 321
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 322
    .line 323
    ushr-long v15, v5, v22

    .line 324
    .line 325
    xor-long/2addr v5, v15

    .line 326
    long-to-int v5, v5

    .line 327
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v10, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 336
    .line 337
    .line 338
    iget-boolean v15, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 339
    .line 340
    if-eqz v15, :cond_8

    .line 341
    .line 342
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 347
    .line 348
    .line 349
    :goto_8
    invoke-static {v10, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v10, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v5, v10, v14, v10, v13}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v10, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 359
    .line 360
    .line 361
    and-int/lit8 v0, v23, 0x7e

    .line 362
    .line 363
    move-object/from16 v2, p0

    .line 364
    .line 365
    move-object/from16 v15, p1

    .line 366
    .line 367
    invoke-static {v2, v15, v10, v0}, Landroidx/appcompat/app/ActionBar;->IconWithPermissionStateOverlay(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Landroidx/compose/runtime/Composer;I)V

    .line 368
    .line 369
    .line 370
    const/4 v0, 0x1

    .line 371
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 372
    .line 373
    .line 374
    const/4 v5, 0x0

    .line 375
    invoke-static {v3, v11, v10, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    move-object/from16 v16, v1

    .line 380
    .line 381
    iget-wide v0, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 382
    .line 383
    ushr-long v17, v0, v22

    .line 384
    .line 385
    xor-long v0, v0, v17

    .line 386
    .line 387
    long-to-int v0, v0

    .line 388
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    move-object/from16 v6, v16

    .line 393
    .line 394
    invoke-static {v10, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 399
    .line 400
    .line 401
    iget-boolean v2, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 402
    .line 403
    if-eqz v2, :cond_9

    .line 404
    .line 405
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 406
    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 410
    .line 411
    .line 412
    :goto_9
    invoke-static {v10, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v0, v10, v14, v10, v13}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v10, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 422
    .line 423
    .line 424
    shr-int/lit8 v0, v23, 0x6

    .line 425
    .line 426
    and-int/lit8 v11, v0, 0xe

    .line 427
    .line 428
    move-object v0, v12

    .line 429
    const/16 v12, 0x3e

    .line 430
    .line 431
    move-object v1, v4

    .line 432
    const/4 v4, 0x0

    .line 433
    move-object/from16 v16, v6

    .line 434
    .line 435
    const-wide/16 v5, 0x0

    .line 436
    .line 437
    move-object v2, v7

    .line 438
    const/4 v7, 0x0

    .line 439
    move-object/from16 v17, v8

    .line 440
    .line 441
    const/4 v8, 0x0

    .line 442
    move-object/from16 v18, v9

    .line 443
    .line 444
    const/4 v9, 0x0

    .line 445
    move-object/from16 v24, v2

    .line 446
    .line 447
    move-object v2, v3

    .line 448
    move-object/from16 v25, v16

    .line 449
    .line 450
    move-object/from16 v3, p2

    .line 451
    .line 452
    move-object/from16 v16, v13

    .line 453
    .line 454
    move-object v13, v0

    .line 455
    move-object v0, v1

    .line 456
    move-object/from16 v1, v17

    .line 457
    .line 458
    move-object/from16 v17, v14

    .line 459
    .line 460
    const/4 v14, 0x1

    .line 461
    invoke-static/range {v3 .. v12}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 462
    .line 463
    .line 464
    shr-int/lit8 v19, v23, 0x9

    .line 465
    .line 466
    and-int/lit8 v11, v19, 0xe

    .line 467
    .line 468
    const/16 v12, 0x7e

    .line 469
    .line 470
    const/4 v7, 0x0

    .line 471
    const/4 v9, 0x0

    .line 472
    move-object/from16 v3, p3

    .line 473
    .line 474
    invoke-static/range {v3 .. v12}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 481
    .line 482
    .line 483
    sget-object v3, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Granted:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 484
    .line 485
    if-ne v15, v3, :cond_a

    .line 486
    .line 487
    const/4 v3, 0x0

    .line 488
    goto :goto_a

    .line 489
    :cond_a
    const/high16 v12, 0x3f800000    # 1.0f

    .line 490
    .line 491
    move v3, v12

    .line 492
    :goto_a
    const/16 v7, 0xc00

    .line 493
    .line 494
    const/16 v8, 0x16

    .line 495
    .line 496
    const/4 v4, 0x0

    .line 497
    const-string v5, "AllowButtonAlpha"

    .line 498
    .line 499
    move-object v6, v10

    .line 500
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 505
    .line 506
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 507
    .line 508
    const/16 v6, 0x30

    .line 509
    .line 510
    invoke-static {v2, v5, v10, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 515
    .line 516
    ushr-long v7, v5, v22

    .line 517
    .line 518
    xor-long/2addr v5, v7

    .line 519
    long-to-int v5, v5

    .line 520
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-static {v10, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 529
    .line 530
    .line 531
    iget-boolean v7, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 532
    .line 533
    if-eqz v7, :cond_b

    .line 534
    .line 535
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 536
    .line 537
    .line 538
    goto :goto_b

    .line 539
    :cond_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 540
    .line 541
    .line 542
    :goto_b
    invoke-static {v10, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 543
    .line 544
    .line 545
    invoke-static {v10, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 546
    .line 547
    .line 548
    move-object/from16 v1, v16

    .line 549
    .line 550
    move-object/from16 v0, v17

    .line 551
    .line 552
    invoke-static {v5, v10, v0, v10, v1}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 553
    .line 554
    .line 555
    move-object/from16 v2, v24

    .line 556
    .line 557
    invoke-static {v10, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 558
    .line 559
    .line 560
    move-object/from16 v0, v18

    .line 561
    .line 562
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 567
    .line 568
    const/high16 v1, 0x41000000    # 8.0f

    .line 569
    .line 570
    move-object/from16 v6, v25

    .line 571
    .line 572
    invoke-static {v0, v6, v1, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 573
    .line 574
    .line 575
    const v0, 0x7f12050b

    .line 576
    .line 577
    .line 578
    invoke-static {v10, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Ljava/lang/Number;

    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    invoke-static {v6, v1}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    and-int/lit8 v11, v19, 0x70

    .line 597
    .line 598
    const/16 v12, 0xf8

    .line 599
    .line 600
    const/4 v6, 0x0

    .line 601
    const/4 v7, 0x0

    .line 602
    const/4 v8, 0x0

    .line 603
    const/4 v9, 0x0

    .line 604
    move-object/from16 v4, p4

    .line 605
    .line 606
    move-object v3, v0

    .line 607
    invoke-static/range {v3 .. v12}, Landroidx/compose/ui/unit/IntOffsetKt;->ButtonFilled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 614
    .line 615
    .line 616
    goto :goto_c

    .line 617
    :cond_c
    move-object/from16 v15, p1

    .line 618
    .line 619
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 620
    .line 621
    .line 622
    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 623
    .line 624
    .line 625
    move-result-object v8

    .line 626
    if-eqz v8, :cond_d

    .line 627
    .line 628
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 629
    .line 630
    const/16 v7, 0xa

    .line 631
    .line 632
    move-object/from16 v1, p0

    .line 633
    .line 634
    move-object/from16 v3, p2

    .line 635
    .line 636
    move-object/from16 v4, p3

    .line 637
    .line 638
    move-object/from16 v5, p4

    .line 639
    .line 640
    move/from16 v6, p6

    .line 641
    .line 642
    move-object v2, v15

    .line 643
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 644
    .line 645
    .line 646
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    :cond_d
    return-void
.end method

.method public static final access$insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, v1, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    aput-object p3, v0, p1

    .line 22
    .line 23
    return-object v0
.end method

.method public static final access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p0, 0x2

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final access$removeNodeAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v0, v1, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p0, 0x1

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroidx/work/impl/ToContinuation;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, v1}, Landroidx/work/impl/ToContinuation;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    .line 28
    .line 29
    invoke-interface {p0, p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 33
    .line 34
    const/16 v1, 0x1c

    .line 35
    .line 36
    invoke-direct {p1, v1, p0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Lkotlin/KotlinNullPointerException;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 58
    .line 59
    .line 60
    const-class p1, Lkotlin/jvm/internal/Intrinsics;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static final collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 13

    .line 1
    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 11
    .line 12
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v0, 0x4

    .line 21
    new-array v9, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    aput-object p0, v9, v10

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v3, v9, v2

    .line 28
    .line 29
    const/4 v11, 0x2

    .line 30
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    aput-object v4, v9, v11

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 36
    .line 37
    aput-object v5, v9, v2

    .line 38
    .line 39
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    or-int/2addr v2, v6

    .line 54
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    or-int/2addr v2, v6

    .line 59
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    or-int/2addr v2, v6

    .line 64
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    if-ne v6, v12, :cond_1

    .line 73
    .line 74
    :cond_0
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    const/16 v8, 0xa

    .line 78
    .line 79
    move-object v6, p0

    .line 80
    invoke-direct/range {v2 .. v8}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object v6, v2

    .line 87
    :cond_1
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-ne p0, v12, :cond_2

    .line 94
    .line 95
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 103
    .line 104
    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-nez v1, :cond_3

    .line 117
    .line 118
    if-ne v2, v12, :cond_4

    .line 119
    .line 120
    :cond_3
    new-instance v2, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-direct {v2, v6, p0, v1, v11}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    iget-object v1, p1, Landroidx/compose/runtime/GapComposer;->applyCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 132
    .line 133
    array-length v3, v0

    .line 134
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    array-length v3, v0

    .line 139
    move v4, v10

    .line 140
    :goto_0
    if-ge v10, v3, :cond_5

    .line 141
    .line 142
    aget-object v5, v0, v10

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    or-int/2addr v4, v5

    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-nez v4, :cond_7

    .line 157
    .line 158
    if-ne v0, v12, :cond_6

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    return-object p0

    .line 162
    :cond_7
    :goto_1
    new-instance v0, Landroidx/compose/runtime/LaunchedEffectImpl;

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-object p0
.end method

.method public static final columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, -0x1

    .line 11
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_1
    if-ltz v2, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-string v0, "`"

    .line 32
    .line 33
    const/16 v2, 0x60

    .line 34
    .line 35
    invoke-static {v2, v0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    move v5, v1

    .line 44
    :goto_2
    if-ge v5, v4, :cond_4

    .line 45
    .line 46
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move v5, v3

    .line 61
    :goto_3
    if-ltz v5, :cond_5

    .line 62
    .line 63
    return v5

    .line 64
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v4, 0x19

    .line 67
    .line 68
    if-gt v0, v4, :cond_9

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_6
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-string v4, "."

    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v2, v4, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move v6, v1

    .line 92
    :goto_4
    if-ge v6, v0, :cond_9

    .line 93
    .line 94
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    add-int/lit8 v9, v9, 0x2

    .line 107
    .line 108
    if-lt v8, v9, :cond_8

    .line 109
    .line 110
    invoke-static {v7, v5, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_7

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-ne v8, v2, :cond_8

    .line 122
    .line 123
    invoke-static {v7, v4, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    :goto_5
    return v6

    .line 130
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    :goto_6
    return v3
.end method

.method public static final create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    new-instance p1, Landroidx/camera/core/CameraIdentifier;

    invoke-direct {p1, p0, p2}, Landroidx/camera/core/CameraIdentifier;-><init>(Ljava/util/ArrayList;Landroidx/camera/core/impl/AutoValue_Identifier;)V

    return-object p1
.end method

.method public static create(Lnet/thunderbird/core/preference/GeneralSettingsManager;)Lcom/fsck/k9/activity/MessageListActivityConfig;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 17
    .line 18
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 19
    .line 20
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 21
    .line 22
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 23
    .line 24
    new-instance v3, Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 25
    .line 26
    iget-object v4, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 27
    .line 28
    iget-object v5, v4, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 29
    .line 30
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 31
    .line 32
    move-object v6, v5

    .line 33
    iget-boolean v5, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 34
    .line 35
    move-object v7, v6

    .line 36
    iget-boolean v6, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowMessageListStars:Z

    .line 37
    .line 38
    move-object v8, v7

    .line 39
    iget-boolean v7, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 40
    .line 41
    move-object v9, v8

    .line 42
    iget-boolean v8, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isMessageListSenderAboveSubject:Z

    .line 43
    .line 44
    move-object v10, v9

    .line 45
    iget-boolean v9, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 46
    .line 47
    move-object v11, v10

    .line 48
    iget-boolean v10, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 49
    .line 50
    move-object v12, v11

    .line 51
    iget-boolean v11, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 52
    .line 53
    move-object v13, v12

    .line 54
    iget-boolean v12, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isColorizeMissingContactPictures:Z

    .line 55
    .line 56
    move-object v14, v13

    .line 57
    iget-boolean v13, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isUseBackgroundAsUnreadIndicator:Z

    .line 58
    .line 59
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowComposeButtonOnMessageList:Z

    .line 60
    .line 61
    iget v15, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 62
    .line 63
    move/from16 v16, v1

    .line 64
    .line 65
    iget-object v1, v4, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 66
    .line 67
    move-object/from16 v17, v1

    .line 68
    .line 69
    iget v1, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->previewLines:I

    .line 70
    .line 71
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->uiDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 72
    .line 73
    iget-object v4, v4, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 74
    .line 75
    move/from16 v18, v1

    .line 76
    .line 77
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 78
    .line 79
    move-object/from16 v19, v2

    .line 80
    .line 81
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 82
    .line 83
    move/from16 v20, v2

    .line 84
    .line 85
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 86
    .line 87
    move/from16 v21, v2

    .line 88
    .line 89
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 90
    .line 91
    move/from16 v22, v2

    .line 92
    .line 93
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 94
    .line 95
    move/from16 v23, v2

    .line 96
    .line 97
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 98
    .line 99
    move/from16 v24, v2

    .line 100
    .line 101
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 102
    .line 103
    move/from16 v25, v2

    .line 104
    .line 105
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 106
    .line 107
    move/from16 v26, v2

    .line 108
    .line 109
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 110
    .line 111
    iget v1, v1, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 112
    .line 113
    iget-object v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 114
    .line 115
    move/from16 v28, v1

    .line 116
    .line 117
    iget-object v1, v0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 118
    .line 119
    iget-object v0, v0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 120
    .line 121
    move-object/from16 v27, v19

    .line 122
    .line 123
    move-object/from16 v19, v4

    .line 124
    .line 125
    move-object v4, v14

    .line 126
    move/from16 v14, v16

    .line 127
    .line 128
    move-object/from16 v16, v17

    .line 129
    .line 130
    move/from16 v17, v18

    .line 131
    .line 132
    move-object/from16 v18, v27

    .line 133
    .line 134
    move-object/from16 v31, p0

    .line 135
    .line 136
    move-object/from16 v30, v0

    .line 137
    .line 138
    move-object/from16 v29, v1

    .line 139
    .line 140
    move/from16 v27, v2

    .line 141
    .line 142
    invoke-direct/range {v3 .. v31}, Lcom/fsck/k9/activity/MessageListActivityConfig;-><init>(Lnet/thunderbird/core/preference/AppTheme;ZZZZZZZZZZILnet/thunderbird/core/preference/SubTheme;ILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Lnet/thunderbird/core/preference/SplitViewMode;IIIIIIIIILnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 143
    .line 144
    .line 145
    return-object v3
.end method

.method public static final createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v3, Lokhttp3/Dispatcher;

    .line 9
    .line 10
    iget-object v0, v2, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v4, v3, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroidx/room/TransactionExecutor;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v5, v2, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const v7, 0x7f05000b

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x1

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    new-instance v6, Landroidx/room/RoomDatabase$Builder;

    .line 50
    .line 51
    invoke-direct {v6, v0, v7}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v8, v6, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v6, "androidx.work.workdb"

    .line 58
    .line 59
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_32

    .line 64
    .line 65
    new-instance v9, Landroidx/room/RoomDatabase$Builder;

    .line 66
    .line 67
    invoke-direct {v9, v0, v6}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/16 v10, 0xd

    .line 73
    .line 74
    invoke-direct {v6, v10, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v6, v9, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    move-object v6, v9

    .line 80
    :goto_0
    iput-object v4, v6, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    new-instance v4, Landroidx/work/impl/CleanupCallback;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/work/SystemClock;)V

    .line 85
    .line 86
    .line 87
    iget-object v14, v6, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 93
    .line 94
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE:Landroidx/work/impl/Migration_1_2;

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    aput-object v5, v4, v9

    .line 98
    .line 99
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 100
    .line 101
    .line 102
    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    .line 103
    .line 104
    const/4 v5, 0x3

    .line 105
    const/4 v10, 0x2

    .line 106
    invoke-direct {v4, v0, v10, v5}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    .line 107
    .line 108
    .line 109
    new-array v5, v8, [Landroidx/room/migration/Migration;

    .line 110
    .line 111
    aput-object v4, v5, v9

    .line 112
    .line 113
    invoke-virtual {v6, v5}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 114
    .line 115
    .line 116
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 117
    .line 118
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$5:Landroidx/work/impl/Migration_1_2;

    .line 119
    .line 120
    aput-object v5, v4, v9

    .line 121
    .line 122
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 123
    .line 124
    .line 125
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 126
    .line 127
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$6:Landroidx/work/impl/Migration_1_2;

    .line 128
    .line 129
    aput-object v5, v4, v9

    .line 130
    .line 131
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 132
    .line 133
    .line 134
    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    .line 135
    .line 136
    const/4 v5, 0x5

    .line 137
    const/4 v11, 0x6

    .line 138
    invoke-direct {v4, v0, v5, v11}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    .line 139
    .line 140
    .line 141
    new-array v5, v8, [Landroidx/room/migration/Migration;

    .line 142
    .line 143
    aput-object v4, v5, v9

    .line 144
    .line 145
    invoke-virtual {v6, v5}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 146
    .line 147
    .line 148
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 149
    .line 150
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$7:Landroidx/work/impl/Migration_1_2;

    .line 151
    .line 152
    aput-object v5, v4, v9

    .line 153
    .line 154
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 155
    .line 156
    .line 157
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 158
    .line 159
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$8:Landroidx/work/impl/Migration_1_2;

    .line 160
    .line 161
    aput-object v5, v4, v9

    .line 162
    .line 163
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 164
    .line 165
    .line 166
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 167
    .line 168
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$9:Landroidx/work/impl/Migration_1_2;

    .line 169
    .line 170
    aput-object v5, v4, v9

    .line 171
    .line 172
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    .line 176
    .line 177
    invoke-direct {v4, v0}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    new-array v5, v8, [Landroidx/room/migration/Migration;

    .line 181
    .line 182
    aput-object v4, v5, v9

    .line 183
    .line 184
    invoke-virtual {v6, v5}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 185
    .line 186
    .line 187
    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    .line 188
    .line 189
    const/16 v5, 0xa

    .line 190
    .line 191
    const/16 v11, 0xb

    .line 192
    .line 193
    invoke-direct {v4, v0, v5, v11}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    .line 194
    .line 195
    .line 196
    new-array v5, v8, [Landroidx/room/migration/Migration;

    .line 197
    .line 198
    aput-object v4, v5, v9

    .line 199
    .line 200
    invoke-virtual {v6, v5}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 201
    .line 202
    .line 203
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 204
    .line 205
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$1:Landroidx/work/impl/Migration_1_2;

    .line 206
    .line 207
    aput-object v5, v4, v9

    .line 208
    .line 209
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 210
    .line 211
    .line 212
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 213
    .line 214
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$2:Landroidx/work/impl/Migration_1_2;

    .line 215
    .line 216
    aput-object v5, v4, v9

    .line 217
    .line 218
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 219
    .line 220
    .line 221
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 222
    .line 223
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$3:Landroidx/work/impl/Migration_1_2;

    .line 224
    .line 225
    aput-object v5, v4, v9

    .line 226
    .line 227
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 228
    .line 229
    .line 230
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 231
    .line 232
    sget-object v5, Landroidx/work/impl/Migration_1_2;->INSTANCE$4:Landroidx/work/impl/Migration_1_2;

    .line 233
    .line 234
    aput-object v5, v4, v9

    .line 235
    .line 236
    invoke-virtual {v6, v4}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 237
    .line 238
    .line 239
    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    .line 240
    .line 241
    const/16 v5, 0x15

    .line 242
    .line 243
    const/16 v11, 0x16

    .line 244
    .line 245
    invoke-direct {v4, v0, v5, v11}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    .line 246
    .line 247
    .line 248
    new-array v0, v8, [Landroidx/room/migration/Migration;

    .line 249
    .line 250
    aput-object v4, v0, v9

    .line 251
    .line 252
    invoke-virtual {v6, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 253
    .line 254
    .line 255
    iput-boolean v9, v6, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 256
    .line 257
    iput-boolean v8, v6, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 258
    .line 259
    iput-boolean v8, v6, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    .line 260
    .line 261
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 262
    .line 263
    if-nez v0, :cond_1

    .line 264
    .line 265
    iget-object v4, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 266
    .line 267
    if-nez v4, :cond_1

    .line 268
    .line 269
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    .line 270
    .line 271
    iput-object v0, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 272
    .line 273
    iput-object v0, v6, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_1
    if-eqz v0, :cond_2

    .line 277
    .line 278
    iget-object v4, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 279
    .line 280
    if-nez v4, :cond_2

    .line 281
    .line 282
    iput-object v0, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_2
    if-nez v0, :cond_3

    .line 286
    .line 287
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 288
    .line 289
    iput-object v0, v6, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 290
    .line 291
    :cond_3
    :goto_1
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object v4, v6, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-nez v5, :cond_5

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_5

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Ljava/lang/Number;

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    if-nez v11, :cond_4

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 339
    .line 340
    invoke-static {v0, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    return-object v7

    .line 348
    :cond_5
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 349
    .line 350
    if-nez v0, :cond_6

    .line 351
    .line 352
    new-instance v0, Lcom/bumptech/glide/load/Option$1;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 355
    .line 356
    .line 357
    :cond_6
    move-object v12, v0

    .line 358
    iget-wide v9, v6, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 359
    .line 360
    const-wide/16 v15, 0x0

    .line 361
    .line 362
    cmp-long v9, v9, v15

    .line 363
    .line 364
    const-string v10, "Required value was null."

    .line 365
    .line 366
    if-lez v9, :cond_8

    .line 367
    .line 368
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v0, :cond_7

    .line 371
    .line 372
    invoke-static {v10}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v7

    .line 376
    :cond_7
    const-string v0, "Cannot create auto-closing database for an in-memory database."

    .line 377
    .line 378
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return-object v7

    .line 382
    :cond_8
    new-instance v9, Landroidx/room/DatabaseConfiguration;

    .line 383
    .line 384
    iget-boolean v15, v6, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 385
    .line 386
    iget-object v11, v6, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 387
    .line 388
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    move-object v13, v10

    .line 392
    iget-object v10, v6, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 398
    .line 399
    if-eq v11, v0, :cond_9

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_9
    const-string v0, "activity"

    .line 403
    .line 404
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    instance-of v11, v0, Landroid/app/ActivityManager;

    .line 409
    .line 410
    if-eqz v11, :cond_a

    .line 411
    .line 412
    check-cast v0, Landroid/app/ActivityManager;

    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_a
    move-object v0, v7

    .line 416
    :goto_3
    if-eqz v0, :cond_b

    .line 417
    .line 418
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_b

    .line 423
    .line 424
    sget-object v11, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_b
    sget-object v11, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 428
    .line 429
    :goto_4
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 430
    .line 431
    if-eqz v0, :cond_31

    .line 432
    .line 433
    iget-object v5, v6, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 434
    .line 435
    if-eqz v5, :cond_30

    .line 436
    .line 437
    iget-boolean v13, v6, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 438
    .line 439
    iget-boolean v7, v6, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 440
    .line 441
    move/from16 v32, v8

    .line 442
    .line 443
    iget-boolean v8, v6, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    .line 444
    .line 445
    const/16 v29, 0x0

    .line 446
    .line 447
    const/16 v30, 0x0

    .line 448
    .line 449
    move-object/from16 v16, v11

    .line 450
    .line 451
    const/16 v18, 0x0

    .line 452
    .line 453
    iget-object v11, v6, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 454
    .line 455
    move/from16 v20, v13

    .line 456
    .line 457
    iget-object v13, v6, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/work/Data$Builder;

    .line 458
    .line 459
    const/16 v19, 0x0

    .line 460
    .line 461
    const/16 v23, 0x0

    .line 462
    .line 463
    const/16 v24, 0x0

    .line 464
    .line 465
    const/16 v25, 0x0

    .line 466
    .line 467
    move-object/from16 v21, v0

    .line 468
    .line 469
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    .line 470
    .line 471
    move-object/from16 v26, v0

    .line 472
    .line 473
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    .line 474
    .line 475
    move-object/from16 v27, v0

    .line 476
    .line 477
    move-object/from16 v22, v4

    .line 478
    .line 479
    move/from16 v28, v8

    .line 480
    .line 481
    move-object/from16 v17, v21

    .line 482
    .line 483
    const/4 v8, 0x2

    .line 484
    move/from16 v21, v7

    .line 485
    .line 486
    move/from16 v7, v18

    .line 487
    .line 488
    move-object/from16 v18, v5

    .line 489
    .line 490
    invoke-direct/range {v9 .. v30}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/work/Data$Builder;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 491
    .line 492
    .line 493
    iget-boolean v0, v6, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    .line 494
    .line 495
    iput-boolean v0, v9, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    .line 496
    .line 497
    iget-object v0, v6, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/jvm/internal/ClassReference;

    .line 498
    .line 499
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_c

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-nez v0, :cond_d

    .line 514
    .line 515
    :cond_c
    const-string v0, ""

    .line 516
    .line 517
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-nez v6, :cond_e

    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    add-int/lit8 v6, v6, 0x1

    .line 536
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    :goto_5
    const/16 v6, 0x5f

    .line 542
    .line 543
    const/16 v10, 0x2e

    .line 544
    .line 545
    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    const-string v6, "_Impl"

    .line 553
    .line 554
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 559
    .line 560
    .line 561
    move-result v6

    .line 562
    if-nez v6, :cond_f

    .line 563
    .line 564
    move-object v0, v5

    .line 565
    goto :goto_6

    .line 566
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    move/from16 v10, v32

    .line 589
    .line 590
    invoke-static {v0, v10, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    const/4 v6, 0x0

    .line 598
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    check-cast v0, Landroidx/room/RoomDatabase;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    iget-boolean v4, v9, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    .line 612
    .line 613
    iput-boolean v4, v0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    .line 614
    .line 615
    :try_start_1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    .line 621
    .line 622
    goto :goto_7

    .line 623
    :catch_0
    const/4 v4, 0x0

    .line 624
    :goto_7
    if-eqz v4, :cond_2f

    .line 625
    .line 626
    new-instance v5, Landroidx/room/RoomConnectionManager;

    .line 627
    .line 628
    invoke-direct {v5, v9, v4}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V

    .line 629
    .line 630
    .line 631
    iput-object v5, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    .line 632
    .line 633
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    iput-object v4, v0, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    .line 638
    .line 639
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 640
    .line 641
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 649
    .line 650
    .line 651
    move-result v6

    .line 652
    new-array v10, v6, [Z

    .line 653
    .line 654
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 659
    .line 660
    .line 661
    move-result v11

    .line 662
    const/4 v12, -0x1

    .line 663
    iget-object v13, v9, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 664
    .line 665
    if-eqz v11, :cond_14

    .line 666
    .line 667
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v11

    .line 671
    check-cast v11, Lkotlin/reflect/KClass;

    .line 672
    .line 673
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 674
    .line 675
    .line 676
    move-result v14

    .line 677
    add-int/2addr v14, v12

    .line 678
    if-ltz v14, :cond_12

    .line 679
    .line 680
    :goto_9
    add-int/lit8 v15, v14, -0x1

    .line 681
    .line 682
    move/from16 v16, v12

    .line 683
    .line 684
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v12

    .line 688
    move-object v8, v11

    .line 689
    check-cast v8, Lkotlin/jvm/internal/ClassReference;

    .line 690
    .line 691
    invoke-virtual {v8, v12}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v8

    .line 695
    if-eqz v8, :cond_10

    .line 696
    .line 697
    const/16 v32, 0x1

    .line 698
    .line 699
    aput-boolean v32, v10, v14

    .line 700
    .line 701
    move v12, v14

    .line 702
    goto :goto_b

    .line 703
    :cond_10
    if-gez v15, :cond_11

    .line 704
    .line 705
    goto :goto_a

    .line 706
    :cond_11
    move v14, v15

    .line 707
    move/from16 v12, v16

    .line 708
    .line 709
    const/4 v8, 0x2

    .line 710
    goto :goto_9

    .line 711
    :cond_12
    move/from16 v16, v12

    .line 712
    .line 713
    :goto_a
    move/from16 v12, v16

    .line 714
    .line 715
    :goto_b
    if-ltz v12, :cond_13

    .line 716
    .line 717
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v8

    .line 721
    invoke-interface {v4, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    const/4 v8, 0x2

    .line 725
    goto :goto_8

    .line 726
    :cond_13
    check-cast v11, Lkotlin/jvm/internal/ClassReference;

    .line 727
    .line 728
    invoke-virtual {v11}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    const-string v1, ") is missing in the database configuration."

    .line 733
    .line 734
    const-string v2, "A required auto migration spec ("

    .line 735
    .line 736
    invoke-static {v0, v1, v2}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/16 v31, 0x0

    .line 740
    .line 741
    return-object v31

    .line 742
    :cond_14
    move/from16 v16, v12

    .line 743
    .line 744
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 745
    .line 746
    .line 747
    move-result v5

    .line 748
    add-int/lit8 v5, v5, -0x1

    .line 749
    .line 750
    if-ltz v5, :cond_17

    .line 751
    .line 752
    :goto_c
    add-int/lit8 v8, v5, -0x1

    .line 753
    .line 754
    if-ge v5, v6, :cond_16

    .line 755
    .line 756
    aget-boolean v5, v10, v5

    .line 757
    .line 758
    if-eqz v5, :cond_16

    .line 759
    .line 760
    if-gez v8, :cond_15

    .line 761
    .line 762
    goto :goto_d

    .line 763
    :cond_15
    move v5, v8

    .line 764
    goto :goto_c

    .line 765
    :cond_16
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 766
    .line 767
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const/16 v31, 0x0

    .line 771
    .line 772
    return-object v31

    .line 773
    :cond_17
    :goto_d
    invoke-virtual {v0, v4}, Landroidx/room/RoomDatabase;->createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    :cond_18
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    if-eqz v5, :cond_1b

    .line 786
    .line 787
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    check-cast v5, Landroidx/room/migration/Migration;

    .line 792
    .line 793
    iget v6, v5, Landroidx/room/migration/Migration;->startVersion:I

    .line 794
    .line 795
    iget v8, v5, Landroidx/room/migration/Migration;->endVersion:I

    .line 796
    .line 797
    iget-object v10, v9, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/work/Data$Builder;

    .line 798
    .line 799
    iget-object v11, v10, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 800
    .line 801
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v12

    .line 805
    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v12

    .line 809
    if-eqz v12, :cond_1a

    .line 810
    .line 811
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v6

    .line 819
    check-cast v6, Ljava/util/Map;

    .line 820
    .line 821
    if-nez v6, :cond_19

    .line 822
    .line 823
    sget-object v6, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 824
    .line 825
    :cond_19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 826
    .line 827
    .line 828
    move-result-object v8

    .line 829
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    goto :goto_f

    .line 834
    :cond_1a
    move v6, v7

    .line 835
    :goto_f
    if-nez v6, :cond_18

    .line 836
    .line 837
    invoke-virtual {v10, v5}, Landroidx/work/Data$Builder;->addMigration(Landroidx/room/migration/Migration;)V

    .line 838
    .line 839
    .line 840
    goto :goto_e

    .line 841
    :cond_1b
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    new-array v5, v5, [Z

    .line 850
    .line 851
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 860
    .line 861
    .line 862
    move-result v6

    .line 863
    iget-object v8, v9, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 864
    .line 865
    if-eqz v6, :cond_21

    .line 866
    .line 867
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v6

    .line 871
    check-cast v6, Ljava/util/Map$Entry;

    .line 872
    .line 873
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v10

    .line 877
    check-cast v10, Lkotlin/reflect/KClass;

    .line 878
    .line 879
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v6

    .line 883
    check-cast v6, Ljava/util/List;

    .line 884
    .line 885
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-eqz v11, :cond_1c

    .line 894
    .line 895
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v11

    .line 899
    check-cast v11, Lkotlin/reflect/KClass;

    .line 900
    .line 901
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 902
    .line 903
    .line 904
    move-result v12

    .line 905
    add-int/lit8 v12, v12, -0x1

    .line 906
    .line 907
    if-ltz v12, :cond_1f

    .line 908
    .line 909
    :goto_11
    add-int/lit8 v13, v12, -0x1

    .line 910
    .line 911
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v14

    .line 915
    move-object v15, v11

    .line 916
    check-cast v15, Lkotlin/jvm/internal/ClassReference;

    .line 917
    .line 918
    invoke-virtual {v15, v14}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v14

    .line 922
    if-eqz v14, :cond_1d

    .line 923
    .line 924
    const/16 v32, 0x1

    .line 925
    .line 926
    aput-boolean v32, v5, v12

    .line 927
    .line 928
    goto :goto_13

    .line 929
    :cond_1d
    if-gez v13, :cond_1e

    .line 930
    .line 931
    goto :goto_12

    .line 932
    :cond_1e
    move v12, v13

    .line 933
    goto :goto_11

    .line 934
    :cond_1f
    :goto_12
    move/from16 v12, v16

    .line 935
    .line 936
    :goto_13
    if-ltz v12, :cond_20

    .line 937
    .line 938
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v12

    .line 942
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    .line 947
    .line 948
    iget-object v13, v0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/LinkedHashMap;

    .line 949
    .line 950
    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    goto :goto_10

    .line 954
    :cond_20
    check-cast v11, Lkotlin/jvm/internal/ClassReference;

    .line 955
    .line 956
    invoke-virtual {v11}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v10, Lkotlin/jvm/internal/ClassReference;

    .line 961
    .line 962
    invoke-virtual {v10}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v3, "A required type converter ("

    .line 969
    .line 970
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v0, ") for "

    .line 977
    .line 978
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    const-string v0, " is missing in the database configuration."

    .line 985
    .line 986
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 994
    .line 995
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    throw v1

    .line 1003
    :cond_21
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v4

    .line 1007
    add-int/lit8 v4, v4, -0x1

    .line 1008
    .line 1009
    if-ltz v4, :cond_24

    .line 1010
    .line 1011
    :goto_14
    add-int/lit8 v6, v4, -0x1

    .line 1012
    .line 1013
    aget-boolean v10, v5, v4

    .line 1014
    .line 1015
    if-eqz v10, :cond_23

    .line 1016
    .line 1017
    if-gez v6, :cond_22

    .line 1018
    .line 1019
    goto :goto_15

    .line 1020
    :cond_22
    move v4, v6

    .line 1021
    goto :goto_14

    .line 1022
    :cond_23
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    const-string v1, "Unexpected type converter "

    .line 1027
    .line 1028
    const-string v2, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 1029
    .line 1030
    invoke-static {v0, v2, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    const/16 v31, 0x0

    .line 1034
    .line 1035
    return-object v31

    .line 1036
    :cond_24
    :goto_15
    iget-object v4, v9, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 1037
    .line 1038
    iput-object v4, v0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 1039
    .line 1040
    new-instance v4, Landroidx/room/TransactionExecutor;

    .line 1041
    .line 1042
    iget-object v5, v9, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 1043
    .line 1044
    invoke-direct {v4, v5, v7}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 1045
    .line 1046
    .line 1047
    iput-object v4, v0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 1048
    .line 1049
    iget-object v4, v0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 1050
    .line 1051
    if-eqz v4, :cond_2e

    .line 1052
    .line 1053
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v4

    .line 1057
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v5

    .line 1061
    invoke-virtual {v4, v5}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    iput-object v4, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 1070
    .line 1071
    iget-object v4, v4, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 1072
    .line 1073
    iget-object v5, v0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 1074
    .line 1075
    if-eqz v5, :cond_2d

    .line 1076
    .line 1077
    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v5

    .line 1081
    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    iput-object v4, v0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 1086
    .line 1087
    iget-boolean v4, v9, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 1088
    .line 1089
    iput-boolean v4, v0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 1090
    .line 1091
    iget-object v4, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    .line 1092
    .line 1093
    const-string v5, "connectionManager"

    .line 1094
    .line 1095
    if-eqz v4, :cond_2c

    .line 1096
    .line 1097
    invoke-virtual {v4}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v4

    .line 1101
    if-nez v4, :cond_26

    .line 1102
    .line 1103
    :cond_25
    const/4 v4, 0x0

    .line 1104
    goto :goto_17

    .line 1105
    :cond_26
    :goto_16
    instance-of v6, v4, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 1106
    .line 1107
    if-eqz v6, :cond_27

    .line 1108
    .line 1109
    goto :goto_17

    .line 1110
    :cond_27
    instance-of v6, v4, Landroidx/room/DelegatingOpenHelper;

    .line 1111
    .line 1112
    if-eqz v6, :cond_25

    .line 1113
    .line 1114
    check-cast v4, Landroidx/room/DelegatingOpenHelper;

    .line 1115
    .line 1116
    invoke-interface {v4}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v4

    .line 1120
    goto :goto_16

    .line 1121
    :goto_17
    check-cast v4, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 1122
    .line 1123
    iget-object v4, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    .line 1124
    .line 1125
    if-eqz v4, :cond_2b

    .line 1126
    .line 1127
    invoke-virtual {v4}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    if-nez v4, :cond_29

    .line 1132
    .line 1133
    :cond_28
    const/16 v31, 0x0

    .line 1134
    .line 1135
    goto :goto_19

    .line 1136
    :cond_29
    :goto_18
    instance-of v5, v4, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 1137
    .line 1138
    if-eqz v5, :cond_2a

    .line 1139
    .line 1140
    move-object/from16 v31, v4

    .line 1141
    .line 1142
    goto :goto_19

    .line 1143
    :cond_2a
    instance-of v5, v4, Landroidx/room/DelegatingOpenHelper;

    .line 1144
    .line 1145
    if-eqz v5, :cond_28

    .line 1146
    .line 1147
    check-cast v4, Landroidx/room/DelegatingOpenHelper;

    .line 1148
    .line 1149
    invoke-interface {v4}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v4

    .line 1153
    goto :goto_18

    .line 1154
    :goto_19
    check-cast v31, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 1155
    .line 1156
    move-object v8, v0

    .line 1157
    check-cast v8, Landroidx/work/impl/WorkDatabase;

    .line 1158
    .line 1159
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 1160
    .line 1161
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    invoke-direct {v0, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V

    .line 1169
    .line 1170
    .line 1171
    new-instance v4, Landroidx/work/impl/Processor;

    .line 1172
    .line 1173
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    invoke-direct {v4, v5, v2, v3, v8}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Lokhttp3/Dispatcher;Landroidx/work/impl/WorkDatabase;)V

    .line 1178
    .line 1179
    .line 1180
    sget v5, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->$r8$clinit:I

    .line 1181
    .line 1182
    sget-object v5, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    .line 1183
    .line 1184
    new-instance v9, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    .line 1185
    .line 1186
    invoke-direct {v9, v1, v8, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V

    .line 1187
    .line 1188
    .line 1189
    const-class v5, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 1190
    .line 1191
    const/4 v10, 0x1

    .line 1192
    invoke-static {v1, v5, v10}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 1193
    .line 1194
    .line 1195
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v5

    .line 1199
    sget-object v6, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    .line 1200
    .line 1201
    const-string v11, "Created SystemJobScheduler and enabled SystemJobService"

    .line 1202
    .line 1203
    invoke-virtual {v5, v6, v11}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    move-object v5, v0

    .line 1207
    new-instance v0, Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 1208
    .line 1209
    move-object v6, v5

    .line 1210
    new-instance v5, Lcom/beetstra/jutf7/Base64Util;

    .line 1211
    .line 1212
    invoke-direct {v5, v4, v3}, Lcom/beetstra/jutf7/Base64Util;-><init>(Landroidx/work/impl/Processor;Lokhttp3/Dispatcher;)V

    .line 1213
    .line 1214
    .line 1215
    move-object/from16 v33, v6

    .line 1216
    .line 1217
    move-object v6, v3

    .line 1218
    move-object/from16 v3, v33

    .line 1219
    .line 1220
    invoke-direct/range {v0 .. v6}, Landroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Lcom/fsck/k9/mailstore/LocalStore$7;Landroidx/work/impl/Processor;Lcom/beetstra/jutf7/Base64Util;Lokhttp3/Dispatcher;)V

    .line 1221
    .line 1222
    .line 1223
    move-object v5, v3

    .line 1224
    move-object v3, v6

    .line 1225
    const/4 v1, 0x2

    .line 1226
    new-array v1, v1, [Landroidx/work/impl/Scheduler;

    .line 1227
    .line 1228
    aput-object v9, v1, v7

    .line 1229
    .line 1230
    aput-object v0, v1, v10

    .line 1231
    .line 1232
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    move-object v6, v5

    .line 1237
    move-object v5, v0

    .line 1238
    new-instance v0, Landroidx/work/impl/WorkManagerImpl;

    .line 1239
    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    move-object/from16 v2, p1

    .line 1245
    .line 1246
    move-object v7, v6

    .line 1247
    move-object v6, v4

    .line 1248
    move-object v4, v8

    .line 1249
    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Lokhttp3/Dispatcher;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Lcom/fsck/k9/mailstore/LocalStore$7;)V

    .line 1250
    .line 1251
    .line 1252
    return-object v0

    .line 1253
    :cond_2b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    const/16 v31, 0x0

    .line 1257
    .line 1258
    throw v31

    .line 1259
    :cond_2c
    const/16 v31, 0x0

    .line 1260
    .line 1261
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    throw v31

    .line 1265
    :cond_2d
    const/16 v31, 0x0

    .line 1266
    .line 1267
    const-string v0, "internalTransactionExecutor"

    .line 1268
    .line 1269
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    throw v31

    .line 1273
    :cond_2e
    const/16 v31, 0x0

    .line 1274
    .line 1275
    const-string v0, "internalQueryExecutor"

    .line 1276
    .line 1277
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    throw v31

    .line 1281
    :cond_2f
    const/16 v31, 0x0

    .line 1282
    .line 1283
    new-instance v1, Landroidx/room/RoomConnectionManager;

    .line 1284
    .line 1285
    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 1286
    .line 1287
    invoke-direct {v2, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 1288
    .line 1289
    .line 1290
    invoke-direct {v1, v9, v2}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    .line 1291
    .line 1292
    .line 1293
    throw v31

    .line 1294
    :catch_1
    move-exception v0

    .line 1295
    goto :goto_1a

    .line 1296
    :catch_2
    move-exception v0

    .line 1297
    goto :goto_1b

    .line 1298
    :catch_3
    move-exception v0

    .line 1299
    goto :goto_1c

    .line 1300
    :goto_1a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1301
    .line 1302
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    const-string v4, "Failed to create an instance of "

    .line 1309
    .line 1310
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1321
    .line 1322
    .line 1323
    throw v1

    .line 1324
    :goto_1b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1325
    .line 1326
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    const-string v4, "Cannot access the constructor "

    .line 1333
    .line 1334
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1345
    .line 1346
    .line 1347
    throw v1

    .line 1348
    :goto_1c
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1349
    .line 1350
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v2

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    const-string v4, "Cannot find implementation for "

    .line 1357
    .line 1358
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    const-string v2, ". "

    .line 1365
    .line 1366
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    const-string v2, " does not exist. Is Room annotation processor correctly configured?"

    .line 1373
    .line 1374
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1382
    .line 1383
    .line 1384
    throw v1

    .line 1385
    :cond_30
    invoke-static {v13}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    const/16 v31, 0x0

    .line 1389
    .line 1390
    return-object v31

    .line 1391
    :cond_31
    move-object/from16 v31, v7

    .line 1392
    .line 1393
    invoke-static {v13}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    return-object v31

    .line 1397
    :cond_32
    move-object/from16 v31, v7

    .line 1398
    .line 1399
    const-string v0, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 1400
    .line 1401
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    return-object v31
.end method

.method public static decode(Ljava/lang/String;)Lkotlin/Triple;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [C

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x7c

    .line 9
    .line 10
    aput-char v3, v1, v2

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lnet/thunderbird/feature/notification/VibratePattern;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/VibratePattern;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    new-instance v2, Lkotlin/Triple;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v2, v1, v0, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v2
.end method

.method public static encode(ZLnet/thunderbird/feature/notification/VibratePattern;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "|"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static escapeBytes(Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->byteAt(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_0

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_5
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_6
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->NOT_EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static fetchGlueProviderFactoryImpl()Ljava/lang/reflect/InvocationHandler;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForP;->getWebViewClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    .line 14
    .line 15
    const-string v1, "getFactory"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    const-string v1, "org.chromium.support_lib_glue.SupportLibReflectionUtil"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "createWebViewProviderFactory"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    .line 55
    .line 56
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_2
    move-exception v0

    .line 62
    :goto_1
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-object v2
.end method

.method public static final fromAdapterInfos(Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;)Landroidx/camera/core/CameraIdentifier;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 12
    .line 13
    check-cast v0, Landroidx/biometric/BiometricPrompt;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/camera/core/impl/AutoValue_Identifier;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 23
    .line 24
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    move v2, v7

    .line 22
    :goto_0
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    const/16 v6, 0x3f

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "\' does not exist. Available columns: ["

    .line 45
    .line 46
    const/16 v1, 0x5d

    .line 47
    .line 48
    const-string v2, "Column \'"

    .line 49
    .line 50
    invoke-static {v2, p1, v0, p0, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    return v7
.end method

.method public static final getReport()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 20

    .line 1
    sget-object v0, Landroidx/appcompat/app/ActionBar;->_report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/high16 v3, 0x41c00000    # 24.0f

    .line 13
    .line 14
    const/high16 v4, 0x41c00000    # 24.0f

    .line 15
    .line 16
    const/high16 v5, 0x41c00000    # 24.0f

    .line 17
    .line 18
    const/high16 v6, 0x41c00000    # 24.0f

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-string v2, "Outlined.Report"

    .line 23
    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v0, v2}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v2, 0x40400000    # 3.0f

    .line 43
    .line 44
    const v4, 0x417bae14    # 15.73f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 48
    .line 49
    .line 50
    const v2, 0x410451ec    # 8.27f

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 54
    .line 55
    .line 56
    const/high16 v2, 0x40400000    # 3.0f

    .line 57
    .line 58
    const v4, 0x410451ec    # 8.27f

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 62
    .line 63
    .line 64
    const v2, 0x40eeb852    # 7.46f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 68
    .line 69
    .line 70
    const/high16 v2, 0x41a80000    # 21.0f

    .line 71
    .line 72
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 73
    .line 74
    .line 75
    const v2, 0x40eeb852    # 7.46f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 79
    .line 80
    .line 81
    const/high16 v2, 0x41a80000    # 21.0f

    .line 82
    .line 83
    const v4, 0x417bae14    # 15.73f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 87
    .line 88
    .line 89
    const v2, 0x410451ec    # 8.27f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 93
    .line 94
    .line 95
    const/high16 v2, 0x40400000    # 3.0f

    .line 96
    .line 97
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 101
    .line 102
    .line 103
    const v2, 0x416e6666    # 14.9f

    .line 104
    .line 105
    .line 106
    const/high16 v4, 0x41980000    # 19.0f

    .line 107
    .line 108
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 112
    .line 113
    .line 114
    const v2, 0x4111999a    # 9.1f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineTo(F)V

    .line 118
    .line 119
    .line 120
    const/high16 v2, 0x40a00000    # 5.0f

    .line 121
    .line 122
    const v4, 0x416e6666    # 14.9f

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 126
    .line 127
    .line 128
    const v2, 0x4111999a    # 9.1f

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineTo(F)V

    .line 132
    .line 133
    .line 134
    const/high16 v2, 0x40a00000    # 5.0f

    .line 135
    .line 136
    const v4, 0x4111999a    # 9.1f

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    const v2, 0x40b9999a    # 5.8f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 146
    .line 147
    .line 148
    const/high16 v2, 0x41980000    # 19.0f

    .line 149
    .line 150
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 151
    .line 152
    .line 153
    const v2, 0x40b9999a    # 5.8f

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 163
    .line 164
    const/high16 v4, 0x3f800000    # 1.0f

    .line 165
    .line 166
    const/high16 v5, 0x3f800000    # 1.0f

    .line 167
    .line 168
    const/high16 v6, 0x3f800000    # 1.0f

    .line 169
    .line 170
    const/4 v7, 0x2

    .line 171
    const/high16 v8, 0x3f800000    # 1.0f

    .line 172
    .line 173
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 174
    .line 175
    .line 176
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 177
    .line 178
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Ljava/util/ArrayList;

    .line 182
    .line 183
    const/16 v0, 0x20

    .line 184
    .line 185
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 189
    .line 190
    const/high16 v4, 0x41400000    # 12.0f

    .line 191
    .line 192
    const/high16 v5, 0x41800000    # 16.0f

    .line 193
    .line 194
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 201
    .line 202
    const/high16 v4, -0x40800000    # -1.0f

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 212
    .line 213
    const/high16 v12, 0x3f800000    # 1.0f

    .line 214
    .line 215
    const/high16 v13, 0x3f800000    # 1.0f

    .line 216
    .line 217
    const/4 v14, 0x0

    .line 218
    const/4 v15, 0x1

    .line 219
    const/16 v16, 0x1

    .line 220
    .line 221
    const/high16 v17, 0x40000000    # 2.0f

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 232
    .line 233
    const/high16 v14, 0x3f800000    # 1.0f

    .line 234
    .line 235
    const/4 v15, 0x0

    .line 236
    const/16 v17, 0x1

    .line 237
    .line 238
    const/high16 v18, -0x40000000    # -2.0f

    .line 239
    .line 240
    const/16 v19, 0x0

    .line 241
    .line 242
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    const/high16 v4, 0x3f800000    # 1.0f

    .line 249
    .line 250
    const/high16 v5, 0x3f800000    # 1.0f

    .line 251
    .line 252
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 253
    .line 254
    .line 255
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 256
    .line 257
    invoke-direct {v3, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 258
    .line 259
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    .line 261
    .line 262
    const/16 v0, 0x20

    .line 263
    .line 264
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 268
    .line 269
    const/high16 v4, 0x40e00000    # 7.0f

    .line 270
    .line 271
    const/high16 v5, 0x41300000    # 11.0f

    .line 272
    .line 273
    invoke-direct {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 280
    .line 281
    const/high16 v4, 0x40000000    # 2.0f

    .line 282
    .line 283
    invoke-direct {v0, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 290
    .line 291
    const/high16 v4, 0x40e00000    # 7.0f

    .line 292
    .line 293
    invoke-direct {v0, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 300
    .line 301
    const/high16 v4, -0x40000000    # -2.0f

    .line 302
    .line 303
    invoke-direct {v0, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    const/high16 v4, 0x3f800000    # 1.0f

    .line 315
    .line 316
    const/high16 v5, 0x3f800000    # 1.0f

    .line 317
    .line 318
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    sput-object v0, Landroidx/appcompat/app/ActionBar;->_report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 326
    .line 327
    return-object v0
.end method

.method public static final getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int v3, v2, p1

    .line 16
    .line 17
    xor-int/2addr v2, v3

    .line 18
    xor-int/2addr p1, v3

    .line 19
    and-int/2addr p1, v2

    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    :cond_0
    iget-object p1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static final getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-int v3, p0, p1

    .line 10
    .line 11
    xor-int/2addr p1, p0

    .line 12
    xor-int/2addr p0, v3

    .line 13
    and-int/2addr p0, p1

    .line 14
    const/4 p1, 0x0

    .line 15
    if-gez p0, :cond_0

    .line 16
    .line 17
    move v3, p1

    .line 18
    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final indexSegment(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static isBluStudioX10()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Blu"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v0, "studio x10"

    .line 26
    .line 27
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public static isFromSource(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static isItelW6004()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Itel"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v0, "itel w6004"

    .line 26
    .line 27
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public static isPositivoTwist2Pro()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Positivo"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v0, "twist 2 pro"

    .line 26
    .line 27
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public static isVivo1805()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Vivo"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string/jumbo v0, "vivo 1805"

    .line 26
    .line 27
    .line 28
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    return v0
.end method

.method public static parse(Ljava/util/ArrayList;Z)Landroidx/work/Data$Builder;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "OK"

    .line 43
    .line 44
    invoke-static {v4, v5}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v6, 0x4

    .line 69
    if-lt v5, v6, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, "COPYUID"

    .line 76
    .line 77
    invoke-static {v5, v6}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_0

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v3}, Landroidx/room/util/RelationUtil;->getImapSequenceValues(Ljava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1}, Landroidx/room/util/RelationUtil;->getImapSequenceValues(Ljava/lang/String;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_0

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eq v4, v5, :cond_4

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    :goto_1
    if-ge v2, v4, :cond_0

    .line 137
    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    new-instance p0, Landroidx/work/Data$Builder;

    .line 163
    .line 164
    invoke-direct {p0, v0}, Landroidx/work/Data$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 165
    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_6
    const/4 p0, 0x0

    .line 169
    return-object p0
.end method

.method public static final rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    move-object v4, p1

    .line 4
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/content/Context;

    .line 11
    .line 12
    array-length v0, p0

    .line 13
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v0, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/16 v2, 0x18

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v3, 0x11

    .line 27
    .line 28
    invoke-direct {v2, v3, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object v3, v2

    .line 32
    new-instance v2, Landroidx/compose/ui/platform/WeakCache;

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    invoke-direct {v2, v5, v0, v3}, Landroidx/compose/ui/platform/WeakCache;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 49
    .line 50
    if-ne v3, v0, :cond_1

    .line 51
    .line 52
    :cond_0
    new-instance v3, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-direct {v3, p1, v0}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x4

    .line 65
    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroidx/navigation/NavHostController;

    .line 70
    .line 71
    array-length v0, p0

    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_0
    if-ge v1, v0, :cond_2

    .line 74
    .line 75
    aget-object v2, p0, v1

    .line 76
    .line 77
    iget-object v3, p1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 78
    .line 79
    iget-object v3, v3, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-object p1
.end method

.method public static final visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/RulerKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 15
    .line 16
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v5, v0

    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    shl-long/2addr v3, v0

    .line 31
    const-wide v7, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v5, v7

    .line 37
    or-long/2addr v3, v5

    .line 38
    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 43
    .line 44
    shr-long v5, v1, v0

    .line 45
    .line 46
    long-to-int v5, v5

    .line 47
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    and-long/2addr v1, v7

    .line 52
    long-to-int v1, v1

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    shr-long v9, v3, v0

    .line 58
    .line 59
    long-to-int v0, v9

    .line 60
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    and-long/2addr v3, v7

    .line 65
    long-to-int v2, v3

    .line 66
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-direct {p0, v5, v1, v0, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract collapseActionView()Z
.end method

.method public abstract dispatchMenuVisibilityChanged(Z)V
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public invalidateOptionsMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public openOptionsMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract setDefaultDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled()V
.end method

.method public abstract setHomeActionContentDescription(I)V
.end method

.method public abstract setHomeAsUpIndicator(I)V
.end method

.method public abstract setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShowHideAnimationEnabled(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public startActionMode(Landroidx/cardview/widget/CardView$1;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
