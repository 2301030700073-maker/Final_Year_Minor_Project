.class public abstract Lokhttp3/Handshake$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AccountContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v8, p3

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p3, 0x668a45fb

    .line 5
    .line 6
    .line 7
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    const/4 p3, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p3, 0x2

    .line 19
    :goto_0
    or-int/2addr p3, p4

    .line 20
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p3, v0

    .line 32
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v0, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr p3, v0

    .line 44
    and-int/lit16 v0, p3, 0x93

    .line 45
    .line 46
    const/16 v1, 0x92

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    move v0, v2

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_3
    and-int/2addr p3, v2

    .line 55
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    sget-object p3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    check-cast p3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 68
    .line 69
    iget-wide v2, p3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLow:J

    .line 70
    .line 71
    new-instance p3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;

    .line 72
    .line 73
    invoke-direct {p3, p0, p2, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    const v0, -0x645ebe42

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p3, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/high16 v9, 0x30000

    .line 84
    .line 85
    const/16 v10, 0x1b

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    const-wide/16 v4, 0x0

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    if-eqz p3, :cond_5

    .line 104
    .line 105
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1, p2, p4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;I)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 111
    .line 112
    :cond_5
    return-void
.end method

.method public static final AvatarImageSelection(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v5, p2

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x56b6dc51

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    :goto_0
    or-int/2addr p2, p3

    .line 20
    or-int/lit8 p2, p2, 0x30

    .line 21
    .line 22
    and-int/lit8 v0, p2, 0x13

    .line 23
    .line 24
    const/16 v1, 0x12

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    and-int/2addr p2, v2

    .line 33
    invoke-virtual {v5, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;

    .line 40
    .line 41
    invoke-direct {p1, p0, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;-><init>(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;I)V

    .line 42
    .line 43
    .line 44
    const p2, -0x123819e1

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v6, 0x61b6

    .line 52
    .line 53
    const/16 v7, 0x8

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v7}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 61
    .line 62
    .line 63
    move-object p1, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 75
    .line 76
    const/16 v1, 0xd

    .line 77
    .line 78
    invoke-direct {v0, p3, v1, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public static final DialogSettingView(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
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
    move-object/from16 v0, p3

    .line 8
    .line 9
    move-object/from16 v8, p4

    .line 10
    .line 11
    move-object/from16 v9, p5

    .line 12
    .line 13
    move/from16 v10, p7

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-object/from16 v11, p6

    .line 28
    .line 29
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    const v4, -0x79b78829

    .line 32
    .line 33
    .line 34
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v4, v10, 0x6

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x2

    .line 50
    :goto_0
    or-int/2addr v4, v10

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v4, v10

    .line 53
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    and-int/lit8 v5, v10, 0x40

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    :goto_2
    if-eqz v5, :cond_3

    .line 71
    .line 72
    const/16 v5, 0x20

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/16 v5, 0x10

    .line 76
    .line 77
    :goto_3
    or-int/2addr v4, v5

    .line 78
    :cond_4
    and-int/lit16 v5, v10, 0x180

    .line 79
    .line 80
    if-nez v5, :cond_6

    .line 81
    .line 82
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    const/16 v5, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    const/16 v5, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v4, v5

    .line 94
    :cond_6
    and-int/lit16 v5, v10, 0xc00

    .line 95
    .line 96
    if-nez v5, :cond_8

    .line 97
    .line 98
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_7

    .line 103
    .line 104
    const/16 v5, 0x800

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    const/16 v5, 0x400

    .line 108
    .line 109
    :goto_5
    or-int/2addr v4, v5

    .line 110
    :cond_8
    and-int/lit16 v5, v10, 0x6000

    .line 111
    .line 112
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    .line 114
    if-nez v5, :cond_a

    .line 115
    .line 116
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_9

    .line 121
    .line 122
    const/16 v5, 0x4000

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_9
    const/16 v5, 0x2000

    .line 126
    .line 127
    :goto_6
    or-int/2addr v4, v5

    .line 128
    :cond_a
    const/high16 v5, 0x30000

    .line 129
    .line 130
    and-int/2addr v5, v10

    .line 131
    if-nez v5, :cond_c

    .line 132
    .line 133
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v4, v5

    .line 145
    :cond_c
    const/high16 v5, 0x180000

    .line 146
    .line 147
    and-int/2addr v5, v10

    .line 148
    if-nez v5, :cond_e

    .line 149
    .line 150
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v4, v5

    .line 162
    :cond_e
    move v14, v4

    .line 163
    const v4, 0x92493

    .line 164
    .line 165
    .line 166
    and-int/2addr v4, v14

    .line 167
    const v5, 0x92492

    .line 168
    .line 169
    .line 170
    const/16 v21, 0x1

    .line 171
    .line 172
    const/4 v15, 0x0

    .line 173
    if-eq v4, v5, :cond_f

    .line 174
    .line 175
    move/from16 v4, v21

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_f
    move v4, v15

    .line 179
    :goto_9
    and-int/lit8 v5, v14, 0x1

    .line 180
    .line 181
    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_1a

    .line 186
    .line 187
    new-array v4, v15, [Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 194
    .line 195
    if-ne v5, v6, :cond_10

    .line 196
    .line 197
    new-instance v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    const/16 v7, 0x19

    .line 200
    .line 201
    invoke-direct {v5, v7}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 208
    .line 209
    const/16 v7, 0x30

    .line 210
    .line 211
    invoke-static {v4, v5, v11, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    move-object v5, v4

    .line 216
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 217
    .line 218
    new-array v4, v15, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    if-ne v12, v6, :cond_11

    .line 225
    .line 226
    new-instance v12, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    const/16 v15, 0x1a

    .line 229
    .line 230
    invoke-direct {v12, v15}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 237
    .line 238
    invoke-static {v4, v12, v11, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 243
    .line 244
    new-instance v7, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;

    .line 245
    .line 246
    invoke-direct {v7, v1, v8, v0, v9}, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    .line 247
    .line 248
    .line 249
    const v12, -0x6dfaea65

    .line 250
    .line 251
    .line 252
    invoke-static {v12, v7, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    new-instance v2, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    const/16 v7, 0x8

    .line 259
    .line 260
    move-object v15, v6

    .line 261
    move-object v6, v3

    .line 262
    move-object/from16 v3, p1

    .line 263
    .line 264
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v25, v6

    .line 268
    .line 269
    move-object v6, v2

    .line 270
    move-object v2, v3

    .line 271
    move-object/from16 v3, v25

    .line 272
    .line 273
    const v7, 0x69b86c63

    .line 274
    .line 275
    .line 276
    invoke-static {v7, v6, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 277
    .line 278
    .line 279
    move-result-object v17

    .line 280
    shr-int/lit8 v6, v14, 0xc

    .line 281
    .line 282
    const/16 v7, 0xe

    .line 283
    .line 284
    and-int/2addr v6, v7

    .line 285
    const v18, 0x180030

    .line 286
    .line 287
    .line 288
    or-int v19, v6, v18

    .line 289
    .line 290
    const/16 v20, 0x3c

    .line 291
    .line 292
    move-object/from16 v18, v11

    .line 293
    .line 294
    move-object v11, v13

    .line 295
    const/4 v13, 0x0

    .line 296
    move v6, v14

    .line 297
    const/4 v14, 0x0

    .line 298
    move-object/from16 v22, v15

    .line 299
    .line 300
    const/4 v15, 0x0

    .line 301
    const/16 v23, 0x0

    .line 302
    .line 303
    const/16 v16, 0x0

    .line 304
    .line 305
    move-object/from16 v24, v22

    .line 306
    .line 307
    const/16 v7, 0x100

    .line 308
    .line 309
    invoke-static/range {v11 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 310
    .line 311
    .line 312
    move-object/from16 v11, v18

    .line 313
    .line 314
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    check-cast v12, Ljava/lang/Boolean;

    .line 319
    .line 320
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    if-eqz v12, :cond_19

    .line 325
    .line 326
    const v12, -0x54bc4cc1

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lnet/thunderbird/core/ui/setting/Setting;

    .line 341
    .line 342
    and-int/lit16 v6, v6, 0x380

    .line 343
    .line 344
    if-ne v6, v7, :cond_12

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_12
    const/16 v21, 0x0

    .line 348
    .line 349
    :goto_a
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    or-int v6, v21, v6

    .line 354
    .line 355
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    move-object/from16 v15, v24

    .line 360
    .line 361
    if-nez v6, :cond_14

    .line 362
    .line 363
    if-ne v7, v15, :cond_13

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_13
    const/4 v6, 0x0

    .line 367
    goto :goto_c

    .line 368
    :cond_14
    :goto_b
    new-instance v7, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda4;

    .line 369
    .line 370
    const/4 v6, 0x0

    .line 371
    invoke-direct {v7, v6, v5, v3}, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda4;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :goto_c
    move-object v12, v7

    .line 378
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 379
    .line 380
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v13

    .line 388
    if-nez v7, :cond_15

    .line 389
    .line 390
    if-ne v13, v15, :cond_16

    .line 391
    .line 392
    :cond_15
    new-instance v13, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 393
    .line 394
    const/16 v7, 0xd

    .line 395
    .line 396
    invoke-direct {v13, v5, v7}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_16
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 403
    .line 404
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v14

    .line 412
    if-nez v7, :cond_17

    .line 413
    .line 414
    if-ne v14, v15, :cond_18

    .line 415
    .line 416
    :cond_17
    new-instance v14, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 417
    .line 418
    const/16 v7, 0xe

    .line 419
    .line 420
    invoke-direct {v14, v5, v7}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_18
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 427
    .line 428
    const/4 v15, 0x0

    .line 429
    const/16 v17, 0x0

    .line 430
    .line 431
    move-object/from16 v16, v11

    .line 432
    .line 433
    move-object v11, v4

    .line 434
    invoke-static/range {v11 .. v17}, Lkotlin/text/StringsKt__IndentKt;->SettingDialog(Lnet/thunderbird/core/ui/setting/Setting;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 435
    .line 436
    .line 437
    move-object/from16 v11, v16

    .line 438
    .line 439
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_19
    const/4 v6, 0x0

    .line 444
    const v4, -0x54b6f655

    .line 445
    .line 446
    .line 447
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 451
    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_1a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 455
    .line 456
    .line 457
    :goto_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    if-eqz v11, :cond_1b

    .line 462
    .line 463
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 464
    .line 465
    const/16 v8, 0xb

    .line 466
    .line 467
    move-object/from16 v4, p3

    .line 468
    .line 469
    move-object/from16 v5, p4

    .line 470
    .line 471
    move-object v6, v9

    .line 472
    move v7, v10

    .line 473
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;II)V

    .line 474
    .line 475
    .line 476
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 477
    .line 478
    :cond_1b
    return-void
.end method

.method public static final DrawerContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v8, p3

    .line 8
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p3, 0x77fe534f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x2

    .line 25
    :goto_0
    or-int/2addr p3, p4

    .line 26
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr p3, v0

    .line 38
    or-int/lit16 p3, p3, 0x180

    .line 39
    .line 40
    and-int/lit16 v0, p3, 0x93

    .line 41
    .line 42
    const/16 v1, 0x92

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    move v0, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v0, v2

    .line 51
    :goto_2
    and-int/2addr p3, v3

    .line 52
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_5

    .line 57
    .line 58
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    check-cast p3, Landroidx/compose/ui/unit/Density;

    .line 65
    .line 66
    sget-object p3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 67
    .line 68
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 73
    .line 74
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    if-ne p3, v0, :cond_3

    .line 81
    .line 82
    const p3, 0x2a0dfb48

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 86
    .line 87
    .line 88
    sget-object p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 89
    .line 90
    invoke-static {v8}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    iget-object p3, p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->getInsets$foundation_layout()Landroidx/core/graphics/Insets;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    iget p3, p3, Landroidx/core/graphics/Insets;->right:I

    .line 101
    .line 102
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    const p3, 0x2a0fa949

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 110
    .line 111
    .line 112
    sget-object p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 113
    .line 114
    invoke-static {v8}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    iget-object p3, p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 119
    .line 120
    invoke-virtual {p3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->getInsets$foundation_layout()Landroidx/core/graphics/Insets;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iget p3, p3, Landroidx/core/graphics/Insets;->left:I

    .line 125
    .line 126
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroidx/compose/ui/unit/Density;

    .line 134
    .line 135
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sget-object p3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 140
    .line 141
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    check-cast p3, Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    const-string v0, "animator_duration_scale"

    .line 152
    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    .line 155
    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    const/4 v0, 0x0

    .line 160
    cmpg-float p3, p3, v0

    .line 161
    .line 162
    if-nez p3, :cond_4

    .line 163
    .line 164
    move v2, v3

    .line 165
    :cond_4
    xor-int/lit8 p3, v2, 0x1

    .line 166
    .line 167
    const/high16 v0, 0x43b40000    # 360.0f

    .line 168
    .line 169
    add-float/2addr v0, p2

    .line 170
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 171
    .line 172
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "DrawerContent"

    .line 183
    .line 184
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 189
    .line 190
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 195
    .line 196
    iget-wide v2, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLow:J

    .line 197
    .line 198
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    invoke-direct {v1, p0, p3, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;ZLkotlin/jvm/functions/Function1;)V

    .line 201
    .line 202
    .line 203
    const p3, 0x3f47bcec

    .line 204
    .line 205
    .line 206
    invoke-static {p3, v1, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    const/high16 v9, 0x30000

    .line 211
    .line 212
    const/16 v10, 0x1a

    .line 213
    .line 214
    const/4 v1, 0x0

    .line 215
    const-wide/16 v4, 0x0

    .line 216
    .line 217
    const/4 v6, 0x0

    .line 218
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 219
    .line 220
    .line 221
    :goto_4
    move-object v3, p2

    .line 222
    goto :goto_5

    .line 223
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    if-eqz p2, :cond_6

    .line 232
    .line 233
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 234
    .line 235
    const/16 v5, 0x1b

    .line 236
    .line 237
    move-object v1, p0

    .line 238
    move-object v2, p1

    .line 239
    move v4, p4

    .line 240
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 241
    .line 242
    .line 243
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 244
    .line 245
    :cond_6
    return-void
.end method

.method public static final FolderContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v8, p2

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, -0x1a3d4151

    .line 5
    .line 6
    .line 7
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    :goto_0
    or-int/2addr p2, p3

    .line 20
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p2, v0

    .line 32
    and-int/lit8 v0, p2, 0x13

    .line 33
    .line 34
    const/16 v1, 0x12

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_2
    and-int/2addr p2, v2

    .line 43
    invoke-virtual {v8, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_5

    .line 48
    .line 49
    iget-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 67
    .line 68
    invoke-interface {v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/4 v0, 0x0

    .line 82
    :goto_3
    instance-of p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 83
    .line 84
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 91
    .line 92
    iget-wide v2, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLow:J

    .line 93
    .line 94
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {v0, p0, p1, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Z)V

    .line 97
    .line 98
    .line 99
    const p2, 0x557a072

    .line 100
    .line 101
    .line 102
    invoke-static {p2, v0, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const/high16 v9, 0x30000

    .line 107
    .line 108
    const/16 v10, 0x1b

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    const/4 v1, 0x0

    .line 112
    const-wide/16 v4, 0x0

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_6

    .line 127
    .line 128
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 129
    .line 130
    const/16 v1, 0x11

    .line 131
    .line 132
    invoke-direct {v0, p3, v1, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public static final MessageList(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v9, p4

    .line 12
    .line 13
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x7b96ec2d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int v0, p5, v0

    .line 31
    .line 32
    move-object/from16 v8, p1

    .line 33
    .line 34
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    move v2, v10

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v2, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v2

    .line 47
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v11, 0x100

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    move v2, v11

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v2, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v2

    .line 60
    and-int/lit16 v2, v0, 0x493

    .line 61
    .line 62
    const/16 v4, 0x492

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x1

    .line 66
    if-eq v2, v4, :cond_3

    .line 67
    .line 68
    move v2, v13

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v2, v12

    .line 71
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 72
    .line 73
    invoke-virtual {v9, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_e

    .line 78
    .line 79
    shr-int/lit8 v2, v0, 0x3

    .line 80
    .line 81
    invoke-static {v9}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v8}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v5, v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 90
    .line 91
    invoke-static {v5, v9}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v8}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iget-object v6, v6, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    iget-object v6, v6, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 105
    .line 106
    move-object v14, v6

    .line 107
    goto :goto_4

    .line 108
    :cond_4
    move-object v14, v7

    .line 109
    :goto_4
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    or-int/2addr v6, v15

    .line 118
    and-int/lit8 v15, v2, 0x70

    .line 119
    .line 120
    xor-int/lit8 v15, v15, 0x30

    .line 121
    .line 122
    if-le v15, v10, :cond_5

    .line 123
    .line 124
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_6

    .line 129
    .line 130
    :cond_5
    and-int/lit8 v2, v2, 0x30

    .line 131
    .line 132
    if-ne v2, v10, :cond_7

    .line 133
    .line 134
    :cond_6
    move v2, v13

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    move v2, v12

    .line 137
    :goto_5
    or-int/2addr v2, v6

    .line 138
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 143
    .line 144
    if-nez v2, :cond_9

    .line 145
    .line 146
    if-ne v6, v15, :cond_8

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_8
    move-object v8, v4

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    :goto_6
    new-instance v2, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 152
    .line 153
    move-object v6, v7

    .line 154
    const/4 v7, 0x5

    .line 155
    move-object/from16 v18, v4

    .line 156
    .line 157
    move-object v4, v3

    .line 158
    move-object/from16 v3, v18

    .line 159
    .line 160
    invoke-direct/range {v2 .. v7}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 161
    .line 162
    .line 163
    move-object v8, v3

    .line 164
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    move-object v6, v2

    .line 168
    :goto_7
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    invoke-static {v8, v14, v6, v9}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 171
    .line 172
    .line 173
    invoke-interface/range {p1 .. p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-boolean v6, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 178
    .line 179
    invoke-interface/range {p1 .. p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v4, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 184
    .line 185
    invoke-interface/range {p1 .. p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    and-int/lit8 v3, v0, 0xe

    .line 190
    .line 191
    invoke-static {v1, v2, v8, v9, v3}, Lokhttp3/Handshake$Companion;->ScrollEventEffect(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    .line 192
    .line 193
    .line 194
    const-string v2, "TestMessageList_Root"

    .line 195
    .line 196
    move-object/from16 v14, p3

    .line 197
    .line 198
    invoke-static {v14, v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v16

    .line 202
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    const/high16 v2, 0x42800000    # 64.0f

    .line 214
    .line 215
    const/4 v3, 0x7

    .line 216
    const/4 v5, 0x0

    .line 217
    invoke-static {v5, v5, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 218
    .line 219
    .line 220
    move-result-object v17

    .line 221
    and-int/lit8 v2, v0, 0x70

    .line 222
    .line 223
    if-ne v2, v10, :cond_a

    .line 224
    .line 225
    move v2, v13

    .line 226
    goto :goto_8

    .line 227
    :cond_a
    move v2, v12

    .line 228
    :goto_8
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    or-int/2addr v2, v3

    .line 233
    and-int/lit16 v0, v0, 0x380

    .line 234
    .line 235
    if-ne v0, v11, :cond_b

    .line 236
    .line 237
    move v12, v13

    .line 238
    :cond_b
    or-int v0, v2, v12

    .line 239
    .line 240
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    or-int/2addr v0, v2

    .line 245
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-nez v0, :cond_c

    .line 250
    .line 251
    if-ne v2, v15, :cond_d

    .line 252
    .line 253
    :cond_c
    new-instance v2, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    .line 254
    .line 255
    const/4 v7, 0x2

    .line 256
    move-object/from16 v3, p1

    .line 257
    .line 258
    move-object/from16 v5, p2

    .line 259
    .line 260
    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    move-object v12, v2

    .line 267
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    const/16 v3, 0x1f8

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    const/4 v5, 0x0

    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v10, 0x0

    .line 276
    const/4 v13, 0x0

    .line 277
    move-object/from16 v11, v16

    .line 278
    .line 279
    move-object/from16 v7, v17

    .line 280
    .line 281
    invoke-static/range {v2 .. v13}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_e
    move-object/from16 v14, p3

    .line 286
    .line 287
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    if-eqz v7, :cond_f

    .line 295
    .line 296
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/16 v6, 0x12

    .line 299
    .line 300
    move-object/from16 v2, p1

    .line 301
    .line 302
    move-object/from16 v3, p2

    .line 303
    .line 304
    move/from16 v5, p5

    .line 305
    .line 306
    move-object v4, v14

    .line 307
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 308
    .line 309
    .line 310
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 311
    .line 312
    :cond_f
    return-void
.end method

.method public static final PrimitiveSerialDescriptor(Ljava/lang/String;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$8:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-object v1, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Lkotlin/collections/builders/MapBuilder;

    .line 11
    .line 12
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lkotlin/collections/builders/MapBuilderValues;

    .line 17
    .line 18
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilderValues;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    move-object v3, v1

    .line 23
    check-cast v3, Landroidx/emoji2/text/flatbuffer/Table;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/emoji2/text/flatbuffer/Table;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, v1

    .line 32
    check-cast v3, Lkotlin/collections/builders/MapBuilder$KeysItr;

    .line 33
    .line 34
    invoke-virtual {v3}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 39
    .line 40
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "

    .line 56
    .line 57
    const-string v1, " there already exists "

    .line 58
    .line 59
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ".\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_1
    new-instance v1, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 96
    .line 97
    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind$INT;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_2
    const-string p0, "Blank serial names are prohibited"

    .line 102
    .line 103
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v2
.end method

.method public static final ScrollEventEffect(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v7, p4

    .line 8
    .line 9
    move-object/from16 v8, p3

    .line 10
    .line 11
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x37470311

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v7, 0x6

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int/2addr v0, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v7

    .line 36
    :goto_1
    and-int/lit8 v4, v7, 0x30

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v4

    .line 52
    :cond_3
    and-int/lit16 v4, v7, 0x180

    .line 53
    .line 54
    const/16 v9, 0x100

    .line 55
    .line 56
    if-nez v4, :cond_5

    .line 57
    .line 58
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    move v4, v9

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v4, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v4

    .line 69
    :cond_5
    and-int/lit16 v4, v0, 0x93

    .line 70
    .line 71
    const/16 v5, 0x92

    .line 72
    .line 73
    const/4 v11, 0x1

    .line 74
    if-eq v4, v5, :cond_6

    .line 75
    .line 76
    move v4, v11

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    const/4 v4, 0x0

    .line 79
    :goto_4
    and-int/lit8 v5, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_f

    .line 86
    .line 87
    shr-int/lit8 v12, v0, 0x3

    .line 88
    .line 89
    invoke-static {v6, v8}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 98
    .line 99
    if-ne v5, v13, :cond_7

    .line 100
    .line 101
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 109
    .line 110
    iget-object v14, v1, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;->scrollEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 111
    .line 112
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    and-int/lit8 v10, v0, 0xe

    .line 117
    .line 118
    if-ne v10, v2, :cond_8

    .line 119
    .line 120
    move v2, v11

    .line 121
    goto :goto_5

    .line 122
    :cond_8
    const/4 v2, 0x0

    .line 123
    :goto_5
    or-int/2addr v2, v15

    .line 124
    and-int/lit16 v10, v0, 0x380

    .line 125
    .line 126
    if-ne v10, v9, :cond_9

    .line 127
    .line 128
    move v0, v11

    .line 129
    goto :goto_6

    .line 130
    :cond_9
    const/4 v0, 0x0

    .line 131
    :goto_6
    or-int/2addr v0, v2

    .line 132
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    or-int/2addr v0, v2

    .line 137
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-nez v0, :cond_b

    .line 142
    .line 143
    if-ne v2, v13, :cond_a

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_a
    move-object v15, v4

    .line 147
    goto :goto_8

    .line 148
    :cond_b
    :goto_7
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    move-object v1, v5

    .line 151
    const/16 v5, 0xd

    .line 152
    .line 153
    move-object/from16 v2, p0

    .line 154
    .line 155
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    move-object v15, v4

    .line 159
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    move-object v2, v0

    .line 163
    :goto_8
    move-object v3, v2

    .line 164
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    and-int/lit8 v5, v12, 0x70

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    move-object/from16 v1, p2

    .line 170
    .line 171
    move-object v4, v8

    .line 172
    move-object v0, v14

    .line 173
    invoke-static/range {v0 .. v5}, Landroidx/room/util/SchemaInfoUtilKt;->LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 174
    .line 175
    .line 176
    move-object v3, v1

    .line 177
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v10, v9, :cond_c

    .line 182
    .line 183
    move v10, v11

    .line 184
    goto :goto_9

    .line 185
    :cond_c
    const/4 v10, 0x0

    .line 186
    :goto_9
    or-int/2addr v0, v10

    .line 187
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-nez v0, :cond_d

    .line 192
    .line 193
    if-ne v1, v13, :cond_e

    .line 194
    .line 195
    :cond_d
    new-instance v1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    const/4 v2, 0x5

    .line 199
    invoke-direct {v1, v3, v15, v0, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 206
    .line 207
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_f
    move-object v4, v8

    .line 212
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 213
    .line 214
    .line 215
    :goto_a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    if-eqz v8, :cond_10

    .line 220
    .line 221
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 222
    .line 223
    const/4 v5, 0x5

    .line 224
    move-object/from16 v1, p0

    .line 225
    .line 226
    move-object v2, v6

    .line 227
    move v4, v7

    .line 228
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_10
    return-void
.end method

.method public static final SegmentedButtonItem(Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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
    const v0, -0x1b8dd238

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
    if-eq v1, v2, :cond_7

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_5

    .line 84
    :cond_7
    const/4 v1, 0x0

    .line 85
    :goto_5
    and-int/lit8 v2, v0, 0x1

    .line 86
    .line 87
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 94
    .line 95
    const/16 v2, 0x14

    .line 96
    .line 97
    invoke-direct {v1, v2, p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    const v2, 0x7493ce16

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    and-int/lit16 v0, v0, 0x380

    .line 108
    .line 109
    or-int/lit16 v11, v0, 0x6036

    .line 110
    .line 111
    const/16 v12, 0x8

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    move-object v7, p2

    .line 117
    invoke-static/range {v5 .. v12}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-eqz v6, :cond_9

    .line 129
    .line 130
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 131
    .line 132
    const/4 v5, 0x2

    .line 133
    move-object v1, p0

    .line 134
    move-object v2, p1

    .line 135
    move-object v3, p2

    .line 136
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    :cond_9
    return-void
.end method

.method public static final SettingList(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v14, p3

    .line 6
    .line 7
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v11, p1

    .line 11
    .line 12
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, 0x2ef41372

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x2

    .line 29
    :goto_0
    or-int/2addr v1, v0

    .line 30
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move v3, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v3, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v1, v3

    .line 43
    and-int/lit8 v3, v1, 0x13

    .line 44
    .line 45
    const/16 v5, 0x12

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v15, 0x1

    .line 49
    if-eq v3, v5, :cond_2

    .line 50
    .line 51
    move v3, v15

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v6

    .line 54
    :goto_2
    and-int/lit8 v5, v1, 0x1

    .line 55
    .line 56
    invoke-virtual {v11, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_9

    .line 61
    .line 62
    invoke-static {v11}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-wide v7, v3, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 67
    .line 68
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget-wide v7, v3, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 73
    .line 74
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-static {v5, v7}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-lez v5, :cond_3

    .line 83
    .line 84
    move v5, v15

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move v5, v6

    .line 87
    :goto_3
    iget-object v3, v3, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 88
    .line 89
    iget-object v3, v3, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->heightSizeClass:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 90
    .line 91
    sget-object v7, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 92
    .line 93
    if-ne v3, v7, :cond_4

    .line 94
    .line 95
    move v3, v15

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move v3, v6

    .line 98
    :goto_4
    if-eqz v5, :cond_5

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    new-instance v3, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 103
    .line 104
    const/high16 v5, 0x42800000    # 64.0f

    .line 105
    .line 106
    invoke-direct {v3, v5}, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;-><init>(F)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    new-instance v3, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 111
    .line 112
    const/high16 v5, 0x43480000    # 200.0f

    .line 113
    .line 114
    invoke-direct {v3, v5}, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;-><init>(F)V

    .line 115
    .line 116
    .line 117
    :goto_5
    and-int/lit8 v5, v1, 0x70

    .line 118
    .line 119
    if-ne v5, v4, :cond_6

    .line 120
    .line 121
    move v6, v15

    .line 122
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-nez v6, :cond_7

    .line 127
    .line 128
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 129
    .line 130
    if-ne v4, v5, :cond_8

    .line 131
    .line 132
    :cond_7
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 133
    .line 134
    const/16 v5, 0x11

    .line 135
    .line 136
    invoke-direct {v4, v5, v14}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    move-object v10, v4

    .line 143
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 144
    .line 145
    shl-int/lit8 v1, v1, 0x3

    .line 146
    .line 147
    and-int/lit8 v12, v1, 0x70

    .line 148
    .line 149
    const/16 v13, 0x3fc

    .line 150
    .line 151
    move-object v1, v3

    .line 152
    const/4 v3, 0x0

    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    invoke-static/range {v1 .. v13}, Landroidx/work/Data$Companion;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 164
    .line 165
    .line 166
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    new-instance v3, Landroidx/compose/foundation/CanvasKt$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    invoke-direct {v3, v2, v14, v0, v15}, Landroidx/compose/foundation/CanvasKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    .line 175
    .line 176
    .line 177
    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    :cond_a
    return-void
.end method

.method public static final access$scrollToMessage(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p2, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 2
    .line 3
    iget-boolean p2, p2, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;->animated:Z

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 22
    .line 23
    iget-object v4, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, -0x1

    .line 38
    :goto_1
    new-instance p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-direct {p1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ltz v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_2
    if-eqz p1, :cond_7

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v0, v1

    .line 75
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget v1, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 90
    .line 91
    :cond_4
    if-gt v0, p1, :cond_5

    .line 92
    .line 93
    if-gt p1, v1, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    if-eqz p2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollToItem(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_6
    invoke-static {p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0
.end method

.method public static final buildSerialDescriptor(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
    .locals 8

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 17
    .line 18
    invoke-direct {v7, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 25
    .line 26
    iget-object p3, v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v3, p0

    .line 37
    move-object v4, p1

    .line 38
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_0
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 43
    .line 44
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    const-string p0, "Blank serial names are prohibited"

    .line 49
    .line 50
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method

.method public static buildSerialDescriptor$default(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
    .locals 8

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 17
    .line 18
    invoke-direct {v7, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 22
    .line 23
    iget-object v0, v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    move-object v3, p0

    .line 34
    move-object v4, p1

    .line 35
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_0
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 40
    .line 41
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    const-string p0, "Blank serial names are prohibited"

    .line 46
    .line 47
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method

.method public static final cancelConsumed(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "Channel was consumed, consumer had failed"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/Channel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const-string v2, "TLS_NULL_WITH_NULL_NULL"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    const-string v2, "SSL_NULL_WITH_NULL_NULL"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    sget-object v2, Lokhttp3/CipherSuite;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v3, "NONE"

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    sget-object v1, Lokhttp3/TlsVersion;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lokhttp3/HttpUrl$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 63
    .line 64
    :goto_0
    new-instance v3, Lokhttp3/Handshake;

    .line 65
    .line 66
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance v4, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-direct {v4, v5, v2}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v1, v0, p0, v4}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :cond_0
    const-string p0, "tlsVersion == NONE"

    .line 85
    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_1
    const-string p0, "tlsVersion == null"

    .line 91
    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_2
    const-string p0, "cipherSuite == "

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_3
    const-string p0, "cipherSuite == null"

    .line 107
    .line 108
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v1
.end method

.method public static final getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sparse-switch v1, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :sswitch_0
    const-string v1, "short"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 41
    .line 42
    return-object p0

    .line 43
    :sswitch_1
    const-string v1, "float"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 53
    .line 54
    return-object p0

    .line 55
    :sswitch_2
    const-string v1, "boolean"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 65
    .line 66
    return-object p0

    .line 67
    :sswitch_3
    const-string/jumbo v1, "void"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 78
    .line 79
    return-object p0

    .line 80
    :sswitch_4
    const-string v1, "long"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 90
    .line 91
    return-object p0

    .line 92
    :sswitch_5
    const-string v1, "char"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 102
    .line 103
    return-object p0

    .line 104
    :sswitch_6
    const-string v1, "byte"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 114
    .line 115
    return-object p0

    .line 116
    :sswitch_7
    const-string v1, "int"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 126
    .line 127
    return-object p0

    .line 128
    :sswitch_8
    const-string v1, "double"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_9

    .line 135
    .line 136
    :goto_0
    return-object p0

    .line 137
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 138
    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    mul-int/lit8 p0, p0, 0x25

    .line 10
    .line 11
    add-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static final resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/koin/viewmodel/factory/KoinViewModelFactory;

    .line 11
    .line 12
    invoke-direct {v0, p0, p4, p3, p5}, Lorg/koin/viewmodel/factory/KoinViewModelFactory;-><init>(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    new-instance p4, Lokhttp3/Dispatcher;

    .line 16
    .line 17
    invoke-direct {p4, p1, v0, p2}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    new-instance p5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string p3, "_"

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p1, ""

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object p1, p2

    .line 59
    :goto_1
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p4, p1, p0}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const-string p2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p4, p1, p0}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 84
    .line 85
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p2
.end method

.method public static final toPort(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt v0, p0, :cond_0

    .line 3
    .line 4
    const/high16 v0, 0x10000

    .line 5
    .line 6
    if-ge p0, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "Not a valid port number: "

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 15
    .line 16
    const/16 v1, 0x1b

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, p1, p0, v2, v1}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lkotlinx/coroutines/channels/ChannelResult;

    .line 29
    .line 30
    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    .line 31
    .line 32
    return-object p0
.end method
