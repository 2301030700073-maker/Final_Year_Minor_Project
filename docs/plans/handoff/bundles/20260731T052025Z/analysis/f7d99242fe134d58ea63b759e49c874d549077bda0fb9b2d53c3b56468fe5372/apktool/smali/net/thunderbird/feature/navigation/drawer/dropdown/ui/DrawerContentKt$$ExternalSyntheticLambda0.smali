.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iget-object v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v10, p2

    .line 26
    .line 27
    check-cast v10, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    and-int/lit8 v11, v10, 0x3

    .line 34
    .line 35
    if-eq v11, v4, :cond_0

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v4, v9

    .line 40
    :goto_0
    and-int/2addr v10, v5

    .line 41
    move-object v15, v1

    .line 42
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 43
    .line 44
    invoke-virtual {v15, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_c

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 51
    .line 52
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 53
    .line 54
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 55
    .line 56
    invoke-static {v4, v10, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-wide v9, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 61
    .line 62
    ushr-long v11, v9, v3

    .line 63
    .line 64
    xor-long/2addr v9, v11

    .line 65
    long-to-int v3, v9

    .line 66
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 80
    .line 81
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 82
    .line 83
    .line 84
    iget-boolean v11, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 85
    .line 86
    if-eqz v11, :cond_1

    .line 87
    .line 88
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 93
    .line 94
    .line 95
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 96
    .line 97
    invoke-static {v15, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {v15, v9, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 110
    .line 111
    invoke-static {v15, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 115
    .line 116
    invoke-static {v15, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 125
    .line 126
    iget-boolean v3, v1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

    .line 127
    .line 128
    iget-object v11, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 129
    .line 130
    iget-object v12, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 131
    .line 132
    iget-boolean v14, v1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 133
    .line 134
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 135
    .line 136
    const/high16 v4, 0x3f800000    # 1.0f

    .line 137
    .line 138
    invoke-direct {v1, v4, v5}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    const/16 v10, 0xe

    .line 150
    .line 151
    if-nez v4, :cond_2

    .line 152
    .line 153
    if-ne v9, v6, :cond_3

    .line 154
    .line 155
    :cond_2
    new-instance v9, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 156
    .line 157
    invoke-direct {v9, v10, v7}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    move-object v13, v9

    .line 164
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    const/16 v18, 0x8

    .line 167
    .line 168
    move/from16 v16, v3

    .line 169
    .line 170
    move-object/from16 v17, v15

    .line 171
    .line 172
    move-object v15, v1

    .line 173
    invoke-static/range {v11 .. v18}, Lkotlin/io/ByteStreamsKt;->FolderList(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v15, v17

    .line 177
    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v17, 0x7

    .line 181
    .line 182
    const/4 v11, 0x0

    .line 183
    const/4 v12, 0x0

    .line 184
    const-wide/16 v13, 0x0

    .line 185
    .line 186
    invoke-static/range {v11 .. v17}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-nez v1, :cond_4

    .line 198
    .line 199
    if-ne v3, v6, :cond_5

    .line 200
    .line 201
    :cond_4
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 202
    .line 203
    const/16 v1, 0xb

    .line 204
    .line 205
    invoke-direct {v3, v1, v7}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    move-object v11, v3

    .line 212
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 213
    .line 214
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    if-nez v1, :cond_6

    .line 223
    .line 224
    if-ne v3, v6, :cond_7

    .line 225
    .line 226
    :cond_6
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 227
    .line 228
    const/16 v1, 0xc

    .line 229
    .line 230
    invoke-direct {v3, v1, v7}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    move-object v12, v3

    .line 237
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 238
    .line 239
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-nez v1, :cond_8

    .line 248
    .line 249
    if-ne v3, v6, :cond_9

    .line 250
    .line 251
    :cond_8
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 252
    .line 253
    const/16 v1, 0xd

    .line 254
    .line 255
    invoke-direct {v3, v1, v7}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_9
    move-object v13, v3

    .line 262
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 263
    .line 264
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    if-nez v1, :cond_a

    .line 273
    .line 274
    if-ne v3, v6, :cond_b

    .line 275
    .line 276
    :cond_a
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 277
    .line 278
    invoke-direct {v3, v10, v7}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_b
    move-object v14, v3

    .line 285
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 286
    .line 287
    iget-boolean v1, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 288
    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    const/16 v19, 0x0

    .line 292
    .line 293
    move-object/from16 v18, v15

    .line 294
    .line 295
    iget-boolean v15, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 296
    .line 297
    move/from16 v16, v1

    .line 298
    .line 299
    invoke-static/range {v11 .. v19}, Lokhttp3/CacheControl$Companion;->FolderSettingList(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v15, v18

    .line 303
    .line 304
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 309
    .line 310
    .line 311
    :goto_2
    return-object v2

    .line 312
    :pswitch_0
    move-object/from16 v1, p1

    .line 313
    .line 314
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 315
    .line 316
    move-object/from16 v10, p2

    .line 317
    .line 318
    check-cast v10, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    and-int/lit8 v11, v10, 0x3

    .line 325
    .line 326
    if-eq v11, v4, :cond_d

    .line 327
    .line 328
    move v4, v5

    .line 329
    goto :goto_3

    .line 330
    :cond_d
    move v4, v9

    .line 331
    :goto_3
    and-int/2addr v10, v5

    .line 332
    move-object v15, v1

    .line 333
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 334
    .line 335
    invoke-virtual {v15, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_16

    .line 340
    .line 341
    iget-object v1, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 342
    .line 343
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_f

    .line 352
    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    move-object v10, v4

    .line 358
    check-cast v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 359
    .line 360
    invoke-interface {v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getId()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    iget-object v11, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-eqz v10, :cond_e

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_f
    const/4 v4, 0x0

    .line 374
    :goto_4
    move-object v11, v4

    .line 375
    check-cast v11, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 376
    .line 377
    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 378
    .line 379
    invoke-static {v15}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iget-object v1, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    .line 384
    .line 385
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 386
    .line 387
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 392
    .line 393
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 394
    .line 395
    invoke-static {v4, v10, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 400
    .line 401
    ushr-long v16, v12, v3

    .line 402
    .line 403
    xor-long v12, v12, v16

    .line 404
    .line 405
    long-to-int v3, v12

    .line 406
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 407
    .line 408
    .line 409
    move-result-object v10

    .line 410
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 415
    .line 416
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 420
    .line 421
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 422
    .line 423
    .line 424
    iget-boolean v13, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 425
    .line 426
    if-eqz v13, :cond_10

    .line 427
    .line 428
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 429
    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 433
    .line 434
    .line 435
    :goto_5
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 436
    .line 437
    invoke-static {v15, v4, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 438
    .line 439
    .line 440
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 441
    .line 442
    invoke-static {v15, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 450
    .line 451
    invoke-static {v15, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 452
    .line 453
    .line 454
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 455
    .line 456
    invoke-static {v15, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 457
    .line 458
    .line 459
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 460
    .line 461
    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 462
    .line 463
    .line 464
    iget-boolean v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 465
    .line 466
    if-nez v11, :cond_11

    .line 467
    .line 468
    const v1, -0x2a799e34

    .line 469
    .line 470
    .line 471
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 475
    .line 476
    .line 477
    move-object v4, v11

    .line 478
    goto :goto_6

    .line 479
    :cond_11
    const v1, -0x2a799e33

    .line 480
    .line 481
    .line 482
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    if-nez v1, :cond_12

    .line 494
    .line 495
    if-ne v3, v6, :cond_13

    .line 496
    .line 497
    :cond_12
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 498
    .line 499
    const/16 v1, 0x12

    .line 500
    .line 501
    invoke-direct {v3, v1, v7}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    :cond_13
    move-object v12, v3

    .line 508
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 509
    .line 510
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    or-int/2addr v1, v3

    .line 519
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    if-nez v1, :cond_14

    .line 524
    .line 525
    if-ne v3, v6, :cond_15

    .line 526
    .line 527
    :cond_14
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;

    .line 528
    .line 529
    invoke-direct {v3, v7, v11, v9}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :cond_15
    move-object v13, v3

    .line 536
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 537
    .line 538
    iget-boolean v14, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 539
    .line 540
    const/16 v16, 0x0

    .line 541
    .line 542
    const/16 v18, 0x0

    .line 543
    .line 544
    move-object/from16 v17, v15

    .line 545
    .line 546
    move v15, v0

    .line 547
    invoke-static/range {v11 .. v18}, Lorg/jsoup/Jsoup;->AccountView(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 548
    .line 549
    .line 550
    move-object v4, v11

    .line 551
    move-object/from16 v15, v17

    .line 552
    .line 553
    const/16 v16, 0x0

    .line 554
    .line 555
    const/16 v17, 0x7

    .line 556
    .line 557
    const/4 v11, 0x0

    .line 558
    const/4 v12, 0x0

    .line 559
    const-wide/16 v13, 0x0

    .line 560
    .line 561
    invoke-static/range {v11 .. v17}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 565
    .line 566
    .line 567
    :goto_6
    iget-boolean v1, v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 568
    .line 569
    new-instance v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 570
    .line 571
    invoke-direct {v13, v0, v9}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 572
    .line 573
    .line 574
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 575
    .line 576
    .line 577
    move-result-object v11

    .line 578
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;

    .line 579
    .line 580
    const/4 v1, 0x3

    .line 581
    invoke-direct {v0, v8, v7, v4, v1}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 582
    .line 583
    .line 584
    const v1, 0x37f6ec93

    .line 585
    .line 586
    .line 587
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 588
    .line 589
    .line 590
    move-result-object v17

    .line 591
    const v19, 0x186000

    .line 592
    .line 593
    .line 594
    const/16 v20, 0x2a

    .line 595
    .line 596
    const/4 v12, 0x0

    .line 597
    const/4 v14, 0x0

    .line 598
    move-object/from16 v18, v15

    .line 599
    .line 600
    const-string v15, "AccountSelectorVisibility"

    .line 601
    .line 602
    const/16 v16, 0x0

    .line 603
    .line 604
    invoke-static/range {v11 .. v20}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 605
    .line 606
    .line 607
    move-object/from16 v15, v18

    .line 608
    .line 609
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 610
    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 614
    .line 615
    .line 616
    :goto_7
    return-object v2

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
