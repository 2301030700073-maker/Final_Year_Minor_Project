.class public abstract Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final ColorItem(Lnet/thunderbird/core/ui/setting/SettingValue$Color;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v10, p3

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x27cd1266

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v4, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    and-int/lit8 v0, v4, 0x8

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_1
    or-int/2addr v0, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v0, v4

    .line 44
    :goto_2
    and-int/lit8 v1, v4, 0x30

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const/16 v1, 0x20

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/16 v1, 0x10

    .line 58
    .line 59
    :goto_3
    or-int/2addr v0, v1

    .line 60
    :cond_4
    and-int/lit16 v1, v4, 0x180

    .line 61
    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    const/16 v1, 0x100

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    const/16 v1, 0x80

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v1

    .line 76
    :cond_6
    and-int/lit16 v1, v0, 0x93

    .line 77
    .line 78
    const/16 v2, 0x92

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v5, 0x1

    .line 82
    if-eq v1, v2, :cond_7

    .line 83
    .line 84
    move v1, v5

    .line 85
    goto :goto_5

    .line 86
    :cond_7
    move v1, v3

    .line 87
    :goto_5
    and-int/lit8 v2, v0, 0x1

    .line 88
    .line 89
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->icon:Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v6, v1

    .line 102
    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 103
    .line 104
    new-instance v1, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/ColorItemKt$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v1, p0, v3}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/ColorItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Color;I)V

    .line 107
    .line 108
    .line 109
    const v2, 0x30b31afd

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    new-instance v1, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/ColorItemKt$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    invoke-direct {v1, p0, v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/ColorItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$Color;I)V

    .line 119
    .line 120
    .line 121
    const v2, -0x8a170cc

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    shr-int/lit8 v1, v0, 0x3

    .line 129
    .line 130
    and-int/lit8 v1, v1, 0xe

    .line 131
    .line 132
    or-int/lit16 v1, v1, 0x6c00

    .line 133
    .line 134
    and-int/lit16 v0, v0, 0x380

    .line 135
    .line 136
    or-int v11, v1, v0

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    move-object v5, p1

    .line 140
    move-object v7, p2

    .line 141
    invoke-static/range {v5 .. v12}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    if-eqz v6, :cond_9

    .line 153
    .line 154
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 155
    .line 156
    const/16 v5, 0x1d

    .line 157
    .line 158
    move-object v1, p0

    .line 159
    move-object v2, p1

    .line 160
    move-object v3, p2

    .line 161
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    :cond_9
    return-void
.end method

.method public static final FolderSettingList(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v0, p7

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v1, 0x34920c87

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x4

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x2

    .line 35
    :goto_0
    or-int v1, p8, v1

    .line 36
    .line 37
    move-object/from16 v7, p1

    .line 38
    .line 39
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    move v4, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v4, 0x10

    .line 50
    .line 51
    :goto_1
    or-int/2addr v1, v4

    .line 52
    move-object/from16 v8, p2

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    const/16 v4, 0x100

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/16 v4, 0x80

    .line 64
    .line 65
    :goto_2
    or-int/2addr v1, v4

    .line 66
    move-object/from16 v9, p3

    .line 67
    .line 68
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const/16 v4, 0x800

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const/16 v4, 0x400

    .line 78
    .line 79
    :goto_3
    or-int/2addr v1, v4

    .line 80
    move/from16 v4, p4

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const/16 v12, 0x4000

    .line 87
    .line 88
    if-eqz v11, :cond_4

    .line 89
    .line 90
    move v11, v12

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    const/16 v11, 0x2000

    .line 93
    .line 94
    :goto_4
    or-int/2addr v1, v11

    .line 95
    move/from16 v11, p5

    .line 96
    .line 97
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_5

    .line 102
    .line 103
    const/high16 v13, 0x20000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    const/high16 v13, 0x10000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v1, v13

    .line 109
    const/high16 v13, 0x180000

    .line 110
    .line 111
    or-int/2addr v1, v13

    .line 112
    const v13, 0x92493

    .line 113
    .line 114
    .line 115
    and-int/2addr v13, v1

    .line 116
    const v15, 0x92492

    .line 117
    .line 118
    .line 119
    const/4 v10, 0x1

    .line 120
    if-eq v13, v15, :cond_6

    .line 121
    .line 122
    move v13, v10

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    const/4 v13, 0x0

    .line 125
    :goto_6
    and-int/lit8 v15, v1, 0x1

    .line 126
    .line 127
    invoke-virtual {v0, v15, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_12

    .line 132
    .line 133
    invoke-static {v0}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    iget-wide v6, v13, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 138
    .line 139
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iget-wide v14, v13, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 144
    .line 145
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    invoke-static {v6, v14}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-lez v6, :cond_7

    .line 154
    .line 155
    move v6, v10

    .line 156
    goto :goto_7

    .line 157
    :cond_7
    const/4 v6, 0x0

    .line 158
    :goto_7
    iget-object v13, v13, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 159
    .line 160
    iget-object v13, v13, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->heightSizeClass:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 161
    .line 162
    sget-object v14, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 163
    .line 164
    if-ne v13, v14, :cond_8

    .line 165
    .line 166
    move v13, v10

    .line 167
    goto :goto_8

    .line 168
    :cond_8
    const/4 v13, 0x0

    .line 169
    :goto_8
    if-eqz v6, :cond_9

    .line 170
    .line 171
    if-eqz v13, :cond_9

    .line 172
    .line 173
    move v4, v10

    .line 174
    goto :goto_9

    .line 175
    :cond_9
    const/4 v4, 0x0

    .line 176
    :goto_9
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    .line 178
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const/high16 v6, 0x41000000    # 8.0f

    .line 188
    .line 189
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 190
    .line 191
    const/4 v14, 0x0

    .line 192
    invoke-static {v13, v14, v6, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    sget-object v14, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 197
    .line 198
    invoke-interface {v6, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    const v6, 0xe000

    .line 203
    .line 204
    .line 205
    and-int/2addr v6, v1

    .line 206
    if-ne v6, v12, :cond_a

    .line 207
    .line 208
    move v6, v10

    .line 209
    goto :goto_a

    .line 210
    :cond_a
    const/4 v6, 0x0

    .line 211
    :goto_a
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    or-int/2addr v6, v12

    .line 216
    and-int/lit8 v12, v1, 0xe

    .line 217
    .line 218
    if-ne v12, v2, :cond_b

    .line 219
    .line 220
    move v2, v10

    .line 221
    goto :goto_b

    .line 222
    :cond_b
    const/4 v2, 0x0

    .line 223
    :goto_b
    or-int/2addr v2, v6

    .line 224
    const/high16 v6, 0x70000

    .line 225
    .line 226
    and-int/2addr v6, v1

    .line 227
    const/high16 v7, 0x20000

    .line 228
    .line 229
    if-ne v6, v7, :cond_c

    .line 230
    .line 231
    move v6, v10

    .line 232
    goto :goto_c

    .line 233
    :cond_c
    const/4 v6, 0x0

    .line 234
    :goto_c
    or-int/2addr v2, v6

    .line 235
    and-int/lit8 v6, v1, 0x70

    .line 236
    .line 237
    if-ne v6, v5, :cond_d

    .line 238
    .line 239
    move v5, v10

    .line 240
    goto :goto_d

    .line 241
    :cond_d
    const/4 v5, 0x0

    .line 242
    :goto_d
    or-int/2addr v2, v5

    .line 243
    and-int/lit16 v5, v1, 0x380

    .line 244
    .line 245
    const/16 v15, 0x100

    .line 246
    .line 247
    if-ne v5, v15, :cond_e

    .line 248
    .line 249
    move v5, v10

    .line 250
    goto :goto_e

    .line 251
    :cond_e
    const/4 v5, 0x0

    .line 252
    :goto_e
    or-int/2addr v2, v5

    .line 253
    and-int/lit16 v1, v1, 0x1c00

    .line 254
    .line 255
    const/16 v5, 0x800

    .line 256
    .line 257
    if-ne v1, v5, :cond_f

    .line 258
    .line 259
    goto :goto_f

    .line 260
    :cond_f
    const/4 v10, 0x0

    .line 261
    :goto_f
    or-int v1, v2, v10

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-nez v1, :cond_10

    .line 268
    .line 269
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 270
    .line 271
    if-ne v2, v1, :cond_11

    .line 272
    .line 273
    :cond_10
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;

    .line 274
    .line 275
    move-object/from16 v7, p1

    .line 276
    .line 277
    move-object v5, v3

    .line 278
    move v6, v11

    .line 279
    move/from16 v3, p4

    .line 280
    .line 281
    invoke-direct/range {v2 .. v9}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;-><init>(ZZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_11
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    invoke-static {v1, v0, v14, v2}, Lokhttp3/Handshake$Companion;->SettingList(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 291
    .line 292
    .line 293
    move-object v9, v13

    .line 294
    goto :goto_10

    .line 295
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 296
    .line 297
    .line 298
    move-object/from16 v9, p6

    .line 299
    .line 300
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_13

    .line 305
    .line 306
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;

    .line 307
    .line 308
    move-object/from16 v3, p0

    .line 309
    .line 310
    move-object/from16 v4, p1

    .line 311
    .line 312
    move-object/from16 v5, p2

    .line 313
    .line 314
    move-object/from16 v6, p3

    .line 315
    .line 316
    move/from16 v7, p4

    .line 317
    .line 318
    move/from16 v8, p5

    .line 319
    .line 320
    move/from16 v10, p8

    .line 321
    .line 322
    invoke-direct/range {v2 .. v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;I)V

    .line 323
    .line 324
    .line 325
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 326
    .line 327
    :cond_13
    return-void
.end method

.method public static final GeneralSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    move/from16 v13, p6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object/from16 v10, p5

    check-cast v10, Landroidx/compose/runtime/GapComposer;

    const v3, 0x220bf58d

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v3, v13, 0x6

    const/4 v5, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v13

    goto :goto_1

    :cond_1
    move v3, v13

    :goto_1
    and-int/lit8 v6, v13, 0x30

    const/16 v7, 0x20

    if-nez v6, :cond_3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v13, 0x180

    if-nez v6, :cond_6

    and-int/lit16 v6, v13, 0x200

    if-nez v6, :cond_4

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v3, v6

    :cond_6
    and-int/lit16 v6, v13, 0xc00

    const/16 v8, 0x800

    if-nez v6, :cond_9

    and-int/lit16 v6, v13, 0x1000

    if-nez v6, :cond_7

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_5
    if-eqz v6, :cond_8

    move v6, v8

    goto :goto_6

    :cond_8
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v3, v6

    :cond_9
    or-int/lit16 v3, v3, 0x6000

    and-int/lit16 v6, v3, 0x2493

    const/16 v11, 0x2492

    if-eq v6, v11, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    and-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_39

    and-int/lit8 v6, v3, 0xe

    if-ne v6, v5, :cond_b

    const/4 v6, 0x1

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    and-int/lit16 v11, v3, 0x1c00

    if-eq v11, v8, :cond_d

    and-int/lit16 v8, v3, 0x1000

    if-eqz v8, :cond_c

    .line 2
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v8, 0x1

    :goto_a
    or-int/2addr v6, v8

    and-int/lit8 v8, v3, 0x70

    if-ne v8, v7, :cond_e

    const/4 v11, 0x1

    goto :goto_b

    :cond_e
    const/4 v11, 0x0

    :goto_b
    or-int/2addr v6, v11

    .line 3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 4
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v6, :cond_10

    if-ne v11, v7, :cond_f

    goto :goto_c

    :cond_f
    move/from16 v18, v3

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_23

    .line 5
    :cond_10
    :goto_c
    iget-object v6, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->iconCatalog:Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    iget-object v6, v6, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;->defaultIcon:Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    iget-object v11, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    const/16 v16, 0x2

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    const/16 v17, 0x0

    iget-object v12, v5, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 8
    iget-object v15, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 9
    iget-object v15, v15, Lnet/thunderbird/core/validation/input/IntegerInputField;->value:Ljava/lang/Integer;

    if-eqz v15, :cond_11

    .line 10
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :goto_d
    move-object/from16 v20, v15

    goto :goto_e

    :cond_11
    move/from16 v18, v17

    goto :goto_d

    :goto_e
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v14

    move/from16 v18, v3

    if-nez v11, :cond_12

    .line 11
    new-instance v3, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 12
    iget-object v9, v6, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 13
    invoke-direct {v3, v9}, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_12
    move-object v3, v11

    .line 14
    :goto_f
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 15
    new-instance v13, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;

    invoke-direct {v13, v12, v14, v15, v3}, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 16
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v14, -0x5cc34f41

    const/4 v15, 0x1

    invoke-direct {v3, v14, v13, v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 17
    const-string v13, "account_profile"

    invoke-direct {v9, v13, v3}, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;-><init>(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 18
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    const-string v9, "enable_avatar_customization"

    invoke-virtual {v3, v9}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    move-result-object v3

    invoke-interface {v3}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 20
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 21
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v14, 0x5

    invoke-direct {v13, v0, v14}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 22
    instance-of v14, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    const/4 v15, 0x0

    if-eqz v14, :cond_13

    move-object/from16 v21, v11

    check-cast v21, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    goto :goto_10

    :cond_13
    move-object/from16 v21, v15

    :goto_10
    if-nez v21, :cond_14

    new-instance v9, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 23
    invoke-static {v12, v15}, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-direct {v9, v12}, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_14
    move-object/from16 v9, v21

    .line 25
    :goto_11
    const-string v12, "avatar_monogram"

    invoke-direct {v3, v12, v13, v9}, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 26
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 27
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v15, 0x6

    invoke-direct {v13, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 28
    instance-of v15, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    if-eqz v15, :cond_15

    move-object/from16 v22, v11

    check-cast v22, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    goto :goto_12

    :cond_15
    const/16 v22, 0x0

    :goto_12
    move-object/from16 v23, v3

    if-nez v22, :cond_16

    new-instance v3, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    move/from16 v24, v14

    .line 29
    const-string v14, "avatar_placeholder_uri"

    .line 30
    invoke-direct {v3, v14}, Lnet/thunderbird/feature/account/avatar/Avatar$Image;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_16
    move/from16 v24, v14

    move-object/from16 v3, v22

    .line 31
    :goto_13
    const-string v14, "avatar_image"

    invoke-direct {v9, v14, v13, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 32
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 33
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    move-object/from16 v22, v9

    const/4 v9, 0x7

    invoke-direct {v13, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 34
    instance-of v9, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    if-eqz v9, :cond_17

    move-object/from16 v26, v11

    check-cast v26, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    goto :goto_14

    :cond_17
    const/16 v26, 0x0

    :goto_14
    move/from16 v27, v9

    if-nez v26, :cond_18

    new-instance v9, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    move/from16 v28, v15

    .line 35
    iget-object v15, v6, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 36
    invoke-direct {v9, v15}, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_18
    move/from16 v28, v15

    move-object/from16 v9, v26

    .line 37
    :goto_15
    const-string v15, "avatar_icon"

    invoke-direct {v3, v15, v13, v9}, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/avatar/Avatar;)V

    const/4 v9, 0x3

    new-array v13, v9, [Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    aput-object v23, v13, v17

    const/16 v19, 0x1

    aput-object v22, v13, v19

    aput-object v3, v13, v16

    .line 38
    invoke-static {v13}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    move-result-object v3

    .line 39
    const-string v13, "Collection contains no element matching the predicate."

    if-nez v24, :cond_20

    if-nez v11, :cond_19

    move/from16 v9, v17

    goto :goto_18

    .line 40
    :cond_19
    instance-of v12, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    if-eqz v12, :cond_1c

    move/from16 v12, v17

    .line 41
    invoke-virtual {v3, v12}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v15

    .line 42
    :goto_16
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 43
    iget-object v9, v12, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->id:Ljava/lang/String;

    .line 44
    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :goto_17
    move-object/from16 v33, v12

    goto :goto_1a

    :cond_1a
    const/4 v9, 0x3

    goto :goto_16

    .line 45
    :cond_1b
    invoke-static {v13}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1c
    instance-of v9, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    if-eqz v9, :cond_1f

    const/4 v12, 0x0

    .line 47
    invoke-virtual {v3, v12}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    .line 48
    :cond_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 49
    iget-object v14, v12, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->id:Ljava/lang/String;

    .line 50
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    goto :goto_17

    .line 51
    :cond_1e
    invoke-static {v13}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_1f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_20
    const/4 v9, 0x0

    .line 53
    :goto_18
    invoke-virtual {v3, v9}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v14

    .line 54
    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 55
    iget-object v15, v9, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;->id:Ljava/lang/String;

    .line 56
    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    move-object/from16 v33, v9

    .line 57
    :goto_1a
    new-instance v29, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 58
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/16 v12, 0x9

    invoke-direct {v9, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 59
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/16 v14, 0xa

    invoke-direct {v12, v0, v14}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 60
    const-string v30, "account_avatar_options"

    move-object/from16 v34, v3

    move-object/from16 v31, v9

    move-object/from16 v32, v12

    invoke-direct/range {v29 .. v34}, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;Lkotlinx/collections/immutable/ImmutableList;)V

    move-object/from16 v3, v29

    .line 61
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v24, :cond_21

    .line 62
    check-cast v11, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 63
    iget-object v3, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;->value:Ljava/lang/String;

    .line 64
    new-instance v22, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 65
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/16 v9, 0xb

    invoke-direct {v6, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 66
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/16 v11, 0xc

    invoke-direct {v9, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 67
    new-instance v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    const/16 v12, 0x18

    invoke-direct {v11, v12}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 68
    new-instance v12, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 69
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 70
    const-string v23, "account_avatar_monogram"

    move-object/from16 v27, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    invoke-direct/range {v22 .. v29}, Lnet/thunderbird/core/ui/setting/SettingValue$Text;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v22

    .line 71
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_21
    const/4 v12, 0x0

    const/4 v15, 0x1

    if-eqz v28, :cond_22

    .line 72
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    invoke-direct {v3, v15, v2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 73
    new-instance v6, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;

    .line 74
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;

    invoke-direct {v9, v3, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;-><init>(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;I)V

    .line 75
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, -0x505ce8f5

    invoke-direct {v3, v11, v9, v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 76
    const-string v9, "account_avatar_image"

    invoke-direct {v6, v9, v3}, Lnet/thunderbird/core/ui/setting/SettingDecoration$Custom;-><init>(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_22
    if-eqz v27, :cond_2d

    .line 78
    check-cast v11, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    iget-object v3, v11, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;->name:Ljava/lang/String;

    if-eqz v20, :cond_23

    .line 79
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_1b

    :cond_23
    const/4 v12, 0x0

    :goto_1b
    invoke-static {v12}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v31

    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    sget-object v9, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    if-eqz v9, :cond_24

    .line 82
    invoke-virtual {v9}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_24

    goto :goto_1c

    .line 83
    :cond_24
    invoke-virtual {v9}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 84
    iget-object v11, v11, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 85
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    goto :goto_1d

    .line 86
    :cond_26
    :goto_1c
    iget-object v3, v6, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 87
    :goto_1d
    sget-object v9, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 88
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-virtual {v9}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 90
    check-cast v12, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 91
    new-instance v14, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 92
    iget-object v15, v12, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    move-object/from16 v23, v9

    .line 93
    new-instance v9, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    move-object/from16 v26, v13

    const/4 v13, 0x7

    invoke-direct {v9, v13, v12}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 94
    invoke-direct {v14, v15, v9}, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;-><init>(Ljava/lang/String;Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;)V

    .line 95
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v23

    move-object/from16 v13, v26

    goto :goto_1e

    :cond_27
    move-object/from16 v26, v13

    .line 96
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_28
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 97
    iget-object v13, v13, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->id:Ljava/lang/String;

    .line 98
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    move-object v15, v12

    goto :goto_1f

    :cond_29
    const/4 v15, 0x0

    :goto_1f
    check-cast v15, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    if-nez v15, :cond_2b

    .line 99
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 100
    iget-object v9, v15, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->id:Ljava/lang/String;

    .line 101
    iget-object v12, v6, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 102
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    :cond_2b
    move-object/from16 v33, v15

    goto :goto_20

    .line 103
    :cond_2c
    invoke-static/range {v26 .. v26}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    return-void

    .line 104
    :goto_20
    new-instance v26, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 105
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v9, 0x3

    invoke-direct {v3, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 106
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v15, 0x4

    invoke-direct {v6, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 107
    invoke-static {v11}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v34

    .line 108
    new-instance v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    const/16 v12, 0x18

    invoke-direct {v9, v12}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 109
    const-string v27, "account_avatar_icon"

    move-object/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v9

    invoke-direct/range {v26 .. v34}, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;Lkotlinx/collections/immutable/ImmutableList;)V

    move-object/from16 v3, v26

    .line 110
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2d
    if-nez v11, :cond_2e

    goto :goto_21

    .line 111
    :cond_2e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_2f
    move-object/from16 v26, v13

    goto/16 :goto_19

    :cond_30
    move-object/from16 v26, v13

    .line 112
    invoke-static/range {v26 .. v26}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_31
    :goto_21
    iget-object v3, v5, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 114
    new-instance v35, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 115
    new-instance v5, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v15, 0x1

    invoke-direct {v5, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 116
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    move/from16 v9, v16

    invoke-direct {v6, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 117
    new-instance v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    const/16 v12, 0x18

    invoke-direct {v9, v12}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 119
    new-instance v12, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    const/16 v13, 0x1a

    invoke-direct {v12, v13}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 120
    const-string v36, "account_name"

    move-object/from16 v40, v3

    move-object/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v39, v9

    move-object/from16 v42, v11

    move-object/from16 v41, v12

    invoke-direct/range {v35 .. v42}, Lnet/thunderbird/core/ui/setting/SettingValue$Text;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v35

    .line 121
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v20, :cond_32

    .line 122
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v27, v12

    goto :goto_22

    :cond_32
    const/16 v27, 0x0

    .line 123
    :goto_22
    new-instance v22, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 124
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/4 v12, 0x0

    invoke-direct {v3, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 125
    new-instance v5, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V

    .line 126
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    const/16 v9, 0x18

    invoke-direct {v6, v9}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 127
    iget-object v9, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->accountColors:Lkotlinx/collections/immutable/ImmutableList;

    .line 128
    const-string v23, "account_color"

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lnet/thunderbird/core/ui/setting/SettingValue$Color;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlinx/collections/immutable/ImmutableList;)V

    move-object/from16 v3, v22

    .line 129
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v4}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v11

    .line 131
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    :goto_23
    move-object v4, v11

    check-cast v4, Lkotlinx/collections/immutable/ImmutableList;

    const v3, 0x7f1200d3

    .line 133
    invoke-static {v10, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v5, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    const/16 v6, 0x20

    if-ne v8, v6, :cond_33

    move v6, v15

    goto :goto_24

    :cond_33
    move v6, v12

    .line 135
    :goto_24
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_34

    if-ne v9, v7, :cond_35

    .line 136
    :cond_34
    new-instance v9, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    const/4 v14, 0x5

    invoke-direct {v9, v14, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 137
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    :cond_35
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v6, 0x20

    if-ne v8, v6, :cond_36

    move v12, v15

    .line 139
    :cond_36
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v12, :cond_37

    if-ne v6, v7, :cond_38

    .line 140
    :cond_37
    new-instance v6, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 141
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    :cond_38
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const v7, 0xe000

    and-int v7, v18, v7

    shl-int/lit8 v8, v18, 0xf

    const/high16 v11, 0x1c00000

    and-int/2addr v8, v11

    or-int v11, v7, v8

    const/16 v12, 0x40

    const/4 v8, 0x0

    move-object v7, v5

    move-object v5, v9

    move-object/from16 v9, p2

    .line 143
    invoke-static/range {v3 .. v12}, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V

    .line 144
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v3

    goto :goto_25

    .line 145
    :cond_39
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    .line 146
    :goto_25
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_3a

    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    const/16 v7, 0xb

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 147
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3a
    return-void
.end method

.method public static final K9MailTheme2(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, -0x69ee809c

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p3, 0x6

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    and-int/lit8 v1, p4, 0x1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x2

    .line 27
    :goto_0
    or-int v1, p3, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v1, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, v1, 0x13

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_2
    and-int/lit8 v3, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 50
    .line 51
    .line 52
    and-int/lit8 v2, p3, 0x1

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 64
    .line 65
    .line 66
    and-int/lit8 v2, p4, 0x1

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v1, v1, -0xf

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_4
    :goto_4
    and-int/lit8 v2, p4, 0x1

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;

    .line 86
    .line 87
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/resources/Drawable0_commonMainKt;->core_ui_theme2_k9mail_logo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 88
    .line 89
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 94
    .line 95
    invoke-direct {v2, v3}, Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 99
    .line 100
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/k9mail/ThemeColorsKt;->darkThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 101
    .line 102
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/k9mail/ThemeColorsKt;->lightThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 103
    .line 104
    invoke-direct {v3, v4, v5}, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;-><init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 108
    .line 109
    invoke-direct {v4, v2, v2}, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;-><init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;)V

    .line 110
    .line 111
    .line 112
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeShapesKt;->defaultThemeShapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 113
    .line 114
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeTypographyKt;->defaultTypography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 115
    .line 116
    new-instance v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;

    .line 117
    .line 118
    invoke-direct {v6, v3, v4, v2, v5}, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;-><init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;)V

    .line 119
    .line 120
    .line 121
    shl-int/lit8 v1, v1, 0x3

    .line 122
    .line 123
    and-int/lit16 v1, v1, 0x3f0

    .line 124
    .line 125
    invoke-static {v6, p0, p1, v0, v1}, Lkotlin/io/CloseableKt;->MainTheme(Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 126
    .line 127
    .line 128
    :goto_6
    move v8, p0

    .line 129
    goto :goto_7

    .line 130
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_7

    .line 139
    .line 140
    new-instance v7, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;

    .line 141
    .line 142
    const/4 v12, 0x1

    .line 143
    move-object v9, p1

    .line 144
    move/from16 v10, p3

    .line 145
    .line 146
    move/from16 v11, p4

    .line 147
    .line 148
    invoke-direct/range {v7 .. v12}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/Function;III)V

    .line 149
    .line 150
    .line 151
    iput-object v7, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 152
    .line 153
    :cond_7
    return-void
.end method

.method public static final MessageListSwipeableItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/action/SwipeActions;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 26

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
    move-object/from16 v11, p5

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x41250ee5

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int v0, p6, v0

    .line 27
    .line 28
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const/16 v6, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v6, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v6

    .line 40
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    const/16 v6, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v6, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v6

    .line 52
    or-int/lit16 v0, v0, 0xc00

    .line 53
    .line 54
    and-int/lit16 v6, v0, 0x2493

    .line 55
    .line 56
    const/16 v8, 0x2492

    .line 57
    .line 58
    if-eq v6, v8, :cond_3

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v6, 0x0

    .line 63
    :goto_3
    and-int/lit8 v8, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v11, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1c

    .line 70
    .line 71
    const v6, 0x7f12044f

    .line 72
    .line 73
    .line 74
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v8, Lkotlin/Pair;

    .line 79
    .line 80
    sget-object v12, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->NewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 81
    .line 82
    invoke-direct {v8, v12, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const v6, 0x7f120450

    .line 86
    .line 87
    .line 88
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-instance v12, Lkotlin/Pair;

    .line 93
    .line 94
    sget-object v13, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 95
    .line 96
    invoke-direct {v12, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const v6, 0x7f120454

    .line 100
    .line 101
    .line 102
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v13, Lkotlin/Pair;

    .line 107
    .line 108
    sget-object v14, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->UnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 109
    .line 110
    invoke-direct {v13, v14, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const v6, 0x7f12044c

    .line 114
    .line 115
    .line 116
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v14, Lkotlin/Pair;

    .line 121
    .line 122
    sget-object v15, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveNewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 123
    .line 124
    invoke-direct {v14, v15, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const v6, 0x7f12044d

    .line 128
    .line 129
    .line 130
    invoke-static {v11, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    new-instance v15, Lkotlin/Pair;

    .line 135
    .line 136
    const/16 p5, 0x2

    .line 137
    .line 138
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 139
    .line 140
    invoke-direct {v15, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    const v4, 0x7f12044e

    .line 144
    .line 145
    .line 146
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v6, Lkotlin/Pair;

    .line 151
    .line 152
    sget-object v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveUnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 153
    .line 154
    invoke-direct {v6, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const v4, 0x7f120451

    .line 158
    .line 159
    .line 160
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    new-instance v7, Lkotlin/Pair;

    .line 165
    .line 166
    const/16 v16, 0x4

    .line 167
    .line 168
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedNewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 169
    .line 170
    invoke-direct {v7, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const v4, 0x7f120452

    .line 174
    .line 175
    .line 176
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    new-instance v5, Lkotlin/Pair;

    .line 181
    .line 182
    const/16 v17, 0x1

    .line 183
    .line 184
    sget-object v10, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 185
    .line 186
    invoke-direct {v5, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const v4, 0x7f120453

    .line 190
    .line 191
    .line 192
    invoke-static {v11, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    new-instance v10, Lkotlin/Pair;

    .line 197
    .line 198
    const/16 v18, 0x0

    .line 199
    .line 200
    sget-object v9, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedUnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 201
    .line 202
    invoke-direct {v10, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    const/16 v4, 0x9

    .line 206
    .line 207
    new-array v4, v4, [Lkotlin/Pair;

    .line 208
    .line 209
    aput-object v8, v4, v18

    .line 210
    .line 211
    aput-object v12, v4, v17

    .line 212
    .line 213
    aput-object v13, v4, p5

    .line 214
    .line 215
    const/4 v8, 0x3

    .line 216
    aput-object v14, v4, v8

    .line 217
    .line 218
    aput-object v15, v4, v16

    .line 219
    .line 220
    const/4 v9, 0x5

    .line 221
    aput-object v6, v4, v9

    .line 222
    .line 223
    const/4 v6, 0x6

    .line 224
    aput-object v7, v4, v6

    .line 225
    .line 226
    const/4 v6, 0x7

    .line 227
    aput-object v5, v4, v6

    .line 228
    .line 229
    const/16 v5, 0x8

    .line 230
    .line 231
    aput-object v10, v4, v5

    .line 232
    .line 233
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 246
    .line 247
    if-nez v5, :cond_4

    .line 248
    .line 249
    if-ne v6, v7, :cond_9

    .line 250
    .line 251
    :cond_4
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    const/4 v6, 0x0

    .line 256
    if-eqz v2, :cond_5

    .line 257
    .line 258
    iget-object v9, v2, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 259
    .line 260
    if-eqz v9, :cond_5

    .line 261
    .line 262
    invoke-static {v9}, Lokio/Okio;->toAccessibilityStringRes(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    goto :goto_4

    .line 267
    :cond_5
    move-object v9, v6

    .line 268
    :goto_4
    if-eqz v9, :cond_6

    .line 269
    .line 270
    new-instance v10, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$StartToEndAccessibilityAction;

    .line 271
    .line 272
    new-instance v12, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    move/from16 v13, v18

    .line 275
    .line 276
    invoke-direct {v12, v13, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Integer;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v10, v12}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$StartToEndAccessibilityAction;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :cond_6
    if-eqz v2, :cond_7

    .line 286
    .line 287
    iget-object v9, v2, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 288
    .line 289
    if-eqz v9, :cond_7

    .line 290
    .line 291
    invoke-static {v9}, Lokio/Okio;->toAccessibilityStringRes(Lnet/thunderbird/core/common/action/SwipeAction;)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    :cond_7
    if-eqz v6, :cond_8

    .line 296
    .line 297
    new-instance v9, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;

    .line 298
    .line 299
    new-instance v10, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 300
    .line 301
    move/from16 v12, v17

    .line 302
    .line 303
    invoke-direct {v10, v12, v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Integer;)V

    .line 304
    .line 305
    .line 306
    invoke-direct {v9, v10}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    check-cast v6, Ljava/util/List;

    .line 320
    .line 321
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    or-int/2addr v5, v9

    .line 330
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    if-nez v5, :cond_a

    .line 335
    .line 336
    if-ne v9, v7, :cond_b

    .line 337
    .line 338
    :cond_a
    new-instance v9, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;

    .line 339
    .line 340
    invoke-static {v6}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-direct {v9, v4, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;-><init>(Ljava/util/Map;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_b
    check-cast v9, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;

    .line 351
    .line 352
    sget-object v4, Lnet/thunderbird/core/common/action/SwipeAction;->None:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 353
    .line 354
    if-eqz v2, :cond_c

    .line 355
    .line 356
    iget-object v5, v2, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 357
    .line 358
    if-nez v5, :cond_d

    .line 359
    .line 360
    :cond_c
    move-object v5, v4

    .line 361
    :cond_d
    if-eqz v2, :cond_f

    .line 362
    .line 363
    iget-object v6, v2, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 364
    .line 365
    if-nez v6, :cond_e

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_e
    move-object v4, v6

    .line 369
    :cond_f
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    if-nez v6, :cond_10

    .line 382
    .line 383
    if-ne v10, v7, :cond_11

    .line 384
    .line 385
    :cond_10
    invoke-static {v5}, Lokhttp3/CacheControl$Companion;->getBehaviour(Lnet/thunderbird/core/common/action/SwipeAction;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_11
    move-object/from16 v22, v10

    .line 393
    .line 394
    check-cast v22, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    if-nez v5, :cond_12

    .line 409
    .line 410
    if-ne v6, v7, :cond_13

    .line 411
    .line 412
    :cond_12
    invoke-static {v4}, Lokhttp3/CacheControl$Companion;->getBehaviour(Lnet/thunderbird/core/common/action/SwipeAction;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    :cond_13
    move-object/from16 v23, v6

    .line 420
    .line 421
    check-cast v23, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 422
    .line 423
    iget-object v4, v9, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;->swipeDirectionAccessibilityAction:Lkotlinx/collections/immutable/ImmutableList;

    .line 424
    .line 425
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    if-ne v5, v7, :cond_14

    .line 430
    .line 431
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_14
    move-object/from16 v20, v5

    .line 439
    .line 440
    check-cast v20, Lkotlinx/coroutines/CoroutineScope;

    .line 441
    .line 442
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 443
    .line 444
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    move-object/from16 v21, v5

    .line 449
    .line 450
    check-cast v21, Landroidx/compose/ui/unit/Density;

    .line 451
    .line 452
    move/from16 v5, v16

    .line 453
    .line 454
    new-array v6, v5, [Ljava/lang/Object;

    .line 455
    .line 456
    const/16 v18, 0x0

    .line 457
    .line 458
    aput-object v21, v6, v18

    .line 459
    .line 460
    const/4 v12, 0x1

    .line 461
    aput-object v22, v6, v12

    .line 462
    .line 463
    aput-object v23, v6, p5

    .line 464
    .line 465
    aput-object v4, v6, v8

    .line 466
    .line 467
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    new-instance v5, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 483
    .line 484
    invoke-direct {v5, v12}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 485
    .line 486
    .line 487
    new-instance v19, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 488
    .line 489
    const/16 v25, 0x8

    .line 490
    .line 491
    move-object/from16 v24, v4

    .line 492
    .line 493
    invoke-direct/range {v19 .. v25}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v15, v19

    .line 497
    .line 498
    move-object/from16 v13, v20

    .line 499
    .line 500
    move-object/from16 v14, v21

    .line 501
    .line 502
    move-object/from16 v10, v22

    .line 503
    .line 504
    move-object/from16 v4, v23

    .line 505
    .line 506
    move-object/from16 v8, v24

    .line 507
    .line 508
    invoke-static {v5, v15}, Landroidx/compose/runtime/saveable/SaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/platform/WeakCache;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v15

    .line 516
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v17

    .line 520
    or-int v15, v15, v17

    .line 521
    .line 522
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v17

    .line 526
    or-int v15, v15, v17

    .line 527
    .line 528
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v17

    .line 532
    or-int v15, v15, v17

    .line 533
    .line 534
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v17

    .line 538
    or-int v15, v15, v17

    .line 539
    .line 540
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v12

    .line 544
    if-nez v15, :cond_15

    .line 545
    .line 546
    if-ne v12, v7, :cond_16

    .line 547
    .line 548
    :cond_15
    new-instance v19, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;

    .line 549
    .line 550
    move-object/from16 v23, v4

    .line 551
    .line 552
    move-object/from16 v24, v8

    .line 553
    .line 554
    move-object/from16 v22, v10

    .line 555
    .line 556
    move-object/from16 v20, v13

    .line 557
    .line 558
    move-object/from16 v21, v14

    .line 559
    .line 560
    invoke-direct/range {v19 .. v24}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 561
    .line 562
    .line 563
    move-object/from16 v12, v19

    .line 564
    .line 565
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    :cond_16
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 569
    .line 570
    const/4 v13, 0x0

    .line 571
    invoke-static {v6, v5, v12, v11, v13}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    check-cast v4, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 576
    .line 577
    if-eqz v2, :cond_17

    .line 578
    .line 579
    const/4 v5, 0x1

    .line 580
    goto :goto_6

    .line 581
    :cond_17
    move v5, v13

    .line 582
    :goto_6
    new-instance v6, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 583
    .line 584
    const/16 v8, 0x15

    .line 585
    .line 586
    invoke-direct {v6, v8, v2, v4}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    const v8, -0x73534b49

    .line 590
    .line 591
    .line 592
    invoke-static {v8, v6, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    and-int/lit16 v10, v0, 0x380

    .line 601
    .line 602
    const/16 v12, 0x100

    .line 603
    .line 604
    if-ne v10, v12, :cond_18

    .line 605
    .line 606
    const/4 v10, 0x1

    .line 607
    goto :goto_7

    .line 608
    :cond_18
    move v10, v13

    .line 609
    :goto_7
    or-int/2addr v8, v10

    .line 610
    and-int/lit8 v0, v0, 0xe

    .line 611
    .line 612
    const/4 v10, 0x4

    .line 613
    if-ne v0, v10, :cond_19

    .line 614
    .line 615
    const/4 v13, 0x1

    .line 616
    :cond_19
    or-int v0, v8, v13

    .line 617
    .line 618
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v8

    .line 622
    if-nez v0, :cond_1a

    .line 623
    .line 624
    if-ne v8, v7, :cond_1b

    .line 625
    .line 626
    :cond_1a
    new-instance v8, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 627
    .line 628
    invoke-direct {v8, v2, v3, v1}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/common/action/SwipeActions;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    :cond_1b
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 635
    .line 636
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 637
    .line 638
    const/16 v7, 0x16

    .line 639
    .line 640
    move-object/from16 v13, p4

    .line 641
    .line 642
    invoke-direct {v0, v7, v13, v9}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    const v7, 0x5b87de3c

    .line 646
    .line 647
    .line 648
    invoke-static {v7, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 649
    .line 650
    .line 651
    move-result-object v10

    .line 652
    const v12, 0x1801b0

    .line 653
    .line 654
    .line 655
    move v7, v5

    .line 656
    move-object v5, v6

    .line 657
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 658
    .line 659
    const/4 v9, 0x0

    .line 660
    invoke-static/range {v4 .. v12}, Lokio/Okio;->SwipeableRow(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 661
    .line 662
    .line 663
    move-object v4, v6

    .line 664
    goto :goto_8

    .line 665
    :cond_1c
    move-object/from16 v13, p4

    .line 666
    .line 667
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 668
    .line 669
    .line 670
    move-object/from16 v4, p3

    .line 671
    .line 672
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    if-eqz v8, :cond_1d

    .line 677
    .line 678
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 679
    .line 680
    const/16 v7, 0x12

    .line 681
    .line 682
    move/from16 v6, p6

    .line 683
    .line 684
    move-object v5, v13

    .line 685
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 686
    .line 687
    .line 688
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 689
    .line 690
    :cond_1d
    return-void
.end method

.method public static final ReadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v7, p6

    .line 8
    .line 9
    move/from16 v9, p9

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-object/from16 v4, p8

    .line 30
    .line 31
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    const v2, 0x18c178e4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v2, v9, 0x6

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x2

    .line 52
    :goto_0
    or-int/2addr v2, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v2, v9

    .line 55
    :goto_1
    and-int/lit8 v5, v9, 0x30

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/16 v5, 0x10

    .line 69
    .line 70
    :goto_2
    or-int/2addr v2, v5

    .line 71
    :cond_3
    and-int/lit16 v5, v9, 0x180

    .line 72
    .line 73
    if-nez v5, :cond_6

    .line 74
    .line 75
    and-int/lit16 v5, v9, 0x200

    .line 76
    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :goto_3
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const/16 v5, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const/16 v5, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v2, v5

    .line 96
    :cond_6
    and-int/lit16 v5, v9, 0xc00

    .line 97
    .line 98
    move-object/from16 v8, p3

    .line 99
    .line 100
    if-nez v5, :cond_8

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    const/16 v5, 0x800

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    const/16 v5, 0x400

    .line 112
    .line 113
    :goto_5
    or-int/2addr v2, v5

    .line 114
    :cond_8
    and-int/lit16 v5, v9, 0x6000

    .line 115
    .line 116
    move-object/from16 v10, p4

    .line 117
    .line 118
    if-nez v5, :cond_a

    .line 119
    .line 120
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_9

    .line 125
    .line 126
    const/16 v5, 0x4000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_9
    const/16 v5, 0x2000

    .line 130
    .line 131
    :goto_6
    or-int/2addr v2, v5

    .line 132
    :cond_a
    const/high16 v5, 0x30000

    .line 133
    .line 134
    and-int/2addr v5, v9

    .line 135
    move-object/from16 v11, p5

    .line 136
    .line 137
    if-nez v5, :cond_c

    .line 138
    .line 139
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_b

    .line 144
    .line 145
    const/high16 v5, 0x20000

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_b
    const/high16 v5, 0x10000

    .line 149
    .line 150
    :goto_7
    or-int/2addr v2, v5

    .line 151
    :cond_c
    const/high16 v5, 0x180000

    .line 152
    .line 153
    and-int/2addr v5, v9

    .line 154
    if-nez v5, :cond_e

    .line 155
    .line 156
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_d

    .line 161
    .line 162
    const/high16 v5, 0x100000

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_d
    const/high16 v5, 0x80000

    .line 166
    .line 167
    :goto_8
    or-int/2addr v2, v5

    .line 168
    :cond_e
    move/from16 v13, p10

    .line 169
    .line 170
    and-int/lit16 v5, v13, 0x80

    .line 171
    .line 172
    const/high16 v14, 0xc00000

    .line 173
    .line 174
    if-eqz v5, :cond_10

    .line 175
    .line 176
    or-int/2addr v2, v14

    .line 177
    :cond_f
    move-object/from16 v14, p7

    .line 178
    .line 179
    :goto_9
    move v15, v2

    .line 180
    goto :goto_b

    .line 181
    :cond_10
    and-int/2addr v14, v9

    .line 182
    if-nez v14, :cond_f

    .line 183
    .line 184
    move-object/from16 v14, p7

    .line 185
    .line 186
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_11

    .line 191
    .line 192
    const/high16 v15, 0x800000

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_11
    const/high16 v15, 0x400000

    .line 196
    .line 197
    :goto_a
    or-int/2addr v2, v15

    .line 198
    goto :goto_9

    .line 199
    :goto_b
    const v2, 0x492493

    .line 200
    .line 201
    .line 202
    and-int/2addr v2, v15

    .line 203
    const v12, 0x492492

    .line 204
    .line 205
    .line 206
    if-eq v2, v12, :cond_12

    .line 207
    .line 208
    const/4 v2, 0x1

    .line 209
    goto :goto_c

    .line 210
    :cond_12
    const/4 v2, 0x0

    .line 211
    :goto_c
    and-int/lit8 v12, v15, 0x1

    .line 212
    .line 213
    invoke-virtual {v4, v12, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_1b

    .line 218
    .line 219
    if-eqz v5, :cond_13

    .line 220
    .line 221
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 222
    .line 223
    move v12, v15

    .line 224
    move-object v15, v2

    .line 225
    goto :goto_d

    .line 226
    :cond_13
    move v12, v15

    .line 227
    move-object v15, v14

    .line 228
    :goto_d
    iget-object v14, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v13, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 231
    .line 232
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 233
    .line 234
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 239
    .line 240
    iget-wide v6, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLow:J

    .line 241
    .line 242
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 247
    .line 248
    iget-wide v0, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 249
    .line 250
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 255
    .line 256
    move-wide/from16 v21, v0

    .line 257
    .line 258
    iget-wide v0, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outline:J

    .line 259
    .line 260
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 261
    .line 262
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 263
    .line 264
    .line 265
    new-instance v18, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;

    .line 266
    .line 267
    move-object/from16 v23, v5

    .line 268
    .line 269
    move-wide/from16 v19, v6

    .line 270
    .line 271
    invoke-direct/range {v18 .. v23}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;-><init>(JJLandroidx/compose/ui/graphics/Color;)V

    .line 272
    .line 273
    .line 274
    and-int/lit8 v6, v12, 0x70

    .line 275
    .line 276
    and-int/lit8 v0, v12, 0x7e

    .line 277
    .line 278
    shl-int/lit8 v1, v12, 0x3

    .line 279
    .line 280
    and-int/lit16 v1, v1, 0x1c00

    .line 281
    .line 282
    or-int v5, v0, v1

    .line 283
    .line 284
    move-object/from16 v0, p0

    .line 285
    .line 286
    move-object/from16 v1, p1

    .line 287
    .line 288
    move-object v7, v2

    .line 289
    move-object/from16 v2, v18

    .line 290
    .line 291
    invoke-static/range {v0 .. v5}, Lokio/Okio;->rememberMessageItemConfiguration(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Landroidx/compose/runtime/Composer;I)Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    iget-boolean v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 296
    .line 297
    if-eqz v3, :cond_14

    .line 298
    .line 299
    const v5, -0x11b84721

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 310
    .line 311
    move-object/from16 p7, v2

    .line 312
    .line 313
    move/from16 v18, v3

    .line 314
    .line 315
    iget-wide v2, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 316
    .line 317
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 322
    .line 323
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 324
    .line 325
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 326
    .line 327
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 332
    .line 333
    .line 334
    goto :goto_e

    .line 335
    :cond_14
    move-object/from16 p7, v2

    .line 336
    .line 337
    move/from16 v18, v3

    .line 338
    .line 339
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 340
    .line 341
    if-eqz v2, :cond_15

    .line 342
    .line 343
    const v2, -0x11b83da3

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 354
    .line 355
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->infoContainer:J

    .line 356
    .line 357
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 362
    .line 363
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 364
    .line 365
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 366
    .line 367
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 368
    .line 369
    .line 370
    const/4 v2, 0x0

    .line 371
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 372
    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_15
    iget-boolean v2, v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 376
    .line 377
    if-eqz v2, :cond_16

    .line 378
    .line 379
    const v2, -0x11b83125

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 390
    .line 391
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLow:J

    .line 392
    .line 393
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 398
    .line 399
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 400
    .line 401
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 402
    .line 403
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 404
    .line 405
    .line 406
    const/4 v2, 0x0

    .line 407
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_e

    .line 411
    :cond_16
    const v2, -0x11b82922

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 422
    .line 423
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLowest:J

    .line 424
    .line 425
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 430
    .line 431
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 432
    .line 433
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 434
    .line 435
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 436
    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 440
    .line 441
    .line 442
    :goto_e
    iget-object v3, v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 443
    .line 444
    invoke-static {v3, v4}, Lokio/Options$Companion;->toContentPadding$api(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;

    .line 449
    .line 450
    const/4 v8, 0x1

    .line 451
    invoke-direct {v7, v0, v1, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 452
    .line 453
    .line 454
    const v2, 0xee64f75

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;

    .line 462
    .line 463
    invoke-direct {v7, v0, v1, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 464
    .line 465
    .line 466
    const v8, 0x2782d319

    .line 467
    .line 468
    .line 469
    invoke-static {v8, v7, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    const/16 v8, 0x20

    .line 474
    .line 475
    if-ne v6, v8, :cond_17

    .line 476
    .line 477
    const/4 v6, 0x1

    .line 478
    goto :goto_f

    .line 479
    :cond_17
    const/4 v6, 0x0

    .line 480
    :goto_f
    const/high16 v8, 0x380000

    .line 481
    .line 482
    and-int/2addr v8, v12

    .line 483
    const/high16 v0, 0x100000

    .line 484
    .line 485
    if-ne v8, v0, :cond_18

    .line 486
    .line 487
    const/16 v17, 0x1

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_18
    const/16 v17, 0x0

    .line 491
    .line 492
    :goto_10
    or-int v0, v6, v17

    .line 493
    .line 494
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    if-nez v0, :cond_1a

    .line 499
    .line 500
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 501
    .line 502
    if-ne v6, v0, :cond_19

    .line 503
    .line 504
    goto :goto_11

    .line 505
    :cond_19
    move-object/from16 v0, p6

    .line 506
    .line 507
    goto :goto_12

    .line 508
    :cond_1a
    :goto_11
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;

    .line 509
    .line 510
    move-object/from16 v0, p6

    .line 511
    .line 512
    const/4 v8, 0x1

    .line 513
    invoke-direct {v6, v1, v0, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    :goto_12
    move-object/from16 v22, v6

    .line 520
    .line 521
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 522
    .line 523
    const/high16 v6, 0x70000

    .line 524
    .line 525
    shr-int/lit8 v8, v12, 0x6

    .line 526
    .line 527
    and-int/2addr v6, v8

    .line 528
    const/16 v8, 0x36

    .line 529
    .line 530
    or-int/2addr v6, v8

    .line 531
    shl-int/lit8 v8, v12, 0x12

    .line 532
    .line 533
    const/high16 v16, 0x70000000

    .line 534
    .line 535
    and-int v8, v8, v16

    .line 536
    .line 537
    or-int v24, v6, v8

    .line 538
    .line 539
    shr-int/lit8 v6, v12, 0xc

    .line 540
    .line 541
    and-int/lit8 v25, v6, 0x7e

    .line 542
    .line 543
    move-object/from16 v19, p3

    .line 544
    .line 545
    move-object/from16 v23, v4

    .line 546
    .line 547
    move-object/from16 v16, v5

    .line 548
    .line 549
    move-object/from16 v20, v10

    .line 550
    .line 551
    move-object/from16 v21, v11

    .line 552
    .line 553
    move-object v12, v14

    .line 554
    move/from16 v17, v18

    .line 555
    .line 556
    move-object/from16 v14, p7

    .line 557
    .line 558
    move-object v10, v2

    .line 559
    move-object/from16 v18, v3

    .line 560
    .line 561
    move-object v11, v7

    .line 562
    invoke-static/range {v10 .. v25}, Lkotlin/io/ByteStreamsKt;->MessageItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 563
    .line 564
    .line 565
    move-object v8, v15

    .line 566
    goto :goto_13

    .line 567
    :cond_1b
    move-object v0, v7

    .line 568
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 569
    .line 570
    .line 571
    move-object v8, v14

    .line 572
    :goto_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 573
    .line 574
    .line 575
    move-result-object v12

    .line 576
    if-eqz v12, :cond_1c

    .line 577
    .line 578
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/ReadMessageItemKt$$ExternalSyntheticLambda3;

    .line 579
    .line 580
    const/4 v11, 0x0

    .line 581
    move-object/from16 v3, p2

    .line 582
    .line 583
    move-object/from16 v4, p3

    .line 584
    .line 585
    move-object/from16 v5, p4

    .line 586
    .line 587
    move-object/from16 v6, p5

    .line 588
    .line 589
    move-object/from16 v7, p6

    .line 590
    .line 591
    move/from16 v10, p10

    .line 592
    .line 593
    move-object v2, v1

    .line 594
    move-object/from16 v1, p0

    .line 595
    .line 596
    invoke-direct/range {v0 .. v11}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/ReadMessageItemKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;III)V

    .line 597
    .line 598
    .line 599
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 600
    .line 601
    :cond_1c
    return-void
.end method

.method public static containsEntry$kotlinx_collections_immutable(Lkotlin/collections/AbstractMutableMap;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static final generateId()Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lkotlin/uuid/SecureRandomHolder;->instance:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    aget-byte v2, v0, v1

    .line 12
    .line 13
    and-int/lit8 v2, v2, 0xf

    .line 14
    .line 15
    int-to-byte v2, v2

    .line 16
    aput-byte v2, v0, v1

    .line 17
    .line 18
    or-int/lit8 v2, v2, 0x40

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    aget-byte v2, v0, v1

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x3f

    .line 28
    .line 29
    int-to-byte v2, v2

    .line 30
    aput-byte v2, v0, v1

    .line 31
    .line 32
    or-int/lit16 v2, v2, 0x80

    .line 33
    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, v0, v1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v2, v0}, Lkotlin/uuid/UuidKt;->getLongAt(I[B)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->getLongAt(I[B)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    cmp-long v6, v2, v4

    .line 49
    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    cmp-long v4, v0, v4

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v4, Lkotlin/uuid/Uuid;

    .line 60
    .line 61
    invoke-direct {v4, v2, v3, v0, v1}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    move-object v0, v4

    .line 65
    :goto_0
    invoke-virtual {v0}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public static final getBehaviour(Lnet/thunderbird/core/common/action/SwipeAction;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 14
    .line 15
    invoke-direct {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    new-instance p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 20
    .line 21
    invoke-direct {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_2
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;->INSTANCE:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/NullableSerializer;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object p0, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_0

    .line 11
    .line 12
    instance-of v0, p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const-string v1, ": "

    .line 47
    .line 48
    invoke-static {v0, v1, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static parseAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/apache/james/mime4j/field/address/AddressListParser;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/james/mime4j/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    new-instance v4, Lorg/apache/james/mime4j/io/TextInputStream;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/Charsets;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    :goto_0
    invoke-direct {v4, v0, v2}, Lorg/apache/james/mime4j/io/TextInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v4}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Lorg/apache/james/mime4j/io/TextInputStream;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseAddressList0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 38
    .line 39
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTaddress_list;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    move v4, v1

    .line 47
    :goto_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_d

    .line 52
    .line 53
    iget-object v5, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 54
    .line 55
    aget-object v5, v5, v4

    .line 56
    .line 57
    check-cast v5, Lorg/apache/james/mime4j/field/address/ASTaddress;

    .line 58
    .line 59
    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 60
    .line 61
    .line 62
    iget-object v6, v5, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 63
    .line 64
    aget-object v6, v6, v1

    .line 65
    .line 66
    instance-of v7, v6, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 67
    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    check-cast v6, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 71
    .line 72
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_2
    move-object/from16 v16, v3

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_1
    instance-of v7, v6, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    check-cast v6, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 85
    .line 86
    invoke-static {v6}, Lkotlin/io/CloseableKt;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    instance-of v7, v6, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .line 92
    .line 93
    const-string v8, "Address \"phrase\" is expected but got \""

    .line 94
    .line 95
    if-eqz v7, :cond_c

    .line 96
    .line 97
    move-object v7, v6

    .line 98
    check-cast v7, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .line 99
    .line 100
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    iget-object v5, v5, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 105
    .line 106
    const/4 v9, 0x1

    .line 107
    aget-object v5, v5, v9

    .line 108
    .line 109
    instance-of v10, v5, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    .line 110
    .line 111
    if-eqz v10, :cond_a

    .line 112
    .line 113
    new-instance v6, Lorg/apache/james/mime4j/dom/address/Group;

    .line 114
    .line 115
    check-cast v5, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    .line 116
    .line 117
    new-instance v10, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    move v12, v1

    .line 127
    :goto_3
    if-ge v12, v11, :cond_9

    .line 128
    .line 129
    add-int/lit8 v13, v12, 0x1

    .line 130
    .line 131
    iget-object v14, v5, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 132
    .line 133
    aget-object v12, v14, v12

    .line 134
    .line 135
    instance-of v14, v12, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    .line 136
    .line 137
    if-eqz v14, :cond_8

    .line 138
    .line 139
    check-cast v12, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    .line 140
    .line 141
    invoke-virtual {v12}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 142
    .line 143
    .line 144
    iget-object v12, v12, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 145
    .line 146
    aget-object v12, v12, v1

    .line 147
    .line 148
    instance-of v14, v12, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 149
    .line 150
    if-eqz v14, :cond_3

    .line 151
    .line 152
    check-cast v12, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 153
    .line 154
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    :goto_4
    move-object/from16 v16, v3

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_3
    instance-of v14, v12, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 162
    .line 163
    if-eqz v14, :cond_4

    .line 164
    .line 165
    check-cast v12, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 166
    .line 167
    invoke-static {v12}, Lkotlin/io/CloseableKt;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    instance-of v14, v12, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    .line 173
    .line 174
    if-eqz v14, :cond_7

    .line 175
    .line 176
    check-cast v12, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    .line 177
    .line 178
    invoke-virtual {v12}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 179
    .line 180
    .line 181
    iget-object v14, v12, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 182
    .line 183
    aget-object v14, v14, v1

    .line 184
    .line 185
    instance-of v15, v14, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .line 186
    .line 187
    if-eqz v15, :cond_6

    .line 188
    .line 189
    check-cast v14, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .line 190
    .line 191
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    iget-object v12, v12, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 196
    .line 197
    aget-object v12, v12, v9

    .line 198
    .line 199
    instance-of v15, v12, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 200
    .line 201
    if-eqz v15, :cond_5

    .line 202
    .line 203
    :try_start_1
    invoke-static {v14}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    check-cast v12, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 208
    .line 209
    invoke-static {v12}, Lkotlin/io/CloseableKt;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    new-instance v15, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 214
    .line 215
    iget-object v1, v12, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 216
    .line 217
    move-object/from16 v16, v3

    .line 218
    .line 219
    iget-object v3, v12, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v12, v12, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 222
    .line 223
    invoke-direct {v15, v14, v1, v3, v12}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v12, v15

    .line 227
    :goto_5
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move v12, v13

    .line 231
    move-object/from16 v3, v16

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    goto :goto_3

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 237
    .line 238
    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    throw v1

    .line 242
    :cond_5
    move-object/from16 v16, v3

    .line 243
    .line 244
    const-string v0, "Address \"angle_addr\" is expected but got \""

    .line 245
    .line 246
    invoke-static {v12, v0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-object v16

    .line 250
    :cond_6
    move-object/from16 v16, v3

    .line 251
    .line 252
    invoke-static {v14, v8}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-object v16

    .line 256
    :cond_7
    move-object/from16 v16, v3

    .line 257
    .line 258
    const-string v0, "Address \"addr_spec\" or \"angle_addr\" or \"name_addr\" is expected but got \""

    .line 259
    .line 260
    invoke-static {v12, v0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-object v16

    .line 264
    :cond_8
    move-object/from16 v16, v3

    .line 265
    .line 266
    const-string v0, "Address \"mailbox\" is expected but got \""

    .line 267
    .line 268
    invoke-static {v12, v0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    return-object v16

    .line 272
    :cond_9
    move-object/from16 v16, v3

    .line 273
    .line 274
    new-instance v1, Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 275
    .line 276
    invoke-direct {v1, v10, v9}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;Z)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v6, v7, v1}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;)V

    .line 280
    .line 281
    .line 282
    move-object v5, v6

    .line 283
    goto :goto_6

    .line 284
    :cond_a
    move-object/from16 v16, v3

    .line 285
    .line 286
    instance-of v1, v5, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 287
    .line 288
    if-eqz v1, :cond_b

    .line 289
    .line 290
    :try_start_2
    invoke-static {v7}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    check-cast v5, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 295
    .line 296
    invoke-static {v5}, Lkotlin/io/CloseableKt;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    new-instance v5, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 301
    .line 302
    iget-object v6, v3, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 303
    .line 304
    iget-object v7, v3, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 305
    .line 306
    iget-object v3, v3, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 307
    .line 308
    invoke-direct {v5, v1, v6, v7, v3}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :goto_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    add-int/lit8 v4, v4, 0x1

    .line 315
    .line 316
    move-object/from16 v3, v16

    .line 317
    .line 318
    const/4 v1, 0x0

    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :catch_1
    move-exception v0

    .line 322
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 323
    .line 324
    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_b
    const-string v0, "Address \"group_body\" or \"angle_addr\" is expected but got \""

    .line 329
    .line 330
    invoke-static {v6, v0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object v16

    .line 334
    :cond_c
    move-object/from16 v16, v3

    .line 335
    .line 336
    invoke-static {v6, v8}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object v16

    .line 340
    :cond_d
    new-instance v0, Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 341
    .line 342
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    return-object v0

    .line 346
    :catch_2
    move-exception v0

    .line 347
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 348
    .line 349
    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 350
    .line 351
    .line 352
    throw v1

    .line 353
    :cond_e
    move-object/from16 v16, v3

    .line 354
    .line 355
    const-string v0, "CharSequence may not be null"

    .line 356
    .line 357
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object v16
.end method
