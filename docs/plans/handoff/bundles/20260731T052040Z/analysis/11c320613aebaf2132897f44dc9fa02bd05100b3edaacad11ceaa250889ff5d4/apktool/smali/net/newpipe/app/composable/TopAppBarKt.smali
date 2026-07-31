.class public abstract Lnet/newpipe/app/composable/TopAppBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final lambda$1874107430:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, 0x6fb49c26

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/newpipe/app/composable/TopAppBarKt;->lambda$1874107430:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static final PreferenceRow(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v5, p4

    .line 5
    .line 6
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, -0x2e748e29

    .line 9
    .line 10
    .line 11
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p5, v0

    .line 24
    .line 25
    or-int/lit8 v0, v0, 0x30

    .line 26
    .line 27
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x100

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x80

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    or-int/lit16 v0, v0, 0xc00

    .line 40
    .line 41
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x4000

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x2000

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    and-int/lit16 v1, v0, 0x2493

    .line 54
    .line 55
    const/16 v2, 0x2492

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq v1, v2, :cond_3

    .line 60
    .line 61
    move v1, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v1, v3

    .line 64
    :goto_3
    and-int/2addr v0, v4

    .line 65
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    invoke-static {p1, p3}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v0, -0xda674db

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    if-nez p2, :cond_4

    .line 88
    .line 89
    const v0, -0xda55ed3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 96
    .line 97
    .line 98
    move-object v3, v2

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    const v0, -0xda55ed2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v0, p2, v4}, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/painter/Painter;I)V

    .line 109
    .line 110
    .line 111
    const v6, -0xd9e4071

    .line 112
    .line 113
    .line 114
    invoke-static {v6, v0, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 119
    .line 120
    .line 121
    move-object v3, v0

    .line 122
    :goto_4
    new-instance v0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda1;

    .line 123
    .line 124
    invoke-direct {v0, p0, v4}, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const v4, -0x4e78bbc7

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v6, 0x6

    .line 136
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt;->ListItem-HXNGIdc(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;Landroidx/compose/runtime/Composer;I)V

    .line 137
    .line 138
    .line 139
    :goto_5
    move-object v8, p1

    .line 140
    goto :goto_6

    .line 141
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    new-instance v6, Lnet/newpipe/app/composable/PreferenceRowKt$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    move-object v7, p0

    .line 154
    move-object v9, p2

    .line 155
    move-object v10, p3

    .line 156
    move/from16 v11, p5

    .line 157
    .line 158
    invoke-direct/range {v6 .. v11}, Lnet/newpipe/app/composable/PreferenceRowKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;I)V

    .line 159
    .line 160
    .line 161
    iput-object v6, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 162
    .line 163
    :cond_6
    return-void
.end method

.method public static final TopAppBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/TopAppBarColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v13, p6

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x5917d7cd

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    or-int/lit8 v0, p7, 0x6

    .line 16
    .line 17
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_0
    or-int/2addr v0, v1

    .line 29
    or-int/lit16 v0, v0, 0x80

    .line 30
    .line 31
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x800

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v1, 0x400

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v1

    .line 43
    or-int/lit16 v1, v0, 0x2000

    .line 44
    .line 45
    and-int/lit8 v3, p8, 0x20

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const v1, 0x32000

    .line 50
    .line 51
    .line 52
    or-int/2addr v1, v0

    .line 53
    :cond_2
    move-object/from16 v0, p5

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    const/high16 v0, 0x30000

    .line 57
    .line 58
    and-int v0, p7, v0

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    move-object/from16 v0, p5

    .line 63
    .line 64
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    const/high16 v5, 0x20000

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/high16 v5, 0x10000

    .line 74
    .line 75
    :goto_2
    or-int/2addr v1, v5

    .line 76
    :goto_3
    const v5, 0x12493

    .line 77
    .line 78
    .line 79
    and-int/2addr v5, v1

    .line 80
    const v6, 0x12492

    .line 81
    .line 82
    .line 83
    if-eq v5, v6, :cond_5

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/4 v5, 0x0

    .line 88
    :goto_4
    and-int/lit8 v6, v1, 0x1

    .line 89
    .line 90
    invoke-virtual {v13, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_10

    .line 95
    .line 96
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 97
    .line 98
    .line 99
    and-int/lit8 v5, p7, 0x1

    .line 100
    .line 101
    const v6, -0xe381

    .line 102
    .line 103
    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_6

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 114
    .line 115
    .line 116
    and-int/2addr v1, v6

    .line 117
    move-object/from16 v6, p0

    .line 118
    .line 119
    move-object/from16 v11, p4

    .line 120
    .line 121
    move-object v8, v0

    .line 122
    move-object/from16 v0, p2

    .line 123
    .line 124
    goto/16 :goto_e

    .line 125
    .line 126
    :cond_7
    :goto_5
    sget-object v5, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_arrow_back$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 127
    .line 128
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 133
    .line 134
    invoke-static {v5, v13}, Lorg/jetbrains/compose/resources/ImageResourcesKt;->painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v13}, Lnet/newpipe/app/theme/ServiceThemeKt;->currentServiceScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    sget-object v9, Landroidx/compose/material3/TopAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 143
    .line 144
    iget-wide v9, v8, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 145
    .line 146
    iget-wide v11, v8, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 147
    .line 148
    sget-object v8, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 149
    .line 150
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Landroidx/compose/material3/MaterialTheme$Values;

    .line 155
    .line 156
    iget-object v8, v8, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 157
    .line 158
    iget-object v14, v8, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 159
    .line 160
    if-nez v14, :cond_8

    .line 161
    .line 162
    new-instance v15, Landroidx/compose/material3/TopAppBarColors;

    .line 163
    .line 164
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 165
    .line 166
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v16

    .line 170
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->OnScrollContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 171
    .line 172
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v18

    .line 176
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 177
    .line 178
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v20

    .line 182
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->TitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 183
    .line 184
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v22

    .line 188
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 189
    .line 190
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v24

    .line 194
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->SubtitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 195
    .line 196
    invoke-static {v8, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v26

    .line 200
    invoke-direct/range {v15 .. v27}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 201
    .line 202
    .line 203
    iput-object v15, v8, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 204
    .line 205
    move-object v14, v15

    .line 206
    :cond_8
    const-wide/16 v15, 0x10

    .line 207
    .line 208
    cmp-long v8, v9, v15

    .line 209
    .line 210
    if-eqz v8, :cond_9

    .line 211
    .line 212
    move/from16 v17, v6

    .line 213
    .line 214
    move-wide/from16 v19, v9

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_9
    move/from16 v17, v6

    .line 218
    .line 219
    iget-wide v6, v14, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 220
    .line 221
    move-wide/from16 v19, v6

    .line 222
    .line 223
    :goto_6
    if-eqz v8, :cond_a

    .line 224
    .line 225
    :goto_7
    move-wide/from16 v21, v9

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_a
    iget-wide v9, v14, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :goto_8
    cmp-long v6, v11, v15

    .line 232
    .line 233
    if-eqz v6, :cond_b

    .line 234
    .line 235
    move-wide/from16 v23, v11

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_b
    iget-wide v7, v14, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 239
    .line 240
    move-wide/from16 v23, v7

    .line 241
    .line 242
    :goto_9
    if-eqz v6, :cond_c

    .line 243
    .line 244
    move-wide/from16 v25, v11

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_c
    iget-wide v7, v14, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 248
    .line 249
    move-wide/from16 v25, v7

    .line 250
    .line 251
    :goto_a
    if-eqz v6, :cond_d

    .line 252
    .line 253
    move-wide/from16 v27, v11

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_d
    iget-wide v7, v14, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 257
    .line 258
    move-wide/from16 v27, v7

    .line 259
    .line 260
    :goto_b
    if-eqz v6, :cond_e

    .line 261
    .line 262
    :goto_c
    move-wide/from16 v29, v11

    .line 263
    .line 264
    goto :goto_d

    .line 265
    :cond_e
    iget-wide v11, v14, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :goto_d
    new-instance v18, Landroidx/compose/material3/TopAppBarColors;

    .line 269
    .line 270
    invoke-direct/range {v18 .. v30}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 271
    .line 272
    .line 273
    and-int v1, v1, v17

    .line 274
    .line 275
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 276
    .line 277
    if-eqz v3, :cond_f

    .line 278
    .line 279
    sget-object v0, Lnet/newpipe/app/composable/TopAppBarKt;->lambda$1874107430:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 280
    .line 281
    :cond_f
    move-object v8, v0

    .line 282
    move-object v0, v5

    .line 283
    move-object/from16 v11, v18

    .line 284
    .line 285
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 286
    .line 287
    .line 288
    new-instance v3, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda1;

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-direct {v3, v2, v5}, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    const v5, 0x23efb489

    .line 295
    .line 296
    .line 297
    invoke-static {v5, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    new-instance v3, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 302
    .line 303
    const/16 v7, 0xf

    .line 304
    .line 305
    invoke-direct {v3, v4, v0, v7}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 306
    .line 307
    .line 308
    const v7, -0x7f8539

    .line 309
    .line 310
    .line 311
    invoke-static {v7, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    shr-int/lit8 v1, v1, 0x6

    .line 316
    .line 317
    and-int/lit16 v1, v1, 0x1c00

    .line 318
    .line 319
    const/16 v3, 0x1b6

    .line 320
    .line 321
    or-int v14, v3, v1

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    const/4 v10, 0x0

    .line 325
    const/4 v12, 0x0

    .line 326
    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/AppBarKt;->TopAppBar-gNPyAyM(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 327
    .line 328
    .line 329
    move-object v3, v0

    .line 330
    move-object v1, v6

    .line 331
    move-object v6, v8

    .line 332
    move-object v5, v11

    .line 333
    goto :goto_f

    .line 334
    :cond_10
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 335
    .line 336
    .line 337
    move-object/from16 v1, p0

    .line 338
    .line 339
    move-object/from16 v3, p2

    .line 340
    .line 341
    move-object/from16 v5, p4

    .line 342
    .line 343
    move-object v6, v0

    .line 344
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    if-eqz v9, :cond_11

    .line 349
    .line 350
    new-instance v0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda3;

    .line 351
    .line 352
    move/from16 v7, p7

    .line 353
    .line 354
    move/from16 v8, p8

    .line 355
    .line 356
    invoke-direct/range {v0 .. v8}, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/TopAppBarColors;Lkotlin/jvm/functions/Function3;II)V

    .line 357
    .line 358
    .line 359
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 360
    .line 361
    :cond_11
    return-void
.end method
