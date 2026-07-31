.class public abstract Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AccountSettingList(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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
    move-object/from16 v0, p5

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, -0x1b7f8c4f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    move-object/from16 v3, p0

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x4

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int v1, p6, v1

    .line 33
    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/16 v6, 0x20

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    move v5, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v5, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v1, v5

    .line 49
    move-object/from16 v5, p2

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/16 v8, 0x100

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    move v7, v8

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v7, 0x80

    .line 62
    .line 63
    :goto_2
    or-int/2addr v1, v7

    .line 64
    move/from16 v7, p3

    .line 65
    .line 66
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const/16 v10, 0x800

    .line 71
    .line 72
    if-eqz v9, :cond_3

    .line 73
    .line 74
    move v9, v10

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/16 v9, 0x400

    .line 77
    .line 78
    :goto_3
    or-int/2addr v1, v9

    .line 79
    or-int/lit16 v1, v1, 0x6000

    .line 80
    .line 81
    and-int/lit16 v9, v1, 0x2493

    .line 82
    .line 83
    const/16 v11, 0x2492

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x1

    .line 87
    if-eq v9, v11, :cond_4

    .line 88
    .line 89
    move v9, v13

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move v9, v12

    .line 92
    :goto_4
    and-int/lit8 v11, v1, 0x1

    .line 93
    .line 94
    invoke-virtual {v0, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_e

    .line 99
    .line 100
    invoke-static {v0}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    iget-wide v14, v9, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 105
    .line 106
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    iget-wide v14, v9, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 111
    .line 112
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    invoke-static {v11, v14}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-lez v11, :cond_5

    .line 121
    .line 122
    move v11, v13

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move v11, v12

    .line 125
    :goto_5
    iget-object v9, v9, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 126
    .line 127
    iget-object v9, v9, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->heightSizeClass:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 128
    .line 129
    sget-object v14, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 130
    .line 131
    if-ne v9, v14, :cond_6

    .line 132
    .line 133
    move v9, v13

    .line 134
    goto :goto_6

    .line 135
    :cond_6
    move v9, v12

    .line 136
    :goto_6
    if-eqz v11, :cond_7

    .line 137
    .line 138
    if-eqz v9, :cond_7

    .line 139
    .line 140
    move v3, v13

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    move v3, v12

    .line 143
    :goto_7
    sget-object v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 144
    .line 145
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/high16 v9, 0x41000000    # 8.0f

    .line 155
    .line 156
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 157
    .line 158
    const/4 v14, 0x0

    .line 159
    invoke-static {v11, v14, v9, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    sget-object v14, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 164
    .line 165
    invoke-interface {v9, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    and-int/lit8 v15, v1, 0x70

    .line 174
    .line 175
    if-ne v15, v6, :cond_8

    .line 176
    .line 177
    move v6, v13

    .line 178
    goto :goto_8

    .line 179
    :cond_8
    move v6, v12

    .line 180
    :goto_8
    or-int/2addr v6, v14

    .line 181
    and-int/lit16 v14, v1, 0x1c00

    .line 182
    .line 183
    if-ne v14, v10, :cond_9

    .line 184
    .line 185
    move v10, v13

    .line 186
    goto :goto_9

    .line 187
    :cond_9
    move v10, v12

    .line 188
    :goto_9
    or-int/2addr v6, v10

    .line 189
    and-int/lit8 v10, v1, 0xe

    .line 190
    .line 191
    if-ne v10, v2, :cond_a

    .line 192
    .line 193
    move v2, v13

    .line 194
    goto :goto_a

    .line 195
    :cond_a
    move v2, v12

    .line 196
    :goto_a
    or-int/2addr v2, v6

    .line 197
    and-int/lit16 v1, v1, 0x380

    .line 198
    .line 199
    if-ne v1, v8, :cond_b

    .line 200
    .line 201
    goto :goto_b

    .line 202
    :cond_b
    move v13, v12

    .line 203
    :goto_b
    or-int v1, v2, v13

    .line 204
    .line 205
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    if-nez v1, :cond_c

    .line 210
    .line 211
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 212
    .line 213
    if-ne v2, v1, :cond_d

    .line 214
    .line 215
    :cond_c
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;

    .line 216
    .line 217
    move v6, v7

    .line 218
    move-object v7, v5

    .line 219
    move v5, v6

    .line 220
    move-object/from16 v6, p0

    .line 221
    .line 222
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    invoke-static {v12, v0, v9, v2}, Lokhttp3/Handshake$Companion;->SettingList(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 231
    .line 232
    .line 233
    move-object v7, v11

    .line 234
    goto :goto_c

    .line 235
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    move-object/from16 v7, p4

    .line 239
    .line 240
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_f

    .line 245
    .line 246
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 247
    .line 248
    move-object/from16 v3, p0

    .line 249
    .line 250
    move-object/from16 v4, p1

    .line 251
    .line 252
    move-object/from16 v5, p2

    .line 253
    .line 254
    move/from16 v6, p3

    .line 255
    .line 256
    move/from16 v8, p6

    .line 257
    .line 258
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;I)V

    .line 259
    .line 260
    .line 261
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 262
    .line 263
    :cond_f
    return-void
.end method

.method public static final ActionTextItem(Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v5, p2

    .line 5
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p2, -0x13cf29bc

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 p2, p3, 0x6

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    and-int/lit8 p2, p3, 0x8

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const/4 p2, 0x4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p2, 0x2

    .line 35
    :goto_1
    or-int/2addr p2, p3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move p2, p3

    .line 38
    :goto_2
    and-int/lit8 v0, p3, 0x30

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/16 v0, 0x20

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/16 v0, 0x10

    .line 52
    .line 53
    :goto_3
    or-int/2addr p2, v0

    .line 54
    :cond_4
    and-int/lit8 v0, p2, 0x13

    .line 55
    .line 56
    const/16 v1, 0x12

    .line 57
    .line 58
    if-eq v0, v1, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_4

    .line 62
    :cond_5
    const/4 v0, 0x0

    .line 63
    :goto_4
    and-int/lit8 v1, p2, 0x1

    .line 64
    .line 65
    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;->onClick:Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;->icon:Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 80
    .line 81
    new-instance v2, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v3, 0xa

    .line 84
    .line 85
    invoke-direct {v2, v3, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const v3, 0x27b32a36

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v2, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    shl-int/lit8 p2, p2, 0x3

    .line 96
    .line 97
    and-int/lit16 p2, p2, 0x380

    .line 98
    .line 99
    or-int/lit16 v6, p2, 0x6000

    .line 100
    .line 101
    const/16 v7, 0x8

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    move-object v2, p1

    .line 105
    invoke-static/range {v0 .. v7}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 106
    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_6
    move-object v2, p1

    .line 110
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    new-instance p2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/16 v0, 0xf

    .line 122
    .line 123
    invoke-direct {p2, p3, v0, p0, v2}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    :cond_7
    return-void
.end method

.method public static final AdvancedFetchingMailSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Landroidx/compose/runtime/Composer;I)V
    .locals 18

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
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v8, p5

    .line 12
    .line 13
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x922ac9b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int v0, p6, v0

    .line 31
    .line 32
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/16 v4, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v4, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v4

    .line 44
    or-int/lit16 v0, v0, 0x2480

    .line 45
    .line 46
    and-int/lit16 v4, v0, 0x2493

    .line 47
    .line 48
    const/16 v5, 0x2492

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    const/4 v7, 0x0

    .line 52
    if-eq v4, v5, :cond_2

    .line 53
    .line 54
    move v4, v6

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v4, v7

    .line 57
    :goto_2
    and-int/lit8 v5, v0, 0x1

    .line 58
    .line 59
    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_10

    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 66
    .line 67
    .line 68
    and-int/lit8 v4, p6, 0x1

    .line 69
    .line 70
    const v5, -0xff81

    .line 71
    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    and-int/2addr v0, v5

    .line 89
    move-object/from16 v5, p3

    .line 90
    .line 91
    move-object/from16 v12, p4

    .line 92
    .line 93
    move v4, v0

    .line 94
    move-object/from16 v0, p2

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_4
    :goto_3
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    if-ne v11, v10, :cond_6

    .line 109
    .line 110
    :cond_5
    new-instance v11, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 v4, 0x6

    .line 113
    invoke-direct {v11, v1, v4}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    move-object/from16 v17, v11

    .line 120
    .line 121
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_f

    .line 128
    .line 129
    invoke-static {v4}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    invoke-static {v8}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 134
    .line 135
    .line 136
    move-result-object v16

    .line 137
    const-class v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 138
    .line 139
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    const/4 v15, 0x0

    .line 148
    invoke-static/range {v12 .. v17}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 153
    .line 154
    invoke-static {v8}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    or-int/2addr v12, v13

    .line 167
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    if-nez v12, :cond_7

    .line 172
    .line 173
    if-ne v13, v10, :cond_8

    .line 174
    .line 175
    :cond_7
    const-class v12, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 176
    .line 177
    invoke-static {v12, v11, v9, v9, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    :cond_8
    move-object v11, v13

    .line 182
    check-cast v11, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 183
    .line 184
    invoke-static {v8}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    or-int/2addr v13, v14

    .line 197
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    if-nez v13, :cond_9

    .line 202
    .line 203
    if-ne v14, v10, :cond_a

    .line 204
    .line 205
    :cond_9
    const-class v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 206
    .line 207
    invoke-static {v13, v12, v9, v9, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    :cond_a
    move-object v12, v14

    .line 212
    check-cast v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;

    .line 213
    .line 214
    and-int/2addr v0, v5

    .line 215
    move-object v5, v4

    .line 216
    move v4, v0

    .line 217
    move-object v0, v5

    .line 218
    move-object v5, v11

    .line 219
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 220
    .line 221
    .line 222
    iget-object v11, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 223
    .line 224
    invoke-static {v11, v8}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    if-nez v13, :cond_b

    .line 237
    .line 238
    if-ne v14, v10, :cond_c

    .line 239
    .line 240
    :cond_b
    new-instance v14, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;

    .line 241
    .line 242
    invoke-direct {v14, v0, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_c
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    iget-object v13, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 251
    .line 252
    new-instance v15, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 253
    .line 254
    const/16 v3, 0x1a

    .line 255
    .line 256
    invoke-direct {v15, v0, v9, v2, v3}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 257
    .line 258
    .line 259
    invoke-static {v8, v13, v15}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    and-int/lit8 v3, v4, 0x70

    .line 269
    .line 270
    invoke-static {v7, v2, v8, v3, v6}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 278
    .line 279
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    if-nez v4, :cond_d

    .line 288
    .line 289
    if-ne v6, v10, :cond_e

    .line 290
    .line 291
    :cond_d
    new-instance v6, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 292
    .line 293
    const/4 v4, 0x4

    .line 294
    invoke-direct {v6, v4, v14}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_e
    move-object v4, v6

    .line 301
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    const/4 v9, 0x0

    .line 305
    move-object v6, v12

    .line 306
    invoke-static/range {v3 .. v9}, Lkotlin/io/ByteStreamsKt;->AdvancedFetchingMailSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 307
    .line 308
    .line 309
    move-object v3, v0

    .line 310
    move-object v4, v5

    .line 311
    move-object v5, v6

    .line 312
    goto :goto_5

    .line 313
    :cond_f
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 314
    .line 315
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 320
    .line 321
    .line 322
    move-object/from16 v3, p2

    .line 323
    .line 324
    move-object/from16 v4, p3

    .line 325
    .line 326
    move-object/from16 v5, p4

    .line 327
    .line 328
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    if-eqz v8, :cond_11

    .line 333
    .line 334
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 335
    .line 336
    const/16 v7, 0x10

    .line 337
    .line 338
    move/from16 v6, p6

    .line 339
    .line 340
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 344
    .line 345
    :cond_11
    return-void
.end method

.method public static final MainTheme(Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v5, 0x263b8a5e

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v5, v3, 0x6

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x2

    .line 32
    :goto_0
    or-int/2addr v5, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v5, v3

    .line 35
    :goto_1
    and-int/lit8 v8, v3, 0x30

    .line 36
    .line 37
    if-nez v8, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_2

    .line 44
    .line 45
    const/16 v8, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v8, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v5, v8

    .line 51
    :cond_3
    and-int/lit16 v8, v3, 0x180

    .line 52
    .line 53
    if-nez v8, :cond_5

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    const/16 v8, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v8, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v5, v8

    .line 67
    :cond_5
    and-int/lit16 v8, v5, 0x93

    .line 68
    .line 69
    const/16 v9, 0x92

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x1

    .line 73
    if-eq v8, v9, :cond_6

    .line 74
    .line 75
    move v8, v11

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    move v8, v10

    .line 78
    :goto_4
    and-int/2addr v5, v11

    .line 79
    invoke-virtual {v4, v5, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_b

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 86
    .line 87
    .line 88
    and-int/lit8 v5, v3, 0x1

    .line 89
    .line 90
    if-eqz v5, :cond_8

    .line 91
    .line 92
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 100
    .line 101
    .line 102
    :cond_8
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 103
    .line 104
    .line 105
    iget-object v5, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 106
    .line 107
    if-eqz v1, :cond_9

    .line 108
    .line 109
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;->dark:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;->light:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 113
    .line 114
    :goto_6
    iget-object v8, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 115
    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    iget-object v8, v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;->dark:Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_a
    iget-object v8, v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;->light:Lnet/thunderbird/core/ui/compose/theme2/ThemeImages;

    .line 122
    .line 123
    :goto_7
    sget-object v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    sget-object v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    sget-object v13, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeElevations:Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 132
    .line 133
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    sget-object v13, Lnet/thunderbird/core/ui/compose/theme2/ThemeImagesKt;->LocalThemeImages:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 138
    .line 139
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    sget-object v13, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 144
    .line 145
    iget-object v14, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 146
    .line 147
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    sget-object v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 152
    .line 153
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSizes:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 154
    .line 155
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    .line 161
    const/16 p3, 0x4

    .line 162
    .line 163
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSpacings:Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 164
    .line 165
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    const/16 v16, 0x2

    .line 172
    .line 173
    iget-object v7, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 174
    .line 175
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    const/4 v15, 0x7

    .line 180
    new-array v15, v15, [Landroidx/compose/runtime/ProvidedValue;

    .line 181
    .line 182
    aput-object v9, v15, v10

    .line 183
    .line 184
    aput-object v12, v15, v11

    .line 185
    .line 186
    aput-object v8, v15, v16

    .line 187
    .line 188
    const/4 v8, 0x3

    .line 189
    aput-object v13, v15, v8

    .line 190
    .line 191
    aput-object v14, v15, p3

    .line 192
    .line 193
    const/4 v8, 0x5

    .line 194
    aput-object v6, v15, v8

    .line 195
    .line 196
    const/4 v6, 0x6

    .line 197
    aput-object v7, v15, v6

    .line 198
    .line 199
    new-instance v6, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 200
    .line 201
    const/16 v7, 0x15

    .line 202
    .line 203
    invoke-direct {v6, v7, v2, v5, v0}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const v5, 0x40a2af1e

    .line 207
    .line 208
    .line 209
    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    const/16 v6, 0x30

    .line 214
    .line 215
    invoke-static {v15, v5, v4, v6}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 220
    .line 221
    .line 222
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    if-eqz v4, :cond_c

    .line 227
    .line 228
    new-instance v5, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;

    .line 229
    .line 230
    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 231
    .line 232
    .line 233
    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 234
    .line 235
    :cond_c
    return-void
.end method

.method public static final MessageListFooter(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v6, p3

    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p3, 0x22d7c548

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 p3, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p3, 0x2

    .line 22
    :goto_0
    or-int/2addr p3, p4

    .line 23
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v0, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr p3, v0

    .line 36
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x100

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v0, 0x80

    .line 46
    .line 47
    :goto_2
    or-int/2addr p3, v0

    .line 48
    and-int/lit16 v0, p3, 0x93

    .line 49
    .line 50
    const/16 v2, 0x92

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v9, 0x1

    .line 54
    if-eq v0, v2, :cond_3

    .line 55
    .line 56
    move v0, v9

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v0, v3

    .line 59
    :goto_3
    and-int/lit8 v2, p3, 0x1

    .line 60
    .line 61
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 68
    .line 69
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/high16 v2, 0x42800000    # 64.0f

    .line 74
    .line 75
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 80
    .line 81
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-wide v4, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 86
    .line 87
    ushr-long v7, v4, v1

    .line 88
    .line 89
    xor-long/2addr v4, v7

    .line 90
    long-to-int v4, v4

    .line 91
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v6, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 105
    .line 106
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 107
    .line 108
    .line 109
    iget-boolean v8, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 110
    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 118
    .line 119
    .line 120
    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {v6, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 126
    .line 127
    invoke-static {v6, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v6, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 140
    .line 141
    invoke-static {v6, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 142
    .line 143
    .line 144
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 145
    .line 146
    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 154
    .line 155
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;->text:Ljava/lang/String;

    .line 156
    .line 157
    and-int/lit8 p3, p3, 0x70

    .line 158
    .line 159
    if-ne p3, v1, :cond_5

    .line 160
    .line 161
    move v3, v9

    .line 162
    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    if-nez v3, :cond_6

    .line 167
    .line 168
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 169
    .line 170
    if-ne p3, v1, :cond_7

    .line 171
    .line 172
    :cond_6
    new-instance p3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 173
    .line 174
    const/4 v1, 0x5

    .line 175
    invoke-direct {p3, v1, p1}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    move-object v1, p3

    .line 182
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 183
    .line 184
    const/4 v7, 0x0

    .line 185
    const/16 v8, 0x3c

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    const/4 v3, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    invoke-static/range {v0 .. v8}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 199
    .line 200
    .line 201
    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    if-eqz p3, :cond_9

    .line 206
    .line 207
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 208
    .line 209
    const/16 v5, 0x19

    .line 210
    .line 211
    move-object v1, p0

    .line 212
    move-object v2, p1

    .line 213
    move-object v3, p2

    .line 214
    move v4, p4

    .line 215
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 216
    .line 217
    .line 218
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 219
    .line 220
    :cond_9
    return-void
.end method

.method public static final NewMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-object/from16 v4, p8

    .line 24
    .line 25
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    const v2, -0x562fc602

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v2, v9, 0x6

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v2, v9

    .line 49
    :goto_1
    and-int/lit8 v5, v9, 0x30

    .line 50
    .line 51
    if-nez v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v5, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v2, v5

    .line 65
    :cond_3
    and-int/lit16 v5, v9, 0x180

    .line 66
    .line 67
    if-nez v5, :cond_6

    .line 68
    .line 69
    and-int/lit16 v5, v9, 0x200

    .line 70
    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    :goto_3
    if-eqz v5, :cond_5

    .line 83
    .line 84
    const/16 v5, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/16 v5, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v2, v5

    .line 90
    :cond_6
    and-int/lit16 v5, v9, 0xc00

    .line 91
    .line 92
    move-object/from16 v8, p3

    .line 93
    .line 94
    if-nez v5, :cond_8

    .line 95
    .line 96
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_7

    .line 101
    .line 102
    const/16 v5, 0x800

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    const/16 v5, 0x400

    .line 106
    .line 107
    :goto_5
    or-int/2addr v2, v5

    .line 108
    :cond_8
    and-int/lit16 v5, v9, 0x6000

    .line 109
    .line 110
    move-object/from16 v10, p4

    .line 111
    .line 112
    if-nez v5, :cond_a

    .line 113
    .line 114
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_9

    .line 119
    .line 120
    const/16 v5, 0x4000

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_9
    const/16 v5, 0x2000

    .line 124
    .line 125
    :goto_6
    or-int/2addr v2, v5

    .line 126
    :cond_a
    const/high16 v5, 0x30000

    .line 127
    .line 128
    and-int/2addr v5, v9

    .line 129
    move-object/from16 v11, p5

    .line 130
    .line 131
    if-nez v5, :cond_c

    .line 132
    .line 133
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_b

    .line 138
    .line 139
    const/high16 v5, 0x20000

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_b
    const/high16 v5, 0x10000

    .line 143
    .line 144
    :goto_7
    or-int/2addr v2, v5

    .line 145
    :cond_c
    const/high16 v5, 0x180000

    .line 146
    .line 147
    and-int/2addr v5, v9

    .line 148
    if-nez v5, :cond_e

    .line 149
    .line 150
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_d

    .line 155
    .line 156
    const/high16 v5, 0x100000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_d
    const/high16 v5, 0x80000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v2, v5

    .line 162
    :cond_e
    const/high16 v5, 0xc00000

    .line 163
    .line 164
    and-int/2addr v5, v9

    .line 165
    move-object/from16 v15, p7

    .line 166
    .line 167
    if-nez v5, :cond_10

    .line 168
    .line 169
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_f

    .line 174
    .line 175
    const/high16 v5, 0x800000

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_f
    const/high16 v5, 0x400000

    .line 179
    .line 180
    :goto_9
    or-int/2addr v2, v5

    .line 181
    :cond_10
    move v13, v2

    .line 182
    const v2, 0x492493

    .line 183
    .line 184
    .line 185
    and-int/2addr v2, v13

    .line 186
    const v5, 0x492492

    .line 187
    .line 188
    .line 189
    const/16 v16, 0x1

    .line 190
    .line 191
    if-eq v2, v5, :cond_11

    .line 192
    .line 193
    move/from16 v2, v16

    .line 194
    .line 195
    goto :goto_a

    .line 196
    :cond_11
    const/4 v2, 0x0

    .line 197
    :goto_a
    and-int/lit8 v5, v13, 0x1

    .line 198
    .line 199
    invoke-virtual {v4, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_18

    .line 204
    .line 205
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 206
    .line 207
    move/from16 v17, v13

    .line 208
    .line 209
    iget-object v13, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 210
    .line 211
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v18

    .line 217
    move-object/from16 v12, v18

    .line 218
    .line 219
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 220
    .line 221
    iget-wide v6, v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 228
    .line 229
    iget-wide v14, v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onPrimary:J

    .line 230
    .line 231
    new-instance v18, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;

    .line 232
    .line 233
    const/16 v23, 0x0

    .line 234
    .line 235
    move-wide/from16 v19, v6

    .line 236
    .line 237
    move-wide/from16 v21, v14

    .line 238
    .line 239
    invoke-direct/range {v18 .. v23}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;-><init>(JJLandroidx/compose/ui/graphics/Color;)V

    .line 240
    .line 241
    .line 242
    and-int/lit8 v6, v17, 0x70

    .line 243
    .line 244
    and-int/lit8 v7, v17, 0x7e

    .line 245
    .line 246
    shl-int/lit8 v12, v17, 0x3

    .line 247
    .line 248
    and-int/lit16 v12, v12, 0x1c00

    .line 249
    .line 250
    or-int/2addr v7, v12

    .line 251
    move v12, v7

    .line 252
    move-object v7, v5

    .line 253
    move v5, v12

    .line 254
    move-object v12, v2

    .line 255
    move-object/from16 v2, v18

    .line 256
    .line 257
    invoke-static/range {v0 .. v5}, Lokio/Okio;->rememberMessageItemConfiguration(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Landroidx/compose/runtime/Composer;I)Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 262
    .line 263
    if-eqz v2, :cond_12

    .line 264
    .line 265
    const v3, 0x76aa9d59    # 1.730238E33f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 276
    .line 277
    move v5, v2

    .line 278
    iget-wide v2, v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 279
    .line 280
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 285
    .line 286
    iget-wide v7, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 287
    .line 288
    new-instance v15, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 289
    .line 290
    invoke-direct {v15, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 291
    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 295
    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_12
    move v5, v2

    .line 299
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 300
    .line 301
    if-eqz v2, :cond_13

    .line 302
    .line 303
    const v2, 0x76aaa6d7

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 314
    .line 315
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->infoContainer:J

    .line 316
    .line 317
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 322
    .line 323
    iget-wide v7, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 324
    .line 325
    new-instance v15, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 326
    .line 327
    invoke-direct {v15, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 332
    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_13
    const v2, 0x76aaaf14

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 346
    .line 347
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLowest:J

    .line 348
    .line 349
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 354
    .line 355
    iget-wide v7, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 356
    .line 357
    new-instance v15, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 358
    .line 359
    invoke-direct {v15, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 360
    .line 361
    .line 362
    const/4 v2, 0x0

    .line 363
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 364
    .line 365
    .line 366
    :goto_b
    iget-object v3, v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 367
    .line 368
    invoke-static {v3, v4}, Lokio/Options$Companion;->toContentPadding$api(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 369
    .line 370
    .line 371
    move-result-object v18

    .line 372
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;

    .line 373
    .line 374
    invoke-direct {v3, v0, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 375
    .line 376
    .line 377
    const v7, 0x29ab80cf

    .line 378
    .line 379
    .line 380
    invoke-static {v7, v3, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;

    .line 385
    .line 386
    invoke-direct {v7, v0, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 387
    .line 388
    .line 389
    const v2, -0x65e3628d

    .line 390
    .line 391
    .line 392
    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    const/16 v7, 0x20

    .line 397
    .line 398
    if-ne v6, v7, :cond_14

    .line 399
    .line 400
    move/from16 v6, v16

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_14
    const/4 v6, 0x0

    .line 404
    :goto_c
    const/high16 v7, 0x380000

    .line 405
    .line 406
    and-int v7, v17, v7

    .line 407
    .line 408
    const/high16 v8, 0x100000

    .line 409
    .line 410
    if-ne v7, v8, :cond_15

    .line 411
    .line 412
    goto :goto_d

    .line 413
    :cond_15
    const/16 v16, 0x0

    .line 414
    .line 415
    :goto_d
    or-int v6, v6, v16

    .line 416
    .line 417
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    if-nez v6, :cond_17

    .line 422
    .line 423
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 424
    .line 425
    if-ne v7, v6, :cond_16

    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_16
    move-object/from16 v6, p6

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_17
    :goto_e
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;

    .line 432
    .line 433
    move-object/from16 v6, p6

    .line 434
    .line 435
    const/4 v8, 0x0

    .line 436
    invoke-direct {v7, v1, v6, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :goto_f
    move-object/from16 v22, v7

    .line 443
    .line 444
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 445
    .line 446
    const/high16 v7, 0x70000

    .line 447
    .line 448
    shr-int/lit8 v8, v17, 0x6

    .line 449
    .line 450
    and-int/2addr v7, v8

    .line 451
    const/16 v8, 0x36

    .line 452
    .line 453
    or-int/2addr v7, v8

    .line 454
    shl-int/lit8 v8, v17, 0x12

    .line 455
    .line 456
    const/high16 v16, 0x70000000

    .line 457
    .line 458
    and-int v8, v8, v16

    .line 459
    .line 460
    or-int v24, v7, v8

    .line 461
    .line 462
    shr-int/lit8 v7, v17, 0xc

    .line 463
    .line 464
    and-int/lit8 v25, v7, 0x7e

    .line 465
    .line 466
    move-object/from16 v19, p3

    .line 467
    .line 468
    move-object/from16 v23, v4

    .line 469
    .line 470
    move/from16 v17, v5

    .line 471
    .line 472
    move-object/from16 v20, v10

    .line 473
    .line 474
    move-object/from16 v21, v11

    .line 475
    .line 476
    move-object/from16 v16, v15

    .line 477
    .line 478
    move-object/from16 v15, p7

    .line 479
    .line 480
    move-object v11, v2

    .line 481
    move-object v10, v3

    .line 482
    invoke-static/range {v10 .. v25}, Lkotlin/io/ByteStreamsKt;->MessageItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 483
    .line 484
    .line 485
    goto :goto_10

    .line 486
    :cond_18
    move-object v6, v7

    .line 487
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 488
    .line 489
    .line 490
    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    if-eqz v10, :cond_19

    .line 495
    .line 496
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;

    .line 497
    .line 498
    move-object/from16 v3, p2

    .line 499
    .line 500
    move-object/from16 v4, p3

    .line 501
    .line 502
    move-object/from16 v5, p4

    .line 503
    .line 504
    move-object/from16 v8, p7

    .line 505
    .line 506
    move-object v2, v1

    .line 507
    move-object v7, v6

    .line 508
    move-object/from16 v1, p0

    .line 509
    .line 510
    move-object/from16 v6, p5

    .line 511
    .line 512
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 513
    .line 514
    .line 515
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 516
    .line 517
    :cond_19
    return-void
.end method

.method public static final ThundermailButtonPanel(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Landroidx/compose/runtime/Composer;I)V
    .locals 23

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v11, p4

    .line 14
    .line 15
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x5372765e

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int v0, p5, v0

    .line 33
    .line 34
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v14, 0x20

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move v4, v14

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v4

    .line 47
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const/16 v4, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v4, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v4

    .line 59
    or-int/lit16 v0, v0, 0x400

    .line 60
    .line 61
    and-int/lit16 v4, v0, 0x493

    .line 62
    .line 63
    const/16 v5, 0x492

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    if-eq v4, v5, :cond_3

    .line 67
    .line 68
    move v4, v6

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 v4, 0x0

    .line 71
    :goto_3
    and-int/2addr v0, v6

    .line 72
    invoke-virtual {v11, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_b

    .line 77
    .line 78
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 79
    .line 80
    .line 81
    and-int/lit8 v0, p5, 0x1

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    .line 94
    .line 95
    move-object/from16 v0, p3

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_5
    :goto_4
    invoke-static {v11}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    or-int/2addr v5, v7

    .line 112
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-nez v5, :cond_6

    .line 117
    .line 118
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 119
    .line 120
    if-ne v7, v5, :cond_7

    .line 121
    .line 122
    :cond_6
    const-class v5, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 123
    .line 124
    invoke-static {v5, v0, v4, v4, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :cond_7
    move-object v0, v7

    .line 129
    check-cast v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 130
    .line 131
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 132
    .line 133
    .line 134
    const-string v4, "thundermail_onboarding_enabled"

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-interface {v4}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_a

    .line 145
    .line 146
    const v4, 0x2ae92fc2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 150
    .line 151
    .line 152
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 153
    .line 154
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 164
    .line 165
    new-instance v7, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/4 v8, 0x7

    .line 168
    invoke-direct {v7, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 169
    .line 170
    .line 171
    const/high16 v9, 0x42000000    # 32.0f

    .line 172
    .line 173
    invoke-direct {v5, v9, v6, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 174
    .line 175
    .line 176
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 177
    .line 178
    const/16 v9, 0x30

    .line 179
    .line 180
    invoke-static {v5, v7, v11, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 185
    .line 186
    ushr-long v16, v12, v14

    .line 187
    .line 188
    xor-long v12, v12, v16

    .line 189
    .line 190
    long-to-int v7, v12

    .line 191
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-static {v11, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 200
    .line 201
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 205
    .line 206
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 207
    .line 208
    .line 209
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 210
    .line 211
    if-eqz v9, :cond_8

    .line 212
    .line 213
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 218
    .line 219
    .line 220
    :goto_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 221
    .line 222
    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 223
    .line 224
    .line 225
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 226
    .line 227
    invoke-static {v11, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 235
    .line 236
    invoke-static {v11, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 237
    .line 238
    .line 239
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 240
    .line 241
    invoke-static {v11, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 242
    .line 243
    .line 244
    move/from16 p4, v14

    .line 245
    .line 246
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    invoke-static {v11, v12, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    move-object v12, v5

    .line 252
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 253
    .line 254
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v16

    .line 258
    check-cast v16, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 259
    .line 260
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v15, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 264
    .line 265
    new-instance v6, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 266
    .line 267
    invoke-direct {v6, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 268
    .line 269
    .line 270
    const/high16 v8, 0x41000000    # 8.0f

    .line 271
    .line 272
    move-object/from16 v18, v0

    .line 273
    .line 274
    const/4 v0, 0x1

    .line 275
    invoke-direct {v15, v8, v0, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 276
    .line 277
    .line 278
    new-instance v6, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;

    .line 279
    .line 280
    const/4 v8, 0x0

    .line 281
    invoke-direct {v6, v1, v2, v8}, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 282
    .line 283
    .line 284
    const v8, 0x7af09fec

    .line 285
    .line 286
    .line 287
    invoke-static {v8, v6, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    move-object v8, v12

    .line 292
    const v12, 0x180030

    .line 293
    .line 294
    .line 295
    move-object/from16 v17, v13

    .line 296
    .line 297
    const/16 v13, 0x39

    .line 298
    .line 299
    move-object/from16 v19, v4

    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    move-object/from16 v20, v7

    .line 303
    .line 304
    const/4 v7, 0x0

    .line 305
    move-object/from16 v21, v8

    .line 306
    .line 307
    const/4 v8, 0x0

    .line 308
    move-object/from16 v22, v9

    .line 309
    .line 310
    const/4 v9, 0x0

    .line 311
    move-object/from16 p3, v10

    .line 312
    .line 313
    move-object v10, v6

    .line 314
    move-object v6, v15

    .line 315
    move-object/from16 v15, v17

    .line 316
    .line 317
    move-object/from16 v17, p3

    .line 318
    .line 319
    move-object/from16 p3, v14

    .line 320
    .line 321
    move-object/from16 v0, v19

    .line 322
    .line 323
    move-object/from16 v14, v20

    .line 324
    .line 325
    move-object/from16 v2, v21

    .line 326
    .line 327
    move-object/from16 v1, v22

    .line 328
    .line 329
    const/4 v3, 0x7

    .line 330
    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 343
    .line 344
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 345
    .line 346
    invoke-direct {v4, v3}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 347
    .line 348
    .line 349
    const/high16 v3, 0x40000000    # 2.0f

    .line 350
    .line 351
    const/4 v12, 0x1

    .line 352
    invoke-direct {v0, v3, v12, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 353
    .line 354
    .line 355
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 356
    .line 357
    const/16 v4, 0x30

    .line 358
    .line 359
    invoke-static {v0, v3, v11, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-wide v3, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 364
    .line 365
    ushr-long v5, v3, p4

    .line 366
    .line 367
    xor-long/2addr v3, v5

    .line 368
    long-to-int v3, v3

    .line 369
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 374
    .line 375
    invoke-static {v11, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 380
    .line 381
    .line 382
    iget-boolean v6, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 383
    .line 384
    if-eqz v6, :cond_9

    .line 385
    .line 386
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 391
    .line 392
    .line 393
    :goto_7
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v11, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v0, v17

    .line 400
    .line 401
    invoke-static {v3, v11, v0, v11, v14}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 402
    .line 403
    .line 404
    move-object/from16 v0, p3

    .line 405
    .line 406
    invoke-static {v11, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 410
    .line 411
    const/high16 v1, 0x3f800000    # 1.0f

    .line 412
    .line 413
    invoke-virtual {v0, v13, v1}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    const/4 v9, 0x0

    .line 418
    const/4 v10, 0x6

    .line 419
    const/4 v5, 0x0

    .line 420
    const-wide/16 v6, 0x0

    .line 421
    .line 422
    move-object v8, v11

    .line 423
    invoke-static/range {v4 .. v10}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 424
    .line 425
    .line 426
    const v2, 0x7f1202d9

    .line 427
    .line 428
    .line 429
    invoke-static {v11, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    const/high16 v2, 0x3e800000    # 0.25f

    .line 434
    .line 435
    invoke-virtual {v0, v13, v2}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    new-instance v8, Landroidx/compose/ui/text/style/TextAlign;

    .line 440
    .line 441
    const/4 v2, 0x3

    .line 442
    invoke-direct {v8, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 443
    .line 444
    .line 445
    move/from16 v17, v12

    .line 446
    .line 447
    const/4 v12, 0x0

    .line 448
    move-object v2, v13

    .line 449
    const/16 v13, 0x34

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    move/from16 v3, v17

    .line 453
    .line 454
    invoke-static/range {v4 .. v13}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    const/4 v10, 0x6

    .line 462
    const/4 v5, 0x0

    .line 463
    move-object v8, v11

    .line 464
    invoke-static/range {v4 .. v10}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 471
    .line 472
    .line 473
    const/4 v8, 0x0

    .line 474
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 475
    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_a
    move-object/from16 v18, v0

    .line 479
    .line 480
    const/4 v8, 0x0

    .line 481
    const v0, 0x2b0c59a0

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 488
    .line 489
    .line 490
    :goto_8
    move-object/from16 v4, v18

    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 494
    .line 495
    .line 496
    move-object/from16 v4, p3

    .line 497
    .line 498
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    if-eqz v7, :cond_c

    .line 503
    .line 504
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 505
    .line 506
    const/16 v6, 0x18

    .line 507
    .line 508
    move-object/from16 v1, p0

    .line 509
    .line 510
    move-object/from16 v2, p1

    .line 511
    .line 512
    move-object/from16 v3, p2

    .line 513
    .line 514
    move/from16 v5, p5

    .line 515
    .line 516
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 517
    .line 518
    .line 519
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 520
    .line 521
    :cond_c
    return-void
.end method

.method public static addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTlocal_part;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 17
    .line 18
    aget-object p1, p1, v1

    .line 19
    .line 20
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, v2, p0, v0, p1}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public static buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/ASTroute;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTroute;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    :goto_0
    const/4 v5, 0x1

    .line 30
    if-ge v1, v4, :cond_1

    .line 31
    .line 32
    add-int/lit8 v6, v1, 0x1

    .line 33
    .line 34
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 35
    .line 36
    aget-object v1, v7, v1

    .line 37
    .line 38
    instance-of v7, v1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    .line 43
    .line 44
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move v1, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p0, "Address \"domain\" is expected but got \""

    .line 54
    .line 55
    invoke-static {v1, p0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 65
    .line 66
    aget-object p0, p0, v5

    .line 67
    .line 68
    move-object v8, v0

    .line 69
    move-object v0, p0

    .line 70
    move-object p0, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    instance-of p0, v0, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 73
    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    move-object p0, v3

    .line 77
    :goto_1
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 82
    .line 83
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_3
    const-string p0, "Address \"addr_spec\" is expected but got \""

    .line 89
    .line 90
    invoke-static {v0, p0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_4
    const-string p0, "Address \"route\" or \"addr_spec\" is expected but got \""

    .line 95
    .line 96
    invoke-static {v0, p0}, Lorg/apache/hc/core5/util/Tokenizer$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v3
.end method

.method public static buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    if-eq v0, p0, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final checkElementIndex$kotlinx_collections_immutable(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final checkPositionIndex$kotlinx_collections_immutable(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final checkRangeIndexes$kotlinx_collections_immutable(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", toIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p1, p0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static get$default(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "KoinApplication has not been started"

    .line 20
    .line 21
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public static final serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlinx/serialization/internal/TuplesKt;->kclass(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Lkotlinx/serialization/internal/KTypeWrapper;

    .line 6
    .line 7
    invoke-virtual {p1}, Lkotlinx/serialization/internal/KTypeWrapper;->isMarkedNullable()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lkotlinx/serialization/internal/KTypeWrapper;->getArguments()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_f

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v0, v3}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    :cond_0
    :goto_0
    move-object p1, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    .line 77
    .line 78
    invoke-interface {p1, v0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    iget-boolean p1, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->hasInterfaceContextualSerializers:Z

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    .line 89
    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    .line 93
    .line 94
    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    .line 100
    .line 101
    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    instance-of v5, p1, Lkotlin/Result$Failure;

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    move-object p1, v4

    .line 110
    :cond_6
    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 111
    .line 112
    :goto_2
    if-eqz p1, :cond_7

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_c

    .line 126
    .line 127
    invoke-virtual {p0, v0, v3}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-nez p1, :cond_c

    .line 132
    .line 133
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_8

    .line 142
    .line 143
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 144
    .line 145
    invoke-direct {p0, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    move-object p1, p0

    .line 149
    goto :goto_4

    .line 150
    :cond_8
    move-object p1, v4

    .line 151
    goto :goto_4

    .line 152
    :cond_9
    invoke-static {p0, v2, p2}, Lkotlin/io/ByteStreamsKt;->serializersForParameters(Lkotlinx/serialization/modules/SerialModuleImpl;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-nez p1, :cond_a

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_a
    new-instance p2, Lcom/fsck/k9/backend/imap/CommandRefreshFolderList$$ExternalSyntheticLambda1;

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    invoke-direct {p2, v3, v2}, Lcom/fsck/k9/backend/imap/CommandRefreshFolderList$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0, p1, p2}, Lkotlin/io/ByteStreamsKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-nez p2, :cond_b

    .line 170
    .line 171
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-nez p1, :cond_c

    .line 176
    .line 177
    invoke-static {v0}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_8

    .line 186
    .line 187
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 188
    .line 189
    invoke-direct {p0, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_b
    move-object p1, p2

    .line 194
    :cond_c
    :goto_4
    if-eqz p1, :cond_e

    .line 195
    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    invoke-static {p1}, Lokhttp3/CacheControl$Companion;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :cond_d
    return-object p1

    .line 204
    :cond_e
    :goto_5
    return-object v4

    .line 205
    :cond_f
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    throw p0
.end method

.method public static final setupThemeMode(Lcom/fsck/k9/view/MessageWebView;Z)V
    .locals 3

    .line 1
    const-string v0, "ALGORITHMIC_DARKENING"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->isFeatureSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/WebViewFeatureInternal$1;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal$1;->isSupportedByWebView()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->INSTANCE:Landroidx/work/Configuration$Builder;

    .line 22
    .line 23
    new-instance v1, Landroidx/fragment/app/Fragment$7;

    .line 24
    .line 25
    const-class v2, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 30
    .line 31
    invoke-interface {v0, p0}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSettings(Landroid/webkit/WebSettings;)Ljava/lang/reflect/InvocationHandler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Landroidx/fragment/app/Fragment$7;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v2, 0x1e

    .line 49
    .line 50
    if-ne v1, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v1, "android.webkit.WebSettingsWrapper"

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    const-string p0, "WebSettingsCompat"

    .line 69
    .line 70
    const-string v1, "Error converting WebSettings to Chrome implementation. All AndroidX method calls on this WebSettings instance will be no-op calls. See https://crbug.com/388824130 for more info."

    .line 71
    .line 72
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroidx/webkit/internal/WebSettingsNoOpAdapter;

    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$7;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment$7;->setAlgorithmicDarkeningAllowed(Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    throw v0

    .line 86
    :cond_1
    const-string p0, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 87
    .line 88
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method
