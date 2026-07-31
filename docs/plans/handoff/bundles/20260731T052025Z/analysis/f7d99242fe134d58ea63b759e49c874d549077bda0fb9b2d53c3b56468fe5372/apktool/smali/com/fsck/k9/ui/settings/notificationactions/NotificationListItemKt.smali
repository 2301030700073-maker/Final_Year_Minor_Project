.class public abstract Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-594985951:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x2376c3df

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->lambda$-594985951:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final ArrowButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v6, p5

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p5, 0x79496a81

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    const/4 p5, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p5, 0x2

    .line 19
    :goto_0
    or-int/2addr p5, p6

    .line 20
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr p5, v0

    .line 32
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    or-int/2addr p5, v0

    .line 44
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0x800

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    move v0, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    const/16 v0, 0x400

    .line 55
    .line 56
    :goto_3
    or-int/2addr p5, v0

    .line 57
    or-int/lit16 p5, p5, 0x6000

    .line 58
    .line 59
    and-int/lit16 v0, p5, 0x2493

    .line 60
    .line 61
    const/16 v2, 0x2492

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    if-eq v0, v2, :cond_4

    .line 66
    .line 67
    move v0, v4

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move v0, v3

    .line 70
    :goto_4
    and-int/lit8 v2, p5, 0x1

    .line 71
    .line 72
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    and-int/lit16 p4, p5, 0x1c00

    .line 79
    .line 80
    if-ne p4, v1, :cond_5

    .line 81
    .line 82
    move v3, v4

    .line 83
    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    if-nez v3, :cond_6

    .line 88
    .line 89
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 90
    .line 91
    if-ne p4, v0, :cond_7

    .line 92
    .line 93
    :cond_6
    new-instance p4, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/16 v0, 0xa

    .line 96
    .line 97
    invoke-direct {p4, v0, p3}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    move-object v0, p4

    .line 104
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 105
    .line 106
    shl-int/lit8 p4, p5, 0x3

    .line 107
    .line 108
    and-int/lit8 v1, p4, 0x70

    .line 109
    .line 110
    or-int/lit16 v1, v1, 0x180

    .line 111
    .line 112
    and-int/lit16 p4, p4, 0x1c00

    .line 113
    .line 114
    or-int/2addr p4, v1

    .line 115
    shl-int/lit8 p5, p5, 0x9

    .line 116
    .line 117
    const v1, 0xe000

    .line 118
    .line 119
    .line 120
    and-int/2addr p5, v1

    .line 121
    or-int v7, p4, p5

    .line 122
    .line 123
    const/16 v8, 0x20

    .line 124
    .line 125
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    move-object v1, p0

    .line 129
    move-object v4, p1

    .line 130
    move v3, p2

    .line 131
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 132
    .line 133
    .line 134
    move-object p1, v1

    .line 135
    move-object p2, v4

    .line 136
    move-object p5, v2

    .line 137
    goto :goto_5

    .line 138
    :cond_8
    move v3, p2

    .line 139
    move-object p2, p1

    .line 140
    move-object p1, p0

    .line 141
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 142
    .line 143
    .line 144
    move-object p5, p4

    .line 145
    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 152
    .line 153
    move-object p4, p3

    .line 154
    move p3, v3

    .line 155
    invoke-direct/range {p0 .. p6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V

    .line 156
    .line 157
    .line 158
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 159
    .line 160
    :cond_9
    return-void
.end method

.method public static final NotificationActionRow(Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;Ljava/lang/String;Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;Lcom/fsck/k9/ui/settings/notificationactions/MoveActions;Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v7, p5

    .line 4
    .line 5
    move/from16 v8, p7

    .line 6
    .line 7
    move-object/from16 v9, p6

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x26be7e54

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v8, 0x6

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v1

    .line 35
    :goto_0
    or-int/2addr v0, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v8

    .line 38
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v2, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v2

    .line 54
    :cond_3
    and-int/lit16 v2, v8, 0x180

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v2, v8, 0xc00

    .line 71
    .line 72
    move-object/from16 v4, p3

    .line 73
    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    const/16 v2, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v2, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v2

    .line 88
    :cond_7
    and-int/lit16 v2, v8, 0x6000

    .line 89
    .line 90
    move-object/from16 v10, p4

    .line 91
    .line 92
    if-nez v2, :cond_9

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    const/16 v2, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v2, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v0, v2

    .line 106
    :cond_9
    const/high16 v2, 0x30000

    .line 107
    .line 108
    and-int/2addr v2, v8

    .line 109
    if-nez v2, :cond_b

    .line 110
    .line 111
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_a

    .line 116
    .line 117
    const/high16 v2, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v2, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v0, v2

    .line 123
    :cond_b
    move v11, v0

    .line 124
    const v0, 0x12493

    .line 125
    .line 126
    .line 127
    and-int/2addr v0, v11

    .line 128
    const v2, 0x12492

    .line 129
    .line 130
    .line 131
    if-eq v0, v2, :cond_c

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_7

    .line 135
    :cond_c
    const/4 v0, 0x0

    .line 136
    :goto_7
    and-int/lit8 v2, v11, 0x1

    .line 137
    .line 138
    invoke-virtual {v9, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_10

    .line 143
    .line 144
    iget-object v0, v3, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 145
    .line 146
    iget-boolean v2, v3, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 147
    .line 148
    iget-boolean v5, v0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->isDragged:Z

    .line 149
    .line 150
    if-nez v5, :cond_e

    .line 151
    .line 152
    if-nez v2, :cond_d

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_d
    const v6, 0x3f19999a    # 0.6f

    .line 156
    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_e
    :goto_8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 160
    .line 161
    :goto_9
    iget v0, v0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->draggedOffsetY:F

    .line 162
    .line 163
    new-instance v12, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 164
    .line 165
    invoke-direct {v12, v0, v6, v5}, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;-><init>(FFZ)V

    .line 166
    .line 167
    .line 168
    if-eqz v2, :cond_f

    .line 169
    .line 170
    const v0, 0x7f1204eb

    .line 171
    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_f
    const v0, 0x7f1204ef

    .line 175
    .line 176
    .line 177
    :goto_a
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 182
    .line 183
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 193
    .line 194
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const/high16 v2, 0x42400000    # 48.0f

    .line 204
    .line 205
    invoke-static {v7, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    move-object v3, v0

    .line 210
    new-instance v0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    const/4 v6, 0x4

    .line 213
    move-object v1, p0

    .line 214
    move-object v2, p1

    .line 215
    move-object/from16 v5, p2

    .line 216
    .line 217
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    const v1, 0x41c4ec37

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    shr-int/lit8 v0, v11, 0x6

    .line 228
    .line 229
    and-int/lit16 v0, v0, 0x380

    .line 230
    .line 231
    or-int/lit16 v6, v0, 0x6000

    .line 232
    .line 233
    const/high16 v1, 0x41000000    # 8.0f

    .line 234
    .line 235
    move-object v5, v9

    .line 236
    move-object v2, v10

    .line 237
    move-object v0, v12

    .line 238
    move-object v3, v13

    .line 239
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationReorderRow-EUb7tLY(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;FLcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_10
    move-object v5, v9

    .line 244
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 245
    .line 246
    .line 247
    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    if-eqz v9, :cond_11

    .line 252
    .line 253
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 254
    .line 255
    move-object v1, p0

    .line 256
    move-object v2, p1

    .line 257
    move-object/from16 v3, p2

    .line 258
    .line 259
    move-object/from16 v4, p3

    .line 260
    .line 261
    move-object/from16 v5, p4

    .line 262
    .line 263
    move-object v6, v7

    .line 264
    move v7, v8

    .line 265
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;Ljava/lang/String;Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;Lcom/fsck/k9/ui/settings/notificationactions/MoveActions;Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;I)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 269
    .line 270
    :cond_11
    return-void
.end method

.method public static final NotificationActionsContent(Ljava/lang/String;Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v8, p3

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p3, -0x3d20a5b4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p3, p4, 0x6

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const/4 p3, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x2

    .line 23
    :goto_0
    or-int/2addr p3, p4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p3, p4

    .line 26
    :goto_1
    and-int/lit8 v0, p4, 0x30

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    and-int/lit8 v0, p4, 0x40

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/16 v0, 0x10

    .line 49
    .line 50
    :goto_3
    or-int/2addr p3, v0

    .line 51
    :cond_4
    and-int/lit16 v0, p4, 0x180

    .line 52
    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const/16 v0, 0x100

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_5
    const/16 v0, 0x80

    .line 65
    .line 66
    :goto_4
    or-int/2addr p3, v0

    .line 67
    :cond_6
    and-int/lit16 v0, p3, 0x93

    .line 68
    .line 69
    const/16 v1, 0x92

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-eq v0, v1, :cond_7

    .line 73
    .line 74
    move v0, v2

    .line 75
    goto :goto_5

    .line 76
    :cond_7
    const/4 v0, 0x0

    .line 77
    :goto_5
    and-int/2addr p3, v2

    .line 78
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_8

    .line 83
    .line 84
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 85
    .line 86
    invoke-interface {p2, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance p3, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 91
    .line 92
    const/16 v1, 0x9

    .line 93
    .line 94
    invoke-direct {p3, v1, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const v1, -0x69e20271

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p3, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/high16 v9, 0x30000

    .line 105
    .line 106
    const/16 v10, 0x1e

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 115
    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 119
    .line 120
    .line 121
    :goto_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    if-eqz p3, :cond_9

    .line 126
    .line 127
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 128
    .line 129
    const/16 v5, 0x1a

    .line 130
    .line 131
    move-object v1, p0

    .line 132
    move-object v2, p1

    .line 133
    move-object v3, p2

    .line 134
    move v4, p4

    .line 135
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_9
    return-void
.end method

.method public static final NotificationActionsList(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x1dcfa809

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x4

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    move p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v0

    .line 21
    :goto_0
    or-int/2addr p1, p2

    .line 22
    and-int/lit8 v2, p1, 0x3

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eq v2, v0, :cond_1

    .line 27
    .line 28
    move v0, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v3

    .line 31
    :goto_1
    and-int/lit8 v2, p1, 0x1

    .line 32
    .line 33
    invoke-virtual {v7, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_a

    .line 38
    .line 39
    invoke-static {v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    and-int/lit8 p1, p1, 0xe

    .line 44
    .line 45
    if-eq p1, v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v0, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    move v0, v4

    .line 57
    :goto_3
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    or-int/2addr v0, v2

    .line 62
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    if-ne v2, v5, :cond_5

    .line 71
    .line 72
    :cond_4
    new-instance v2, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/16 v0, 0x1a

    .line 75
    .line 76
    invoke-direct {v2, v0, p0, v6}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 85
    .line 86
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eq p1, v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    :cond_6
    move v3, v4

    .line 111
    :cond_7
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    or-int/2addr p1, v3

    .line 116
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    if-ne v1, v5, :cond_9

    .line 123
    .line 124
    :cond_8
    new-instance v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/16 p1, 0x1b

    .line 127
    .line 128
    invoke-direct {v1, p1, p0, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_9
    move-object v10, v1

    .line 135
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    move-object v5, v0

    .line 138
    const/4 v0, 0x6

    .line 139
    const/16 v1, 0x1f8

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v11, 0x0

    .line 146
    invoke-static/range {v0 .. v11}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 151
    .line 152
    .line 153
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_b

    .line 158
    .line 159
    new-instance v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    const/16 v1, 0x1d

    .line 162
    .line 163
    invoke-direct {v0, p2, v1, p0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_b
    return-void
.end method

.method public static final NotificationActionsListItem(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;ILcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    move/from16 v12, p6

    .line 12
    .line 13
    move-object/from16 v13, p5

    .line 14
    .line 15
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v4, -0x357c6ef5    # -4311173.5f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v4, v12, 0x6

    .line 24
    .line 25
    const/4 v15, 0x4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    and-int/lit8 v4, v12, 0x8

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    :goto_0
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move v4, v15

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v4, 0x2

    .line 46
    :goto_1
    or-int/2addr v4, v12

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v4, v12

    .line 49
    :goto_2
    and-int/lit8 v5, v12, 0x30

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v5, 0x10

    .line 63
    .line 64
    :goto_3
    or-int/2addr v4, v5

    .line 65
    :cond_4
    and-int/lit16 v5, v12, 0x180

    .line 66
    .line 67
    const/16 v6, 0x100

    .line 68
    .line 69
    if-nez v5, :cond_7

    .line 70
    .line 71
    and-int/lit16 v5, v12, 0x200

    .line 72
    .line 73
    if-nez v5, :cond_5

    .line 74
    .line 75
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    :goto_4
    if-eqz v5, :cond_6

    .line 85
    .line 86
    move v5, v6

    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v5, 0x80

    .line 89
    .line 90
    :goto_5
    or-int/2addr v4, v5

    .line 91
    :cond_7
    and-int/lit16 v5, v12, 0xc00

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    const/16 v5, 0x800

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/16 v5, 0x400

    .line 105
    .line 106
    :goto_6
    or-int/2addr v4, v5

    .line 107
    :cond_9
    and-int/lit16 v5, v12, 0x6000

    .line 108
    .line 109
    if-nez v5, :cond_b

    .line 110
    .line 111
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_a

    .line 116
    .line 117
    const/16 v5, 0x4000

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_a
    const/16 v5, 0x2000

    .line 121
    .line 122
    :goto_7
    or-int/2addr v4, v5

    .line 123
    :cond_b
    and-int/lit16 v5, v4, 0x2493

    .line 124
    .line 125
    const/16 v7, 0x2492

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    if-eq v5, v7, :cond_c

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    goto :goto_8

    .line 132
    :cond_c
    move v5, v9

    .line 133
    :goto_8
    and-int/lit8 v7, v4, 0x1

    .line 134
    .line 135
    invoke-virtual {v13, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_26

    .line 140
    .line 141
    iget-object v5, v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    new-instance v7, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 158
    .line 159
    iget-object v10, v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 160
    .line 161
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    const/high16 v8, 0x3f800000    # 1.0f

    .line 166
    .line 167
    invoke-direct {v7, v10, v8, v5}, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;-><init>(FFZ)V

    .line 168
    .line 169
    .line 170
    and-int/lit16 v5, v4, 0x380

    .line 171
    .line 172
    if-eq v5, v6, :cond_e

    .line 173
    .line 174
    and-int/lit16 v8, v4, 0x200

    .line 175
    .line 176
    if-eqz v8, :cond_d

    .line 177
    .line 178
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_d

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_d
    move v8, v9

    .line 186
    goto :goto_a

    .line 187
    :cond_e
    :goto_9
    const/4 v8, 0x1

    .line 188
    :goto_a
    and-int/lit8 v10, v4, 0xe

    .line 189
    .line 190
    if-eq v10, v15, :cond_10

    .line 191
    .line 192
    and-int/lit8 v16, v4, 0x8

    .line 193
    .line 194
    if-eqz v16, :cond_f

    .line 195
    .line 196
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    if-eqz v16, :cond_f

    .line 201
    .line 202
    goto :goto_b

    .line 203
    :cond_f
    move/from16 v16, v9

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_10
    :goto_b
    const/16 v16, 0x1

    .line 207
    .line 208
    :goto_c
    or-int v8, v8, v16

    .line 209
    .line 210
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 215
    .line 216
    if-nez v8, :cond_11

    .line 217
    .line 218
    if-ne v14, v15, :cond_12

    .line 219
    .line 220
    :cond_11
    new-instance v14, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    invoke-direct {v14, v3, v1, v9}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_12
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    if-eq v5, v6, :cond_14

    .line 231
    .line 232
    and-int/lit16 v8, v4, 0x200

    .line 233
    .line 234
    if-eqz v8, :cond_13

    .line 235
    .line 236
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_13

    .line 241
    .line 242
    goto :goto_d

    .line 243
    :cond_13
    move v8, v9

    .line 244
    goto :goto_e

    .line 245
    :cond_14
    :goto_d
    const/4 v8, 0x1

    .line 246
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    if-nez v8, :cond_16

    .line 251
    .line 252
    if-ne v6, v15, :cond_15

    .line 253
    .line 254
    goto :goto_f

    .line 255
    :cond_15
    move/from16 v21, v4

    .line 256
    .line 257
    move/from16 v23, v5

    .line 258
    .line 259
    move-object/from16 v22, v7

    .line 260
    .line 261
    move/from16 v24, v10

    .line 262
    .line 263
    const/4 v11, 0x1

    .line 264
    move-object v4, v3

    .line 265
    goto :goto_10

    .line 266
    :cond_16
    :goto_f
    new-instance v3, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 267
    .line 268
    move v6, v9

    .line 269
    const/4 v9, 0x0

    .line 270
    move v8, v10

    .line 271
    const/16 v10, 0x14

    .line 272
    .line 273
    move/from16 v17, v4

    .line 274
    .line 275
    const/4 v4, 0x0

    .line 276
    move/from16 v18, v6

    .line 277
    .line 278
    const-class v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 279
    .line 280
    move-object/from16 v19, v7

    .line 281
    .line 282
    const-string v7, "endDrag"

    .line 283
    .line 284
    move/from16 v20, v8

    .line 285
    .line 286
    const-string v8, "endDrag()V"

    .line 287
    .line 288
    move/from16 v23, v5

    .line 289
    .line 290
    move/from16 v21, v17

    .line 291
    .line 292
    move-object/from16 v22, v19

    .line 293
    .line 294
    move/from16 v24, v20

    .line 295
    .line 296
    const/4 v11, 0x1

    .line 297
    move-object/from16 v5, p2

    .line 298
    .line 299
    invoke-direct/range {v3 .. v10}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 300
    .line 301
    .line 302
    move-object v4, v5

    .line 303
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    move-object v6, v3

    .line 307
    :goto_10
    check-cast v6, Lkotlin/reflect/KFunction;

    .line 308
    .line 309
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 310
    .line 311
    new-instance v7, Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;

    .line 312
    .line 313
    invoke-direct {v7, v14, v6, v0}, Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 314
    .line 315
    .line 316
    instance-of v3, v1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 317
    .line 318
    if-eqz v3, :cond_24

    .line 319
    .line 320
    const v3, -0x3b69e75d

    .line 321
    .line 322
    .line 323
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 324
    .line 325
    .line 326
    move-object v3, v1

    .line 327
    check-cast v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 328
    .line 329
    iget-object v5, v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;->action:Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 330
    .line 331
    iget v5, v5, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->labelRes:I

    .line 332
    .line 333
    invoke-static {v13, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    iget-object v3, v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;->action:Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 338
    .line 339
    move-object v6, v5

    .line 340
    new-instance v5, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;

    .line 341
    .line 342
    iget-object v8, v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 343
    .line 344
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-le v2, v8, :cond_17

    .line 349
    .line 350
    move v8, v11

    .line 351
    goto :goto_11

    .line 352
    :cond_17
    const/4 v8, 0x0

    .line 353
    :goto_11
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    const/4 v10, -0x1

    .line 358
    invoke-virtual {v4, v9, v10}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->canMove(Ljava/lang/String;I)Z

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    invoke-static {v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v4, v10, v11}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->canMove(Ljava/lang/String;I)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    move-object/from16 v14, v22

    .line 371
    .line 372
    invoke-direct {v5, v8, v9, v10, v14}, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;-><init>(ZZZLcom/fsck/k9/ui/settings/notificationactions/RowDragState;)V

    .line 373
    .line 374
    .line 375
    new-array v8, v11, [Ljava/lang/Object;

    .line 376
    .line 377
    const/4 v14, 0x0

    .line 378
    aput-object v6, v8, v14

    .line 379
    .line 380
    const v9, 0x7f120033

    .line 381
    .line 382
    .line 383
    invoke-static {v9, v8, v13}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    new-array v9, v11, [Ljava/lang/Object;

    .line 388
    .line 389
    aput-object v6, v9, v14

    .line 390
    .line 391
    const v10, 0x7f120032

    .line 392
    .line 393
    .line 394
    invoke-static {v10, v9, v13}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    move/from16 v10, v23

    .line 399
    .line 400
    const/16 v14, 0x100

    .line 401
    .line 402
    if-eq v10, v14, :cond_19

    .line 403
    .line 404
    move/from16 v14, v21

    .line 405
    .line 406
    and-int/lit16 v11, v14, 0x200

    .line 407
    .line 408
    if-eqz v11, :cond_18

    .line 409
    .line 410
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    if-eqz v11, :cond_18

    .line 415
    .line 416
    goto :goto_13

    .line 417
    :cond_18
    const/4 v11, 0x0

    .line 418
    :goto_12
    move/from16 v0, v24

    .line 419
    .line 420
    const/4 v2, 0x4

    .line 421
    goto :goto_14

    .line 422
    :cond_19
    move/from16 v14, v21

    .line 423
    .line 424
    :goto_13
    const/4 v11, 0x1

    .line 425
    goto :goto_12

    .line 426
    :goto_14
    if-eq v0, v2, :cond_1b

    .line 427
    .line 428
    and-int/lit8 v2, v14, 0x8

    .line 429
    .line 430
    if-eqz v2, :cond_1a

    .line 431
    .line 432
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-eqz v2, :cond_1a

    .line 437
    .line 438
    goto :goto_15

    .line 439
    :cond_1a
    const/4 v2, 0x0

    .line 440
    goto :goto_16

    .line 441
    :cond_1b
    :goto_15
    const/4 v2, 0x1

    .line 442
    :goto_16
    or-int/2addr v2, v11

    .line 443
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    if-nez v2, :cond_1d

    .line 448
    .line 449
    if-ne v11, v15, :cond_1c

    .line 450
    .line 451
    goto :goto_17

    .line 452
    :cond_1c
    const/4 v2, 0x1

    .line 453
    goto :goto_18

    .line 454
    :cond_1d
    :goto_17
    new-instance v11, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;

    .line 455
    .line 456
    const/4 v2, 0x1

    .line 457
    invoke-direct {v11, v4, v1, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :goto_18
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 464
    .line 465
    const/16 v2, 0x100

    .line 466
    .line 467
    if-eq v10, v2, :cond_1f

    .line 468
    .line 469
    and-int/lit16 v2, v14, 0x200

    .line 470
    .line 471
    if-eqz v2, :cond_1e

    .line 472
    .line 473
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-eqz v2, :cond_1e

    .line 478
    .line 479
    goto :goto_1a

    .line 480
    :cond_1e
    const/4 v2, 0x0

    .line 481
    :goto_19
    const/4 v10, 0x4

    .line 482
    goto :goto_1b

    .line 483
    :cond_1f
    :goto_1a
    const/4 v2, 0x1

    .line 484
    goto :goto_19

    .line 485
    :goto_1b
    if-eq v0, v10, :cond_21

    .line 486
    .line 487
    and-int/lit8 v0, v14, 0x8

    .line 488
    .line 489
    if-eqz v0, :cond_20

    .line 490
    .line 491
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_20

    .line 496
    .line 497
    goto :goto_1c

    .line 498
    :cond_20
    const/4 v0, 0x0

    .line 499
    goto :goto_1d

    .line 500
    :cond_21
    :goto_1c
    const/4 v0, 0x1

    .line 501
    :goto_1d
    or-int/2addr v0, v2

    .line 502
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    if-nez v0, :cond_22

    .line 507
    .line 508
    if-ne v2, v15, :cond_23

    .line 509
    .line 510
    :cond_22
    new-instance v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;

    .line 511
    .line 512
    const/4 v0, 0x2

    .line 513
    invoke-direct {v2, v4, v1, v0}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    :cond_23
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 520
    .line 521
    move-object v4, v6

    .line 522
    new-instance v6, Lcom/fsck/k9/ui/settings/notificationactions/MoveActions;

    .line 523
    .line 524
    invoke-direct {v6, v8, v9, v11, v2}, Lcom/fsck/k9/ui/settings/notificationactions/MoveActions;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 525
    .line 526
    .line 527
    shl-int/lit8 v0, v14, 0x3

    .line 528
    .line 529
    const/high16 v2, 0x70000

    .line 530
    .line 531
    and-int v10, v0, v2

    .line 532
    .line 533
    move-object/from16 v8, p4

    .line 534
    .line 535
    move-object v9, v13

    .line 536
    invoke-static/range {v3 .. v10}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionRow(Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;Ljava/lang/String;Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;Lcom/fsck/k9/ui/settings/notificationactions/MoveActions;Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 537
    .line 538
    .line 539
    move-object v11, v8

    .line 540
    const/4 v14, 0x0

    .line 541
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 542
    .line 543
    .line 544
    goto :goto_1e

    .line 545
    :cond_24
    move-object/from16 v11, p4

    .line 546
    .line 547
    move-object v9, v13

    .line 548
    move/from16 v14, v21

    .line 549
    .line 550
    move-object/from16 v0, v22

    .line 551
    .line 552
    const/4 v6, 0x0

    .line 553
    instance-of v2, v1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 554
    .line 555
    if-eqz v2, :cond_25

    .line 556
    .line 557
    const v2, 0x37e453bd

    .line 558
    .line 559
    .line 560
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 561
    .line 562
    .line 563
    shr-int/lit8 v2, v14, 0x6

    .line 564
    .line 565
    and-int/lit16 v2, v2, 0x380

    .line 566
    .line 567
    invoke-static {v0, v7, v11, v9, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationCutoffRow(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 571
    .line 572
    .line 573
    goto :goto_1e

    .line 574
    :cond_25
    const v0, 0x37e3c93b

    .line 575
    .line 576
    .line 577
    invoke-static {v9, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    throw v0

    .line 582
    :cond_26
    move-object v9, v13

    .line 583
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 584
    .line 585
    .line 586
    :goto_1e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    if-eqz v7, :cond_27

    .line 591
    .line 592
    new-instance v0, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;

    .line 593
    .line 594
    move/from16 v2, p1

    .line 595
    .line 596
    move-object/from16 v3, p2

    .line 597
    .line 598
    move-object/from16 v4, p3

    .line 599
    .line 600
    move-object v5, v11

    .line 601
    move v6, v12

    .line 602
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;ILcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 603
    .line 604
    .line 605
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 606
    .line 607
    :cond_27
    return-void
.end method

.method public static final NotificationActionsSettingsScreen(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object/from16 v8, p5

    .line 19
    .line 20
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    const v4, -0x2993f256

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    move v4, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    :goto_0
    or-int v4, p6, v4

    .line 39
    .line 40
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/16 v7, 0x20

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    move v6, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v6, 0x10

    .line 51
    .line 52
    :goto_1
    or-int/2addr v4, v6

    .line 53
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    const/16 v6, 0x100

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v6, 0x80

    .line 63
    .line 64
    :goto_2
    or-int/2addr v4, v6

    .line 65
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    const/16 v6, 0x800

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const/16 v6, 0x400

    .line 75
    .line 76
    :goto_3
    or-int/2addr v4, v6

    .line 77
    or-int/lit16 v9, v4, 0x6000

    .line 78
    .line 79
    and-int/lit16 v4, v9, 0x2493

    .line 80
    .line 81
    const/16 v6, 0x2492

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x1

    .line 85
    if-eq v4, v6, :cond_4

    .line 86
    .line 87
    move v4, v11

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v4, v10

    .line 90
    :goto_4
    and-int/lit8 v6, v9, 0x1

    .line 91
    .line 92
    invoke-virtual {v8, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_e

    .line 97
    .line 98
    shr-int/lit8 v4, v9, 0x3

    .line 99
    .line 100
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 105
    .line 106
    if-ne v6, v12, :cond_5

    .line 107
    .line 108
    new-instance v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 109
    .line 110
    invoke-direct {v6, v2, v3, v0}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;-><init>(Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    check-cast v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 117
    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    and-int/lit8 v15, v4, 0xe

    .line 127
    .line 128
    xor-int/lit8 v15, v15, 0x6

    .line 129
    .line 130
    if-le v15, v5, :cond_6

    .line 131
    .line 132
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-nez v15, :cond_7

    .line 137
    .line 138
    :cond_6
    and-int/lit8 v15, v4, 0x6

    .line 139
    .line 140
    if-ne v15, v5, :cond_8

    .line 141
    .line 142
    :cond_7
    move v5, v11

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    move v5, v10

    .line 145
    :goto_5
    or-int/2addr v5, v14

    .line 146
    and-int/lit8 v14, v4, 0x70

    .line 147
    .line 148
    xor-int/lit8 v14, v14, 0x30

    .line 149
    .line 150
    if-le v14, v7, :cond_9

    .line 151
    .line 152
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-nez v14, :cond_a

    .line 157
    .line 158
    :cond_9
    and-int/lit8 v4, v4, 0x30

    .line 159
    .line 160
    if-ne v4, v7, :cond_b

    .line 161
    .line 162
    :cond_a
    move v10, v11

    .line 163
    :cond_b
    or-int v4, v5, v10

    .line 164
    .line 165
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-nez v4, :cond_d

    .line 170
    .line 171
    if-ne v5, v12, :cond_c

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_c
    move-object v4, v2

    .line 175
    move-object v3, v6

    .line 176
    goto :goto_7

    .line 177
    :cond_d
    :goto_6
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 178
    .line 179
    move-object v3, v6

    .line 180
    const/4 v6, 0x0

    .line 181
    const/16 v7, 0x10

    .line 182
    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    move/from16 v5, p2

    .line 186
    .line 187
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    move-object v5, v2

    .line 194
    :goto_7
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 195
    .line 196
    invoke-static {v4, v13, v5, v8}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 197
    .line 198
    .line 199
    and-int/lit8 v2, v9, 0xe

    .line 200
    .line 201
    or-int/lit16 v2, v2, 0x1c0

    .line 202
    .line 203
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 204
    .line 205
    invoke-static {v1, v3, v5, v8, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionsContent(Ljava/lang/String;Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_e
    move-object v4, v2

    .line 210
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 211
    .line 212
    .line 213
    move-object/from16 v5, p4

    .line 214
    .line 215
    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    if-eqz v8, :cond_f

    .line 220
    .line 221
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 222
    .line 223
    const/16 v7, 0x9

    .line 224
    .line 225
    move/from16 v3, p2

    .line 226
    .line 227
    move/from16 v6, p6

    .line 228
    .line 229
    move-object v2, v4

    .line 230
    move-object/from16 v4, p3

    .line 231
    .line 232
    invoke-direct/range {v0 .. v7}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 233
    .line 234
    .line 235
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 236
    .line 237
    :cond_f
    return-void
.end method

.method public static final NotificationCutoffRow(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    move-object v10, p3

    .line 4
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const p3, 0x4fca1fa4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v10, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 p3, v4, 0x6

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p3, v0

    .line 26
    :goto_0
    or-int/2addr p3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p3, v4

    .line 29
    :goto_1
    and-int/lit8 v1, v4, 0x30

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v1, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr p3, v1

    .line 45
    :cond_3
    and-int/lit16 v1, v4, 0x180

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr p3, v1

    .line 61
    :cond_5
    and-int/lit16 v1, p3, 0x93

    .line 62
    .line 63
    const/16 v2, 0x92

    .line 64
    .line 65
    if-eq v1, v2, :cond_6

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/4 v1, 0x0

    .line 70
    :goto_4
    and-int/lit8 v2, p3, 0x1

    .line 71
    .line 72
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->isDragged:Z

    .line 79
    .line 80
    iget v2, p0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->draggedOffsetY:F

    .line 81
    .line 82
    new-instance v5, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 83
    .line 84
    const/high16 v3, 0x3f800000    # 1.0f

    .line 85
    .line 86
    invoke-direct {v5, v2, v3, v1}, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;-><init>(FFZ)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 90
    .line 91
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 101
    .line 102
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const/high16 v1, 0x42400000    # 48.0f

    .line 112
    .line 113
    invoke-static {p2, v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    shl-int/lit8 p3, p3, 0x3

    .line 118
    .line 119
    and-int/lit16 p3, p3, 0x380

    .line 120
    .line 121
    or-int/lit16 v11, p3, 0x6000

    .line 122
    .line 123
    const/high16 v6, 0x41800000    # 16.0f

    .line 124
    .line 125
    sget-object v9, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->lambda$-594985951:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 126
    .line 127
    move-object v7, p1

    .line 128
    invoke-static/range {v5 .. v11}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationReorderRow-EUb7tLY(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;FLcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    if-eqz p3, :cond_8

    .line 140
    .line 141
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 142
    .line 143
    const/16 v5, 0x1b

    .line 144
    .line 145
    move-object v1, p0

    .line 146
    move-object v2, p1

    .line 147
    move-object v3, p2

    .line 148
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 152
    .line 153
    :cond_8
    return-void
.end method

.method public static final NotificationReorderRow-EUb7tLY(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;FLcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v10, p5

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x421b1d72

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v6, 0x6

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int/2addr v0, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v6

    .line 38
    :goto_1
    and-int/lit8 v7, v6, 0x30

    .line 39
    .line 40
    move/from16 v15, p1

    .line 41
    .line 42
    if-nez v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/16 v7, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v7, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v7

    .line 56
    :cond_3
    and-int/lit16 v7, v6, 0x180

    .line 57
    .line 58
    if-nez v7, :cond_5

    .line 59
    .line 60
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    const/16 v7, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v7, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v7

    .line 72
    :cond_5
    and-int/lit16 v7, v6, 0xc00

    .line 73
    .line 74
    if-nez v7, :cond_7

    .line 75
    .line 76
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    const/16 v7, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v7, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v7

    .line 88
    :cond_7
    and-int/lit16 v7, v6, 0x6000

    .line 89
    .line 90
    if-nez v7, :cond_9

    .line 91
    .line 92
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    const/16 v7, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v7, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v0, v7

    .line 104
    :cond_9
    and-int/lit16 v7, v0, 0x2493

    .line 105
    .line 106
    const/16 v8, 0x2492

    .line 107
    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v9, 0x1

    .line 110
    if-eq v7, v8, :cond_a

    .line 111
    .line 112
    move v7, v9

    .line 113
    goto :goto_6

    .line 114
    :cond_a
    move v7, v14

    .line 115
    :goto_6
    and-int/lit8 v8, v0, 0x1

    .line 116
    .line 117
    invoke-virtual {v10, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_12

    .line 122
    .line 123
    iget-boolean v7, v1, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->isDragged:Z

    .line 124
    .line 125
    const/high16 v16, 0x3f800000    # 1.0f

    .line 126
    .line 127
    if-eqz v7, :cond_b

    .line 128
    .line 129
    const v8, 0x3f828f5c    # 1.02f

    .line 130
    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_b
    move/from16 v8, v16

    .line 134
    .line 135
    :goto_7
    const/16 v11, 0xc00

    .line 136
    .line 137
    const/16 v12, 0x16

    .line 138
    .line 139
    move/from16 v17, v7

    .line 140
    .line 141
    move v7, v8

    .line 142
    const/4 v8, 0x0

    .line 143
    move/from16 v18, v9

    .line 144
    .line 145
    const-string v9, "notificationRowDragScale"

    .line 146
    .line 147
    move/from16 v13, v18

    .line 148
    .line 149
    const/16 p5, 0x20

    .line 150
    .line 151
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 156
    .line 157
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    if-eqz v17, :cond_c

    .line 165
    .line 166
    const/high16 v11, 0x41400000    # 12.0f

    .line 167
    .line 168
    invoke-interface {v8, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    goto :goto_8

    .line 173
    :cond_c
    move v8, v9

    .line 174
    :goto_8
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 175
    .line 176
    invoke-interface {v4, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    iget v12, v1, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->alpha:F

    .line 181
    .line 182
    invoke-static {v11, v12}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    and-int/lit8 v12, v0, 0xe

    .line 187
    .line 188
    if-ne v12, v2, :cond_d

    .line 189
    .line 190
    move v14, v13

    .line 191
    :cond_d
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    or-int/2addr v12, v14

    .line 196
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    or-int/2addr v12, v14

    .line 201
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    if-nez v12, :cond_e

    .line 206
    .line 207
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 208
    .line 209
    if-ne v14, v12, :cond_f

    .line 210
    .line 211
    :cond_e
    new-instance v14, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    invoke-direct {v14, v1, v8, v7, v2}, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;FLjava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_f
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 220
    .line 221
    invoke-static {v11, v14}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-eqz v17, :cond_10

    .line 226
    .line 227
    move/from16 v9, v16

    .line 228
    .line 229
    :cond_10
    new-instance v7, Landroidx/compose/ui/ZIndexElement;

    .line 230
    .line 231
    invoke-direct {v7, v9}, Landroidx/compose/ui/ZIndexElement;-><init>(F)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v2, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 239
    .line 240
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 245
    .line 246
    iget-wide v7, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surface:J

    .line 247
    .line 248
    sget-object v9, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 249
    .line 250
    invoke-static {v2, v7, v8, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 255
    .line 256
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    const/16 v18, 0x0

    .line 266
    .line 267
    const/16 v19, 0xa

    .line 268
    .line 269
    const/16 v16, 0x0

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget-object v7, v3, Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;->onDragStart:Lkotlin/jvm/functions/Function0;

    .line 278
    .line 279
    iget-object v8, v3, Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;->onDrag:Lkotlin/jvm/functions/Function1;

    .line 280
    .line 281
    iget-object v9, v3, Lcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;->onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 282
    .line 283
    new-instance v11, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;

    .line 284
    .line 285
    invoke-direct {v11, v7, v9, v8}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 286
    .line 287
    .line 288
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    .line 290
    invoke-static {v2, v7, v11}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 295
    .line 296
    shr-int/lit8 v0, v0, 0x3

    .line 297
    .line 298
    and-int/lit16 v0, v0, 0x1c00

    .line 299
    .line 300
    or-int/lit16 v0, v0, 0x180

    .line 301
    .line 302
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 303
    .line 304
    const/16 v9, 0x30

    .line 305
    .line 306
    invoke-static {v8, v7, v10, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 311
    .line 312
    ushr-long v11, v8, p5

    .line 313
    .line 314
    xor-long/2addr v8, v11

    .line 315
    long-to-int v8, v8

    .line 316
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-static {v10, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 325
    .line 326
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 330
    .line 331
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 332
    .line 333
    .line 334
    iget-boolean v12, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 335
    .line 336
    if-eqz v12, :cond_11

    .line 337
    .line 338
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 339
    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 343
    .line 344
    .line 345
    :goto_9
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 346
    .line 347
    invoke-static {v10, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 348
    .line 349
    .line 350
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 351
    .line 352
    invoke-static {v10, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 360
    .line 361
    invoke-static {v10, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    .line 363
    .line 364
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 365
    .line 366
    invoke-static {v10, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 367
    .line 368
    .line 369
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 370
    .line 371
    invoke-static {v10, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    .line 373
    .line 374
    shr-int/lit8 v0, v0, 0x6

    .line 375
    .line 376
    and-int/lit8 v0, v0, 0x70

    .line 377
    .line 378
    or-int/lit8 v0, v0, 0x6

    .line 379
    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 385
    .line 386
    invoke-virtual {v5, v2, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 394
    .line 395
    .line 396
    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    if-eqz v7, :cond_13

    .line 401
    .line 402
    new-instance v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda8;

    .line 403
    .line 404
    move/from16 v2, p1

    .line 405
    .line 406
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;FLcom/fsck/k9/ui/settings/notificationactions/DragCallbacks;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 407
    .line 408
    .line 409
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 410
    .line 411
    :cond_13
    return-void
.end method

.method public static final getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;->action:Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->token:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "action:"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;->INSTANCE:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "cutoff"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method
