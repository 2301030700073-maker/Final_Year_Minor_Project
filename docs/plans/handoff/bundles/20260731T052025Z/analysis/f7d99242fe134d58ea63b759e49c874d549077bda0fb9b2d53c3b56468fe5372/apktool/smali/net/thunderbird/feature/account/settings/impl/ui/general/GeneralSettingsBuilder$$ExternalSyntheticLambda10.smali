.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;->f$0:Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    move-object/from16 v7, p3

    .line 23
    .line 24
    check-cast v7, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v1, v7, 0x11

    .line 34
    .line 35
    if-eq v1, v3, :cond_0

    .line 36
    .line 37
    move v5, v4

    .line 38
    :cond_0
    and-int/lit8 v1, v7, 0x1

    .line 39
    .line 40
    move-object v14, v6

    .line 41
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const v1, 0x7f1200c4

    .line 50
    .line 51
    .line 52
    invoke-static {v14, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0x3e

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const-wide/16 v9, 0x0

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    invoke-static/range {v7 .. v16}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f1200c2

    .line 69
    .line 70
    .line 71
    invoke-static {v14, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/16 v16, 0x7e

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    invoke-static/range {v7 .. v16}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 83
    .line 84
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 89
    .line 90
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 91
    .line 92
    const/high16 v6, 0x41000000    # 8.0f

    .line 93
    .line 94
    invoke-static {v3, v5, v6, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 95
    .line 96
    .line 97
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 98
    .line 99
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 109
    .line 110
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 111
    .line 112
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    const/16 v8, 0x9

    .line 115
    .line 116
    invoke-direct {v7, v8, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v5, v6, v4, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 123
    .line 124
    const/16 v6, 0x30

    .line 125
    .line 126
    invoke-static {v5, v3, v14, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 131
    .line 132
    const/16 v7, 0x20

    .line 133
    .line 134
    ushr-long v7, v5, v7

    .line 135
    .line 136
    xor-long/2addr v5, v7

    .line 137
    long-to-int v5, v5

    .line 138
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 152
    .line 153
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 154
    .line 155
    .line 156
    iget-boolean v8, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 157
    .line 158
    if-eqz v8, :cond_1

    .line 159
    .line 160
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 165
    .line 166
    .line 167
    :goto_0
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 168
    .line 169
    invoke-static {v14, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 173
    .line 174
    invoke-static {v14, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v14, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 187
    .line 188
    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 189
    .line 190
    .line 191
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 192
    .line 193
    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    const v1, 0x7f1200c3

    .line 197
    .line 198
    .line 199
    invoke-static {v14, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Upload:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 204
    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/16 v17, 0xec

    .line 208
    .line 209
    iget-object v8, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;->f$0:Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 210
    .line 211
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x0

    .line 215
    move-object v15, v14

    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static/range {v7 .. v17}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 218
    .line 219
    .line 220
    move-object v14, v15

    .line 221
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    :goto_1
    return-object v2

    .line 229
    :pswitch_0
    move-object/from16 v1, p1

    .line 230
    .line 231
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    move-object/from16 v6, p2

    .line 234
    .line 235
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 236
    .line 237
    move-object/from16 v7, p3

    .line 238
    .line 239
    check-cast v7, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    and-int/lit8 v1, v7, 0x11

    .line 249
    .line 250
    if-eq v1, v3, :cond_3

    .line 251
    .line 252
    move v1, v4

    .line 253
    goto :goto_2

    .line 254
    :cond_3
    move v1, v5

    .line 255
    :goto_2
    and-int/lit8 v3, v7, 0x1

    .line 256
    .line 257
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 258
    .line 259
    invoke-virtual {v6, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_4

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    iget-object v0, v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda10;->f$0:Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 267
    .line 268
    invoke-static {v0, v1, v6, v5}, Lokhttp3/Handshake$Companion;->AvatarImageSelection(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 273
    .line 274
    .line 275
    :goto_3
    return-object v2

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
