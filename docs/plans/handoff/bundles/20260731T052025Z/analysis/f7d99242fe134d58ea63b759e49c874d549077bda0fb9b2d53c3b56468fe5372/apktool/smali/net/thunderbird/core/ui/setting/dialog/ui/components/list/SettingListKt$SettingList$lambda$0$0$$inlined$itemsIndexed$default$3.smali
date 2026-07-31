.class public final Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $onItemClick$inlined:Ljava/lang/Object;

.field public final synthetic $onSettingValueChange$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$items:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onItemClick$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onSettingValueChange$inlined:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$items:Ljava/util/List;

    .line 10
    .line 11
    const/16 v5, 0x92

    .line 12
    .line 13
    const/16 v7, 0x20

    .line 14
    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x4

    .line 17
    const/4 v10, 0x1

    .line 18
    const/4 v11, 0x0

    .line 19
    iget-object v12, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onItemClick$inlined:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 27
    .line 28
    move-object/from16 v13, p2

    .line 29
    .line 30
    check-cast v13, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v13

    .line 36
    move-object/from16 v14, p3

    .line 37
    .line 38
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    move-object/from16 v15, p4

    .line 41
    .line 42
    check-cast v15, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    and-int/lit8 v16, v15, 0x6

    .line 49
    .line 50
    if-nez v16, :cond_1

    .line 51
    .line 52
    move-object v6, v14

    .line 53
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    move v8, v9

    .line 62
    :cond_0
    or-int v1, v15, v8

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v1, v15

    .line 66
    :goto_0
    and-int/lit8 v6, v15, 0x30

    .line 67
    .line 68
    if-nez v6, :cond_3

    .line 69
    .line 70
    move-object v6, v14

    .line 71
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    move v6, v7

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/16 v6, 0x10

    .line 82
    .line 83
    :goto_1
    or-int/2addr v1, v6

    .line 84
    :cond_3
    and-int/lit16 v6, v1, 0x93

    .line 85
    .line 86
    if-eq v6, v5, :cond_4

    .line 87
    .line 88
    move v5, v10

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move v5, v11

    .line 91
    :goto_2
    and-int/2addr v1, v10

    .line 92
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 93
    .line 94
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 105
    .line 106
    const v4, 0x75961fc9

    .line 107
    .line 108
    .line 109
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 110
    .line 111
    .line 112
    iget-object v15, v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->name:Ljava/lang/String;

    .line 113
    .line 114
    check-cast v12, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 115
    .line 116
    iget-object v4, v12, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->selectedFolder:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 117
    .line 118
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onSettingValueChange$inlined:Lkotlin/jvm/functions/Function1;

    .line 123
    .line 124
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    or-int/2addr v4, v5

    .line 133
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-nez v4, :cond_5

    .line 138
    .line 139
    if-ne v5, v2, :cond_6

    .line 140
    .line 141
    :cond_5
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 142
    .line 143
    const/16 v2, 0x1d

    .line 144
    .line 145
    invoke-direct {v5, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    move-object/from16 v17, v5

    .line 152
    .line 153
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    const/16 v20, 0x0

    .line 158
    .line 159
    move-object/from16 v19, v14

    .line 160
    .line 161
    invoke-static/range {v15 .. v20}, Lorg/minidns/util/Base64;->RemoteFolderListItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 169
    .line 170
    .line 171
    :goto_3
    return-object v3

    .line 172
    :pswitch_0
    move-object/from16 v1, p1

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 175
    .line 176
    move-object/from16 v2, p2

    .line 177
    .line 178
    check-cast v2, Ljava/lang/Number;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    move-object/from16 v6, p3

    .line 185
    .line 186
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 187
    .line 188
    move-object/from16 v13, p4

    .line 189
    .line 190
    check-cast v13, Ljava/lang/Number;

    .line 191
    .line 192
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    and-int/lit8 v14, v13, 0x6

    .line 197
    .line 198
    if-nez v14, :cond_9

    .line 199
    .line 200
    move-object v14, v6

    .line 201
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 202
    .line 203
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    if-eqz v14, :cond_8

    .line 208
    .line 209
    move v8, v9

    .line 210
    :cond_8
    or-int/2addr v8, v13

    .line 211
    goto :goto_4

    .line 212
    :cond_9
    move v8, v13

    .line 213
    :goto_4
    and-int/lit8 v9, v13, 0x30

    .line 214
    .line 215
    if-nez v9, :cond_b

    .line 216
    .line 217
    move-object v9, v6

    .line 218
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 219
    .line 220
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_a

    .line 225
    .line 226
    move/from16 v16, v7

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_a
    const/16 v16, 0x10

    .line 230
    .line 231
    :goto_5
    or-int v8, v8, v16

    .line 232
    .line 233
    :cond_b
    and-int/lit16 v7, v8, 0x93

    .line 234
    .line 235
    if-eq v7, v5, :cond_c

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_c
    move v10, v11

    .line 239
    :goto_6
    and-int/lit8 v5, v8, 0x1

    .line 240
    .line 241
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 242
    .line 243
    invoke-virtual {v6, v5, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_e

    .line 248
    .line 249
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    move-object/from16 v17, v4

    .line 254
    .line 255
    check-cast v17, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 256
    .line 257
    const v4, 0x13c5dcf1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 261
    .line 262
    .line 263
    move-object v4, v12

    .line 264
    check-cast v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 265
    .line 266
    iget-object v4, v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 267
    .line 268
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Ljava/lang/String;

    .line 273
    .line 274
    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 283
    .line 284
    if-eqz v4, :cond_d

    .line 285
    .line 286
    :goto_7
    move-object/from16 v21, v5

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_d
    const/4 v4, 0x0

    .line 290
    const/4 v7, 0x7

    .line 291
    invoke-static {v1, v5, v4, v7}, Landroidx/camera/core/impl/Config$-CC;->animateItem$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/SnapSpec;I)Landroidx/compose/ui/Modifier;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    goto :goto_7

    .line 296
    :goto_8
    move-object/from16 v19, v12

    .line 297
    .line 298
    check-cast v19, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 299
    .line 300
    and-int/lit8 v1, v8, 0x70

    .line 301
    .line 302
    or-int/lit16 v1, v1, 0x200

    .line 303
    .line 304
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onSettingValueChange$inlined:Lkotlin/jvm/functions/Function1;

    .line 305
    .line 306
    move-object/from16 v20, v0

    .line 307
    .line 308
    move/from16 v23, v1

    .line 309
    .line 310
    move/from16 v18, v2

    .line 311
    .line 312
    move-object/from16 v22, v6

    .line 313
    .line 314
    invoke-static/range {v17 .. v23}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionsListItem(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;ILcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 318
    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 322
    .line 323
    .line 324
    :goto_9
    return-object v3

    .line 325
    :pswitch_1
    move-object/from16 v1, p1

    .line 326
    .line 327
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 328
    .line 329
    move-object/from16 v6, p2

    .line 330
    .line 331
    check-cast v6, Ljava/lang/Number;

    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    move-object/from16 v13, p3

    .line 338
    .line 339
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 340
    .line 341
    move-object/from16 v14, p4

    .line 342
    .line 343
    check-cast v14, Ljava/lang/Number;

    .line 344
    .line 345
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 350
    .line 351
    and-int/lit8 v15, v14, 0x6

    .line 352
    .line 353
    if-nez v15, :cond_10

    .line 354
    .line 355
    move-object v15, v13

    .line 356
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 357
    .line 358
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_f

    .line 363
    .line 364
    move v8, v9

    .line 365
    :cond_f
    or-int v1, v14, v8

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_10
    move v1, v14

    .line 369
    :goto_a
    and-int/lit8 v8, v14, 0x30

    .line 370
    .line 371
    if-nez v8, :cond_12

    .line 372
    .line 373
    move-object v8, v13

    .line 374
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 375
    .line 376
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_11

    .line 381
    .line 382
    move/from16 v16, v7

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_11
    const/16 v16, 0x10

    .line 386
    .line 387
    :goto_b
    or-int v1, v1, v16

    .line 388
    .line 389
    :cond_12
    and-int/lit16 v8, v1, 0x93

    .line 390
    .line 391
    if-eq v8, v5, :cond_13

    .line 392
    .line 393
    move v5, v10

    .line 394
    goto :goto_c

    .line 395
    :cond_13
    move v5, v11

    .line 396
    :goto_c
    and-int/lit8 v8, v1, 0x1

    .line 397
    .line 398
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 399
    .line 400
    invoke-virtual {v13, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_19

    .line 405
    .line 406
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    move-object v14, v4

    .line 411
    check-cast v14, Lnet/thunderbird/core/ui/setting/Setting;

    .line 412
    .line 413
    const v4, 0x1ea6b16e

    .line 414
    .line 415
    .line 416
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    and-int/lit8 v5, v1, 0x70

    .line 424
    .line 425
    xor-int/lit8 v5, v5, 0x30

    .line 426
    .line 427
    if-le v5, v7, :cond_14

    .line 428
    .line 429
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-nez v5, :cond_16

    .line 434
    .line 435
    :cond_14
    and-int/lit8 v1, v1, 0x30

    .line 436
    .line 437
    if-ne v1, v7, :cond_15

    .line 438
    .line 439
    goto :goto_d

    .line 440
    :cond_15
    move v10, v11

    .line 441
    :cond_16
    :goto_d
    or-int v1, v4, v10

    .line 442
    .line 443
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    or-int/2addr v1, v4

    .line 448
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    if-nez v1, :cond_17

    .line 453
    .line 454
    if-ne v4, v2, :cond_18

    .line 455
    .line 456
    :cond_17
    new-instance v4, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;

    .line 457
    .line 458
    invoke-direct {v4, v12, v6, v14}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;ILnet/thunderbird/core/ui/setting/Setting;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    :cond_18
    move-object v15, v4

    .line 465
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 466
    .line 467
    sget-object v17, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 468
    .line 469
    const/16 v19, 0xc00

    .line 470
    .line 471
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;->$onSettingValueChange$inlined:Lkotlin/jvm/functions/Function1;

    .line 472
    .line 473
    move-object/from16 v16, v0

    .line 474
    .line 475
    move-object/from16 v18, v13

    .line 476
    .line 477
    invoke-static/range {v14 .. v19}, Lokio/Okio;->SettingItem(Lnet/thunderbird/core/ui/setting/Setting;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 481
    .line 482
    .line 483
    goto :goto_e

    .line 484
    :cond_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 485
    .line 486
    .line 487
    :goto_e
    return-object v3

    .line 488
    nop

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
