.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

.field public final synthetic f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;I)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$2:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 31
    .line 32
    invoke-static {v5, v4, v0, v1, v3}, Lokhttp3/Handshake$Companion;->AccountContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;I)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_0
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    move-object/from16 v6, p2

    .line 41
    .line 42
    check-cast v6, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    and-int/lit8 v7, v6, 0x3

    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    const/4 v9, 0x0

    .line 52
    if-eq v7, v8, :cond_0

    .line 53
    .line 54
    move v7, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v7, v9

    .line 57
    :goto_0
    and-int/2addr v6, v3

    .line 58
    move-object v15, v1

    .line 59
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_a

    .line 66
    .line 67
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 68
    .line 69
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 70
    .line 71
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 72
    .line 73
    invoke-static {v6, v7, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-wide v7, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 78
    .line 79
    const/16 v9, 0x20

    .line 80
    .line 81
    ushr-long v9, v7, v9

    .line 82
    .line 83
    xor-long/2addr v7, v9

    .line 84
    long-to-int v7, v7

    .line 85
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 99
    .line 100
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 101
    .line 102
    .line 103
    iget-boolean v10, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 104
    .line 105
    if-eqz v10, :cond_1

    .line 106
    .line 107
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 112
    .line 113
    .line 114
    :goto_1
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v15, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v15, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {v15, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 134
    .line 135
    invoke-static {v15, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 136
    .line 137
    .line 138
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    iget-object v10, v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 144
    .line 145
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const/16 v7, 0xf

    .line 154
    .line 155
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 156
    .line 157
    if-nez v1, :cond_2

    .line 158
    .line 159
    if-ne v6, v8, :cond_3

    .line 160
    .line 161
    :cond_2
    new-instance v6, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 162
    .line 163
    invoke-direct {v6, v7, v4}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    move-object v12, v6

    .line 170
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 171
    .line 172
    iget-object v1, v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 173
    .line 174
    iget-boolean v13, v1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 175
    .line 176
    new-instance v14, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 177
    .line 178
    const/high16 v1, 0x3f800000    # 1.0f

    .line 179
    .line 180
    invoke-direct {v14, v1, v3}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 181
    .line 182
    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    iget-object v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda6;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 186
    .line 187
    invoke-static/range {v10 .. v16}, Lkotlin/text/StringsKt__IndentKt;->AccountList(Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    const/16 v16, 0x7

    .line 192
    .line 193
    const/4 v10, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const-wide/16 v12, 0x0

    .line 196
    .line 197
    move-object v14, v15

    .line 198
    move v15, v0

    .line 199
    invoke-static/range {v10 .. v16}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 200
    .line 201
    .line 202
    move-object v15, v14

    .line 203
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-nez v0, :cond_4

    .line 212
    .line 213
    if-ne v1, v8, :cond_5

    .line 214
    .line 215
    :cond_4
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 216
    .line 217
    invoke-direct {v1, v7, v4}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_5
    move-object v10, v1

    .line 224
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 225
    .line 226
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-nez v0, :cond_6

    .line 235
    .line 236
    if-ne v1, v8, :cond_7

    .line 237
    .line 238
    :cond_6
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 239
    .line 240
    const/16 v0, 0x10

    .line 241
    .line 242
    invoke-direct {v1, v0, v4}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    move-object v11, v1

    .line 249
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 250
    .line 251
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    if-nez v0, :cond_8

    .line 260
    .line 261
    if-ne v1, v8, :cond_9

    .line 262
    .line 263
    :cond_8
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 264
    .line 265
    const/16 v0, 0x11

    .line 266
    .line 267
    invoke-direct {v1, v0, v4}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_9
    move-object v12, v1

    .line 274
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 275
    .line 276
    iget-boolean v13, v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 277
    .line 278
    const/4 v14, 0x0

    .line 279
    const/16 v16, 0x0

    .line 280
    .line 281
    invoke-static/range {v10 .. v16}, Lkotlin/io/CloseableKt;->AccountSettingList(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 289
    .line 290
    .line 291
    :goto_2
    return-object v2

    .line 292
    nop

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
