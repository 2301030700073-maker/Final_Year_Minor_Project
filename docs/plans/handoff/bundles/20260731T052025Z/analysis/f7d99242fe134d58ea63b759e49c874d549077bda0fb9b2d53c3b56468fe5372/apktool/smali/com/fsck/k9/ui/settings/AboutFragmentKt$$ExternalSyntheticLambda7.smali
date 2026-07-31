.class public final synthetic Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "id "

    .line 6
    .line 7
    const/16 v3, 0x31

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/high16 v5, 0x41800000    # 16.0f

    .line 11
    .line 12
    const/high16 v6, 0x41000000    # 8.0f

    .line 13
    .line 14
    const/16 v7, 0x20

    .line 15
    .line 16
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x1

    .line 21
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    iget-object v13, v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object v15, v0

    .line 31
    check-cast v15, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    check-cast v13, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 34
    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v1, p2

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    and-int/lit8 v2, v1, 0x3

    .line 48
    .line 49
    if-eq v2, v9, :cond_0

    .line 50
    .line 51
    move v2, v11

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v2, v10

    .line 54
    :goto_0
    and-int/2addr v1, v11

    .line 55
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 68
    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    new-instance v1, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v1, v9}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    move-object v14, v1

    .line 80
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 81
    .line 82
    new-instance v1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 83
    .line 84
    iget-object v2, v13, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->error:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v11, v10

    .line 90
    :goto_1
    const/4 v2, 0x5

    .line 91
    invoke-direct {v1, v2, v10, v10, v11}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 92
    .line 93
    .line 94
    const/16 v21, 0x6

    .line 95
    .line 96
    const/16 v22, 0x1c

    .line 97
    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    const/16 v17, 0x0

    .line 101
    .line 102
    const/16 v18, 0x0

    .line 103
    .line 104
    move-object/from16 v20, v0

    .line 105
    .line 106
    move-object/from16 v19, v1

    .line 107
    .line 108
    invoke-static/range {v14 .. v22}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move-object/from16 v20, v0

    .line 113
    .line 114
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-object v12

    .line 118
    :pswitch_0
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 119
    .line 120
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    move-object/from16 v1, p1

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 125
    .line 126
    move-object/from16 v2, p2

    .line 127
    .line 128
    check-cast v2, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    and-int/lit8 v3, v2, 0x3

    .line 135
    .line 136
    if-eq v3, v9, :cond_4

    .line 137
    .line 138
    move v3, v11

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move v3, v10

    .line 141
    :goto_3
    and-int/2addr v2, v11

    .line 142
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 143
    .line 144
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    iget-object v0, v0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 151
    .line 152
    if-nez v0, :cond_5

    .line 153
    .line 154
    const v0, 0x6b3729d6

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_5
    const v2, 0x6b3729d7

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 168
    .line 169
    .line 170
    const-string v2, "banner_global_action"

    .line 171
    .line 172
    invoke-static {v8, v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const/16 v3, 0x188

    .line 177
    .line 178
    invoke-static {v0, v13, v2, v1, v3}, Lkotlin/text/CharsKt__CharKt;->ResolvedNotificationActionButton(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    :goto_4
    return-object v12

    .line 189
    :pswitch_1
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 190
    .line 191
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 196
    .line 197
    move-object/from16 v2, p2

    .line 198
    .line 199
    check-cast v2, Ljava/lang/Integer;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-static {v0, v13, v1, v2}, Lorg/minidns/util/Hex;->AccountLabel(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 209
    .line 210
    .line 211
    return-object v12

    .line 212
    :pswitch_2
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 213
    .line 214
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 215
    .line 216
    move-object/from16 v1, p1

    .line 217
    .line 218
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 219
    .line 220
    move-object/from16 v2, p2

    .line 221
    .line 222
    check-cast v2, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v0, v13, v1, v2}, Lokhttp3/Handshake$Companion;->FolderContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 232
    .line 233
    .line 234
    return-object v12

    .line 235
    :pswitch_3
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;

    .line 236
    .line 237
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 238
    .line 239
    move-object/from16 v1, p1

    .line 240
    .line 241
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 242
    .line 243
    move-object/from16 v2, p2

    .line 244
    .line 245
    check-cast v2, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    invoke-static {v0, v13, v1, v2}, Lnet/thunderbird/feature/mail/message/reader/api/ui/component/organism/AttachmentCardKt;->AttachmentThumbnail(Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 255
    .line 256
    .line 257
    return-object v12

    .line 258
    :pswitch_4
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;

    .line 259
    .line 260
    move-object v14, v13

    .line 261
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 262
    .line 263
    move-object/from16 v1, p1

    .line 264
    .line 265
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 266
    .line 267
    move-object/from16 v2, p2

    .line 268
    .line 269
    check-cast v2, Ljava/lang/Integer;

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    and-int/lit8 v3, v2, 0x3

    .line 276
    .line 277
    if-eq v3, v9, :cond_7

    .line 278
    .line 279
    move v3, v11

    .line 280
    goto :goto_5

    .line 281
    :cond_7
    move v3, v10

    .line 282
    :goto_5
    and-int/2addr v2, v11

    .line 283
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 284
    .line 285
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_11

    .line 290
    .line 291
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {v8, v5, v6, v6, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 343
    .line 344
    new-instance v5, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 345
    .line 346
    const/4 v6, 0x7

    .line 347
    invoke-direct {v5, v6}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 348
    .line 349
    .line 350
    const/high16 v6, 0x42000000    # 32.0f

    .line 351
    .line 352
    invoke-direct {v2, v6, v11, v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 353
    .line 354
    .line 355
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 356
    .line 357
    const/16 v6, 0x30

    .line 358
    .line 359
    invoke-static {v2, v5, v1, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 364
    .line 365
    ushr-long v8, v5, v7

    .line 366
    .line 367
    xor-long/2addr v5, v8

    .line 368
    long-to-int v5, v5

    .line 369
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-static {v1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 378
    .line 379
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 383
    .line 384
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 385
    .line 386
    .line 387
    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 388
    .line 389
    if-eqz v9, :cond_8

    .line 390
    .line 391
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 396
    .line 397
    .line 398
    :goto_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 399
    .line 400
    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 401
    .line 402
    .line 403
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 404
    .line 405
    invoke-static {v1, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 413
    .line 414
    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    .line 416
    .line 417
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 418
    .line 419
    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 420
    .line 421
    .line 422
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 423
    .line 424
    invoke-static {v1, v3, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 425
    .line 426
    .line 427
    instance-of v3, v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;

    .line 428
    .line 429
    if-nez v3, :cond_c

    .line 430
    .line 431
    instance-of v3, v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedFile;

    .line 432
    .line 433
    if-eqz v3, :cond_9

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_9
    instance-of v3, v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedImage;

    .line 437
    .line 438
    if-nez v3, :cond_b

    .line 439
    .line 440
    instance-of v3, v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;

    .line 441
    .line 442
    if-eqz v3, :cond_a

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_11

    .line 449
    .line 450
    :cond_b
    :goto_7
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Image:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 451
    .line 452
    :goto_8
    move-object v15, v3

    .line 453
    goto :goto_a

    .line 454
    :cond_c
    :goto_9
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Description:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 455
    .line 456
    goto :goto_8

    .line 457
    :goto_a
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 458
    .line 459
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 464
    .line 465
    move/from16 v21, v7

    .line 466
    .line 467
    move-object/from16 p0, v8

    .line 468
    .line 469
    iget-wide v7, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 470
    .line 471
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 472
    .line 473
    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 474
    .line 475
    .line 476
    const/16 v19, 0x0

    .line 477
    .line 478
    const/16 v20, 0x6

    .line 479
    .line 480
    const/16 v16, 0x0

    .line 481
    .line 482
    move-object/from16 v18, v1

    .line 483
    .line 484
    move-object/from16 v17, v4

    .line 485
    .line 486
    invoke-static/range {v15 .. v20}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 487
    .line 488
    .line 489
    new-instance v4, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 490
    .line 491
    const/high16 v7, 0x3f800000    # 1.0f

    .line 492
    .line 493
    invoke-direct {v4, v7, v11}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 494
    .line 495
    .line 496
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 497
    .line 498
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 499
    .line 500
    invoke-static {v7, v8, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    move-object v8, v12

    .line 505
    iget-wide v11, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 506
    .line 507
    ushr-long v15, v11, v21

    .line 508
    .line 509
    xor-long/2addr v11, v15

    .line 510
    long-to-int v11, v11

    .line 511
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    invoke-static {v1, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 520
    .line 521
    .line 522
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 523
    .line 524
    if-eqz v15, :cond_d

    .line 525
    .line 526
    move-object/from16 v15, p0

    .line 527
    .line 528
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 529
    .line 530
    .line 531
    goto :goto_b

    .line 532
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 533
    .line 534
    .line 535
    :goto_b
    invoke-static {v1, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v11, v1, v6, v1, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 542
    .line 543
    .line 544
    invoke-static {v1, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 545
    .line 546
    .line 547
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getFilename()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    if-nez v2, :cond_e

    .line 552
    .line 553
    const v2, 0x24ef3d60

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 557
    .line 558
    .line 559
    const v2, 0x7f120654

    .line 560
    .line 561
    .line 562
    invoke-static {v1, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 567
    .line 568
    .line 569
    :goto_c
    move-object v15, v2

    .line 570
    goto :goto_d

    .line 571
    :cond_e
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getEncrypted()Z

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-eqz v4, :cond_f

    .line 576
    .line 577
    const v2, 0x24ef4ba2

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 581
    .line 582
    .line 583
    const v2, 0x7f1202c2

    .line 584
    .line 585
    .line 586
    invoke-static {v1, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 591
    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_f
    const v4, 0x24ef56f7

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 601
    .line 602
    .line 603
    goto :goto_c

    .line 604
    :goto_d
    const/16 v23, 0x0

    .line 605
    .line 606
    const/16 v24, 0x7e

    .line 607
    .line 608
    const/16 v16, 0x0

    .line 609
    .line 610
    const-wide/16 v17, 0x0

    .line 611
    .line 612
    const/16 v19, 0x0

    .line 613
    .line 614
    const/16 v20, 0x0

    .line 615
    .line 616
    const/16 v21, 0x0

    .line 617
    .line 618
    move-object/from16 v22, v1

    .line 619
    .line 620
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 621
    .line 622
    .line 623
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getFormattedSize()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v15

    .line 627
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 632
    .line 633
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 634
    .line 635
    const/16 v24, 0x3a

    .line 636
    .line 637
    const/16 v19, 0x0

    .line 638
    .line 639
    const/16 v21, 0x0

    .line 640
    .line 641
    move-wide/from16 v17, v2

    .line 642
    .line 643
    invoke-static/range {v15 .. v24}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 644
    .line 645
    .line 646
    const/4 v2, 0x1

    .line 647
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getEncrypted()Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-eqz v0, :cond_10

    .line 655
    .line 656
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Lock:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 657
    .line 658
    :goto_e
    move-object v15, v0

    .line 659
    goto :goto_f

    .line 660
    :cond_10
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Download:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 661
    .line 662
    goto :goto_e

    .line 663
    :goto_f
    const/16 v21, 0x0

    .line 664
    .line 665
    const/16 v22, 0x3c

    .line 666
    .line 667
    const/16 v16, 0x0

    .line 668
    .line 669
    const/16 v17, 0x0

    .line 670
    .line 671
    const/16 v18, 0x0

    .line 672
    .line 673
    const/16 v19, 0x0

    .line 674
    .line 675
    move-object/from16 v20, v1

    .line 676
    .line 677
    invoke-static/range {v14 .. v22}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 678
    .line 679
    .line 680
    const/4 v2, 0x1

    .line 681
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 682
    .line 683
    .line 684
    goto :goto_10

    .line 685
    :cond_11
    move-object v8, v12

    .line 686
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 687
    .line 688
    .line 689
    :goto_10
    move-object v4, v8

    .line 690
    :goto_11
    return-object v4

    .line 691
    :pswitch_5
    move-object v8, v12

    .line 692
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;

    .line 693
    .line 694
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 695
    .line 696
    move-object/from16 v1, p1

    .line 697
    .line 698
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 699
    .line 700
    move-object/from16 v2, p2

    .line 701
    .line 702
    check-cast v2, Ljava/lang/Integer;

    .line 703
    .line 704
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    const/16 v2, 0x9

    .line 708
    .line 709
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    invoke-static {v0, v13, v1, v2}, Lorg/jsoup/Jsoup;->ReleaseComposable(Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 714
    .line 715
    .line 716
    return-object v8

    .line 717
    :pswitch_6
    move-object v8, v12

    .line 718
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 719
    .line 720
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 721
    .line 722
    move-object/from16 v1, p1

    .line 723
    .line 724
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 725
    .line 726
    move-object/from16 v2, p2

    .line 727
    .line 728
    check-cast v2, Ljava/lang/Integer;

    .line 729
    .line 730
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    const/16 v25, 0x1

    .line 734
    .line 735
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    invoke-static {v0, v13, v1, v2}, Lokhttp3/Handshake$Companion;->AvatarImageSelection(Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 740
    .line 741
    .line 742
    return-object v8

    .line 743
    :pswitch_7
    move-object v8, v12

    .line 744
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 745
    .line 746
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 747
    .line 748
    move-object/from16 v1, p1

    .line 749
    .line 750
    check-cast v1, Ljava/lang/Integer;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    move-object/from16 v2, p2

    .line 757
    .line 758
    check-cast v2, Lnet/thunderbird/core/ui/setting/Setting;

    .line 759
    .line 760
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 764
    .line 765
    .line 766
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 767
    .line 768
    invoke-interface {v13, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    return-object v8

    .line 772
    :pswitch_8
    move-object v8, v12

    .line 773
    check-cast v0, Lcom/skydoves/landscapist/components/ImageComponent;

    .line 774
    .line 775
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 776
    .line 777
    move-object/from16 v1, p1

    .line 778
    .line 779
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 780
    .line 781
    move-object/from16 v2, p2

    .line 782
    .line 783
    check-cast v2, Ljava/lang/Integer;

    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    invoke-static {v0, v13, v1, v2}, Landroidx/appcompat/app/ActionBar;->ComposeWithComposablePlugins(Lcom/skydoves/landscapist/components/ImageComponent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 793
    .line 794
    .line 795
    return-object v8

    .line 796
    :pswitch_9
    move-object v8, v12

    .line 797
    check-cast v0, Ljava/io/File;

    .line 798
    .line 799
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 800
    .line 801
    move-object/from16 v1, p1

    .line 802
    .line 803
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 804
    .line 805
    move-object/from16 v2, p2

    .line 806
    .line 807
    check-cast v2, Ljava/lang/Integer;

    .line 808
    .line 809
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    invoke-static {v0, v13, v1, v2}, Lcom/skydoves/landscapist/LocalImageSourceFileKt;->ProvideImageSourceFile(Ljava/io/File;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 817
    .line 818
    .line 819
    return-object v8

    .line 820
    :pswitch_a
    move/from16 v21, v7

    .line 821
    .line 822
    move-object v8, v12

    .line 823
    move-object v14, v0

    .line 824
    check-cast v14, Ljava/lang/String;

    .line 825
    .line 826
    check-cast v13, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 827
    .line 828
    move-object/from16 v0, p1

    .line 829
    .line 830
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 831
    .line 832
    move-object/from16 v1, p2

    .line 833
    .line 834
    check-cast v1, Ljava/lang/Integer;

    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    and-int/lit8 v2, v1, 0x3

    .line 841
    .line 842
    if-eq v2, v9, :cond_12

    .line 843
    .line 844
    const/4 v2, 0x1

    .line 845
    :goto_12
    const/16 v25, 0x1

    .line 846
    .line 847
    goto :goto_13

    .line 848
    :cond_12
    move v2, v10

    .line 849
    goto :goto_12

    .line 850
    :goto_13
    and-int/lit8 v1, v1, 0x1

    .line 851
    .line 852
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 853
    .line 854
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    if-eqz v1, :cond_14

    .line 859
    .line 860
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 861
    .line 862
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 863
    .line 864
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 865
    .line 866
    invoke-static {v2, v3, v0, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 871
    .line 872
    ushr-long v9, v3, v21

    .line 873
    .line 874
    xor-long/2addr v3, v9

    .line 875
    long-to-int v3, v3

    .line 876
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 885
    .line 886
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 890
    .line 891
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 892
    .line 893
    .line 894
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 895
    .line 896
    if-eqz v9, :cond_13

    .line 897
    .line 898
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 899
    .line 900
    .line 901
    goto :goto_14

    .line 902
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 903
    .line 904
    .line 905
    :goto_14
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 906
    .line 907
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 908
    .line 909
    .line 910
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 911
    .line 912
    invoke-static {v0, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 913
    .line 914
    .line 915
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 920
    .line 921
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 922
    .line 923
    .line 924
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 925
    .line 926
    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 927
    .line 928
    .line 929
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 930
    .line 931
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 932
    .line 933
    .line 934
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 935
    .line 936
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 937
    .line 938
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 943
    .line 944
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 961
    .line 962
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 970
    .line 971
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    invoke-static {v1, v5, v5, v5, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 975
    .line 976
    .line 977
    move-result-object v15

    .line 978
    const/16 v22, 0x0

    .line 979
    .line 980
    const/16 v23, 0x7c

    .line 981
    .line 982
    const-wide/16 v16, 0x0

    .line 983
    .line 984
    const/16 v18, 0x0

    .line 985
    .line 986
    const/16 v19, 0x0

    .line 987
    .line 988
    const/16 v20, 0x0

    .line 989
    .line 990
    move-object/from16 v21, v0

    .line 991
    .line 992
    invoke-static/range {v14 .. v23}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 993
    .line 994
    .line 995
    const/16 v1, 0x8

    .line 996
    .line 997
    invoke-static {v13, v0, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionsList(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Landroidx/compose/runtime/Composer;I)V

    .line 998
    .line 999
    .line 1000
    const/4 v2, 0x1

    .line 1001
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1002
    .line 1003
    .line 1004
    goto :goto_15

    .line 1005
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1006
    .line 1007
    .line 1008
    :goto_15
    return-object v8

    .line 1009
    :pswitch_b
    move-object v8, v12

    .line 1010
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1011
    .line 1012
    check-cast v13, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 1013
    .line 1014
    move-object/from16 v1, p1

    .line 1015
    .line 1016
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1017
    .line 1018
    move-object/from16 v2, p2

    .line 1019
    .line 1020
    check-cast v2, Ljava/lang/Integer;

    .line 1021
    .line 1022
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1023
    .line 1024
    .line 1025
    move-result v2

    .line 1026
    and-int/lit8 v3, v2, 0x3

    .line 1027
    .line 1028
    if-eq v3, v9, :cond_15

    .line 1029
    .line 1030
    const/4 v3, 0x1

    .line 1031
    :goto_16
    const/16 v25, 0x1

    .line 1032
    .line 1033
    goto :goto_17

    .line 1034
    :cond_15
    move v3, v10

    .line 1035
    goto :goto_16

    .line 1036
    :goto_17
    and-int/lit8 v2, v2, 0x1

    .line 1037
    .line 1038
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1039
    .line 1040
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    if-eqz v2, :cond_17

    .line 1045
    .line 1046
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1047
    .line 1048
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    check-cast v3, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1057
    .line 1058
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    if-nez v3, :cond_16

    .line 1063
    .line 1064
    const v3, 0x7b68ea69

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1068
    .line 1069
    .line 1070
    iget-object v3, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 1071
    .line 1072
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    check-cast v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 1077
    .line 1078
    new-instance v4, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 1079
    .line 1080
    const/16 v5, 0x13

    .line 1081
    .line 1082
    invoke-direct {v4, v13, v0, v2, v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1083
    .line 1084
    .line 1085
    const v0, -0x3cd2f5c5

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    const/4 v2, 0x6

    .line 1093
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 1094
    .line 1095
    invoke-virtual {v3, v0, v1, v2}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_18

    .line 1102
    :cond_16
    const v0, 0x7b7907f4

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_18

    .line 1112
    :cond_17
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1113
    .line 1114
    .line 1115
    :goto_18
    return-object v8

    .line 1116
    :pswitch_c
    move-object v8, v12

    .line 1117
    move-object v11, v0

    .line 1118
    check-cast v11, Landroid/database/sqlite/SQLiteDatabase;

    .line 1119
    .line 1120
    move-object v0, v13

    .line 1121
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1122
    .line 1123
    move-object/from16 v1, p1

    .line 1124
    .line 1125
    check-cast v1, Ljava/lang/String;

    .line 1126
    .line 1127
    move-object/from16 v15, p2

    .line 1128
    .line 1129
    check-cast v15, [Ljava/lang/String;

    .line 1130
    .line 1131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1135
    .line 1136
    .line 1137
    const-string v3, "id"

    .line 1138
    .line 1139
    const-string v4, "uid"

    .line 1140
    .line 1141
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v13

    .line 1145
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v14

    .line 1149
    const/16 v17, 0x0

    .line 1150
    .line 1151
    const/16 v18, 0x0

    .line 1152
    .line 1153
    const-string v12, "messages"

    .line 1154
    .line 1155
    const/16 v16, 0x0

    .line 1156
    .line 1157
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    :goto_19
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    if-eqz v2, :cond_18

    .line 1166
    .line 1167
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 1168
    .line 1169
    .line 1170
    move-result-wide v2

    .line 1171
    const/4 v4, 0x1

    .line 1172
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v5

    .line 1176
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    .line 1182
    .line 1183
    goto :goto_19

    .line 1184
    :catchall_0
    move-exception v0

    .line 1185
    move-object v2, v0

    .line 1186
    goto :goto_1a

    .line 1187
    :cond_18
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 1188
    .line 1189
    .line 1190
    return-object v8

    .line 1191
    :goto_1a
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1192
    :catchall_1
    move-exception v0

    .line 1193
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1194
    .line 1195
    .line 1196
    throw v0

    .line 1197
    :pswitch_d
    move-object v8, v12

    .line 1198
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 1199
    .line 1200
    check-cast v13, Landroid/content/ContentValues;

    .line 1201
    .line 1202
    move-object/from16 v1, p1

    .line 1203
    .line 1204
    check-cast v1, Ljava/lang/String;

    .line 1205
    .line 1206
    move-object/from16 v3, p2

    .line 1207
    .line 1208
    check-cast v3, [Ljava/lang/String;

    .line 1209
    .line 1210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    const-string v4, "messages"

    .line 1217
    .line 1218
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    invoke-virtual {v0, v4, v13, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1223
    .line 1224
    .line 1225
    return-object v8

    .line 1226
    :pswitch_e
    move-object v8, v12

    .line 1227
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1228
    .line 1229
    check-cast v13, Landroid/database/sqlite/SQLiteDatabase;

    .line 1230
    .line 1231
    move-object/from16 v1, p1

    .line 1232
    .line 1233
    check-cast v1, Ljava/lang/String;

    .line 1234
    .line 1235
    move-object/from16 v2, p2

    .line 1236
    .line 1237
    check-cast v2, [Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1246
    .line 1247
    if-eqz v3, :cond_1b

    .line 1248
    .line 1249
    const-string v3, "SELECT COUNT(id) FROM folders WHERE integrate = 1 AND id "

    .line 1250
    .line 1251
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    invoke-virtual {v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1260
    .line 1261
    .line 1262
    move-result v3

    .line 1263
    if-eqz v3, :cond_19

    .line 1264
    .line 1265
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 1266
    .line 1267
    .line 1268
    move-result v3

    .line 1269
    array-length v2, v2

    .line 1270
    if-eq v3, v2, :cond_1a

    .line 1271
    .line 1272
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1273
    .line 1274
    goto :goto_1b

    .line 1275
    :catchall_2
    move-exception v0

    .line 1276
    move-object v2, v0

    .line 1277
    goto :goto_1c

    .line 1278
    :cond_19
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1279
    .line 1280
    :cond_1a
    :goto_1b
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 1281
    .line 1282
    .line 1283
    goto :goto_1d

    .line 1284
    :goto_1c
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1285
    :catchall_3
    move-exception v0

    .line 1286
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1287
    .line 1288
    .line 1289
    throw v0

    .line 1290
    :cond_1b
    :goto_1d
    return-object v8

    .line 1291
    :pswitch_f
    move-object v8, v12

    .line 1292
    check-cast v0, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 1293
    .line 1294
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1295
    .line 1296
    move-object/from16 v1, p1

    .line 1297
    .line 1298
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1299
    .line 1300
    move-object/from16 v2, p2

    .line 1301
    .line 1302
    check-cast v2, Ljava/lang/Integer;

    .line 1303
    .line 1304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    .line 1306
    .line 1307
    const/16 v2, 0x37

    .line 1308
    .line 1309
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1310
    .line 1311
    .line 1312
    move-result v2

    .line 1313
    invoke-virtual {v0, v13, v1, v2}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme$1(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1314
    .line 1315
    .line 1316
    return-object v8

    .line 1317
    :pswitch_10
    move-object v8, v12

    .line 1318
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1319
    .line 1320
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 1321
    .line 1322
    move-object/from16 v1, p1

    .line 1323
    .line 1324
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1325
    .line 1326
    move-object/from16 v2, p2

    .line 1327
    .line 1328
    check-cast v2, Ljava/lang/Integer;

    .line 1329
    .line 1330
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1331
    .line 1332
    .line 1333
    move-result v2

    .line 1334
    and-int/lit8 v3, v2, 0x3

    .line 1335
    .line 1336
    if-eq v3, v9, :cond_1c

    .line 1337
    .line 1338
    const/4 v3, 0x1

    .line 1339
    :goto_1e
    const/16 v25, 0x1

    .line 1340
    .line 1341
    goto :goto_1f

    .line 1342
    :cond_1c
    move v3, v10

    .line 1343
    goto :goto_1e

    .line 1344
    :goto_1f
    and-int/lit8 v2, v2, 0x1

    .line 1345
    .line 1346
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1347
    .line 1348
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    if-eqz v2, :cond_1d

    .line 1353
    .line 1354
    invoke-static {v0, v13, v4, v1, v10}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->WelcomeFooterSection(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_20

    .line 1358
    :cond_1d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1359
    .line 1360
    .line 1361
    :goto_20
    return-object v8

    .line 1362
    :pswitch_11
    move-object v8, v12

    .line 1363
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1364
    .line 1365
    check-cast v13, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 1366
    .line 1367
    move-object/from16 v1, p1

    .line 1368
    .line 1369
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1370
    .line 1371
    move-object/from16 v2, p2

    .line 1372
    .line 1373
    check-cast v2, Ljava/lang/Integer;

    .line 1374
    .line 1375
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    .line 1377
    .line 1378
    const/16 v25, 0x1

    .line 1379
    .line 1380
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1381
    .line 1382
    .line 1383
    move-result v2

    .line 1384
    invoke-static {v0, v13, v1, v2}, Landroidx/appcompat/app/ActionBar;->IconWithPermissionStateOverlay(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Landroidx/compose/runtime/Composer;I)V

    .line 1385
    .line 1386
    .line 1387
    return-object v8

    .line 1388
    :pswitch_12
    move/from16 v25, v11

    .line 1389
    .line 1390
    move-object v8, v12

    .line 1391
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 1392
    .line 1393
    check-cast v13, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 1394
    .line 1395
    move-object/from16 v1, p1

    .line 1396
    .line 1397
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1398
    .line 1399
    move-object/from16 v2, p2

    .line 1400
    .line 1401
    check-cast v2, Ljava/lang/Integer;

    .line 1402
    .line 1403
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1404
    .line 1405
    .line 1406
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1407
    .line 1408
    .line 1409
    move-result v2

    .line 1410
    invoke-static {v0, v13, v1, v2}, Lcom/fsck/k9/sasl/OAuthBearer;->OnboardingNavHost(Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;Landroidx/compose/runtime/Composer;I)V

    .line 1411
    .line 1412
    .line 1413
    return-object v8

    .line 1414
    :pswitch_13
    move/from16 v25, v11

    .line 1415
    .line 1416
    move-object v8, v12

    .line 1417
    check-cast v0, Lcom/fsck/k9/ui/settings/Library;

    .line 1418
    .line 1419
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 1420
    .line 1421
    move-object/from16 v1, p1

    .line 1422
    .line 1423
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1424
    .line 1425
    move-object/from16 v2, p2

    .line 1426
    .line 1427
    check-cast v2, Ljava/lang/Integer;

    .line 1428
    .line 1429
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1430
    .line 1431
    .line 1432
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1433
    .line 1434
    .line 1435
    move-result v2

    .line 1436
    invoke-static {v0, v13, v1, v2}, Landroidx/core/util/DebugUtils;->LibraryItem(Lcom/fsck/k9/ui/settings/Library;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1437
    .line 1438
    .line 1439
    return-object v8

    .line 1440
    nop

    .line 1441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
